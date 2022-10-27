<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<form action="/update?id=${id}" method="post">
    <input type="text" name = "memberPassword" placeholder="비밀번호수정"><br>
    <input type="submit" name = "수정">
</form>
</body>
</html>
