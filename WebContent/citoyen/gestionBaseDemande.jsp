<%@ page isELIgnored="false" %>
<%@ page import="java.util.*"%>
<%@ page import="utile.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="ouvreBase2.jsp" %>  
<%
ResultSet rset = null;
PreparedStatement pstmt=null;
String ajoutdoc = request.getParameter("ajoutdoc");
String valider = request.getParameter("valider");
String objet = request.getParameter("objet");
String description = request.getParameter("description");

int id = ((Integer)(session.getAttribute("id"))).intValue();
String dateDemandemysql = request.getParameter("dateDemandemysql"); 


/*	
* inscription de la fiche dans la base   (id du Citoyen, objet, description, datedemande)
*   
*
*/


	 
if (ajoutdoc != null) {
/*
* demande de upload d'un document appel � la page pour le choix du fichier : uploadPage.jsp  
*/

}  
else
  {
/*
* fiche sans document on retourne � une page d'accueil, par exemple
*                       suivreMesDemandes.jsp
*/
 }  %>

 

