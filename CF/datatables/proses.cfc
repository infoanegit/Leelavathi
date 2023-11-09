<cfcomponent>
       <cffunction name="getDataFromDatabase" access="public" returntype="query">
        <cfquery name="queryResult" datasource="testdsn">
            SELECT *
            FROM [dbo].[employee]
        </cfquery>
        <cfreturn queryResult>
    </cffunction>
</cfcomponent>