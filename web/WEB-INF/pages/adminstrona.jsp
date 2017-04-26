<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 14.04.2017
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Strona administratora</title>
    <meta name="description" content="To jest strona projektowa aplikacji na zajęcia TAB"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/formStyle.css">
    <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
</head>
<body>
<div id="menu">
    <a href='<c:url value="/admin/koordynatorzy"/>'><div class="option">Koordynatorzy</div></a>
    <a href='<c:url value="/admin/turnusy"/>'><div class="option">Turnusy</div></a>
    <a href='<c:url value="/wolontariusze"/>'><div class="option">Wolontariusze</div></a>
    <a href='<c:url value="/podopieczni"/>'><div class="option">Podopieczni</div></a>
    <a href='<c:url value="/kontakt"/>'><div class="option">Kontakt</div></a>
    <div style="clear:both;"></div>
</div>
</body>
</html>
