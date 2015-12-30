<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des films</title>
</head>
<body>
	<h1>Liste des films</h1>
	<ul>
		<c:forEach items="${requestScope.films}" var="film">
			<li><c:out value="${film.titre} (${film.annee})" /></li>
		</c:forEach>
	</ul>
	<p>
		<a href="${pageContext.request.contextPath}/jdbc">Accueil</a>
	</p>
</body>
</html>