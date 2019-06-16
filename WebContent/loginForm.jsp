<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<h1>Authorize </h1>
<form method=post>
<table border=0>
<tr>
<td><h2>IP</h2></td>
	<td> Nom</td>
	<td><input type=text name="name"></td>
	<td> psw</td>
	<td><input type=password name="psw"></td>
	<td><input type="checkbox" name="validity" value="temp" checked> </td>
</tr>

<tr>
<td><h2>Door station</h2></td>
	<td> Nom</td>
	<td><input type=text name="nameDoor"></td>
	<td> psw</td>
	<td><input type=password name="pswDoor"></td>
</tr>

</table>
	<input type="submit" />
</form>


<td> <%= request.getAttribute("ip")%> </td>
</body>
</html>