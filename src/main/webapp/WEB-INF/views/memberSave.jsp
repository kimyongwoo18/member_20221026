<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberSave,jsp</title>
</head>
<body>
<form action="/save" method="post">
    <input type="text" name="memberEmail" placeholder="이메일입력"><br>
    <input type="password" name="memberPassword" placeholder="비밀번호입력"><br>
    <input type="text" name="memberName" placeholder="이름입력"><br>
    <input type="number" name="memberAge" placeholder="나이입력"><br>
    <input type="text" name="memberMobile" placeholder="전화번호입력"><br>
    <input type="submit" value="가입"><br>
</form>
</body>
</html>
