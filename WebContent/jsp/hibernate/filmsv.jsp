<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Liste des Reportages">
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

              <h3 id="q1">[ Films ] <span class="label label-default">Liste des films </span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Titre</th>
              			<th>Ann�e</th>
              			<th>Genre</th>
              			<th>R�alisateur</th>
              			<th>Pays</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.filmsv}" var="filmv">
					<tr>
						<td><c:out value="${filmv.titre}" /></td>
						<td><c:out value="${filmv.annee}" /></td>
						<td><c:out value="${filmv.genre.code}" /></td>
						<td><c:out value="${filmv.realisateur.prenom} ${filmv.realisateur.nom}" /></td>
						<td><c:out value="${filmv.pays.nom}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#filmsv').attr('class','active')</script>
