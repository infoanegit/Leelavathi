<cfcomponent>
    <cffunction name="createFolder" access="public" returntype="void">
        <cfargument name="folderPath" type="string" required="true">
        <cfif not directoryExists(arguments.folderPath)>
            <cfset directoryCreate(arguments.folderPath)>
        </cfif>
    </cffunction>
    <cffunction name="insertData" access="public" returntype="void">
        <cfargument  name="imagename" type="string" required="false">
        <cfargument  name="imagedesc" type="string" required="false">
        <cfargument name="imagefile" type="string" required="false">
        <cfquery  datasource="#application.datasource.name#">
                INSERT INTO Images (imagename, imagedesc,imagefile)
                VALUES (
                    <cfqueryparam value="#arguments.imagename#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.imagedesc#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.imagefile#" cfsqltype="CF_SQL_VARCHAR">
                )
        </cfquery>
    </cffunction>
</cfcomponent>

