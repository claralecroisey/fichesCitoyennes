<%@ page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>identification créateur de fiche d'intervention</title>
    <link type="text/css" href="style/deco.css" rel="stylesheet" >
   <style type="text/css">
      td
         {  width:300px;}
     </style>
</head>
<body>
  <img src="image/logo.jpg"  width="500">    
   <h3> Service de relation avec les Citoyens</h3>
    <h3> Gestion des fiches citoyens</h3>
 <!--  avant l'identification on efface toutes les données des sessions précédentes -->
 
<!-- 
****   Affichage d'un message si le parametre "erreur" est présent
****   Affichage d'un message si le parametre "finsession" est présent
-->
  <!-- <h3> <%-- <%= (request.getParameter("erreur") != null) ?  "Il y a eu une erreur":"" %></h3> --%> -->
  ${ (param.erreur != null) ? "Votre login et votre mot de passe ne correspondent pas, veuillez réessayer." : ""}
  
  <%-- <h3><%= (request.getParameter("finsession") != null ) ? "La session est terminée":"" %></h3> --%>
  ${ (param.finsession != null) ? "Votre session a expiré." : ""}
 

  <h2> Veuillez vous identifier  ou créer un compte</h2>
  <form name="commande" method="get" action="identiteCitoyen.jsp">
<table style= "width:500;"  class="Casebleu1"> 
<tr> 

  <td colspan="2"> <strong>Pour une connexion remplissez les 2 premiers champs.  
    Pour une nouvelle inscription  remplissez les 4  champs</strong></td>
</tr>

<!-- 
****   un  "input text" pour l'identifiant, mini  4 caractères maxi 10 caractères
        un "input password" pour le mot de passe
-->
 <tr>
	<td>
		Identifiant : <input type="text" name="identifiant" minlength="4" maxlength="10" size="10" placeholder="Login" required /> <br/>
		Mot de Passe : <input type="password" name="motPasse" size="20" placeholder="Mot De Passe" required /> <br/>
	</td>
</tr>




<!-- 
****       un  "input text"  pour le nom   mini  4 caractères maxi 10 caractères
           un  "input email" un pour le mail, avec vérification de la syntaxe, maxi 30 caractères
           expression régulière possible   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  
           minlength??        
-->
 <tr>
	<td>
		Nom: <input type="text" name="nom" size="10" minlength="4" maxlength="10" placeholder="Nom"/> <br/>
		<!-- Type email in html5 -->
		Adresse Email:  <input type="email" name="mail" size="30" placeholder="nom@email.fr"/> <br/>
	</td>
</tr>
<tr>

 <tr> 
    <td colspan="2"> <button name ="connexion" type="submit" 
             value="se connecter"style="width: 120px"> se connecter </button> </td> 
 </tr>   
</table></form> </body></html>
