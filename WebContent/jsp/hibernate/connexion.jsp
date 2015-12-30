<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Connexion">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Connexion</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Connexion ] <span class="label label-default">Test de connexion</span></h3>
              
              <div class="spacer"></div>
              <h4>Test de connexion réussie</h4>
              
            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#connexion').attr('class','active')</script>