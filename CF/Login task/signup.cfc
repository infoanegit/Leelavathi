 <cfcomponent>
     <cffunction name="insertData" access="public" returntype="void">
        <cfargument name="username" type="string" required="false">
        <cfargument name="password" type="string" required="false">
        <cfquery datasource="#application.datasource.name#">
            INSERT INTO login_table (username,password)
            VALUES (
                <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar" />
            )
        </cfquery>
    </cffunction>
</cfcomponent>
