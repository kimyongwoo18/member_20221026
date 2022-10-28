
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>ajaxEx</title>
    <meta charset="UTF-8">
    <script src="/resources/js/jquery.js"></script>
</head>
<body>
<button onclick="ajax1()">ajax요청1</button>
<button onclick="ajax2()">ajax요청2</button>
<button onclick="ajax3()">ajax요청3</button>
<button onclick="ajax4()">ajax요청4</button>
<button onclick="ajax5()">ajax요청5</button>
<button onclick="ajax6()">ajax요청6</button>

</body>
<script>
    const param1 = "hello";
    const param2 = "friday";
    const ajax6 = () => {
        console.log("ajax6 호출");
        $.ajax({
            type:"post",
            url:"/ajax6",
            data:{
                value1 : param1,
                value2 : param2
            },
            dataType : "json",
            success: function (result){
                console.log("성공");
                console.log(result);
            },
            error : function (){
                console.log("실패");
            }
        });
    }
    const ajax5 = () => {
      console.log("ajax5 호출");
      $.ajax({
          type:"post",
          url:"/ajax5",
          data:{
              value1 : param1,
              value2 : param2
          },
          dataType : "json",
          success: function (result){
              console.log("성공");
              console.log(result);
          },
          error : function (){
              console.log("실패");
          }
      });
    }
  const ajax1 = () => {
      console.log("ajax1 호출");
            $.ajax({
                type: "get", //http request method Post Update Delete
                url: "/ajax1", //요청하는 주소
                success: function (){ //요청이 성공하고 서버로부터 받는 응답
                    console.log("성공");
                },
                error: function (){ // 요청이 실패하는 경우 실행됨
                    console.log("실패");
                }
            });
  }
  const ajax2 = () => {
      console.log("ajax2 호출");
      $.ajax({
          type: "post",
          url: "/ajax2",
          success: function () {
              console.log("성공");
          },
          error: function () {
              console.log("실패");
          }
      });
  }
      const ajax3 = () => {
          console.log("ajax3 호출");
          const param1 = "hello";
          $.ajax({
              type: "get",
              url: "/ajax3",
              data: {
                  value1 : param1,
                  value2 : "today is friday"

              },

              success: function (){
                  console.log("성공");
              },
              error: function (){
                  console.log("실패");
              }
          });
  }
  const ajax4 =()=>{
      console.log("ajax4 호출");
      $.ajax({
          type: "post",
          url: "/ajax4",
          data:{
              value1 : param1,
              value2 : param2
          },
          dataType: "text", // 리턴받을 데이터 형식
          success: function(result){
              console.log("성공");
              console.log(result);
          },
          error: function (){
              console.log("실패");
          }
      });
  }

</script>
</html>
