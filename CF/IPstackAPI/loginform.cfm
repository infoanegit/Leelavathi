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
        <cfparam  name="userIP" default="">
        <cfif structKeyExists(form, "ipAddress")>
            <cfset userIP=form.ipAddress>
            <cfif userIP neq "">
                <cfset apiKey = "8e0783f4b54c54e67926455574dccd05">
                <cfhttp url="http://api.ipstack.com/#userIP#?access_key=#apiKey#" result="httpResponse">
                </cfhttp>
                <cfdump  var="#httpResponse.filecontent#">
                <!-- Parse the JSON response -->
                <cfset jsonResponse = deserializeJSON(httpResponse.filecontent)>

                <!-- Check if the response contains an error field -->
                <cfif structKeyExists(jsonResponse, "error")>
                    <p>Error: #jsonResponse.error.info#</p>
                <cfelse>
                    <!-- Output the response data in a table -->
                    <table border="1" class="table-dark text-white">
                        <tr>
                            <th>Field</th>
                            <th>Value</th>
                        </tr>
                        <cfset obj=createObject("component", "project.IPstackAPI.loginform")>
                        <cfset result=obj.displayJSONData(jsonResponse, "")>
                    </table>
                </cfif>
            </cfif>
        </cfif>
        <body>
            <div class="container bg-primary w-50 mt-3 pb-5 text-center">
                <h1>Enter your IP address</h1>
                <form name="loginform" method="post" id="loginform">
                <input type="text" class="form-control offset-2 w-75" name="ipAddress" value="#userIP#" id="ipadd">
                <input type="submit" class="btn btn-success mt-5" value="submit" name="submit">
            </div>
        </body>
    </html>
</cfoutput>
