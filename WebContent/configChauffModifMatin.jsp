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
<h2 align="center">Chauffage:<%= request.getAttribute("Home-home")%> <==> station:<%= request.getAttribute("stationId")%></h2>
	<h3 align="center"><a align="center" href="consigneChauffModif?station=<%= request.getAttribute("stationId")%>"><%= request.getAttribute("jourEnClair")%></a></h3>
		<table align="center"  width=60% border="1">
		<tr><th>Heure</th><th>Actuel</th><th>Modification</th><th>Heure</th><th>Actuel</th><th>Modification</th></tr>
			<tr>
	 		<th>0h00</th>
	 		<th> <%= request.getAttribute("consigneH10")%></th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH10").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH10").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH10").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH10").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="0"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>0h30</th>
	 			 		<th>  <%= request.getAttribute("consigneH20")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH20").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH20").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH20").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH20").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="0"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
     						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
			</tr>
			<tr>
						</tr>
			<tr>
	 		<th>1h00</th>
	 			 		<th> <%= request.getAttribute("consigneH11")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH11").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH11").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH11").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH11").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
    							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="1"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
	
			</th>
	
	 		<th>1h30</th>
	 			 		<th> <%= request.getAttribute("consigneH21")%>  </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH21").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH21").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH21").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH21").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
 							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="1"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>2h00</th>
	
	 			 		<th> <%= request.getAttribute("consigneH12")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH12").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH12").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH12").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH12").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="2"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>2h30</th>
	 
	 			 		<th> <%= request.getAttribute("consigneH22")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH22").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH22").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH22").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH22").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
 							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="2"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>3h00</th>
	 
<th> <%= request.getAttribute("consigneH13")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH13").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH13").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH13").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH13").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
 							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="3"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
		
	 		<th>3h30</th>
	
	<th> <%= request.getAttribute("consigneH23")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH23").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH23").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH23").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH23").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="3"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>4h00</th>
	 
	 <th> <%= request.getAttribute("consigneH14")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH14").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH14").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH14").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH14").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="4"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>4h30</th>
	 
<th> <%= request.getAttribute("consigneH24")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH24").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH24").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH24").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH24").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="4"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

						</tr>
			<tr>
	 		<th>5h00</th>
	 			
	<th> <%= request.getAttribute("consigneH15")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH15").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH15").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH15").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH15").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="5"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>5h30</th>
	 		
	<th> <%= request.getAttribute("consigneH25")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH25").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH25").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH25").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH25").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="5"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 			 		<th>6h00</th>
	 		
	<th> <%= request.getAttribute("consigneH16")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH16").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH16").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH16").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH16").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="6"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>


	 		<th>6h30</th>
	
	<th> <%= request.getAttribute("consigneH26")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH26").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH26").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH26").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH26").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
							<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="6"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>7h00</th>
<th> <%= request.getAttribute("consigneH17")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH17").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH17").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH17").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH17").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="7"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

	 		<th>7h30</th>
<th> <%= request.getAttribute("consigneH27")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH27").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH27").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH27").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH27").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="7"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>8h00</th>
	 			 
	<th> <%= request.getAttribute("consigneH18")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH18").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH18").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH18").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH18").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="8"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>8h30</th>
	<th> <%= request.getAttribute("consigneH28")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH28").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH28").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH28").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH28").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="8"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

						</tr>
			<tr>
	 			 		<th>9h00</th>
	 			 		
			<th> <%= request.getAttribute("consigneH19")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH19").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH19").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH19").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH19").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="9"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>9h30</th>
	 				
	 <th> <%= request.getAttribute("consigneH29")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH29").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH29").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH29").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH29").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="9"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

	 			
	 
						</tr>
			<tr>
	 			 		<th>10h00</th>
	
		 <th> <%= request.getAttribute("consigneH110")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH110").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH110").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH110").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH110").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="10"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>10h30</th>
	
		 <th> <%= request.getAttribute("consigneH210")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH210").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH210").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH210").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH210").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="10"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 			 		<th>11h00</th>
	
		 <th> <%= request.getAttribute("consigneH111")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH111").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH111").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH111").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH111").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="11"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>11h30</th>

		 <th> <%= request.getAttribute("consigneH211")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH211").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH211").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH211").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH211").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="11"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
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