<cfoutput>
    <head>
        <link rel="stylesheet" href="./assets/css/style.css">	
    </head>
    <cfset apiKey = "AIzaSyALeu-bFV9bNPKmmhF7sLBi542yQerOfnc">
    <cfset channelId = "UCJF4y2nyCCrDKTgA7dxz1Qw">
    <cfhttp url="https://www.googleapis.com/youtube/v3/search?key=#apiKey#&channelId=#channelId#" method="get" result="response">
    </cfhttp>
    <cfdump  var="#response#">
    <cfset responseData = DeserializeJSON(response.fileContent)>
    <cfdump  var="#responseData#">
    <cfset videoid = ''>
    <cfif structKeyExists(responseData, "items") and isArray(responseData.items) and arrayLen(responseData.items) gt 0>
        <cfset videoid = responseData.items[1].id.videoId>
    </cfif>
    <cfif len(videoid)>
        <div class="mx-auto text-center mt-5">
            <iframe width="500" height="300" src="https://www.youtube.com/embed/#videoid#" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen controls autoplay></iframe>
        </div>
    </cfif>
</cfoutput>
