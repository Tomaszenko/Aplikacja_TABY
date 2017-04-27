<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% response.setCharacterEncoding("UTF-8"); request.setCharacterEncoding("UTF-8"); %>
<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 15.04.2017
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/formStyle.css">
</head>
<body>
<form:form modelAttribute="turnus" method="POST" action="/admin/turnusy/dodawanie">
    <%--<input type="number" path="idKoordynatora" name = "id"/>--%>
    <label for="datar">Data rozpoczęcia</label>
    <br/>
    <form:input id="datar" path="data_r"/>
    <br/><br/>

    <label for="datak">Data zakończenia</label>
    <br/>
    <form:input id="datak" path="data_k"/>
    <br/><br/>

    Data rozpoczęcia
    <br/>
    <form:select path="idPlacowki">
        <c:forEach var="placowka" items="${placowki}">
            <option value="${placowka.idPlacowki}">${placowka.miasto}: ${placowka.nazwa}</option>
        </c:forEach>
    </form:select>
    <br/><br/>

    Koordynator
    <br/>
    <form:select path="idKoordynatora">
        <c:forEach var="koordynator" items="${koordynatorzy}">
            <option value="${koordynator.idKoordynatora}">${koordynator.login}: ${koordynator.nazwisko} ${koordynator.imie}</option>
        </c:forEach>
    </form:select>
    <br/><br/>

    Pielęgniarka
    <br/>
    <form:select path="idPielegniarki">
        <c:forEach var="pielegniarka" items="${pielegniarki}">
            <option value="${pielegniarka.idPielegniarki}">${pielegniarka.nazwisko} ${pielegniarka.imie}: ${pielegniarka.miasto}</option>
        </c:forEach>
    </form:select>
    <br/><br/>

    Ksiądz
    <br/>
    <form:select path="idKsiedza">
        <c:forEach var="ksiadz" items="${ksieza}">
            <option value="${ksiadz.idKsiedza}">${ksiadz.nazwisko} ${ksiadz.imie}: ${ksiadz.parafia}</option>
        </c:forEach>
    </form:select>
    <br/><br/>

    <input type="submit" value="Dodaj turnus!"/>
</form:form>
</body>
</html>
