<cfif structKeyExists(form, "username") AND structKeyExists(form, "usermail")>
    <cfdump  var="#form#">
    <!-- Retrieve user input from the form -->
    <cfset username = form.username>
    <cfset usermail = form.usermail>
    <cfset imagefile = form.imagefile>
    <cfset wishes=form.wishes>
    <cfif structKeyExists(form, "imagefile")>
        <!-- Upload the attached file and get the file path -->
        <cffile action="upload" destination= "C:\ColdFusion2021\cfusion\wwwroot\project\mailtask\images\" filefield="form.imagefile"nameconflict="makeunique">
        <cfset attachmentPath = "C:\ColdFusion2021\cfusion\wwwroot\project\mailtask\images\#cffile.serverfile#">
    </cfif>
    <!-- Send the email using cfmail -->
    <cftry>
        <cfmail to="#username#" from="senthil@gmail.com" subject="birthday mail" username="admin" password="Infoane123!">
            <p>#username#</p>
            <p>#wishes#</p>
            <cfimage action="writeToBrowser" source="#attachmentPath#" width="300px" height="300px">
            <cfif isDefined("attachmentPath")>
                <cfmailparam file="#attachmentPath#" disposition="attachment">
            </cfif>
        </cfmail>

        <!-- Display a confirmation message -->
        <cfoutput>
            <p>Email sent successfully to #form.username#!</p>
        </cfoutput>
        <cfcatch type="any">
            <p>Error sending the email: #cfcatch.message#</p>
        </cfcatch>
    </cftry>
</cfif>
