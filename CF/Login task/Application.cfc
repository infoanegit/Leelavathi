<cfcomponent>
    <cfset this.name = "MyApplication">
    <cfset this.sessionManagement=true>
    <cfset this.applicationTimeout = createTimeSpan(0, 2, 0, 0)>
    
    <!-- Define the onApplicationStart function -->
    <cffunction name="onApplicationStart" access="public" returntype="void">
        <!-- Define your data source configuration -->
        <cfset application.datasource = {
            name: "student",
            username: "admin",
            password: "Infoane123!"
        }>
    </cffunction>
    <cffunction name="OnRequestStart" access="public" returntype="void">
            <cfif NOT isDefined("session.username") AND ListLast(cgi.SCRIPT_NAME, "/") EQ "login2.cfm">
                <cflocation url="welcome.cfm" addtoken="false">
            <cfelseif (isDefined("session.username") AND ListLast(cgi.SCRIPT_NAME, "/") EQ "welcome.cfm") OR (ListLast(cgi.SCRIPT_NAME, "/") EQ "signup.cfm")>
                <cflocation url="login2.cfm" addtoken="false">
            </cfif>
    </cffunction>  
</cfcomponent>






