<!--- Variables  --->

<cfset PI = 3.1416 >
<cfdump  var="#PI#">
<cfset PI = "TEST STRING">
<cfdump  var="#PI#">

<!--- DUMPING NUMBERS --->

<cfdump  var="1 + 2">
<cfdump  var="#1 + 22#">
<cfdump  var="SUM OF VARIABLE - #23+42#">
<!---  Not Good Practice --->
<cfset variable = "12/26/1975">
<cfdump  var="#variable#">
<cfset UserDob = "30/08/1996">
<cfdump  var="#UserDob#">

<!--- PRINT CURRENT DATE --->
<cfset DateToday = now()>
<cfdump var = "#DateToday#">
<cfset DateToday = "#now()#">
<cfdump var = "#DateToday#">

<!--- Concatenation  --->
<cfset DateToday = "Today Date IS : ">
<cfset DateToday = DateToday & now()>
<cfdump var = "#DateToday#">

<!--- cfoutput --->

<cfset DateToday = now()>
<cfoutput>
    #DateToday#
</cfoutput>

<!--- CF DUMP  --->


<cfset DateArray = [dateFormat(now(), "short"),
 dateFormat(dateadd('d',1,now()), "short"), dateFormat(dateadd('d',2,now()), "short")]>
<cfdump var = "#DateArray#">


<cfset DateStruct = { today=dateFormat(now(), "short"), tomorrow=dateFormat(dateadd('d',1,now()), "short"), later=dateFormat(dateadd('d',2,now()), "short") }>

<cfdump var = "#DateStruct#">

<cfset aString = "hi">
<cfset aNumber = 42>
<cfset aStringAndANumber = aString & aNumber>

aString: <cfoutput>#aString#</cfoutput>
<br/>
aNumber: <cfoutput>#aNumber#</cfoutput>
<br/>
aStringAndANumber: <cfoutput>#aStringAndANumber#</cfoutput>
<br/>

<!--- DATE FUNCTION  --->

<cfset DateToday = now()>
<cfset NewYearDay = "1/1/2019">

<cfset DaysSinceTurnOfCentury = DateDiff("d", "1/1/2000", now() )>
<cfoutput>#DaysSinceTurnOfCentury#</cfoutput>
<br/>
<cfset  Agecalculate =dateDiff("YYYY", '30/08/1996', now())>
 Age of Ashok verma :<cfoutput>#Agecalculate#</cfoutput>

<!--- Date Difference Example   --->

<cfset FortyTwoDaysFromNow = DateAdd("d", now(), 42 )>
<cfdump  var="#FortyTwoDaysFromNow#">

<!--- Array Cresations IN CFML --->

<cfset arr = ["Ashok", "Verma" , 2,3,4,5,6,7,8,9,10,true] >
<cfdump  var="#arr#">
<!---  Array Print Variable  --->
<!---  Cold Fusion Array Start With 1 Not 0 --->
<cfdump  var="#arr[2]#">
<cfdump  var="#arr[1]#">
<cfdump  var="#arr[10]#">

<!--- Array Append  --->

<cfset ArrayAppend( arr,  "Tropical Drinks")>
<cfset ArrayAppend( arr,  42)>
<cfdump var="#arr#">

<!---Evaluate When Defining Array In Cold Fusion   --->

<cfset ImportantDates = ["12/26/1975", now() ]>
<cfdump var = "#ImportantDates#">

<!--- Itreate Array Elements in CF LOOP --->
<cfloop array="#arr#" index="thing">
    <cfoutput>#thing#</cfoutput>
</cfloop>
<br/>

<!--- Average Values in Array  --->

<cfscript>
       myArray=[1,2,3,4,5,5.5,6,7,8,9];
       writeOutput(ArrayAvg(myArray)); // returns 5.05
</cfscript>