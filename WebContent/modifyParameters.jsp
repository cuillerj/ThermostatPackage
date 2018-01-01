<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="30">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Thermostat Parametres</title>
</head>
<body>
<table border=1>
<tr><th align="center" BGCOLOR=#E6E6E6>Modify parameters station:<%= request.getAttribute("stationId")%>
	<table border=1 cellpadding=3 cellspacing=1>
		<tr>
		<th align="center" BGCOLOR=#81DAF5>Desc</th>
		<th align="center" BGCOLOR=#81DAF5>Compute</th>
		<th align="center" BGCOLOR=#81DAF5>Value</th>
		<th align="center" BGCOLOR=#81DAF5>Enter new</th>
		</tr>

		<tr>
		<% if(!request.getAttribute("Idx0").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc0")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute0")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue0")%></td>
			<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue0")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId0")%>>
			<input type="submit" value="update">
			</form>
			</tr>

		<% } %>
		<% if(!request.getAttribute("Idx1").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc1")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute1")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue1")%></td>
			<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue1")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId1")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx2").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc2")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute2")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue2")%></td>
			<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue2")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId2")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx3").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc3")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute3")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue3")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue3")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId3")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx4").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc4")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute4")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue4")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue4")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId4")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx5").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc5")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute5")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue5")%></td>
			<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue5")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId5")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx6").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc6")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute6")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue6")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue6")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId6")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx7").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc7")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute7")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue7")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue7")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId7")%>>
			<input type="submit" value="update">
						</form>
					
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx8").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc8")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute8")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue8")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue8")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId8")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx9").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc9")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute9")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue9")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue9")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId9")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx10").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc10")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute10")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue10")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue10")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId10")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx11").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc11")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute11")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue11")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue11")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId11")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx12").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc12")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute12")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue12")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue12")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId12")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx13").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc13")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute13")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue13")%></td>
			<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue13")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId13")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx14").equals(-1))
		{ %>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc14")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute14")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue14")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue14")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId14")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx15").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc15")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute15")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue15")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue15")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId15")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<% if(!request.getAttribute("Idx16").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc16")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute16")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue16")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue16")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId16")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>

				<% if(!request.getAttribute("Idx17").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc17")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute17")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue17")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue17")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId17")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
				<% if(!request.getAttribute("Idx18").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc18")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute18")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue18")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue18")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId18")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
				<% if(!request.getAttribute("Idx19").equals(-1))
		{ %>
			<tr>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Desc19")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("Compute19")%></td>
			<td align="center" BGCOLOR=#CEECF5><%= request.getAttribute("CurrentValue19")%></td>
						<td><form method="get" action="UpdateParameters">
			<input name="newValue" style="width: 40px;" type="number" value=<%= request.getAttribute("CurrentValue19")%>>
			<input type="hidden" name="indId" value=<%= request.getAttribute("IndId19")%>>
			<input type="submit" value="update">
						</form>
			</tr>
		<% } %>
		<table>
		<tr>
		<td BGCOLOR=#A4A4A4><a href="/Thermostat/ShowParameters"><img src="retour.jpg" border="0" alt="show"></a> </td>
		<td BGCOLOR=#A4A4A4><a href="/Thermostat/consigneChauffModif?stationId=<%= request.getAttribute("stationId")%>"><img src="schedule.png" border="0" alt="schedule"></a></td>
		<td BGCOLOR=#FF4000><a href="/Thermostat/SendCommands"><img src="outils.jpg" border="0" alt="command"></a></td>
		</tr>
		</table>
	</table>
</table>
</body>
</html>