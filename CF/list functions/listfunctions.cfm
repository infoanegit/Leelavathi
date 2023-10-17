<cfoutput>
    <html>
		<head>
			<title>list functions</title>
			<meta charset="UTF-8">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
			<link rel="stylesheet" href="style.css">

		</head>
		<body>
			<form action="" name="myForm" method="post" id="myForm">
				<div class="listfunction">
					
					<h1>List Functions(divisible by 3)</h1>
					<div class="listvalues">
							<label>Enter a list:</label><input type="text" id="list" name="flist" class="flist">
				<input type="submit" id="submitbtn" name="submit" value="Submit" class="button" onclick="return myFunction()" />
			</div>
					
				</div>
				</form>
				<cfif isDefined("form.submit")>
					<cfset x=form.flist>
					<cfset out="">
					<cfloop list="#x#" item="item">
						<cfif item MOD 3 EQ 0>
							<cfset out=listAppend(out,item)>
						</cfif>
					</cfloop>
					<p id="demo">#out#</p>
			</cfif>
			<script>
					function myFunction(){
						var x=document.getElementById("list").value;
						if(x==""){
							alert("please enter the input");
						}   
					}
			</script>
		</body>
    </html>
</cfoutput>












