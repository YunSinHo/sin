<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <script src="js/login.js"></script>
    <body>
    <form action="login.do" method="post" name="loginFrm">
    학생<input type="radio" name="choice" value="학생" checked>
    선생님<input type="radio" name="choice" value="강사">
    <div class="member_login">
        
            <div class="member_login_input">
                <input type="text" name="id" placeholder="아이디" >
            </div>
            <div class="member_login_input">
                <input type="password" name="password" placeholder="비밀번호">
            </div>
            <div class="member_login_btn">
                <input type="button" class="btn btn-secondary" id="btn-login" value="로그인" onclick="loginCheck();">
                <input type="button" class="btn btn-secondary" value="회원가입" onclick="location.href='joinForm.do'">
            </div>
            <div id="messeage">&nbsp;&nbsp;&nbsp;${message}</div>
        
    </div>
 </form>
</body>
 
</html>