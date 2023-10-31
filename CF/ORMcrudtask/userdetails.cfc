<cfcomponent persistent="true" entityname="Artist" table="Employee">
    <cfproperty name="id" fieldtype="id" generator="increment">
    <cfproperty name="empname" ormtype="string">
    <cfproperty name="empage" ormtype="integer">
</cfcomponent>

