<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 07.04.2017
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Strona administratora</title>
</head>
<body>
    <p>Strona logowania administratorów</p>
    <form:form method="POST" action="/admin/autoryzacja">
        <label for="login">Login</label>
        <input type="text" id="login" name="nazwa">
        <label for="password">Hasło</label>
        <input type="password" id="password" name="haslo">
        <input type="submit" value="Zaloguj się">
    </form:form>
</body>
</html>
