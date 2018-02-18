<%@ page import="java.util.*"%>
<%@ page import="utile.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="ouvreBase2.jsp" %> 

<% 

/*

Pour envoyer un mail, il faut en g�n�ral disposer d'un op�rateur (serveur et port) 
  qui dispose d'un serveur d'envoi de mail (serveur SMTP), et d'un compte chez cet op�rateur.
   
Une exception est parfois permise, par exemple si vous �tes sur un r�seau local derri�re une 
 livebox (ou autre), dans ce cas vous avez la possibilit� d'envoyer un mail 
 sans vous identifier et sans donner l'op�rateur, en effet la livebox a son op�rateur, 
 et si vous y �tes connect� c'est que vous y avez un compte. 
 Dans ce cas, utilisez   la m�thode  de G�reCitoyen.envoieMail :

public static void envoieMail( String objet, String deLaPart, String pour , String contenu) 
   ici deLaPart  est une adresse mail correcte, que vous pouvez donner. 

Dans le cas plus g�n�ral, par exemple si vous voulez passez par le serveur SMTP de l'�cole 
c'est la m�thode de GereCitoyen.envoieMailSecure :

  public static void envoieMailSecure( String objet, String deLaPart, String pour , String contenu, String motpasse, String host, String port) {

   Dans ce cas, 
     host et port d�signent le serveur smtp d'un op�rateur et le port associ�
    deLaPart  et  motpasse d�signent une adresse mail et son mot de passe chez cet op�rateur;

Dans cette m�thode, au premier passage vous devrez donc donner ces indications.

Par la suite ces informations (deLaPart , motpasse, serveur, port) sont stock�es 
  dans des variables de session et il est donc inutile de les demander.

Voici donc les trois parties de cette page :

   1) Si � l'appel de la page,  les variables de session qui repr�sentent  
           l'adresse mail et le mot de passe de l'exp�diteur: ne sont pas connues 
           et que ces informations ne sont pas en param�tre  (envoyeurconnu = null) , 
     un formulaire est envoy� pour   demander 
          l'adresse mail, 
            le mot de passe, 
            le serveur,  par defaut     "z.imt.fr"  et 
            le port   par defaut  "587" , 
        ce formulaire a un bouton submit, de nom envoyeurconnu, 
        l'action de ce formulaire est la page courante.
   
Attention, l'envoi d'un formulaire, c'est une autre requ�te, 
    donc nouveaux param�tres, 
    or dans la premi�re requ�te il y avait selon le cas un param�tre " nomDocument". 

Il faut donc faire suivre cette valeur ("partie "hidden")




2) Si � l'appel de la page,  
   les variables de session qui repr�sentent  l'adresse mail et le mot de passe de l'exp�diteur: 
	   ne sont pas connues, mais que vous revenez du formulaire, (envoyeurconnu pr�sent) :
   Vous mettez les variables (adresseMail, motPasse, serveur, port) en session.
                       


3) Si les variables de session qui repr�sentent  l'adresse mail et le mot de passe de l'exp�diteur 
sont connues (vous venez de les cr�er ou vous les avez cr��es lors d'un autre appel), 
vous pouvez envoyer le mail.



Envoi du mail :
     Recherche dans la base de la derni�re fiche de la personne connect�e
     Recherche des caract�ristiques de cette fiche et du mail de la personne connect�e

     Le mail contient en objet, l'objet de la fiche.
     et en contenu, le texte que vous voulez et le champ description de la fiche
        S'il y a eu un document avec la fiche, le nom de ce document

*/

%>