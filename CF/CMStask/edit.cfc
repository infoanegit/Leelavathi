<cfcomponent>
    <cffunction name="testfunction" access="public" returntype="void">
        <cfargument name="pagename" type="string" required="yes">
        <cfargument  name="pagedesc" type="string" required="yes">
        <cfquery datasource="#application.datasource.name#">
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
            <cfquery name="updateFormData" datasource="#application.datasource.name#">
            UPDATE table_page
            SET pagename = <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                pagedesc = <cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
                WHERE pageid = <cfqueryparam value="#url.pageid#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>
    <cffunction name="getDataFromDatabase" access="public" returntype="query">
        <cfquery name="queryResult" datasource="#application.datasource.name#">
            SELECT *
            FROM table_page
        </cfquery>
        <cfreturn queryResult>
    </cffunction>
    <cffunction name="getData" access="public" returntype="query">
        <cfquery name="query" datasource="#application.datasource.name#">
            SELECT *
            FROM table_user
        </cfquery>
        <cfreturn query>
    </cffunction>
</cfcomponent>
