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
            <div class="container">
               <ul>
                <cfloop index="i" from="1" to="3">
                <cfoutput>
                <li>
                <cfloop index="j" from="#i#" to="9" step="3">
                #j#
                </cfloop>
                <br/>
                </cfoutput>
                </li>
                </cfloop>
                </ul>
            </div>
        </body>
    </html>
</cfoutput>



