<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Accueil" nav="hibernate">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- Main jumbotron for a primary marketing message or call to action -->
          <div class="jumbotron">
            <div class="container">
              <h1>NSY135 - Applications orientées données - patrons, framework, ORM</h1>
              <p>TP n°07 - Introduction à JPA et Hibernate</p>
              <p><a class="btn btn-primary btn-lg" href="http://orm.bdpedia.fr/introjpa.html" role="button">Cours en ligne</a></p>
            </div>
          </div>


          <div class="content"> 
            <div class="container">

              <div class="row">
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-sign-in fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Connexion</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/hibernate?action=connexion" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-pencil fa-5x"></i></div>
                    <div class="caption">
                      <h3>2) Insertion</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/hibernate?action=insertion" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="row">
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-book fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Lecture</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/hibernate?action=lecture" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-film fa-5x"></i></div>
                    <div class="caption">
                      <h3>2) Films Pays</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/hibernate?action=filmspays" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="row">
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-user fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Films Artiste</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/hibernate?action=filmsartiste" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-user fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Internaute</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/hibernate?action=internaute" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#index').attr('class','active');</script>