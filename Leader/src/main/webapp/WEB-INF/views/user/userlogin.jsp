<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
* {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    box-sizing: border-box;
}
body{
    background-color: #FFFBEF;
    font-size:1.4583vw;
    display:flex;
    flex-direction: row;
}
.bannerarea{
	width:60%;
	height:50.1988vw;
	border:1px solid black;
}
.loginarea{
	width:40%;
	height:50.4688vw;
    display:flex;
    flex-direction: column;
}
.headerarea{
	width:100%;
	height:35%;
}
.logoarea{
	width:40%;
	margin-left:30%;
	margin-top:10%;
}
.logo{
	width:100%;
}
.bannerimg{
	width:100%;
	height:100%;
}
.boxarea{
	margin-left:20%;
	width:60%;
	height:22.7344vw;
	display:flex;
    flex-direction: column;
    justify-content:space-between;
}
.selectarea{
	width:100%;
	height:4.7917vw;
    display:flex;
    flex-direction: row;
    justify-content:space-between;
}
.adminselect{
	background-color:#434343;
	width:45%;
	color:#FFFF40;
	text-align:center;
	line-height:4.7917vw;
	font-size:1.6667vw;
	font-weight:bold;
	display:inline-block;
}
.userselect{
	background-color:#434343;
	width:45%;
	color:#FFFF40;
	text-align:center;
	line-height:4.7917vw;
	font-size:1.6667vw;
	font-weight:bold;
}
.logintext{
	line-height:4.7917vw;
    font-size:1.4583vw;
	width:100%;
	height:4.7917vw;
	margin-bottom:1.0938vw;
	padding-left:0.7813vw;
}
.passwordtext{
	line-height:4.7917vw;
    font-size:1.4583vw;
	width:100%;
	height:4.7917vw;
	margin-bottom:1.0938vw;
	padding-left: 0.7813vw;
}
.btnarea{
	display:flex;
	width:100%;
    flex-direction: row;
    justify-content:space-between;
}
.loginbtn{
	width:45%;
	background-color:#434343;
	color:#FFFF40;
	text-align:center;
	line-height:4.7917vw;
	border:0px;
	font-size:1.6667vw;
	font-weight:bold;
}
.signinbtn{
	width:45%;
	background-color:#434343;
	color:#FFFF40;
	text-align:center;
	line-height:4.7917vw;
	border:0px;
	font-size:1.6667vw;
	font-weight:bold;
}
</style>
<body>
	<div class="bannerarea">
		<img class="bannerimg" src="/img/user/bannerimg/banner1.png" onclick="location.href='userindex.do';">
	</div>
	<div class="loginarea">
		<div class="headerarea">
			<div class="logoarea">
				<img class="logo" src="/img/user/userindeximg/피아스학생용 로그인접속중-004.png" onclick="location.href='userindex.do';">
			</div>
		</div>
		<div class="boxarea">
			<div class="selectarea">
				<div class="adminselect" onclick="location.href='adminlogin.mdo';">
					관리자용
				</div>
				<div class="userselect" onclick="location.href='userlogin.do';">
					학생용
				</div>
			</div>
			<form name="form1" method="post">
		        <div class="form-floating mb-3">
		            <input class="logintext" name="user_id" id="user_id" type="text" placeholder="아이디를 입력해주세요." />
		        </div>
		        <div class="form-floating mb-3">
		            <input class="passwordtext" name="user_password" id="user_password" type="password" placeholder="비밀번호를 입력해주세요." />
		        </div>
		        <div class="btnarea">
		            <button type="button" class="loginbtn" id="btnLogin">로그인</button>
		            <button type="button" class="signinbtn" onclick="location.href='usersignin.do';">회원가입</button>
		        </div>
			</form>
		</div>
	</div>
	<script>
   		$(document).ready(function(){
   			$("#btnLogin").click(function(){
   				var user_id = $("#user_id").val();
   				var user_password = $("#user_password").val();
   				if(user_id == ""){
   					alert("아이디를 입력해주세요.");
   					$("#user_id").focus();
   					return;
   				}
   				if(user_password == ""){
   					alert("비밀번호를 입력해주세요.");
   					$("#user_password").focus();
   					return;
   				}
   				document.form1.action="loginCheck.do";
   				document.form1.submit();
   			});
   		});
   	</script>
</body>
</html>