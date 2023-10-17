<cfcomponent>
    <cffunction name="insertUser" access="public" returntype="void">
        <cfargument name="username" type="string" required="yes">
        <cfargument name="Password" type="string" required="yes">
        
        <cfset role = "user"> <!-- Default role for regular users -->
        
        <!-- Check if the username is "admin" -->
        <cfif arguments.username EQ "admin">
            <cfset role = "admin">
        <cfelseif arguments.username EQ "editor">
            <cfset role="editor">
        </cfif>
        
        <!-- Insert the user into the database with the determined role -->
        <cfquery datasource="student">
            INSERT INTO table_user (username, password, role)
            VALUES (
                <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#role#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
    </cffunction>
    <cffunction name="testfunction" access="public" returntype="void">
        <cfargument name="pagename" type="string" required="yes">
        <cfargument  name="pagedesc" type="string" required="yes">
        <cfquery datasource="student">
            INSERT INTO table_page (pagename,pagedesc)
            VALUES(
                <cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.pagedesc#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
    </cffunction>
    <cffunction  name="updatefunction">
        <cfargument  name="pagename" type="string" required="false">
        <cfargument  name="pagedesc" type="string" required="false">
            <cfquery name="updateFormData" datasource="student">
            UPDATE table_page
            SET pagename = <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                pagedesc = <cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
                WHERE pageid = <cfqueryparam value="#url.pageid#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>
    <cffunction name="getDataFromDatabase" access="public" returntype="query">
        <cfquery name="queryResult" datasource="student">
            SELECT *
            FROM table_page
        </cfquery>
        <cfreturn queryResult>
    </cffunction>
    <cffunction name="getData" access="public" returntype="query">
        <cfquery name="query" datasource="student">
            SELECT *
            FROM table_user
        </cfquery>
        <cfreturn query>
    </cffunction>
</cfcomponent>
