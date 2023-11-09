<cfoutput>
    <html lang="en">
		<head>
			<title>Document</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
			<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
			<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
			<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
			<script src="datatables.js"></script>
		</head>
		<body>
			<div class="container mt-3 text-center">
				<cfset myComponent = createObject("component", "proses")>
				<cfparam name="myData" default="#myComponent.getDataFromDatabase()#">
				<!-- Now, you can use 'myData' in your view -->
				<table id="example" class="stripe" style="width:50%">
					<thead class="bg-secondary">
						<tr>
							<th>emp_id</th>
							<th>fname</th>
							<th>minit</th>
							<th>lname</th>
							<th>job_id</th>
							<th>job_lvl</th>
							<th>pub_id</th>
							<th>hire_date</th>
						</tr>
					</thead>
					<tbody class="bg-info">
						<cfloop query="myData">
							<tr>
								<td>#myData.emp_id#</td>
								<td>#myData.fname#</td>
								<td>#myData.minit#</td>
								<td>#myData.lname#</td>
								<td>#myData.job_id#</td>
								<td>#myData.job_lvl#</td>
								<td>#myData.pub_id#</td>
								<td>#myData.hire_date#</td>
							</tr>
						</cfloop>
					</tbody>
				</table>
			</div>
		</body>
    </html>
</cfoutput>
