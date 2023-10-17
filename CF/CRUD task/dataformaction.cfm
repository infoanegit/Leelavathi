<cfoutput>
    <html lang="en">
		<head>
			<title>Dataform action</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
			<script src="validation.js"></script>
		</head>
		<body>
			<div class="container mt-3">
				<cfset myComponent = createObject("component", "project.CRUD task.dataformaction")>
				<cfparam name="myData" default="#myComponent.getDataFromDatabase()#">
				<!-- Now, you can use 'myData' in your view -->
				<button class="btn btn-warning"><a href="dataform.cfm">Back</a></button>
				<button class="btn btn-success"><a href="dataform.cfm">ADD NEW</a></button>          
				<table class="table">
					<thead>
						<tr class="table-dark">
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>gender</th>
							<th>age</th>
							<th>location</th>
							<th>update/delete</th>
						</tr>
					</thead>
					<tbody>
						<cfoutput query="myData">
							<tr>
								<td>#myData.firstname#</td>
								<td>#myData.lastname#</td>
								<td>#myData.email#</td>
								<td>#myData.gender#</td>
								<td>#myData.age#</td>
								<td>#myData.location#</td>
								<td><button class="btn btn-info"><a href="dataform.cfm?id=#myData.id#">Edit</button></td></a>
								<td><button class="btn btn-danger"><a href="dataformaction.cfm?idToDelete=#myData.id#" class="btn">Delete</button></td></a>
							</tr>
						</cfoutput>
					</tbody>
				</table>
			</div>
			<cfparam name="url.idToDelete" default="0">
			<cfif isNumeric(url.idToDelete) AND url.idToDelete neq 0>
				<!-- Perform the deletion in your database -->
				<cfquery name="deleteQuery" datasource="student">
					DELETE FROM Emp_details WHERE ID = <cfqueryparam value="#url.idToDelete#" cfsqltype="cf_sql_integer">
				</cfquery>
				<cflocation url = "http://localhost:8500/project/dataform/dataformaction.cfm" addToken = "no"> 
			</cfif>
		</body>
    </html>
</cfoutput>
