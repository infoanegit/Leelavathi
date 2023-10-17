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
        </head>
            <cfif isdefined("form.submit")>
            <cfset myApp = createObject("component","project.Login task.signup")>
            <cfset myApp.insertData(form.username,form.password)>
            <cflocation  url="http://localhost:8500/project/Login%20task/welcome.cfm" addToken="no">
            </cfif>
        <body>
            <div class="container loginpage mt-5 text-center">
                <div class="row">
                    <form name="loginform" method="post" id="basic-form">
                        <div class="form-group">
                            <p>Give your user name</p>
                            <input  type="text" name="username" placeholder="Enter your name" class="form-control w-50 offset-3 username" id="uname">
                            <p id="error"></p>
                            <p>Give your password</p>
                            <input  type="password" name="password" placeholder="Enter your password" class="form-control w-50 offset-3 password" id="psw">
                            <p id="error1"></p>
                        </div>
                        <div>
                        <input type="submit" class="btn mt-5" name="submit" value="signup" onclick="return myFunction()">
                        </div>
                    </form>
                </div>
            </div>
        </body>
        <script>
            function myFunction(){
                let uname=document.getElementById("uname").value;
                let psw=document.getElementById("psw").value;
                if(uname==""){
                    document.getElementById("error").innerHTML="please enter the username";
                    return false;
                }
                else if(psw==""){
                    document.getElementById("error1").innerHTML="please enter the password";
                    return false;
                }
            }
        </script>
    </html>
</cfoutput>