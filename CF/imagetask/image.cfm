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
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
             <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/validation.js"></script>
        </head>
            <cfset folderCreator = createObject("component", "project.imagetask.editor")>
            <cfset folderPath = "C:\ColdFusion2021\cfusion\wwwroot\myfolder">
            <cfset folderPath = "C:\ColdFusion2021\cfusion\wwwroot\thumbnail">
            <cfset folderCreator.createFolder(folderPath)>
            <cfif structKeyExists(form, "imagefile")>
                <cffile action="upload" destination="C:\ColdFusion2021\cfusion\wwwroot\myfolder" filefield="imageFile" accept=".png,.jpg,.gif" strict="false" result="uploadimg" nameconflict="makeunique">
                <cfset imagefile="#uploadimg.serverfile#">
                <cfset imageFileName = form.imagefile>
                <cfset imageName = form.imagename>
                <cfset imagedesc=form.imagedesc>
                <cfset obj1 = createObject("component", "project.imagetask.editor")>
                <cfset result=obj1.insertData(imageName,imagedesc,imagefile)>
            </cfif>
        <body>
           <div class="container imagetask">
                <div class="container bg-dark mt-5 py-3">
                    <h1 class="text-center">Image function and upload validation</h1>
                </div>
                <div class="bg-white py-3">
                   <form id="fileUploadForm" enctype="multipart/form-data" action="" method="post">
                        <div class="row">
                            <label class="col-5 offset-2">image Name</label>
                            <input type="text" class="col-3" placeholder="enter your image name" name="imagename" id="imagename">
                            <span id="error"></span>
                        </div>
                        <div class="row mt-5">
                            <label class="col-5 offset-2">Description</label>
                            <textarea class="col-3" row="2" name="imagedesc" id="imagedesc"></textarea>
                            <p id="error-desc"></p>
                        </div>
                         <div class="mt-3">
                            <input type="file" class="offset-1" name="imagefile" id="fileInput"/>
                            <span id="error-message"></span>
                           
                            <input type="submit" value="submit" class="bg-success offset-3 px-3" id="uploadbutton"/>
                        </div>
                    </form>
                     <a href="list.cfm"><input type="submit" value="List" class="bg-warning px-3 offset-5"/></a>
                </div>
           </div>
        </body>
    </html>
</cfoutput>
 <script>
    $(document).ready(function() {
        $('#fileUploadForm').on('submit', function(e) {
            e.preventDefault();
            var imagename=$("#imagename").val();
            var imagedesc=$("#imagedesc").val();
            var fileInput = $('#fileInput')[0];
            var errorText = $('#error-message');

            if(imagename==""){
                $("#error").text("please fill the field");
            }
            if(imagedesc==""){
                $("#error-desc").text("please fill the field");
            }
            if (fileInput.files.length === 0) {
                errorText.text('Please select a file.');
                return;
            }

            var allowedTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'];
            var maxFileSize = 1 * 1024 * 1024; // 5MB

            var file = fileInput.files[0];

            if (allowedTypes.indexOf(file.type) === -1) {
                errorText.text('Invalid file type. Allowed types: JPG, JPEG, PNG, GIF');
                return;
            }

            if (file.size > maxFileSize) {
                errorText.text('File size exceeds the maximum allowed size (5MB).');
                return;
            }
    
        
            this.submit();
        });
    });
</script>
