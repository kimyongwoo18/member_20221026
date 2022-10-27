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
  <style>
    #formform{
      width : 1000px;
    }
  </style>
</head>
<body>
<div class="container" id="formform">
  <h5>${member.memberName}님 조회결과</h5>
  <table class="table table-striped">
    <tr>
      <th>회원번호</th>
      <td>${member.id}</td>
    </tr>
    <tr>
      <th>회원이메일</th>
      <td>${member.memberEmail}</td>
    </tr>
    <tr>
      <th>회원비밀번호</th>
      <td>${member.memberPassword}</td>
    </tr>
    <tr>
      <th>회원이름</th>
      <td>${member.memberName}</td>
    </tr>
    <tr>
      <th>회원나이</th>
      <td>${member.memberAge}</td>
    </tr>
    <tr>
      <th>회원전화번호</th>
      <td>${member.memberMobile}</td>
    </tr>
  </table>
</div>
  <a href="/">index.jsp</a>
</body>
</html>
