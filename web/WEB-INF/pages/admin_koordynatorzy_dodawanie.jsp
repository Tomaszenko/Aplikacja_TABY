<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
<form:form modelAttribute="koordynator" method="POST" action="/admin/koordynatorzy/dodawanie">
    <%--<input type="number" path="idKoordynatora" name = "id"/>--%>
    <label for="imie">Imię</label>
    <br/>
    <form:input id="imie" path="imie"/>
    <br/><br/>

    <label for="nazwisko">Nazwisko</label>
    <br/>
    <form:input id="nazwisko" path="nazwisko"/>
    <br/><br/>

    <label for="datu">Data urodzenia</label>
    <br/>
    <form:input id="datu" path="data_urodzenia"/>
    <br/><br/>

    <label for="dats">Data szkolenia</label>
    <br/>
    <form:input id="dats" path="data_szkolenia"/>
    <br/><br/>

    <label for="nrtel">Numer telefonu</label>
    <br/>
    <form:input id="nrtel" path="nrTelefonu"/>
    <br/><br/>

    <label for="miasto">Miasto</label>
    <br/>
    <form:input id="miasto" path="miasto"/>
    <br/><br/>

    <label for="ulica">Ulica</label>
    <br/>
    <form:input id="ulica" path="ulica"/>
    <br/><br/>

    <label for="login">Login</label>
    <br/>
    <form:input id="login" path="login"/>
    <br/><br/>

    <label for="haslo">Hasło</label>
    <br/>
    <form:input id="haslo" path="haslo"/>
    <br/><br/>
    <input type="submit" value="Dodaj koordynatora!"/>
</form:form>
</body>
</html>
