 <cfcomponent>
    <cffunction  name="testfunction">
        <cfargument  name="firstname" type="string" required="false">
        <cfargument  name="lastname" type="string" required="false">
        <cfargument  name="Email" type="string" required="false">
        <cfargument  name="gender" type="string" required="false">
        <cfargument  name="age" type="String" required="false">
        <cfargument  name="location" type="string" required="false">
            <cfquery datasource="student" name="userData">
                INSERT INTO Emp_details (firstname,lastname,Email,gender,age,location)
                VALUES (
                    <cfqueryparam value="#arguments.firstname#" cfsqltype="CF_SQL_VARCHAR">
                    , <cfqueryparam value="#arguments.lastname#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.Email#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.gender#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.age#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.location#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
    </cffunction>
    <cffunction  name="updatefunction">
        <cfargument  name="firstname" type="string" required="false">
        <cfargument  name="lastname" type="string" required="false">
        <cfargument  name="email" type="string" required="false">
        <cfargument  name="gender" type="string" required="false">
        <cfargument  name="age" type="integer" required="false">
        <cfargument  name="location" type="string" required="false">
            <cfquery name="updateFormData" datasource="student">
            UPDATE Emp_details
            SET firstname = <cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
                lastname = <cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
                Email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                gender = <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
                age = <cfqueryparam value="#arguments.age#" cfsqltype="cf_sql_integer">,
                location = <cfqueryparam value="#arguments.location#" cfsqltype="cf_sql_varchar">
                WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>
   <cffunction name="getDataFromDatabase" access="public" returntype="query">
        <cfquery name="queryResult" datasource="student">
            SELECT *
            FROM Emp_details
        </cfquery>
        <cfreturn queryResult>
    </cffunction>
 </cfcomponent>