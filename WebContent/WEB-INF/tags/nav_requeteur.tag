<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@tag description="Nav Requeteur Template" pageEncoding="UTF-8"%>

<%@attribute name="subnav"%>

  <!-- Column Left - Nav Bar -->
  <div class="col-sm-3 col-md-2 sidebar">
    <ul class="nav nav-sidebar">
      <li <c:if test="${subnav.equals('cleMinimal')}">class="active"</c:if>><a href='<c:url value="/requeteur?action=cleMinimal"/>'>Accès Par Clé (minimal)</a></li>
      <li <c:if test="${subnav.equals('cle')}">class="active"</c:if>><a href='<c:url value="/requeteur?action=cle"/>'>Accès Par Clé (et navigation)</a></li>
      <li <c:if test="${subnav.equals('titre')}">class="active"</c:if>><a href='<c:url value="/requeteur?action=titre"/>'>Accès Par Titre (HQL)</a></li>
      <li <c:if test="${subnav.equals('titreCriteria')}">class="active"</c:if>><a href='<c:url value="/requeteur?action=titreCriteria"/>'>Accès Par Titre (Criteria)</a></li>
      <li <c:if test="${subnav.equals('critere')}">class="active"</c:if>><a href='<c:url value="/jsp/requeteur/parCritere.jsp"/>'>Accès Par Critère</a></li>
      <li <c:if test="${subnav.equals('role')}">class="active"</c:if>><a href='<c:url value="/requeteur?action=role"/>'>Accès Par Role</a></li>
    </ul>
  </div><!-- Column Left - Nav Bar -->