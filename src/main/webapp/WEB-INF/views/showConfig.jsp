<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mail Configuration</title>
</head>
<body>
<h1>Current Mail Configuration</h1>
<table border="1">
    <tr>
        <th>Configuration</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>Language</td>
        <td>
            <c:choose>
                <c:when test="${mail.language == 'vi'}">Tiếng Việt</c:when>
                <c:when test="${mail.language == 'en'}">English</c:when>
                <c:when test="${mail.language == 'jap'}">Japanese</c:when>
            </c:choose>
        </td>
    </tr>
    <tr>
        <td>Pages per mail</td>
        <td>${mail.pages}</td>
    </tr>
    <tr>
        <td>Spams filter enabled</td>
        <td>${mail.spams}</td>
    </tr>
    <tr>
        <td>Signature</td>
        <td>${mail.signature}</td>
    </tr>
</table>
<a href="/updateConfig"> update</a>
</body>
</html>