<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Liste des acteurs et leurs rôles">
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

              <h3 id="q1">[ Roles ] <span class="label label-default">Liste des acteurs et leurs roles</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Acteurs</th>
              			<th>Roles</th>
              			<th>Film</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.acteurs}" var="acteur">
					 <c:if test="${!empty acteur.roles}">
						<tr>
							<td><c:out value="${acteur.prenom} ${acteur.nom}" /></td>
							<td>
								<c:forEach items="${acteur.roles}" var="role">
									<c:out value="${role.nom}" /><br>
								</c:forEach>
							</td>
							<td>
								<c:forEach items="${acteur.roles}" var="role">
									<c:out value="${role.film.titre}" /><br>
								</c:forEach>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#roles').attr('class','active')</script>
