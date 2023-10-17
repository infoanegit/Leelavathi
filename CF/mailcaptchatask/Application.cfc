<cfcomponent>
    <cfset this.name = "MyApplication">
    <cfset this.sessionManagement=true>
    <cfset this.applicationTimeout = createTimeSpan(0, 2, 0, 0)>
</cfcomponent>