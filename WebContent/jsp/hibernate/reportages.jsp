<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Liste des Reportages">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Reportages</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Reportage ] <span class="label label-default">Liste des reportages</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Titre</th>
              			<th>Année</th>
              			<th>Lieu</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.reportages}" var="reportage">
					<tr>
						<td><c:out value="${reportage.titre}" /></td>
						<td><c:out value="${reportage.annee}" /></td>
						<td><c:out value="${reportage.lieu}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#reportages').attr('class','active')</script>
