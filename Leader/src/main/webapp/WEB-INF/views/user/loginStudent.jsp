<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <script src="js/login.js"></script>
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
      max-width: 680px;

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
  <body>
    <div id="messeage">&nbsp;&nbsp;&nbsp;${message}</div>
    <!-- 학원생 회원가입 -->
  <div id="student">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-13 mx-auto">
        <h4 class="mb-3">학원생 로그인</h4>
        <form  class="validation-form" action="loginStudent.do" method="post" name="loginFrm">
          <div class="mb-3">
            <label for="number">아이디</label>
            <input type="text" class="form-control" required name="id">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="address">비밀번호</label>
            <input type="password" class="form-control" required name="password" onkeypress="loginCheckEnter();">
            <div class="invalid-feedback">
            </div>
          </div>
          <hr class="mb-4">
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="button" onclick="loginCheck();">로그인</button>
        </form>
      </div>
    </div>
  </div>
  <body>
</body>
</html>