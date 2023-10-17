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
            <cfif IsDefined("form.submit")>
                <!-- Verify CAPTCHA -->
                <cfif form.usercaptcha EQ session.captchaCode>
                <!-- CAPTCHA verification successful -->
                <!-- Process the form data here -->
                <!-- You can submit the form or execute any other action -->
                <cfif structKeyExists(form, "username") AND structKeyExists(form, "usermail") AND structKeyExists(form, "usercaptcha")>
                    <!-- Retrieve user input from the form -->
                    <cfset username = form.username>
                    <cfset usermail = form.usermail>
                    <cfset usercaptcha = form.usercaptcha>
                    <!-- Send the email using cfmail -->
                    <cftry>
                        <cfmail to="#usermail#" from="leela@gmail.com" subject="subscription mail" username="admin" password="Infoane123!">
                        <p>Hi #username#</p>
                        <p>Thanks for subscribing</p>
                        </cfmail>
                        <cflocation  url="subscription.cfm">
                        <cfcatch type="any">
                            <p>Error sending the email: #cfcatch.message#</p>
                        </cfcatch>
                    </cftry>
                </cfif>
                <cfelse>
                <!-- CAPTCHA verification failed -->
                <cfoutput>Verification failed. Please try again.</cfoutput>
                </cfif>
            </cfif>
        <body>
            <div class="container loginpage mt-5 text-center bg-white w-50">
                <div class="row">
                    <h1 class="text-center mt-3">Mail Captcha</h1>
                    <form name="loginform" method="post" action="">
                        <div class="form-group">
                            <p class="text-info">Enter username</p>
                            <input type="text" name="username" placeholder="Enter your name" class="form-control w-50 offset-3">
                            <p class="text-info">Enter usermail</p>
                            <input type="text" name="usermail" placeholder="Enter your mail" class="form-control w-50 offset-3 mb-3">
                            <div>
                                <cfset session.captchaCode = RandRange(10000, 99999) & Chr(RandRange(65, 90)) & Chr(RandRange(97, 122))><!-- Generate a random 5-character alphanumeric code -->
                                <cfimage action="captcha" width="230" height="50" text="#session.captchaCode#" font="Arial" fontSize="30"  noise="low" difficulty="medium">
                                <input type="text" name="usercaptcha" pattern="[A-Za-z0-9]{5}" title="Enter 5 letters" placeholder="Enter the above captcha" class="form-control w-50 offset-3">
                            </div>
                        </div>
                        <div>
                            <input type="submit" class="btn btn-warning mt-5 px-5" name="submit" value="Subscribe">
                        </div>
                    </form>
                </div>
            </div>
        </body>
    </html>
</cfoutput>
  
