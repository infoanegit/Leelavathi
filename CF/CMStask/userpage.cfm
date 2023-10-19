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
        </head>
        <cfif structKeyExists(url, "pageid")>
                <!-- Editing mode -->
                <cfset editMode = true>
                <cfset recordID = url.pageid>
                <cfelse>
                <!-- Entering data mode -->
                <cfset editMode = false>
            </cfif>
            <cfif editMode>
                <!-- Check if a specific record exists -->
                <cfquery name="getRecord" datasource="student">
                    SELECT *
                    FROM table_page
                    WHERE pageid  = <cfqueryparam value="#url.pageid#" cfsqltype="cf_sql_integer">
                </cfquery>
                <!-- Check if the record was found before populating form fields -->
                <cfif getRecord.recordCount>
                    <cfset pagename = getRecord.pagename>
                    <cfset pagedesc = getRecord.pagedesc>
                    <cfelse>
                    <!-- Handle the case where the record was not found (e.g., show an error message) -->
                    <p>error</p>
                </cfif>
            </cfif>
                    <cfif isDefined("form.submit")>
                        <cfif structKeyExists(URL, "pageid")>
                            <cfset obj2 = createObject("component","project.CMStask.edit") />
                            <cfset result=obj2.updatefunction(pagename=form.pagename,pagedesc=form.pagedesc)/>
                            <cfelse>
                                <cfset obj1 = createObject("component","project.CMStask.edit") />
                                <cfset result=obj1.testfunction(pagename=form.pagename,pagedesc=form.pagedesc)/>
                        </cfif>
                        <cflocation  url="adminpage.cfm">
                    </cfif>
        <body> 
        <div class="container userpage mt-5">

            <div class="userheading">
            <h1 class="text-warning text-center">Enter page details</h1>
            </div>
                <div class="row userform">
                <form name="loginform" method="post" action="">
                    <div class="form-group">
                        <p class="fs-5">Page Name<span>*</span></p>
                        <input type="text" name="pagename" placeholder="Enter your pagename" class="form-control username" <cfif isDefined('url.pageid')> value="#pagename#"</cfif>>
                        <p class="fs-5">Description<span>*</span></p>
                       <textarea class="form-control" row="3" placeholder="Enter your description" name="pagedesc"><cfif isDefined('url.pageid')> #pagedesc#</cfif></textarea>
                    </div>
                    <div class="offset-5">
                     <input type="submit" class="btn btn-success mt-5 submit" name="submit" value="submit">
                    </div>
                </form>
            </div>

        </div>
                       
        </body>
    </html>
</cfoutput>
  
