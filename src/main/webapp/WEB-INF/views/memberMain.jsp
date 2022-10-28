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
    <title>memberMain.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>${sessionScope.loginEmail} 님 환영합니다.</h2>
            <button class="btn btn-warning" onclick="updateForm()">내정보 수정하기</button>
            <button class="btn btn-danger" onclick="logout()">로그아웃</button>
            <button class="btn btn-warning" onclick="index()">go to index</button>
    </div>



</body>
<script>
    /* /update 주소를 요청하는 update함수 */
    const updateForm =()=>{
        location.href = "/update";
    }
    const index =()=>{
        location.href = "/";
    }
    const logout = () => {
        location.href = "/logout";
    }
</script>
</html>
