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
<h2 align="center">Chauffage:<%= request.getAttribute("Home-home")%> station:<%= request.getAttribute("stationId")%></h2>
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
     						<input type="submit" value="Choix" title="choisir le jour" />
						</p>
					</form>
					</th>
					</tr>
</table>
		<table align="center"  width=60% border="1">
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			 		<th>12h00</th>
	 		<th>  <%= request.getAttribute("consigneH112")%> </th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
						 		<th>13h00</th>
	 		<th> <%= request.getAttribute("consigneH113")%>  </th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			</tr>
			<tr>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			<th>13h30</th>
	 			 		<th> <%= request.getAttribute("consigneH213")%> </th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
	 		<th>2h30</th>
	 
	 			 		<th> <%= request.getAttribute("consigneH214")%> </th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			<th>14h30</th>
	
	<th> <%= request.getAttribute("consigneH22")%> </th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			<th>15h00</th>
	 
	<th> <%= request.getAttribute("consigneH215")%> </th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
				 		<th>17h</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
			
						</tr>
			<tr>
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
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
     						<input type="submit" value="Choix" title="choisir la consigne" />
						</p>
					</form>
			</th>
						</tr>
	
		 </table>
	
<h3><%= request.getAttribute("trace")%></h3>


	</td>
	</tr>
	</table>
	</body>
</html>