<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 14.04.2017
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/formStyle.css">
    <script src=${pageContext.request.contextPath}/resources/js/admin_koordynatorzy_zarzadzanie/skrypt.js"></script>
</head>
<body>
<form action="/admin/placowki/dodawanie" method="GET">
    <input type="submit" value="Dodaj placówkę"/>
</form>
<form action="/admin/placowki/edycja" method="POST">
    <select name="idplac">
        <c:forEach var="placowka" items="${placowki}">
            <option value="${placowka.idPlacowki}">${placowka.id} ${placowka.nazwa}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Edytuj dane placówki"/>
</form>
<form action="/admin/placowki/usuwanie" method="POST">
    <select name="idplac">
        <c:forEach var="placowka" items="${placowki}">
            <option value="${placowka.idPlacowki}">${placowka.id} ${placowka.nazwa}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Usuń placówkę"/>
</form>
<table>
    <thead>
    <tr class="naglowek">
        <th>Id</th><th>Nazwa placówki</th><th>Adres</th><th>Kod pocztowy</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="placowka" items="${placowki}">
        <tr class="koordynator">
            <td>${placowka.idPlacowki}</td>
            <td>${placowka.nazwa}</td>
            <td>${placowka.miasto}, ${placowka.ulica}</td>
            <td>${placowka.kodPocztowy}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</html>
