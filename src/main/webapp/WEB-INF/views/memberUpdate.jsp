<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container" id="update-form">
<h5>기존정보</h5>

<form action="/update" method="Post" name="updateForm">
    id : <input type="text" name="id" value="${member.id}" class="form-control" readonly>

    이메일 : <input type="text" name="memberEmail"  value="${member.memberEmail}" class="form-control">
    이름 : <input type="text" name="memberName" value="${member.memberName}" class="form-control">
    기존비밀번호 : <input type="text" name="beforePassword"  class="form-control">
    수정비밀번호 : <input type="text" name="memberPassword"  class="form-control">
    나이 : <input type="text" name="memberAge" value="${member.memberAge}" class="form-control">
    전화번호 : <input type="text" name="memberMobile" value="${member.memberMobile}" class="form-control">
    <input type="button" value="수정" class="btn-warning btn" onclick="update()">
    <%--form태그를 이용하여 기존 정보를 보여주고 이름을 다른이름으로 하여
       /update 주소로 post요청.--%>

</form>
</div>

</body>
<script>
    const update = () => {

      const passwordDB = '${member.memberPassword}' //DB에서 가져온 비밀번호
        /*
        * 사용자가 input 태그에 입력한 비밀번호와 DB에서 가져온 비밀번호가 일치하면 수정 요청을 보내고
        * 일치하지 않으면 alert으로 비밀번호가 일치하지 않습니다 출력
        * */
        if(document.updateForm.beforePassword.value != passwordDB){
            alert("기존 비밀번호가 일치하지않습니다.")
            return false;
        }else {
            document.updateForm.submit();
        }

    }
</script>

</html>
