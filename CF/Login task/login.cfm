<cfoutput>
    <cfparam name="form.username" default="">
    <cfparam name="form.password" default="">
    <cfset loginUsername = form.username>
    <cfset loginPassword = form.password>
    <cfquery name="getUser" datasource="student">
            SELECT username, password
            FROM login_table
            WHERE username = <cfqueryparam value="#loginUsername#" cfsqltype="CF_SQL_VARCHAR"> OR password=<cfqueryparam value="#loginPassword#" cfsqltype="CF_SQL_VARCHAR">
    </cfquery>
    <cfif getUser.recordCount>
            <!-- User not found in the database -->
        <cfset storedPassword = getUser.password>
        <cfset storedUsername= getUser.username>
        <cfif loginPassword  EQ storedPassword AND loginusername EQ storedUsername>
            <!-- Successful login -->
            <!-- Set a session variable or redirect the user -->
            <cfset session.username = form.username>
            <cfset session.password=form.password>
            <cflocation url="login2.cfm?username=#loginUsername#">
        <cfelse>
            <cfset structClear(session)>
            <p>Data does not exist</p>
        </cfif>
    </cfif>

</cfoutput>