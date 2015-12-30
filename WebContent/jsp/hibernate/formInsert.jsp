<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Insertion Pays">
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
              <h4>Formulaire d'insertion d'un pays</h4>
              <br>
              <br>
 
              <form class="form-horizontal" method="POST" 
              		action="${pageContext.request.contextPath}/hibernate?action=insertion">
				
			  <div class="form-group">
				    <label for="code" class="col-sm-2 control-label">Code</label>
				    <div class="col-sm-10">
				    	<input type="text" class="form-control" id="code" name="code" placeholder="Code Pays">
				    </div>
			  </div>
			  <div class="form-group">
			    <label for="nom" class="col-sm-2 control-label">Nom</label>
			    <div class="col-sm-10">
			    	<input type="text" class="form-control" id="nom" name="nom" placeholder="Nom du pays">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="langue" class="col-sm-2 control-label">Langue</label>
			    <div class="col-sm-10">
			    	<input type="text" class="form-control" id="langue" name="langue" placeholder="Langue">
			    </div>
			  </div>
				
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-primary">Insérer le pays</button>
			    </div>
			  </div>
				
				
			</form>
              
            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#insertion').attr('class','active')</script>