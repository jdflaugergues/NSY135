<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Insertion Film">
	<jsp:attribute name="body_area"> %>

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Insertion</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Insertion ] <span class="label label-default">Insertion d'un film</span></h3>
              
              <div class="spacer"></div>
              <h4>Insertion du film réussie</h4>
              
              <form class="form-horizontal">
				  <div class="form-group">
				    <label class="col-sm-2 control-label">Titre</label>
				    <div class="col-sm-10">
				      <p class="form-control-static"><c:out value="${film.titre}" /></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">Année</label>
				    <div class="col-sm-10">
				      <p class="form-control-static"><c:out value="${film.annee}" /></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">Genre</label>
				    <div class="col-sm-10">
				      <p class="form-control-static"><c:out value="${film.genre.code}" /></p>
				    </div>
				  </div>
				</form>
              
            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#insertionFilm').attr('class','active')</script>