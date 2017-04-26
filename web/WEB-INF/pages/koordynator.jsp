<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 25.03.2017
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/formStyle.css">
    <title>Title</title>
</head>
<body>
<form method="GET" action="/minor/goodProcessor">
    <input type="text" name="footballer" placeholder="Wpisz tu coś..."/>
    <input type="submit"/>
</form>
<img src="${pageContext.request.contextPath}/resources/img/miller.jpg">
</body>
</html>
