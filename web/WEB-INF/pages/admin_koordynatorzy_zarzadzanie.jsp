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
    <form action="/admin/koordynatorzy/dodawanie" method="GET">
        <input type="submit" value="Dodaj koordynatora"/>
    </form>
    <form action="/admin/koordynatorzy/edycja" method="POST">
        <select name="idkoord">
            <c:forEach var="koordynator" items="${koordynatorzy}">
                <option value="${koordynator.idKoordynatora}">${koordynator.idKoordynatora} ${koordynator.nazwisko} ${koordynator.imie}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Edytuj dane koordynatora"/>
    </form>
    <form action="/admin/koordynatorzy/usuwanie" method="POST">
        <select name="idkoord">
            <c:forEach var="koordynator" items="${koordynatorzy}">
                <option value="${koordynator.idKoordynatora}">${koordynator.idKoordynatora} ${koordynator.nazwisko} ${koordynator.imie}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Usuń koordynatora"/>
    </form>
    <form action="/admin/turnusy_koordynatora" method="POST">
        <select name="idkoord">
            <c:forEach var="koordynator" items="${koordynatorzy}">
                <option value="${koordynator.idKoordynatora}">${koordynator.idKoordynatora} ${koordynator.nazwisko} ${koordynator.imie}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Zobacz turnusy koordynatora"/>
    </form>
    <table>
        <thead>
            <tr class="naglowek">
                <th>Id</th><th>Imię</th><th>Nazwisko</th><th>Telefon</th><th>Miasto</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="koordynator" items="${koordynatorzy}">
            <tr class="koordynator">
                <td>${koordynator.idKoordynatora}</td>
                <td>${koordynator.imie}</td>
                <td>${koordynator.nazwisko}</td>
                <td>${koordynator.nrTelefonu}</td>
                <td>${koordynator.miasto}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

            <%--<c:forEach var="koord" items="${koordynatorzy}">
                <option value="${koord}">
                    ${koord.nazwisko} ${koord.imie}
                </option>
                &lt;%&ndash;<option value="${koord}">${koord.imie} ${koord.nazwisko}</option>&ndash;%&gt;
            </c:forEach>--%>


        <%--    <c:forEach var="koord" items="${koordynatorzy}">
                <form:option value="${koord}" label="${koord.imie} ${koord.nazwisko}"/>
            </c:forEach>
        </form:select>--%>

    <%--<form:form action="/admin/koordynatorzy/" method="POST" modelAttribute="koordynator_usuniecie">
        <form:select name="koordynatorwyb" path="koordynator" multiple="false">
            <form:options items="${listSupplier}" itemValue="SupplierID" itemLabel="CompanyName"/>
        </form:select>
           &lt;%&ndash; <c:forEach var="koord" items="${koordynatorzy}">
                <form:option value="${koord}" label="${koord.imie} ${koord.nazwisko}"/>
            </c:forEach>&ndash;%&gt;
        &lt;%&ndash;</form:select>&ndash;%&gt;
        <input type="submit" value="Usuń koordynatora"/>
    </form:form>--%>
</body>
</html>
