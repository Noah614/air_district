<!---<cfdump var=#CGI#>--->
hello there

<cfloop from="1" to="20" index="i">
<cfdump var = #RandRange(1,10)#>
</cfloop>

<cfdump var=#addTen(54)#>

<cffunction accsess="public" returntype="numeric" name="addTen">
<cfargument required="false" type="numeric" name="addThisToTen">
    <cfset addThisToTen = addThisToTen + 10>
<cfreturn addThisToTen>
</cffunction>

<!---
<cfset startTime = #GetTickCount()#>
<cfset delayDeration = startTime + 1000>

<cfloop condition = "#GetTickCount()# < #delayDeration#">
</cfloop>
--->

<!--- <cfquery name='contact_list'>
    insert ignore into contacts (cID,cFirstName,cLastName,cPhoneNumber)
    values (
        2,
        <cfqueryparam value="Scott">,
        <cfqueryparam value="Steinbeck">,
        <cfqueryparam value="(255) 643-7777">
    )
</cfquery> --->

<cfif structKeyExists(url,"cid")>
<cfquery name='update_contact_list'>
    UPDATE `air_district`.`contacts` 
    SET cFirstName = <cfqueryparam value="#url.name#">
    WHERE `cID` = <cfqueryparam value= "#url.cid#">
</cfquery>
</cfif>

<cfquery name='contact_list'>
-- UPDATE `air_district`.`contacts` SET `cPhoneNumber` = '(661) 864-6156' WHERE `cID` = 1
select * from contacts
</cfquery>

<!--- <cfset session.theTime = now()> --->

<!--- <cfdump var = #session#> --->
<cfdump var = #contact_list#>

<cfset num = 63>
<cfdump var = #++num#>

<cfdump var = #((1==2) ? "hello" : "bye")#>