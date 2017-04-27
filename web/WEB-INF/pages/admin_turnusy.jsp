<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<form action="/admin/turnusy/dodawanie" method="GET">
    <input type="submit" value="Dodaj turnus"/>
</form>
<%--<form action="/admin/koordynatorzy/edycja" method="POST">--%>
    <%--<select name="idkoord">--%>
        <%--<c:forEach var="koordynator" items="${koordynatorzy}">--%>
            <%--<option value="${koordynator.idKoordynatora}">${koordynator.login}: ${koordynator.nazwisko} ${koordynator.imie}</option>--%>
        <%--</c:forEach>--%>
    <%--</select>--%>
    <%--<input type="submit" value="Edytuj dane koordynatora"/>--%>
<%--</form>--%>
<%--<form action="/admin/koordynatorzy/usuwanie" method="POST">--%>
    <%--<select name="idkoord">--%>
        <%--<c:forEach var="koordynator" items="${koordynatorzy}">--%>
            <%--<option value="${koordynator.idKoordynatora}">${koordynator.login}: ${koordynator.nazwisko} ${koordynator.imie}</option>--%>
        <%--</c:forEach>--%>
    <%--</select>--%>
    <%--<input type="submit" value="Usuń koordynatora"/>--%>
<%--</form>--%>
<%--<form action="/admin/turnusy_koordynatora" method="POST">--%>
    <%--<select name="idkoord">--%>
        <%--<c:forEach var="koordynator" items="${koordynatorzy}">--%>
            <%--<option value="${koordynator.idKoordynatora}">${koordynator.login}: ${koordynator.nazwisko} ${koordynator.imie}</option>--%>
        <%--</c:forEach>--%>
    <%--</select>--%>
    <%--<input type="submit" value="Zobacz turnusy koordynatora"/>--%>
<%--</form>--%>
<table>
    <thead>
    <tr class="naglowek">
        <th>Początek</th><th>Koniec</th><th>Miejscowość</th><th>Nazwa placówki</th><th>Telefon koordynatora</th>
        <th>Telefon dyrektora</th><th>Telefon pielęgniarki</th><th>Telefon księdza</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="turnus" items="${turnusy}">
        <tr>
            <td><fmt:formatDate value="${turnus.data_r}" type="both"
                                pattern="yyyy-MM-dd" /></td>
            <td><fmt:formatDate value="${turnus.data_k}" type="both"
                                pattern="yyyy-MM-dd" /></td>
            <td>${turnus.miasto}</td>
            <td>${turnus.nazwaPlacowki}</td>
            <td>${turnus.telefonKoordynatora}</td>
            <td>${turnus.telefonDyrektora}</td>
            <td>${turnus.telefonPielegniarki}</td>
            <td>${turnus.telefonKsiedza}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
