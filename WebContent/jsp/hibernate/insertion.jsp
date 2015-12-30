<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Insertion Pays réussie">
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

              <h3 id="q1">[ Insertion ] <span class="label label-default">Insertion d'un pays</span></h3>
              
              <div class="spacer"></div>
              <h4>Insertion du pays réussie</h4>
              
              <form class="form-horizontal">
				  <div class="form-group">
				    <label class="col-sm-2 control-label">Code</label>
				    <div class="col-sm-10">
				      <p class="form-control-static"><c:out value="${pays.code}" /></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">Nom</label>
				    <div class="col-sm-10">
				      <p class="form-control-static"><c:out value="${pays.nom}" /></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">Langue</label>
				    <div class="col-sm-10">
				      <p class="form-control-static"><c:out value="${pays.langue}" /></p>
				    </div>
				  </div>
				</form>
              
            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#insertion').attr('class','active')</script>