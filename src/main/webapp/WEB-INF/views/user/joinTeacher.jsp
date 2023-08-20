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
   <div id="teacher">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
      
    <div id="messeage" style="color:white;">&nbsp;&nbsp;&nbsp;${message}</div>
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate action="joinTeacher.do" method="post" name="joinTeacher">
        <input type="hidden" name="result" value="${result}">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name1">이름</label>
              <input type="text" class="form-control" id="name1" placeholder="이름을 입력해주세요." value="${name}" required name="name">
              <div class="invalid-feedback">
              </div>
            </div>
          </div>
            <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root3">아이디</label>
              <input type="text" class="custom-select d-block w-100" id="root3" name="id" value="${id}">
              <button class="btn btn-primary " type="button" onclick="idcheckTeacher();">중복확인</button>
              <c:if test="${result == 1}">
              <div>
			<h5  style="
    color:red;position:relative;">${id}는 이미 사용중인 아이디입니다.</h5>
		</c:if>
		<c:if test="${result == -1}">
			<h5 style="
    position:relative;">${id}는 사용 가능한 ID입니다&nbsp;</h5>
			</c:if>
              <div class="invalid-feedback">
              </div>
            </div>
            </div>
            <div class="row">
            <div class="col-md-4 mb-3">
              <label for="code1">비밀번호</label>
              <input type="password" class="form-control" id="code1" placeholder="" required name="password">
              <div class="invalid-feedback">
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="code2">비밀번호 확인</label>
              <input type="password" class="form-control" id="code2" placeholder="" required name="passwordCheck">
              <div class="invalid-feedback">
              </div>
            </div>
          </div>
          <div class="mb-3">
            <label for="email">전화번호</label>
            <input type="text" class="form-control" name="number" id="email"  required name="number"
             onkeyup="numberRegExp(this);">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <hr class="mb-4">
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="button" onclick="go_saveTeacher();">가입 완료</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>