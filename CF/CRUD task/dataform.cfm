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
            <script src="./assets/js/validation.js"></script>
        </head>
        <cfif structKeyExists(url, "id")>
            <!-- Editing mode -->
            <cfset editMode = true>
            <cfset recordID = url.id>
            <cfelse>
            <!-- Entering data mode -->
            <cfset editMode = false>
        </cfif>
        <cfif editMode>
            <!-- Check if a specific record exists -->
            <cfquery name="getRecord" datasource="student">
                SELECT *
                FROM Emp_details
                WHERE id  = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
            </cfquery>
            <!-- Check if the record was found before populating form fields -->
            <cfif getRecord.recordCount>
                <cfset firstname = getRecord.firstname>
                <cfset lastname = getRecord.lastname>
                <cfset email=getRecord.Email>
                <cfset gender=getRecord.gender>
                <cfset age=getRecord.age>
                <cfset location=getRecord.location>
                <cflocation  url="http://localhost:8500/project/dataform/dataformaction.cfm">
            <cfelse>
                <!-- Handle the case where the record was not found (e.g., show an error message) -->
                <p>error</p>
            </cfif>
        </cfif>
        <cfif isdefined("form.submit")>
            <cfset obj = createObject("component","project.CRUD task.dataformaction") />
            <cfset result = obj.testfunction(firstname=form.firstname,lastname=form.lastname,email=form.email,gender=form.gender,age=form.age,location=form.location) />
        </cfif>
        <body>
            <div class="container bg-dark text-white mb-3">
                <h1 class="bg-primary text-center p-0">CRUD</h1>
                    <form name="loginform" method="post" id="basic-form" action="dataform.cfm">
                        <div class="row">
                            <div class="form-group col-6 mt-3">
                                <label for="firstname" class="text-info">FirstName:</label>
                                <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter your first name" <cfif isDefined("url.id")>value="#firstname#"</cfif>>
                                <p id="demo" class="text-danger">
                            </div>
                            <div class="form-group col-6 mt-3">
                                <label for="lastname" class="text-info">LastName:</label>
                                <input type="text" class="form-control" id="lastname" name="lastname" placeholder="enter your lastname" <cfif isDefined("url.id")>value="#lastname#"</cfif>>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <label for="email" class="text-info">Email:</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Enter your email" <cfif isDefined("url.id")>value="#email#"</cfif>>
                        </div>
                        <div class="row mt-3" >
                            <div class="col-sm-4">
                                <label for="Gender" class="text-info">Gender:</label>
                                <div class="gender">
                                    <label><input type="radio" name="gender" value="male" checked <cfif isDefined("url.id")>value="#gender#"</cfif>><span>Male</span></label>
                                    <label><input type="radio" name="gender" value="female" <cfif isDefined("url.id")>value="#gender#"</cfif>><span>feMale</span></label><br/>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label for="age" class="text-info">age:</label>
                                <input type="text" class="form-control" name="age" id="age" placeholder="Enter your age" <cfif isDefined("url.id")>value="#age#"</cfif>>
                            </div>
                            <div class="col-sm-4">
                                <label for="location" class="text-info">location:</label>
                                <input type="text" class="form-control" name="location" id="location" placeholder="Enter yor location" <cfif isDefined("url.id")>value="#location#"</cfif>>
                            </div>
                        </div>
                        <div class="row mt-5 mb-3">
                            <div class="col-3 offset-1">
                                <button type="button" class="btn text-danger btn-outline-danger mb-3 reset-btn">clearform</button>
                            </div>
                            <div class="col-3 offset-1">
                                <button type="button" class="btn text-warning btn-outline-warning"><a href="dataformaction.cfm" target="_blank">view data</button></a>
                            </div>
                            <div class="col-3 offset-1">
                                <input type="submit" value="submit" class="btn btn-success"  onclick="return validate()" name="submit">
                            </div>
                        </div>
                    </form>
            </div>
        </body>
    </html>
</cfoutput>