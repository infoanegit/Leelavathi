
<!DOCTYPE html>
	<html lang="en">
		<head>
			<title>Dataform action</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
			<link rel="stylesheet" href="./assets/css/style.css">
			<script src="validation.js"></script>
		</head>
	<body>
		<div class="container mt-3 text-center adminpage">
			<cfset myComponent = createObject("component", "project.CMStask.edit")>
			<cfparam name="myData" default="#myComponent.getDataFromDatabase()#">
			<a href="loginform.cfm"><button class="btn btn-primary px-5">Logout</button></a>
			<h1 class="text-center">List of Details</h1>
			<table class="table">
				<thead  class="tablehead table-light">
				<tr>
					<th>Page Name</th>
					<th>Description</th>
					<cfparam name="url.role" default="">
					<cfif url.role EQ "editor">
					<th>update</th>
					<cfelseif url.role EQ "admin">
					<th>update</th>
					<th>Delete</th>
					</cfif>
				</tr>
				</thead>
				<tbody class="table-dark">
					<cfoutput query="myData">
						<tr>
							<td>#myData.pagename#</td>
							<td>#myData.pagedesc#</td>
							<cfparam name="url.role" default="">
							<cfif url.role EQ "editor">
							<!-- Display edit and add new options for editors -->
							<td><button class="btn btn-info"><a href="userpage.cfm?role=editor&pageid=#myData.pageid#" target="_blank">Edit</button></td></a>
								<cfelseif url.role EQ "admin">
							<!-- Display edit, delete, and add new options for admins -->
									<td><button class="btn btn-info"><a href="userpage.cfm?role=admin&pageid=#myData.pageid#" target="_blank">Edit</button></td></a>
									<td><button class="btn btn-danger"><a href="adminpage.cfm?idToDelete=#myData.pageid#">Delete</button></td></a>
							</cfif>
						</tr>
					</cfoutput>
				</tbody>
			</table>
			<cfparam name="url.role" default="">
			<cfif url.role EQ "editor">
			<a href="userpage.cfm?role=user" target="_blank"><button class="btn btn-dark">Addnew</button></a>
			<cfelseif url.role EQ "admin">
			<a href="userpage.cfm?role=user" target="_blanck"><button class="btn btn-dark">Addnew</button></a>
			</cfif>
			<cfparam name="url.idToDelete" default="0">
			<cfif isNumeric(url.idToDelete) AND url.idToDelete neq 0>
				<!-- Perform the deletion in your database -->
				<cfquery name="deleteQuery" datasource="student">
					DELETE FROM table_page WHERE pageid = <cfqueryparam value="#url.idToDelete#" cfsqltype="cf_sql_integer">
				</cfquery>
				<cflocation url="http://localhost:8500/project/CMStask/adminpage.cfm?role=admin" addtoken="false">
			</cfif>
		</div>
	</body>
</html>

