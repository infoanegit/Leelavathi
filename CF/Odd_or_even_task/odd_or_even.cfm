<cfoutput>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="./assets/js/validation.js"></script>
        </head>
        <body>
            <div class="container bg-dark mb-5 pb-5 w-50">
                <div class="row justify-content-center align-items-center flex-column">
                    <div class="square bg-white h-50 w-50 mt-5 rounded-lg">
                        <h1 class="text-center">ODD/EVEN</h1>
                        <h4 class="text-center">Enter any number</h4>
                        <div class="row flex-column justify-content-center align-items-center">
                            <form action="" name="myForm" method="post" id="myForm">
                                <input type="text" name="number" id="number">
                                <div class="align-center mx-5 my-3">
                                    <input type="submit" value="submit" name="submit" class="btn btn-secondary" onclick="return myFunction()">
                                </div>
                            </form>
                        </div>
                    </div>    
                </div>
                <cfif isDefined("form.submit")>
                    <cfset x=form.number>
                    <p class="bg-secondary col-9 offset-2 mt-5 rounded-lg">Odd numbers are in blue and even numbers are in green</p>
                    <cfloop index="i" from="1" to="#x#">
                        <cfif i MOD 2 EQ 0>
                            <p id="even" class="text-success text-center">#i#</p>
                        <cfelse>
                            <p id="odd" class="text-primary text-center">#i#</p>
                        </cfif>
                    </cfloop>
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>


