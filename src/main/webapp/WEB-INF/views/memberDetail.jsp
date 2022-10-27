<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>

  <h3>${member.memberName}님 조회결과</h3>
  회원 번호 : ${member.id}<br>
  회원 이메일 : ${member.memberEmail}<br>
  회원 비밀번호 : ${member.memberPassword}<br>
  회원 이름 : ${member.memberName}<br>
  회원 나이 : ${member.memberAge}<br>
  회원 전화번호 : ${member.memberMobile}<br>
  <a href="/">index.jsp</a>
</body>
</html>
