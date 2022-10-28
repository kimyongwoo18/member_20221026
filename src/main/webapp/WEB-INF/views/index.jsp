<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body>
<div class="container text-center" id="123">
<h2>${sessionScope.loginEmail} 님 환영합니다.</h2>
<h2>model값 : ${modelEmail}</h2>

    <a href="/save" class="form-control">회원가입</a><br>
    <a href="/login" class="form-control">로그인</a><br>
    <a href="/members" class="form-control">회원목록</a><br>

    <button class="btn btn-primary" onclick="saveFn()">회원가입</button>
    <button class="btn btn-danger" onclick="loginFn()">로그인</button>
    <button class="btn btn-dark" onclick="listFn()">회원목록</button>
</div>
</body>
<script>
    /*자바스크립트를 이용해서 get방식으로 주소를 요청하는 방법*/
    const saveFn = () =>  {
        location.href = "/save";
    }
    const loginFn = () => {
        location.href = "/login";
    }
    const listFn = () => {
        location.href = "/members";
    }


</script>
</html>
