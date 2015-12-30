<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Par Critère" nav="requeteur" subnav="critere">
	<jsp:attribute name="body_area" >

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/requeteur/index.jsp">Accueil</a></li>
            <li class="active">Par Critère</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Lecture ] <span class="label label-default">Par Critère</span></h3>
              
              
              <div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Recherche de films</h3>
				  </div>
				  <div class="panel-body">

              
	              <form class="form-horizontal" method="POST" 
	              		action="${pageContext.request.contextPath}/requeteur?action=critere">
					
				  <div class="form-group">
					    <label for="titre" class="col-sm-2 control-label">Titre</label>
					    <div class="col-sm-10">
					    	<input type="text" class="form-control" id="titre" name="titre" placeholder="Titre du film" value="${titre}">
					    </div>
				  </div>
				  <div class="form-group">
				    <label for="annee" class="col-sm-2 control-label">Année</label>
				    <div class="col-sm-10">
				    	<input type="text" class="form-control" id="annee" name="annee" placeholder="Année" value="${annee}">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="genre" class="col-sm-2 control-label">Genre</label>
				    <div class="col-sm-10">
				    	<input type="text" class="form-control" id="genre" name="genre" placeholder="Genre" value="${genre}">
				    </div>
				  </div>
					
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-primary">Rechercher Films</button>
				    </div>
				  </div>
					
					
				</form>
			  </div>
			</div>
			  	
			  	<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">${fn:length(films)} film<c:if test="${fn:length(films) gt 1}">s</c:if></h3>
				  </div>
				  	<table class="table table-striped">
	              	<thead>
	              		<tr>
	              			<th>Titre</th>
	              			<th>Année</th>
	              			<th>Genre</th>
	              			<th>Réalisateur</th>
	              			<th>Pays</th>
	              		</tr>
	              	</thead>
						<c:forEach items="${films}" var="film">
							<tr>
								<td><c:out value="${film.titre}" /></td>
								<td><c:out value="${film.annee}" /></td>
								<td><c:out value="${film.genre.code}" /></td>
								<td><c:out value="${film.realisateur.prenom} ${film.realisateur.nom}" /></td>
								<td><c:out value="${film.pays.nom}" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>
