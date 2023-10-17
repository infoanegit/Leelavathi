    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <style>
            img{
            height:300px;
            width:300px;
            }
            </style>
        </head>
        <body>
            <div class="container text-center welcome bg-info">
                <img src="./assets/images/welcome.jpg">
                <cfset username = URL.username>
                <p class="fs-1 text-white">
                <cfoutput>#username#</cfoutput>
                </p>
                <div>
                <a href="welcome.cfm"><input type="submit" value="log out" class="btn btn-success px-5 my-5"/></a>
            </div>
        </body>
    </html>


