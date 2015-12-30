<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:simple_layout title="Liste des films avec les notations des internautes">
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

              <h3 id="q1">[ Films ] <span class="label label-default">Liste des films avec les notations des internautes</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Films</th>
              			<th>Réalisateurs</th>
              			<th>Acteurs (Roles)</th>
              			<th>Notations : Internautes</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.films}" var="film">
					<tr>
						<td><c:out value="${film.titre} ${artiste.nom}" /></td>
						<td><c:out value="${film.realisateur.prenom} ${film.realisateur.nom}" /></td>
						<td>
							<c:forEach items="${film.roles}" var="role">
								<c:out value="${role.acteur.prenom} ${role.acteur.nom} (${role.nom})" /><br>
							</c:forEach>
						</td>
						<td>
							<c:forEach items="${film.notations}" var="notation">
								<c:out value="${notation.note} : ${notation.internaute.prenom} ${notation.internaute.nom}" /><br>
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

<script>$('#allfilms').attr('class','active')</script>
