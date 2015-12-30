<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Par Clé" nav="requeteur" subnav="cle">
	<jsp:attribute name="body_area" >

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/requeteur/index.jsp">Accueil</a></li>
            <li class="active">Par clé</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Lecture ] <span class="label label-default">Par clé et navigation</span></h3>
              
              <p>Récupération du film n°1 : ${film.titre} réalisé par ${film.realisateur.prenom} ${film.realisateur.nom} réussie.</p>
			  <p>Lequel a également réalisé les films suivants : </p>
			  	
			  	<table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Titre</th>
              		</tr>
              	</thead>
					<c:forEach items="${film.realisateur.filmsRealises}" var="film">
						<tr>
							<td><c:out value="${film.titre}" /></td>
						</tr>
					</c:forEach>
				</table>


            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>
