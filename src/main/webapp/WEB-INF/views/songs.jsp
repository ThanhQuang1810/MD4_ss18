

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách bài hát</title>
</head>
<body>
<a href="/songs/upload">Upload song</a>

<!-- Bảng hiển thị thông tin bài hát -->
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Singer</th>
        <th>Genre</th>
        <th>Listen</th>
    </tr>
    <c:forEach var="song" items="${songs}">
        <tr>
            <td>${song.id}</td>
            <td>${song.name}</td>
            <td>${song.singer}</td>
            <td>${song.genre}</td>
            <td>
                <audio controls>
                    <source src="${song.source}" type="audio/mpeg">
                </audio>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/">Quay lại trang chủ</a>
</body>
</html>
