<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Erreur</title>
</head>
<body>
	<h1>Une erreur est survenue : </h1>
	<%
		String erreur = (String) request.getAttribute("message");
		out.println(erreur);
	%>
	<p>
		<a href="${pageContext.request.contextPath}/jdbc">Accueil</a> $
	</p>
</body>
</html>