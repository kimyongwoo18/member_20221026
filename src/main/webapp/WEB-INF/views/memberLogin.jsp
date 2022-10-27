<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberLogin</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<form action="/login" method="post">
    <input type="text" name="memberEmail" placeholder="이메일 입력"><br>
    <input type="password" name="memberPassword" placeholder="비밀번호 입력"><br>
    <input type="submit" value="로그인">
</form>
</body>
</html>
