<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Door System Menu</title>
</head>
<body>
<%= request.getAttribute("autho")%>
<table border=1 cellpadding=3 cellspacing=1>

<%! int sizeImg = 150; %>
<%
        if (request.getAttribute("device").equals("mobile")) {
        	 sizeImg = 200; 
        }
%>
    <%
        if (request.getAttribute("authorized").equals("yes")) {
    %>

<td align="center" BGCOLOR=#81DAF5><a href="/DoorSystem/OpenTheDoor?door=<%= request.getAttribute("door")%>"><img src="PoigneePorte.JPG" width=<%=sizeImg%> height=<%=sizeImg%> title="Ouvrir le jardin"></a></td>
<td align="center" BGCOLOR=#81DAF5><a href="/DoorSystem/ShowDoorStatus?door=<%= request.getAttribute("door")%>"><img src="outils.jpg" width=<%=sizeImg%> height=<%=sizeImg%> title="Status"></a></td>
<td align="center" BGCOLOR=#81DAF5><a href="/DoorSystem/Login"><img src="user.png" width=<%=sizeImg%> height=<%=sizeImg%> title="Authorize"></a></td>
    <%
        } 
        else {
    %>

<td align="center" BGCOLOR=#81DAF5><a href="http://jserver:8080/DoorSystem/OpenTheDoor?door=<%= request.getAttribute("door")%>"><img src="PoigneePorte.JPG" width="200" height="200" title="Ouvrir le jardin"></a></td>

    <%
        }
    %>

<tr>

</tr>
</table>
<%= request.getAttribute("device")%>

</body>
</html>