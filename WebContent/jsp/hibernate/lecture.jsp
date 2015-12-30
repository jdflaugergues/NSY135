<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Lecture des Pays">
	<jsp:attribute name="body_area"> %>

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Lecture</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Lecture ] <span class="label label-default">Lecture des pays</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Code</th>
              			<th>Nom</th>
              			<th>Langue</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.pays}" var="p">
					<tr>
						<td><c:out value="${p.code}" /></td>
						<td><c:out value="${p.nom}" /></td>
						<td><c:out value="${p.langue}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#lecture').attr('class','active')</script>
