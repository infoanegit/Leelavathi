
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
				<a href="loginform.cfm"><input type="submit" value="Add New" class="btn btn-success mb-3"/></a>
				<cfset ARTISTS = EntityLoad("userdetails")>
				<cfif structKeyExists(url,"id")>
					<cfset deleteData = EntityLoadbypk("userdetails",url.id)>
					<cfset EntityDelete(deleteData)>
					<cflocation  url="list.cfm" addtoken="false">
				</cfif>
					<table class="table">
						<thead  class="tablehead table-dark">
							<tr>
								<th>Employee Name</th>
								<th>Employee Age</th>
								<th colspan = "2">update/delete</th>
							</tr>
						</thead>
						<tbody class="table-light">
							<cfoutput>
								<cfloop array="#ARTISTS#" index="book">
									<tr>
										<td>#book.GetEmpname()#</td>
										<td>#book.GetEmpage()#</td>
										<td><a href="loginform.cfm?id=#book.Getid()#" class="btn btn-info mx-3">Edit</a><a href="list.cfm?id=#book.Getid()#" class="btn btn-secondary">Delete</a></td>
									</tr>
								</cfloop>
							</cfoutput>
						</tbody>
					</table>
			</div>
		</body>
	</html>