<cfcomponent>
    <cfset this.name = "MyBlog_one2one_link">
    <cfset this.ormEnabled = true>
    <cfset this.ormSettings.datasource = "test">
    <cfset this.ormSettings.logSQL = true>
    <cfset this.ormSettings.dbcreate = "update">
    <cfset this.ormSettings.dialect = "HSQL">
    <cfset this.sessionManagement = true>
    <cffunction name="onError">
        <cfargument name="Exception" required=true/>
        <cfargument type="String" name="onApplicationStart" required=true/>
        <!--- Log all errors. --->
        <cflog file="#This.Name#" type="error"
        text="Event Name: #Arguments.Eventname#" >
        <cflog file="#This.Name#" type="error"
        text="Message: #Arguments.Exception.message#">
        <cflog file="#This.Name#" type="error"
        text="Root Cause Message: #Arguments.Exception.rootcause.message#">
        <!--- Display an error message if there is a page context. --->
        <cfif NOT (Arguments.EventName IS "onSessionEnd") OR
        (Arguments.EventName IS "onApplicationEnd")>
        <cfoutput>
        <h2>An unexpected error occurred.</h2>
        <p>Please provide the following information to technical support:</p>
        <p>Error Event: #Arguments.EventName#</p>
        <p>Error details:<br>
        <cfdump var=#Arguments.Exception#></p>
        </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>
