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

	<table align="center"  width=60% border="0">
			<tr>
<th><form method="get" action="consigneChauffModif">
						<p>
	   			 			<select name="jour">
    			 			<option value="0">Dimanche</option>
    	 		 			<option value="1">Lundi</option>
    	  					<option value="2">Mardi</option>
    	   					<option value="3">Mercredi</option>
    	   					<option value="4">Jeudi</option>
    	   					<option value="5">Vendredi</option>
    	   					<option value="6">Samedi</option>
    	   					<option value="7">JourType1</option>
    	   					<option value="8">JourType2</option>
							</select>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
     						<input type="submit" value="Choix" title="choisir le jour" />
						</p>
					</form>
					</th>
					</tr>
</table>
	
	</td>
	</tr>
	</table>
	</body>
</html>