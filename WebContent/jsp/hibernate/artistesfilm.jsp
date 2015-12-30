<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:nav_hibernate></t:nav_hibernate>

<t:simple_layout title="Réalisateurs">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Réalisateurs</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Réalisateurs ] <span class="label label-default">Liste des réalisateurs et de leurs films</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Réalisateurs</th>
              			<th>Films</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.artistes}" var="artiste">
				 <c:if test="${!empty artiste.filmsRealises}">
					<tr>
						<td><c:out value="${artiste.prenom} ${artiste.nom}" /></td>
						<td>
							<c:forEach items="${artiste.filmsRealises}" var="film">
								<c:out value="${film.titre}" /><br>
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

<script>$('#artistesfilm').attr('class','active')</script>
