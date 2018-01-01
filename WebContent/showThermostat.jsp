<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<meta http-equiv="refresh" content="30">
<title>Thermostat</title>
</head>
<body>


<table border=1>
<tr><td align="center" >
<table border=1 cellpadding=3 cellspacing=1>
<tr>
<td align="center" BGCOLOR=#81DAF5>Current instruction</td>
<td align="center" BGCOLOR=#81DAF5><a align="center" href="/domotique/tempGraph.html" target="_blank">Inside temperature</a></td>
<td align="center" BGCOLOR=#81DAF5><a align="center" href="/domotique/meteoGraph.html" target="_blank">Outside temperature</a></td>
  
</tr>
<tr>
<td align="center" BGCOLOR=#81DAF5><%= request.getAttribute("currentInstruction")%>°C</td>
<td align="center" BGCOLOR=#81DAF5><%= request.getAttribute("currentTemp")%>°C</td> 
<td align="center" BGCOLOR=#81DAF5><%= request.getAttribute("externalTemp")%>°C</td>   
</tr>
<tr>
<td align="center" BGCOLOR=#E0ECF8>Heating </td>
<td align="center" BGCOLOR=#E0ECF8>Water temperature</td>
<td align="center" BGCOLOR=#E0ECF8>Running mode</td>
</tr>
<tr>
<td align="center" BGCOLOR=#E6E6E6><%= request.getAttribute("relay")%></td>
<td align="center" BGCOLOR=#E6E6E6><%= request.getAttribute("waterOut")%>°C/<%= request.getAttribute("waterIn")%>°C</td>   
<td align="center" BGCOLOR=#E6E6E6><%= request.getAttribute("mode")%></td> 
</tr>
</table>

<table align="center"  border=1 cellpadding=3 cellspacing=1>
<tr >
<td BGCOLOR=#CECEF6> Change instruction____</td>
<td BGCOLOR=#CECEF6>

<form method=post>

    	 <select name="temperature">
    	 <option value="" selected></option>
    	 <option value="140">14.0°C</option>
    	 <option value="150">15.0°C</option>
    	 <option value="160">16.0°C</option>
    	 <option value="170">17.0°C</option>
    	 <option value="175">17.5°C</option>
    	 <option value="180">18.0°C</option>
    	 <option value="185">18.5°C</option>
         <option value="190">19.0°C</option>
         <option value="195">19.5°C</option>
         <option value="200">20.0°C</option>
         <option value="205">20.5°C</option>
         <option value="210">21.0°C</option>
         <option value="215">21.5°C</option>
         <option value="220">22.0°C</option>
         <option value="225">22.5°C</option>       
		</select>
		<input type="hidden" name="return" value="tempOverview"/>
     	<input type="submit" value="Selection" title="choisir la temperature" />

</form>
</td>
</tr>
</table>
<table align="center"  border=1 cellpadding=3 cellspacing=1>
<tr >
<td BGCOLOR=#E6E0F8> Hold on heating____</td>
<td BGCOLOR=#E6E0F8>
<form method=post>
    	 <select name="hold">
    	  <option value="" selected></option>
    	 <option value="10">10mn</option>
    	 <option value="20">20mn</option>
    	 <option value="30">30mn</option>
    	 <option value="40">40mn</option>
    	 <option value="60" >60mn</option>
    	 <option value="90">90mn</option>
    	 <option value="120">120mn</option>
         <option value="180">180mn</option>
         <option value="240">3h</option>
    
		</select>
		<input type="hidden" name="return" value="tempOverview"/>
     	<input type="submit" value="Selection" title="choisir la duree" />

</form>
</td>
</tr>
</table>
<table align="center"  border=1 cellpadding=3 cellspacing=1>
<tr >
<td BGCOLOR=#F6E3CE> Change mode_</td>
<td BGCOLOR=#F6E3CE>
<form method=post>
    	 <select name="mode">
    	 <option value="" selected></option>
    	 <option value="0"><%= request.getAttribute("mode0")%></option>
    	 <option value="1" ><%= request.getAttribute("mode1")%></option>
    	 <option value="2"><%= request.getAttribute("mode2")%></option>
    	 <option value="3"><%= request.getAttribute("mode3")%></option>
    	 <option value="4"><%= request.getAttribute("mode4")%></option>    
		</select>
		<input type="hidden" name="return" value="tempOverview"/>
     	<input type="submit" value="Selection" title="choisir la duree" />

</form>
</td>
</tr>
</table>
<table align="center"  border=1 cellpadding=3 cellspacing=1>
<tr >
<td BGCOLOR=#F2F2F2> Status___</td>
<td align="center" <% if(request.getAttribute("error").equals("0")) { %>bgcolor="#9FF781"<% }%> <% if(request.getAttribute("error").equals("1")) { %>bgcolor="#F5BCA9"<% }%>>   
<%= request.getAttribute("time")%> <%= request.getAttribute("status")%>
</td>
<td>
<a href="/Thermostat/ShowParameters" target="_blank"><img src="outils.jpg" border="0" alt="configuration"></a> </td>
</td></tr>
</table>

</td></tr>
</table>

</body>
</html>