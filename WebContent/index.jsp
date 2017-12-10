<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>show servlet 2</title>
</head>
<body>


<form method=post>
<table border=1 cellpadding=3 cellspacing=1>
<tr>
<td align="center" BGCOLOR=#81DAF5><a href="http://jserver:8080/domotique/homeOverview">Consigne<a/></td>
<td align="center" BGCOLOR=#81DAF5>Temperature interieure</td>
<td align="center" BGCOLOR=#81DAF5>Temperature exterieure</td>
  
</tr>
<tr>
<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("count")%>°</td>
<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("count")%>°</td> 
<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("count")%>°</td>   
</tr>
<tr>
<td align="center" BGCOLOR=#A4A4A4>On/Off</td>
<td align="center" BGCOLOR=#A4A4A4>Programe</td>
<td align="center" BGCOLOR=#A4A4A4>Temperature eau</td>
  
</tr>
<tr>
<td align="center" BGCOLOR=#E6E6E6><%= request.getAttribute("count")%>°</td>
<td align="center" BGCOLOR=#E6E6E6><%= request.getAttribute("count")%>°</td> 
<td align="center" BGCOLOR=#E6E6E6><%= request.getAttribute("count")%>°</td>   
</tr>

</table>
	<input type="submit" />
</form>
</body>
</html>