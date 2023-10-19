<cfcomponent>
<cfset this.name="MyApplication2">
<cfset this.sessionManagement = true>
    <cffunction name="onApplicationStart" access="public" returntype="void">
        <!-- Define your data source configuration -->
        <cfset application.datasource = {
            name: "student",
            username: "admin",
            password: "Infoane123!"
        }>
    </cffunction>
  <!-- onRequestStart function -->
    <cffunction name="onRequestStart" access="public" returntype="void" output="false">
        <cfset application.obj = createObject("component","project.CMStask.edit") />

<cfif NOT isDefined("session.username") AND listLast(cgi.SCRIPT_NAME,"/") EQ "loginform.cfm">
    <cflocation url="loginform.cfm" addtoken="false">
</cfif>
    </cffunction>
</cfcomponent>