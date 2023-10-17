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
            <script src="./assets/js/validation.js"></script>
            <style>
            form .error{
                color:red;
            }
            a{
                text-decoration:none;
                color:black;
            }
            </style>
        </head>
        <body>
            <div class="container mt-5 bg-success text-center">
                <div class="row text-center">
                    <h1 class="text-center mt-3">Email Address successfully subscribed to our newsletter</h1>
                    <a href="mailcaptcha.cfm"><button class="btn btn-info col-3 offset-5 mb-5">Logout</a></button>
                </div>
            </div>
        </body>
    </html>
</cfoutput>
  
