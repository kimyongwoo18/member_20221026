<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberMain</title>
</head>
<body>
    <h2>${member.memberName}님 환영합니다.</h2>
    <%--회원정보수정
        로그인 한 다음에 해당 아이디를 수정해야함.
        어차피 뒤에서 where절에 id넣고 수정하면 되니까 상관없으려나..
        --%>
    <a href="/update?id=${member.id}">회원정보수정</a><br>
    <a href="/delete?id=${member.id}">회원정보수정</a><br>
<%--    회원탈퇴--%>


</body>
</html>
