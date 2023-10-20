<cfoutput>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="validation.js"></script>
            <link rel="stylesheet" href="./assets/css/style.css">
        </head>
        <body>
            <div class="container datebody w-50 mt-3 pb-5">
                <div class="row justify-content-center align-items-center flex-column">
                    <div>
                        <h1 class="bg-warning text-center heading mt-3">Date Functions</h1>
                    </div>
                    <div class="square h-50 w-75 bg-white text-dark p-5 text-center">
                        <h5>Today Date:<span class="text-primary">#DateFormat(Now(), "dd-mm-yyyy")#</span></h5>
                        <h5>Current month in numeric:<span class="text-primary">#DateFormat(Now(), "mm")#</span></h5>
                        <h5>Current month in word:<span class="text-primary">#MonthAsString(DateFormat(Now(), "mm"))#</span></h5>
                        <cfset currentDate = Now()>

                        <!-- Find the most recent Wednesday (or today if it's already Wednesday) -->
                        <cfloop condition="DayOfWeek(currentDate) neq 4">
                            <cfset currentDate = DateAdd("d", -1, currentDate)>
                        </cfloop>
                        <h5>Last wednesday date:<span class="text-primary">#DateFormat(currentDate, "dd-mm-yyyy")#</span></h5>
                        <cfset currentDate = Now()>

                        <!-- Set the current date to the first day of the next month -->
                        <cfset firstDayOfNextMonth = CreateDateTime(Year(currentDate), Month(currentDate) + 1, 1, 0, 0, 0)>

                        <!-- Subtract one day to get the last day of the current month -->
                        <cfset lastDayOfCurrentMonth = DateAdd("d", -1, firstDayOfNextMonth)>

                        <h5>Last day of the month:<span class="text-primary">#DateFormat(lastDayOfCurrentMonth, "dddd")#</span></h5>

                    </div>
                    <div class="square h-50 w-75 text-dark p-5 output text-center">
                        <cfset currentDate = Now()>
                        <h2 class="text-primary">Last 5 Dates&days</h2>
                        <table class="text-center">
                            <cfloop index="i" from="1" to="5">
                                <cfset currentDate = DateAdd("d", -i, Now())>
                                <cfset dayOfWeek = DayOfWeek(currentDate)>
                                <cfset dateColor = "black">
                                <cfif dayOfWeek eq 1>
                                    <cfset dateColor = "red">
                                    <cfelseif dayOfWeek eq 2>
                                        <cfset dateColor = "green">
                                    <cfelseif dayOfWeek eq 3>
                                        <cfset dateColor = "orange">
                                    <cfelseif dayOfWeek eq 4>
                                        <cfset dateColor = "yellow">
                                    <cfelseif dayOfWeek eq 5>
                                        <cfset dateColor = "pink; font-weight: bold;">
                                    <cfelseif dayOfWeek eq 6>
                                        <cfset dateColor = "blue">
                                    <cfelseif dayOfWeek eq 7>
                                        <cfset dateColor = "red; font-weight:bold;">
                                </cfif>
                                <tr>
                                    <td style="color: #dateColor#">#DateFormat(currentDate, "yyyy-mm-dd")#</td>
                                    <td style="color: #dateColor#">#DateFormat(currentDate, "dddd")#</td>
                                </tr>
                            </cfloop>
                        </table>
                    </div>
                </div>
            </div>
        </body>
    </html>
</cfoutput>