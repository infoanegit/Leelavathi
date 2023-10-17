<cfcomponent>
<cfset this.name="MyApplication">
<cfset this.sessionManagement = true>
  <!-- onRequestStart function -->
    <cffunction name="onRequestStart" access="public" returntype="void" output="false">
        <cfset isAdmin = false> <!-- Default to non-admin user -->
        
        <!-- Determine the user's role based on your authentication mechanism -->
        <cfif StructKeyExists(session, "userRole")>
            <cfif session.userRole EQ "admin">
                <cfset isAdmin = true>
            </cfif>
        </cfif>
        
        <!-- Call the appropriate function based on the user's role -->
        <cfif isAdmin>
            <cfset updatefunction()>
        <cfelse>

        </cfif>
    </cffunction>
</cfcomponent>