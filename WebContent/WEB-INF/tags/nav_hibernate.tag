<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@tag description="Nav Hibernate Template" pageEncoding="UTF-8"%>
   	    
 <!-- Column Left - Nav Bar -->
 <div class="col-sm-3 col-md-2 sidebar">
   <ul class="nav nav-sidebar">
     <li id="connexion"><a href='<c:url value="/hibernate?action=connexion"/>'>Test de Connexion</a></li>
     <li id="lecture"><a href='<c:url value="/hibernate?action=lecture"/>'>Liste des Pays</a></li>
     <li id="filmspays"><a href='<c:url value="/hibernate?action=filmspays"/>'>Liste des films par Pays</a></li>
     <li id="filmsartiste"><a href='<c:url value="/hibernate?action=filmsartiste"/>'>Liste des films par réalisateurs</a></li>
     <li id="internaute"><a href='<c:url value="/hibernate?action=internaute"/>'>Liste des internautes</a></li>
     <li id="artistesfilm"><a href='<c:url value="/hibernate?action=artistesfilm"/>'>Liste des réalisateurs</a></li>
     <li id="videos"><a href='<c:url value="/hibernate?action=videos"/>'>Liste des vidéos</a></li>
     <li id="reportages"><a href='<c:url value="/hibernate?action=reportages"/>'>Liste des reportages</a></li>
     <li id="filmsv"><a href='<c:url value="/hibernate?action=filmsv"/>'>Liste des films V</a></li>
     <li id="insertion"><a href='<c:url value="/jsp/hibernate/formInsert.jsp"/>'>Insérer Pays</a></li>
     <li id="insertFilm"><a href='<c:url value="/hibernate?action=insertFilm"/>'>Insérer Film</a></li>
     
     <li id="acteurs"><a href='<c:url value="/hibernate?action=acteurs"/>'>Films et leurs acteurs</a></li>
     <li id="roles"><a href='<c:url value="/hibernate?action=roles"/>'>Acteurs et leurs roles</a></li>
     <li id="nomroles"><a href='<c:url value="/hibernate?action=nomroles"/>'>Le nom des roles</a></li>
     
     <li id="allfilms"><a href='<c:url value="/hibernate?action=allfilms"/>'>Liste de tous les films</a></li>
   </ul>
 </div><!-- Column Left - Nav Bar -->