<cfoutput>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Employee Form</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="./assets/js/validation.js"></script>
        </head>

            <cfif  structKeyExists(url,"id")>
                <cfset editData= EntityLoadbypk("Employee",url.id)>
                <cfparam name="form.empname" default="">
                <cfparam name="form.empage" default="">
                <cfif isNumeric(form.empage)>
                    <!-- Age value is numeric, proceed with data update -->
                    <cfset editData.setEmpname(form.empname)>
                    <cfset editData.setEmpage(form.empage)>
                    <cfset EntitySave(editData)>
                    <cflocation  url="list.cfm">
                </cfif>
            </cfif>
            <cfif structKeyExists(form, "empname") and structKeyExists(form, "empage")>
                <cfparam name="form.empname" default="">
                <cfparam name="form.empage" default="">
                <cfif isNumeric(form.empage)>
                    <!-- Age value is numeric, proceed with data insertion -->
                    <cfset newEmployee = createObject("component", "userdetails")>
                    <cftransaction>
                    <cfset newEmployee = EntityNew("Employee")>
                    <cfset newEmployee.setEmpname(form.empname)>
                    <cfset newEmployee.setEmpage(form.empage)>
                    <!-- Use ORMSave to insert the new employee -->
                    <cfset EntitySave(newEmployee)>
                    <cflocation  url="list.cfm">
                </cfif>
            </cfif>
        <body>
            <div class="container bg-dark w-25 mt-3 pb-5 text-center h-50">
                <form name="employeeForm" method="post" id="loginform">
                    <label class="text-info mt-3">Enter employee name</label>
                    <input type="text" class="form-control offset-2 w-75" name="empname" id="empname" <cfif isDefined("url.id")> value="#editData.getEmpname()#"</cfif>>
                    <label class="text-info">Enter employee age</label>
                    <input type="number" class="form-control offset-2 w-75" name="empage" maxlength="2" id="empage" <cfif isDefined("url.id")>value="#editData.getEmpage()#"</cfif>>
                    <input type="submit" class="btn btn-success mt-5" value="Submit" name="submit">
                </form>
            </div>
        </body>
    </html>
</cfoutput>