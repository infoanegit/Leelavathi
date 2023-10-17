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
            <style>
            form .error{
                color:red;
            }
            </style>
        </head>
        <body>
        <div class="container loginpage mt-5 text-center">
            <div class="row">
                <span><i class="fa-solid fa-user"></i></span>
                <h1 class="text-center mt-3">USER LOGIN</h1>
                <form name="loginform" method="post" action="login.cfm">
                    <div class="form-group">
                        <p>USER NAME</p>
                        <input type="text" name="username" placeholder="Enter your name" class="form-control w-50 offset-3 username">
                        <p>PASSWORD</p>
                        <input type="password" name="password" placeholder="Enter your password" class="form-control w-50 offset-3 password">
                    </div>
                    <div>
                     <input type="submit" class="btn mt-5" name="submit" value="Login">
                    </div>
                     <p id="login"></p>
                    <p>New user ?<a href='signup.cfm' class="text-warning">Sign up</a></p>
                </form>
            </div>
        </div>
        </body>
      <script>
        $(function() {
            $("form[name='loginform']").validate({
                rules:{
                    username:"required",
                    password:"required",
                },
                messages:{
                    username:{
                        required:"please enter the username",
                    },
                    password:{
                        required:"please enter the username",
                    },
                }
            });
        });
        </script>
    </html>
</cfoutput>
  
