<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Liste des films avec leurs acteurs">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Films</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Films ] <span class="label label-default">Liste des films avec leurs acteurs</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Films</th>
              			<th>Année</th>
              			<th>Pays</th>
              			<th>Réalisateur</th>
              			<th>Acteurs</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.films}" var="film">
					<tr>
						<td><c:out value="${film.titre}" /></td>
						<td><c:out value="${film.annee}" /></td>
						<td><c:out value="${film.pays.nom}" /></td>
						<td><c:out value="${film.realisateur.prenom} ${film.realisateur.nom}" /></td>
						<td>
							<c:forEach items="${film.acteurs}" var="acteur">
								<c:out value="${acteur.prenom} ${acteur.nom}" /><br>
							</c:forEach>
						</td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#acteurs').attr('class','active')</script>
