<cfcomponent>
    <cffunction name="displayJSONData" access="public" output="true">
        <cfargument name="data" required="true">
        <cfargument name="prefix" default="">
        <cfset var key = "">
        <cfloop item="key" collection="#arguments.data#">
            <tr class="text-white">
                <td>#arguments.prefix##key#</td>
                <td>
                    <cfif isSimpleValue(arguments.data[key])>
                        #arguments.data[key]#
                    <cfelseif isStruct(arguments.data[key])>
                    <cfset displayJSONData(arguments.data[key], arguments.prefix & key & ".")>
                    <cfelseif isArray(arguments.data[key])>
                        <cfloop array="#arguments.data[key]#" index="item">
                            <cfoutput>
                                <table border="1">
                                    <tr class="text-white">
                                        <td>Item</td>
                                        <td class="text-white">
                                            <cfset displayJSONData(item, arguments.prefix & key & ".")>
                                        </td>
                                    </tr>
                                </table>
                            </cfoutput>
                        </cfloop>
                    </cfif>
                </td>
            </tr>
        </cfloop>
    </cffunction>
</cfcomponent>