<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 1000px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
  <script>
  	function modify(){
  		if(!(document.mypageForm.password.value==document.mypageForm.password2.value)){
  			alert("비밀번호가 일치하지 않습니다");
  		}
  		else{
  		document.mypageForm.action="modify";
  		document.mypageForm.submit();
  		}
  	}
  </script>
  <form name="mypageForm" method="POST">
  <input type="hidden" name="teaOrStu" value="${teaOrStu}">
  <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto" style="width: 1000px; color:black">
      이름 : ${mypage.name}<br>
      아이디 : ${mypage.user_id}<br>
      새 비밀번호 :<input type="password" name="password" style="border:none;"><br>
      새 비밀번호확인 :<input type="password" name="password2" style="border:none;"><br>
      전화번호 : <input type="text" name="number" value="${mypage.number}" style="border:none;"><br>
      <button type="button" onclick="modify()" class="btn btn-success">수정하기</button>
     
      </div>
      
      </div>
  	
  </form>
  
  </body>
</html>