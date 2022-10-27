<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberList</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<table class="table table-striped table-hover">
    <tr>
        <th>회원 id</th>
        <th>회원이메일</th>
        <th>회원이름</th>
        <th>회원비밀번호</th>
        <th>회원나이</th>
        <th>회원전화번호</th>
        <th>조회</th>
        <th>삭제</th>
    </tr>
<c:forEach items="${memberList}" var="member">
    <tr>
        <td>
         <a href="/member?id=${member.id}"> ${member.id}</a>
        </td>
        <td>
        <a href="/member?id=${member.id}"> ${member.memberEmail}</a>
        </td>

        <td>
            <a href="/member?id=${member.id}"> ${member.memberName}</a>
        </td>
        <td>
            <a href="/member?id=${member.id}"> ${member.memberPassword}</a>
        </td>
        <td>
            <a href="/member?id=${member.id}"> ${member.memberAge}</a>
        </td>
        <td>
        <a href="/member?id=${member.id}"> ${member.memberMobile}</a>
        </td>
        <td>
            <a href="/member?id=${member.id}">조회</a>
        </td>
        <td>
            <button class="btn btn-danger" onclick="deleteMember('${member.id}')">삭제</button>
        </td>
        <%--조회라고 따로 주거나 그냥 a태그를 이용해서 member.*** 를 클릭해서 갈 수 있게 한다.--%>
    </tr>
</c:forEach>
</table>

</div>
</body>
<script>
    const deleteMember = (clickedId) => {
        <%--console.log('${memberList}');--%>
        console.log("클릭한 id값: "+ clickedId);
        location.href="/delete?id="+ clickedId;

    }
</script>
</html>