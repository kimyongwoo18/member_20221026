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

<table>
    <tr>
        <th>회원이메일</th>
        <th>회원이름</th>
    </tr>
<c:forEach items="${memberList}" var="member">
    <tr>
        <td>
         <a href="/member?id=${member.id}"> ${member.memberEmail}</a>
        </td>

        <td>
        <a href="/member?id=${member.id}"> ${member.memberName}</a>
        </td>
    </tr>
</c:forEach>
</table>


</body>
</html>