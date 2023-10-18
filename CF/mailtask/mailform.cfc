<cfcomponent>
    <cffunction name="createFolder" access="public" returntype="void">
        <cfargument name="folderPath" type="string" required="true">
        <cfif not directoryExists(arguments.folderPath)>
            <cfset directoryCreate(arguments.folderPath)>
        </cfif>
    </cffunction>
</cfcomponent>

