<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chauffage</title>
</head>
<body>
<table border="0" width=100% BORDERCOLOR="GREEN">
<tr>
<td>
<h2 align="center">Chauffage:<%= request.getAttribute("Home-home")%>- - station:<%= request.getAttribute("stationId")%></h2>
	<h3 align="center"><%= request.getAttribute("jourEnClair")%></h3>
	<table align="center"  width=60% border="0">
			<tr>

					<th><form method="get" action="consigneChauffModif">
						<p>
	   			 			<select name="demijour">
    			 			<option value="1">Matin</option>
    	 		 			<option value="2">Soir</option>
							</select>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
     						<input type="submit" value="Choix" title="choisir matin ou soir" />
						</p>
					</form>
					</th>
					</tr>
</table>

	</body>
</html>