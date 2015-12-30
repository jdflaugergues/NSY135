<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Nom des rôles">
	<jsp:attribute name="body_area"> %>

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Roles</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Roles ] <span class="label label-default">Noms des rôles</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Roles</th>
              			<th>Acteurs</th>
              			<th>Films</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.roles}" var="role">
					<tr>
						<td><c:out value="${role.nom}" /></td>
						<td><c:out value="${role.acteur.prenom} ${role.acteur.nom}" /></td>
						<td><c:out value="${role.film.titre}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#nomroles').attr('class','active')</script>
