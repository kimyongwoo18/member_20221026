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
    <style>
        #formform {
            width : 1000px;
        }
    </style>
</head>
<body>
<div class="container" id="formform">
<form action="/login" method="post">
    <input type="text" name="memberEmail" id="memberEmail" placeholder="이메일 입력" class="form-control" onblur="email_check()">
    <h6 id="memberEmailResult"></h6><br>
    <input type="password" name="memberPassword" id="memberPassword" placeholder="비밀번호 입력" class="form-control" onblur="password_check()">
    <h6 id="memberPasswordResult"></h6><br>
    <input type="submit" class="btn btn-primary" value="로그인">
</form>
</div>
</body>
<script>
    const email_check = () => {
        const email = document.getElementById("memberEmail").value;
        const emailResult = document.getElementById("memberEmailResult");

    if(email.length == 0){
        emailResult.innerHTML = "이메일을 입력해주세요.";
        emailResult.style.color = "red";
    }
    }

    const password_check = () => {
        const email = document.getElementById("memberPassword").value;
        const emailResult = document.getElementById("memberPasswordResult");

        if(email.length == 0){
            emailResult.innerHTML = "비밀번호를 입력해주세요.";
            emailResult.style.color = "red";
        }
    }
</script>
</html>
