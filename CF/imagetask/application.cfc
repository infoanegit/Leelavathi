<cfcomponent>
    <cfset this.name = "MyCFApplication">
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
</cfcomponent>