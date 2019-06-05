<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="60" >
<title>Door Status</title>
</head>
<body>
<H1> <%= request.getAttribute("station")%>:  <%= request.getAttribute("stationId")%></H1>
<H2> version:  <%= request.getAttribute("version")%> - running since <%= request.getAttribute("elapse")%>mn</H2>
	<table border=1 cellpadding=3 cellspacing=1>
	<tr>
		<td>What</td>
		<td>How</td>
		<td>When</td>
	</tr>
	<tr>
		<td><%= request.getAttribute("Open1")%></td>
		<td><%= request.getAttribute("How1")%></td>
		<td><%= request.getAttribute("Time1")%></td></tr>
	<tr>
		<td><%= request.getAttribute("Open2")%></td>
		<td><%= request.getAttribute("How2")%></td>
		<td><%= request.getAttribute("Time2")%></td>
	</tr>
		</tr>
	<tr>
		<td><%= request.getAttribute("Open3")%></td>
		<td><%= request.getAttribute("How3")%></td>
		<td><%= request.getAttribute("Time3")%></td></tr>
	<tr>
		<td><%= request.getAttribute("Open4")%></td>
		<td><%= request.getAttribute("How4")%></td>
		<td><%= request.getAttribute("Time4")%></td>
	</tr>
		</tr>
	<tr>
		<td><%= request.getAttribute("Open5")%></td>
		<td><%= request.getAttribute("How5")%></td>
		<td><%= request.getAttribute("Time5")%></td></tr>
	<tr>
		<td><%= request.getAttribute("Open6")%></td>
		<td><%= request.getAttribute("How6")%></td>
		<td><%= request.getAttribute("Time6")%></td>
	</tr>
</table>


</body>
</html>