<cfoutput>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"> </script>  
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script src="./assets/js/validation.js"></script>
        </head>
            <cfset folderCreator = createObject("component", "project.mailtask.mailform")>
            <cfset folderPath = "C:\ColdFusion2021\cfusion\wwwroot\project\mailtask\images">
            <cfset folderCreator.createFolder(folderPath)>
        <body>
            <div class="container bg-dark text-white mb-3">
                <div class="container loginpage mt-5 text-center w-50">
                <div class="row">
                    <h1 class="text-center mt-3 text-warning">Send your wishes to your favourite</h1>
                    <form action="mailformaction.cfm" name="loginform" method="post" id="loginform" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="text-info">Name of the Birthday celebrant</label>
                            <input type="text" name="username" placeholder="Enter your name" class="form-control offset-2 w-75" id="username">
                            <p id="error"></p>
                            <label class="text-info">Birthday celebrant Mailid</label>
                            <input type="text" name="usermail" placeholder="Enter your mail" class="form-control w-75 offset-2 mb-3" id="usermail">
                            <p id="error-mail"></p>
                            <label class="text-info">Greeting image</label>
                            <input type="file"  class="form-control" name="imagefile" id="fileInput" >
                            <span id="error-message"></span>
                            <label class="text-info">Birthday wishes</label>
                            <textarea class="form-control" row="2" name="wishes" id="bwishes" ></textarea>
                            <p id="error-text"></p>
                        </div>
                        <div>
                            <input type="submit" class="btn btn-success mt-5 px-5" name="submit" value="Send mail">
                        </div>
                    </form>
                </div>
            </div>
        </body>
    </html>
</cfoutput>
 