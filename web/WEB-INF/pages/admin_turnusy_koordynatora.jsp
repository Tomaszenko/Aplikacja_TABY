<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 26.04.2017
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/formStyle.css">
</head>
<body>
    <h1 style="color: blue">${koordynator.imie} ${koordynator.nazwisko}</h1>
    <table>
        <thead>
        <tr class="naglowek">
            <th>Id turnusu</th><th>Początek</th><th>Koniec</th><th>Miejscowość</th><th>Nazwa placówki</th>
            <th>Telefon dyrektora</th><th>Telefon pielęgniarki</th><th>Telefon księdza</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="turnus" items="${turnusy}">
            <tr>
                <td>${turnus.idTurnusu}</td>
                <td><fmt:formatDate value="${turnus.data_r}" type="both"
                                    pattern="yyyy-MM-dd" /></td>
                <td><fmt:formatDate value="${turnus.data_k}" type="both"
                                    pattern="yyyy-MM-dd" /></td>
                <td>${turnus.miasto}</td>
                <td>${turnus.nazwaPlacowki}</td>
                <td>${turnus.telefonDyrektora}</td>
                <td>${turnus.telefonPielegniarki}</td>
                <td>${turnus.telefonKsiedza}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
