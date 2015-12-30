<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Erreur">
	<jsp:attribute name="body_area">

  <!-- Column Right-->
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

     <!-- BreadCrumb -->
     <ol class="breadcrumb">
       <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
     </ol>

     <!-- Content -->
     <div class="content">
       <div class="container">

         <h3 id="q1">[ Erreur ] <span class="label label-default">Une erreur est survenue</span></h3>
         
         <div class="spacer"></div>
         <h4>Détails de l'erreur : </h4>
         <p>
         <%
			String erreur = (String) request.getAttribute("message");
			out.println(erreur);
		 %>
         </p>

       </div> <!-- /container -->
     </div> <!-- /content -->


   </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>
