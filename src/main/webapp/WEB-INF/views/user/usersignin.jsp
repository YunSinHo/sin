<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	height:50.4688vw;
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
	height:20%;
}
.logoarea{
	width:20%;
	margin-left:40%;
	margin-top:5%;
}
.logo{
	width:100%;
}
</style>
</head>
<body>
	<div class="bannerarea">
	</div>
	<div class="loginarea">
		<div class="headerarea">
			<div class="logoarea">
				<img class="logo" src="img/user/userindeximg/피아스학생용 로그인접속중-004.png" onclick="location.href='userindex.do';">
			</div>
		</div>
		<form name="form1" method="post" action="user_register.do">
			<div class="form-floating mb-3">
	            <input class="form-control" name="user_id" id="user_id" type="text" placeholder="ID" />
	            <label for="inputEmail">ID</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_password" id="user_password" type="password" placeholder="Password" />
	            <label for="inputPassword">Password</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_name" id="user_name" type="text" placeholder="이름" />
	            <label for="inputPassword">이름</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_phone1" id="user_phone1" type="text"/>-
	            <input class="form-control" name="user_phone2" id="user_phone2" type="text"/>-
	            <input class="form-control" name="user_phone3" id="user_phone3" type="text"/>
	            <label for="inputPassword">전화번호</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_parentphone1" id="user_parentphone1" type="text"/>-
	            <input class="form-control" name="user_parentphone2" id="user_parentphone2" type="text"/>-
	            <input class="form-control" name="user_parentphone3" id="user_parentphone3" type="text"/>
	            <label for="inputPassword">부모님 전화번호</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_email" id="user_email" type="text" placeholder="이메일" />
	            <label for="inputPassword">이메일</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_birth" id="user_birth" type="text" placeholder="생일" />
	            <label for="inputPassword">생일</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_school" id="user_school" type="text" placeholder="학교" />
	            <label for="inputPassword">학교</label>
	        </div>
	        <div class="form-floating mb-3">
	            <input class="form-control" name="user_grade" id="user_grade" type="text" placeholder="학년" />
	            <label for="inputPassword">학년</label>
	        </div>
	        <input type="submit" class="buttonOk button_class" value="가입"> 
		</form>
	</div>
</body>
</html>