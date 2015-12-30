<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Liste des internautes">
	<jsp:attribute name="body_area"> %>
	
	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Internaute</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Internaute ] <span class="label label-default">Liste des internautes</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Internaute</th>
              			<th>Adresse Personnelle </th>
              			<th>Adresse Professionelle</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.internautes}" var="internaute">
					<tr>
						<td><c:out value="${internaute.prenom} ${internaute.nom}" /></td>
						<td><c:out value="${internaute.adresse.adresse} - ${internaute.adresse.codePostal} ${internaute.adresse.ville}" /></td>
						<td><c:out value="${internaute.adressePro.adresse} - ${internaute.adressePro.codePostal} ${internaute.adressePro.ville}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#internaute').attr('class','active')</script>
