<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<meta http-equiv="refresh" content="30">
<title>Thermostat Parameters</title>
</head>
<body>
<table border=1>
<tr><td align="center" BGCOLOR=#E6E6E6>Temperature instructions station:<%= request.getAttribute("stationId")%>
	<table border=1 cellpadding=3 cellspacing=1>
		<tr>
		<td align="center" BGCOLOR=#81DAF5>Temp 1</td>
		<td align="center" BGCOLOR=#81DAF5>Temp 2</td>
		<td align="center" BGCOLOR=#81DAF5>Temp 3</td>
		<td align="center" BGCOLOR=#81DAF5>Temp 4</td>
		<td align="center" BGCOLOR=#81DAF5>No freeze</td>
		</tr>
		<tr>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("temp0").equals(request.getAttribute("tempValue0"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("temp0")%>°</td>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("temp1").equals(request.getAttribute("tempValue1"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("temp1")%>°</td> 
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("temp2").equals(request.getAttribute("tempValue2"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("temp2")%>°</td>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("temp3").equals(request.getAttribute("tempValue3"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("temp3")%>°</td> 
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("horsGel").equals(request.getAttribute("horsGelValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("horsGel")%>°</td>     
		</tr>
	</table>
</td>
</tr>
<tr><td align="center" BGCOLOR=#E6E6E6> PID tunning
	<table border=1 cellpadding=3 cellspacing=1>
		<tr>
		<td align="center" BGCOLOR=#81DAF5>KpPID</td>
		<td align="center" BGCOLOR=#81DAF5>KiPID</td>
		<td align="center" BGCOLOR=#81DAF5>KdPID</td>
		<td align="center" BGCOLOR=#81DAF5>Threshold</td>
		<td align="center" BGCOLOR=#81DAF5>CyleDelay</td>
		</tr>
		<tr>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("KpPID").equals(request.getAttribute("KpPIDValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("KpPID")%></td>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("KiPID").equals(request.getAttribute("KiPIDValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("KiPID")%></td> 
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("KdPID").equals(request.getAttribute("KdPIDValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("KdPID")%></td>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("thresholdPID").equals(request.getAttribute("thresholdPIDValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("thresholdPID")%></td> 
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("PIDCyleDelay").equals(request.getAttribute("PIDCyleDelayValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("PIDCyleDelay")%> x 10sec</td>
		     
		</tr>
	</table>
</td>
</tr>
<tr><td align="center" BGCOLOR=#E6E6E6> Other parameters
	<table border=1 cellpadding=3 cellspacing=1>
		<tr>
		<td align="center" BGCOLOR=#81DAF5>Reactivity</td>
		<td align="center" BGCOLOR=#81DAF5>Max temperature</td>
		<td align="center" BGCOLOR=#81DAF5>Out of home decrease</td>
		<td align="center" BGCOLOR=#81DAF5>Hysteresis</td>
		</tr>
		<tr>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("reactivity").equals(request.getAttribute("reactivityValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("reactivity")%>° </td>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("maximumTemperature").equals(request.getAttribute("maximumTemperatureValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("maximumTemperature")%>°</td> 
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("outHomeTemperatureDecrease").equals(request.getAttribute("outHomeTemperatureDecreaseValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("outHomeTemperatureDecrease")%>°</td>
		<td align="center" BGCOLOR=#CEECF5<% if(!request.getAttribute("hysteresisDelay").equals(request.getAttribute("hysteresisDelayValue"))) { %>bgcolor="#9FF781"<% }%>><%= request.getAttribute("hysteresisDelay")%> x 10sec</td>          
		</tr>
	</table>
</td>
</tr>
<tr><td align="center" BGCOLOR=#A4A4A4>
	<table border=1 cellpadding=3 cellspacing=1>
		<tr>
		<td BGCOLOR=#A4A4A4><a href="/Thermostat/ShowThermostat"><img src="retour.jpg" border="0" alt="show"></a> </td>
		<td BGCOLOR=#FF4000><a href="/Thermostat/ModifyParameters"><img src="system.png" border="0" alt="configuration"></a></td>
		<td BGCOLOR=#FF4000><a href="/Thermostat/SendCommands"><img src="outils.jpg" border="0" alt="command"></a></td>
		</tr>
		</table>
</table>
</body>
</html>