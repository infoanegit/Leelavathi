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
             <link rel="stylesheet" href="./assets/css/style.css">
            <script src="validation.js"></script>
        </head>
        <body>
            <div class="container userdetail">
                <cfquery name="insertImage" datasource="#application.datasource.name#">
                    select * from Images where imageid=<cfqueryparam value="#url.imageid#" cfsqltype="CF_SQL_INTEGER">
                </cfquery>
                <table class="table table-dark mt-3">
                    <thead  class="tablehead">
                    <tr>
                        <th>imageName</th>
                        <th>Description</th>
                        <th>original image</th>
                    </tr>
                    </thead>
                    <tbody>
                        <cfloop query="insertImage">
                            <tr>
                                <td>#insertImage.imagename#</td>
                                <td>#insertImage.imagedesc#</td>
                                <td><cfimage action="writeToBrowser" source="C:\ColdFusion2021\cfusion\wwwroot\myfolder\#insertImage.imagefile#"></td>
                            </tr>
                        </cfloop>
                    </tbody>
                </table>
            </div>
        </body>
    </html>
</cfoutput>
