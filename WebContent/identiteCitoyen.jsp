<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="gerelesCitoyen" class="utile.GereCitoyen"  scope="session" />

<!--- 
  **** les 4 propri�t�s du bean nom, identifiant, mail, motPasse doivent �tre initialis�es 
        par la page, en utilisant le "jsp:setProperty "
-->
	<jsp:setProperty name="gerelesCitoyen" property="*"/>

 <%!
	ResultSet rset = null;
 %>
 <!--  definition de la base dans le bean et recherche du Citoyen  dans la base par le bean -->
<%
 	gerelesCitoyen.ouverture("demandecitoyen");
 /*
**  Recherche de la personne dans la base par le bean, m�thode recherchePersonne()
**
**      s'il n'est pas   trouv� et que le mail et le nom ne sont pas pr�sents
**                         appel � la page d'inscription "index.jsp"
**      s'il n'est pas   trouv� et que le mail et le nom sont pr�sents
**                         inscription m�thode inscrireUtilisateur()
*/               
 







/*
** Arriv� ici, on sait que la personne est inscrite, on recherche ses caract�ristiques par recherchePersonne()
** et on met en variable de session, (gardez les m�mes noms pour la suite)
**              id, nom, prenom, mobile, fixe, rue, ville, eidentifiant, mail, fonction
*/







/*
** si c'est un administrateur : appel � la page  "gereDemandeCitoyen.jsp"
** si c'est un citoyen appel � la page  mesInformationsPersonnelles.jsp
*/




 	
%>
