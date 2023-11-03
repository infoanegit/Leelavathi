    <!---Accountsid to autohrise--->
<cfset twilioAccountSid = "ACaf0d6a910bf145d921f92b2db9baa0d6">
<!---AuthoriseID---->
<cfset twilioAuthToken = "74faed23c9b1e12d3178d412a960a622">
<!---from and to number for sending message--->
<cfset twilioWhatsAppNumber = "+14155238886">
<cfset recipientNumber = "+917680910264">
<cfset twilioFlowResource = (
    "https://api.twilio.com/2010-04-01/Accounts/#twilioAccountSid#/Messages.json"
    ) />
<cfset message = "hema!">
 <cfhttp result="httpresponse" method="post" url="#twilioFlowResource#">
    <cfhttpparam name="Authorization" type="header" value="Basic #toBase64('ACaf0d6a910bf145d921f92b2db9baa0d6:' & twilioAuthToken)#">
    <cfhttpparam name="From" type="formfield" value="whatsapp:#twilioWhatsAppNumber#">
    <cfhttpparam name="To" type="formfield" value='whatsapp:#recipientNumber#'>
    <cfhttpparam  name="Body"type="formfield" value="#message#">
</cfhttp>
<p align="center">your message is send successfull</p>
