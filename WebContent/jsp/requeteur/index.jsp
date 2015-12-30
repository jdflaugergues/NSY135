<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Accueil" nav="requeteur">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- Main jumbotron for a primary marketing message or call to action -->
          <div class="jumbotron">
            <div class="container">
              <h1>NSY135 - Applications orientées données - patrons, framework, ORM</h1>
              <p>TP n°10 - Lectures de données</p>
              <p><a class="btn btn-primary btn-lg" href="http://orm.bdpedia.fr/lectures.html" role="button">Cours en ligne</a></p>
            </div>
          </div>


          <div class="content"> 
            <div class="container">

              <div class="row">
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-key fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Accès par Clé (Minimal)</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/requeteur?action=cleMinimal" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-key fa-5x"></i></div>
                    <div class="caption">
                      <h3>2) Accès par Clé (et navigation)</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/requeteur?action=cle" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
              </div>
              
                            <div class="row">
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-list-ul fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Accès par Titre (HQL)</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/requeteur?action=titre" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-list-ul fa-5x"></i></div>
                    <div class="caption">
                      <h3>2) Accès par Titre (Criteria)</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/requeteur?action=titreCriteria" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="row">
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-search fa-5x"></i></div>
                    <div class="caption">
                      <h3>1) Accès par Critère</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/jsp/requeteur/parCritere.jsp" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6">
                  <div class="thumbnail">
                    <div class="centeredSection fa-thumbnails"><i class="fa fa-male fa-5x"></i></div>
                    <div class="caption">
                      <h3>2) Accès par Role</h3>
                      <p></p>
                      <p><a href="${pageContext.request.contextPath}/requeteur?action=role" class="btn btn-primary centeredSection" role="button">Accéder</a></p>
                    </div>
                  </div>
                </div>
              </div>
              
           </div>
              


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#index').attr('class','active');</script>