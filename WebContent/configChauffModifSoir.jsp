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
<h3 align="center"><a align="center" href="/domotique/consigneChauffModif?station=<%= request.getAttribute("stationId")%>"><%= request.getAttribute("jourEnClair")%></a></h3>
	
		<table align="center"  width=60% border="1">
				<tr><th>Heure</th><th>Actuel</th><th>Modification</th><th>Heure</th><th>Actuel</th><th>Modification</th></tr>
			<tr>
	 		<th>12h00</th>
	 		<th> <%= request.getAttribute("consigneH112")%></th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH112").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH112").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH112").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH112").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="12"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>12h30</th>
	 			 		<th>  <%= request.getAttribute("consigneH212")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH212").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH212").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH212").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH212").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="12"/>
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
	 		<th>13h00</th>
	 			 		<th> <%= request.getAttribute("consigneH113")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH113").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH113").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH113").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH113").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="13"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
	
			</th>
	
	 		<th>13h30</th>
	 			 		<th> <%= request.getAttribute("consigneH213")%>  </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH213").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH213").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH213").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH213").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="13"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>14h00</th>
	
	 			 		<th> <%= request.getAttribute("consigneH114")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH114").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH114").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH114").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH114").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="14"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>14h30</th>
	 
	 			 		<th> <%= request.getAttribute("consigneH214")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH214").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH214").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH214").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH214").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="14"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>15h00</th>
	 
		<th> <%= request.getAttribute("consigneH115")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH115").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH115").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH115").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH115").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="15"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
		
	 		<th>15h30</th>
	
	<th> <%= request.getAttribute("consigneH215")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH215").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH215").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH215").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH215").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="15"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>16h00</th>
	 
	 <th> <%= request.getAttribute("consigneH116")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH116").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH116").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH116").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH116").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="16"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>16h30</th>
	 
<th> <%= request.getAttribute("consigneH216")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH216").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH216").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH216").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH216").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="16"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

						</tr>
			<tr>
	 		<th>17h00</th>
	 			
	<th> <%= request.getAttribute("consigneH117")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH117").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH117").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH117").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH117").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="17"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>17h30</th>
	 		
	<th> <%= request.getAttribute("consigneH217")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH217").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH217").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH217").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH217").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="17"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 			 		<th>18h00</th>
	 		
	<th> <%= request.getAttribute("consigneH118")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH118").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH118").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH118").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH118").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="18"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>


	 		<th>18h30</th>
	
	<th> <%= request.getAttribute("consigneH218")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH218").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH218").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH218").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH218").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="18"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>19h00</th>
<th> <%= request.getAttribute("consigneH119")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH119").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH119").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH119").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH119").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="19"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

	 		<th>19h30</th>
<th> <%= request.getAttribute("consigneH219")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH219").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH219").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH219").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH219").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="19"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 		<th>20h00</th>
	 			 
	<th> <%= request.getAttribute("consigneH120")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH120").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH120").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH120").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH120").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="20"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>20h30</th>
	<th> <%= request.getAttribute("consigneH220")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH220").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH220").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH220").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH220").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="20"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

						</tr>
			<tr>
	 			 		<th>21h00</th>
	 			 		
			<th> <%= request.getAttribute("consigneH121")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH121").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH121").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH121").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH121").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="21"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>21h30</th>
	 				
	 <th> <%= request.getAttribute("consigneH221")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH221").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH221").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH221").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH221").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="21"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>

	 			
	 
						</tr>
			<tr>
	 			 		<th>22h00</th>
	
		 <th> <%= request.getAttribute("consigneH122")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH122").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH122").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH122").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH122").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="22"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>22h30</th>
	
		 <th> <%= request.getAttribute("consigneH222")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH222").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH222").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH222").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH222").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="22"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
						</tr>
			<tr>
	 			 		<th>23h00</th>
	
		 <th> <%= request.getAttribute("consigneH123")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
   			 				<option value="M" <% if(request.getAttribute("consigneH123").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH123").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH123").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH123").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="1"/>
							<input type="hidden" name="modifHeure" value="23"/>
							<input type="hidden" name="jour" value="<%= request.getAttribute("jourSelected")%>"/>
							<input type="hidden" name="demijour" value="<%= request.getAttribute("demijourSelected")%>"/>
							<input type="hidden" name="station" value="<%= request.getAttribute("stationId")%>"/>
      						<input type="submit" value="Changer" title="choisir la consigne" />
						</p>
					</form>
			</th>
	
	 		<th>23h30</th>

		 <th> <%= request.getAttribute("consigneH223")%> </th>
	 		<th>	<form method="get" action="consigneChauffModif">
						<p>
							<!-- une balise select ou input ne peut pas être imbriquée directement dans form -->
    			 			<select name="status">
    			 			<option value="M" <% if(request.getAttribute("consigneH223").equals("Matin")) { %> selected <% }%>>Matin</option>
    	 		 			<option value="J" <% if(request.getAttribute("consigneH223").equals("Jour")) { %> selected <% }%>>Jour</option>
    	  					<option value="S" <% if(request.getAttribute("consigneH223").equals("Soir")) { %> selected <% }%>>Soir</option>
    	   					<option value="N" <% if(request.getAttribute("consigneH223").equals("Nuit")) { %> selected <% }%>>Nuit</option>
							</select>
						<input type="hidden" name="return" value="tempOverview"/>
							<input type="hidden" name="modif" value="oui"/>
							<input type="hidden" name="modifDemi" value="2"/>
							<input type="hidden" name="modifHeure" value="23"/>
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