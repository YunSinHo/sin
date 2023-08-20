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
    <div id="messeage">&nbsp;&nbsp;&nbsp;${message}</div>
    <!-- 학원생 회원가입 -->
  <div id="student">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form"  action="joinStudent.do" method="post" name="joinStudent">
        <input type="hidden" name="result" value="${result}">
         <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control"name="name" id="name" value="${name}" required>
              <div class="invalid-feedback">
              </div>
            </div>
          </div>
            <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root1">아이디</label>
              <input type="text" class="custom-select d-block w-100" id="root1" name="id" value="${id}">
              <button class="btn btn-primary " type="button" onclick="idcheck();">중복확인</button>
              <c:if test="${result == 1}">
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
              <label for="password">비밀번호</label>
              <input type="password" class="form-control" id="password" placeholder="" required name="password" >
               <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="passwordcheck">비밀번호 확인</label>
              <input type="password" class="form-control" id="passwordcheck" placeholder="" required name="passwordCheck" >
               <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
            </div>
          </div>
          
          <div class="mb-3">
            <label for="number">전화번호</label>
            <input type="text" class="form-control" 
            name="number" id="number" required name="number"
            onkeyup="numberRegExp(this);">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="address">부모님번호</label>
            <input type="text" class="form-control" id="address" required name="parentnumber"
             onkeyup="numberRegExp(this);">
            <div class="invalid-feedback">
            </div>
          </div>

          <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root2">학교</label>
              <input type="text" class="custom-select d-block w-100" id="root2" name="school">
              <div class="invalid-feedback">
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="code">학년</label>
              <select class="custom-select d-block w-100"  name="grade">
                <option value=""></option>
                <option>초1</option>
                <option>초2</option>
                <option>초3</option>
                <option>초4</option>
                <option>초5</option>
                <option>초6</option>
                <option>중1</option>
                <option>중2</option>
                <option>중3</option>
              </select>
              <div class="invalid-feedback">
              </div>
            </div>
          </div>
          <hr class="mb-4">
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="button" onclick="go_save();">가입 완료</button>
        </form>
      </div>
    </div>
  </div>
  <body>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>
</html>