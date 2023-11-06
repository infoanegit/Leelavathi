<cfcomponent>
    <cfset this.name = "MyBlog_one2one_link">
    <cfset this.ormEnabled = true>
    <cfset this.ormSettings.datasource = "test">
    <cfset this.ormSettings.logSQL = true>
    <cfset this.ormSettings.dbcreate = "update">
    <cfset this.ormSettings.dialect = "HSQL">
    <cfset this.sessionManagement = true>
    
</cfcomponent>
