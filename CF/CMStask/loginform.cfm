<cfoutput>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"> </script>  
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"> </script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/validation.js"></script>
            <style>
            form .error{
                color:red;
            }
            </style>
        </head>
        <cfif isDefined("form.submit")>

            <cfset username=form.username>
            <cfset password=form.password>
            <cfquery name="userdata" datasource="#application.datasource.name#">
                select * from table_user WHERE username = <cfqueryparam value="#username#" cfsqltype="CF_SQL_VARCHAR"> and
                password=<cfqueryparam value="#password#" cfsqltype="CF_SQL_VARCHAR">
            </cfquery>
            <cfset session.username=username>
            <cfset session.password=password>
            <cfif userdata.recordCount>
                <cfset session.role=userdata.role>
                <cfif session.role EQ "admin">
                    <cflocation url="http://localhost:8500/project/CMStask/adminpage.cfm?session.role=admin" addtoken="false">
                <cfelseif session.role EQ "Editor">
                    <cflocation url="http://localhost:8500/project/CMStask/adminpage.cfm?session.role=Editor" addtoken="false">
                <cfelseif session.role EQ "user">
                    <cflocation  url="http://localhost:8500/project/CMStask/adminpage.cfm?session.role=Editor" addtoken="false">
                </cfif>
            <cfelse>
                <p>invalid credentials</p>
            </cfif>
        </cfif>
        <body>
            <div class="container loginpage mt-5 text-center">
                <div class="row">
                    <span><i class="fa-solid fa-user"></i></span>
                    <h1 class="text-center mt-3">USER LOGIN</h1>
                    <form name="loginform" method="post" action="">
                        <div class="form-group">
                            <p>USER NAME</p>
                            <input type="text" name="username" placeholder="Enter your name" class="form-control w-50 offset-3">
                            <p>PASSWORD</p>
                            <input type="password" name="password" placeholder="Enter your password" class="form-control w-50 offset-3">
                        </div>
                        <div>
                        <input type="submit" class="btn btn-success mt-5" name="submit" value="Login">
                        </div>
                    </form>
                </div>
            </div>
        </body>
    </html>
</cfoutput>
  
