<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Thermostat commands</title>
</head>
<body>
<table border=1>
<tr><th align="center" BGCOLOR=#E6E6E6>Commands station:<%= request.getAttribute("stationId")%>
	<table border=1 cellpadding=3 cellspacing=1>
		<tr>
		<th align="center" BGCOLOR=#81DAF5>Command</th>
		<th align="center" BGCOLOR=#81DAF5>Description</th>
		<th align="center" BGCOLOR=#81DAF5>Execute</th>
		</tr>
		<tr>
			<td align="center" BGCOLOR=#CEECF5>writeEeprom</td>
			<td align="center" BGCOLOR=#CEECF5>Save current thermostat parameters in eeprom</td>
			<td><form method="get" action="SendCommands">
				<select name="parameter"  size="1" required>
				    <option value="" selected></option>
					<OPTION value="1">currentMode</OPTION>
					<OPTION value="2">temperature</OPTION>
					<OPTION value="4">schedule</OPTION>
					<OPTION value="8">registers</OPTION>
					<OPTION value="15">all</OPTION>
				</select>
				<input type="hidden" name="command" value="writeEeprom">
				<input type="submit" value="update">
			</form></td>
		</tr>
			<tr>
			<td align="center" BGCOLOR=#CEECF5>uploadSchedule</td>
			<td align="center" BGCOLOR=#CEECF5>upload schedule from thermostat</td>
			<td><form method="get" action="SendCommands">
				<input type="hidden" name="command" value="uploadSchedule">
				<input type="submit" value="update">
			</form></td>
		</tr>
		<tr>
			<td align="center" BGCOLOR=#CEECF5>uploadTemperatures</td>
			<td align="center" BGCOLOR=#CEECF5>upload temperatures from thermostat</td>
			<td><form method="get" action="SendCommands">
				<input type="hidden" name="command" value="uploadTemperatures">
				<input type="submit" value="update">
			</form></td>
		</tr>
		<tr>
			<td align="center" BGCOLOR=#CEECF5>uploadRegisters</td>
			<td align="center" BGCOLOR=#CEECF5>upload registers from thermostat</td>
			<td><form method="get" action="SendCommands">
				<input type="hidden" name="command" value="uploadRegisters">
				<input type="submit" value="update">
			</form></td>
		</tr>
		<tr>
			<td align="center" BGCOLOR=#CEECF5>tracePID</td>
			<td align="center" BGCOLOR=#CEECF5>start/stop trace PID</td>
			<td><form method="get" action="SendCommands">
				<select name="parameter"  size="1">
					<OPTION value="0">off</OPTION>
					<OPTION value="1">on</OPTION>
				</select>
				<input type="hidden" name="command" value="tracePID">
				<input type="submit" value="update">
			</form></td>
		</tr>
	</table>
		
		<table>
		<tr>
		<td BGCOLOR=#A4A4A4><a href="/Thermostat/ShowParameters"><img src="retour.jpg" border="0" alt="show"></a> </td>
		<td BGCOLOR=#A4A4A4><a href="/Thermostat/consigneChauffModif?stationId=<%= request.getAttribute("stationId")%>"><img src="schedule.png" border="0" alt="schedule"></a></td>
		<td BGCOLOR=#FF4000><a href="/Thermostat/ModifyParameters"><img src="system.png" border="0" alt="configuration"></a></td>
		</tr>
		</table>
	</table>
</table>
</body>
</html>