 <%@ page import="java.util.*"%>
<%@ page import="utile.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="ouvreBase2.jsp" %>  
<%
ResultSet rset = null;
PreparedStatement pstmt=null;
String docmise = request.getParameter("docmise");
int id = ((Integer)(session.getAttribute("id"))).intValue();


 /*
<!--   stockage document, le document est associ� au citoyen qui l'a charg� -->
<!--    mettre le nom du document dans la base  avec ID du citoyen -->
*/

/*  premi�re partie appel de 
                mesInformationsPersonelles.jsp

     puis lorsque que vous avez �crit envoieMail.jsp, 
     appel de envoieMail.jsp 
     avec un param�tre    le nom du document pour mettre dans le mail
*/
