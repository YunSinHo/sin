<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="/css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/css/admin/sb-admin-2.min.css" rel="stylesheet">
    <!--alert-->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

</head>

<body class="bg-gradient-primary">

    <div class="text-center">
        <h1 class="h4 text-gray-900 mb-4">관리자 로그인입니다.</h1>
    </div>
    <form class="user" name="form1" method="post">
        <div class="form-group">
            <input type="text" class="form-control form-control-user"
                name="admin_id" id="admin_id"
                placeholder="아이디를 입력해주세요.">
        </div>
        <div class="form-group">
            <input type="password" class="form-control form-control-user"
                name="admin_password" id="admin_password" placeholder="비밀번호를 입력해주세요.">
        </div>
        <div class="form-group">
            <div class="custom-control custom-checkbox small">
                <input type="checkbox" class="custom-control-input" id="customCheck">
                <label class="custom-control-label" for="customCheck">Remember
                    Me</label>
            </div>
        </div>
        <button type="button" class="btn btn-primary btn-user btn-block" id="btnLogin">
            Login
        </button>
    </form>
    <hr>
    <div class="text-center">
        <a class="small" href="#">비밀번호를 잊어버리셨나요?</a>
    </div>
    <div class="text-center">
        <a class="small" href="${path}adminsignin.mdo">회원가입하기</a>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin/sb-admin-2.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#btnLogin").click(function(){
				var admin_id = $("#admin_id").val();
				var admin_password = $("#admin_password").val();
				if(admin_id == ""){
					alert("아이디를 입력해주세요.");
					$("#admin_id").focus();
					return;
				}
				if(admin_password == ""){
					alert("비밀번호를 입력해주세요.");
					$("#admin_password").focus();
					return;
				}
				if (admin_id != "" && admin_password != "") {
				      $.ajax({
				         type: "POST",
				         data: {
				            "adminid": admin_id,
				            "adminpassword": admin_password
				         },
				         url: "adminloginCheck.mdo",
				         dataType: "json",
				         success: function(result) {
				            if (result.msg == "status") {
							    swal({
									title: "로그인 불가.",
									text: "서류심사가 완료되지 않았습니다.",
									icon : "info",
								}, function(){
									location.reload();
								});
				            } else if (result.msg == "idFail") {
				               swal({
									title: "로그인 실패.",
									text: "아이디가 없습니다. 아이디를 확인해 주세요.",
									icon : "error",
								}, function(){
									location.reload();
								});
				            } else if (result.msg == "head_success") {
				                swal({
									title: "로그인 성공.",
									icon : "success",
									text: "환영합니다. 학원장으로 로그인 되었습니다.",
								}, function(){			
									window.location.href ="adminmenu.mdo";
								});
				               
				            } else if (result.msg == "teacher_success") {
				                swal({
									title: "로그인 성공.",
									icon : "success",
									text: "환영합니다. 교사로 로그인 되었습니다.",
								}, function(){			
									window.location.href ="adminmenu.mdo";
								});
				               
				            } else if (result.msg == "pwFail") {
				               swal({
									title: "로그인 실패.",
									icon : "error",
									text: "비밀번호가 일치하지 않습니다. 비밀번호를 확인하세요."
								}, function(){
									location.reload();
								});
				            } else if(result.msg == "deleteMember"){
				            	swal({
									title: "로그인 실패.",
									icon : "error",
									text: "탈퇴 된 아이디입니다.\n 6개월 후 사용가능하며, 다른 아이디로 가입해주세요 \n 회원가입으로 이동합니다."
								}, function(){
									window.location.href ="adminsignin.mdo";
								});
				            } else {
				                swal({
									title: "로그인 성공.",
									text: "환영합니다. 최고관리자로 로그인 되었습니다.",
									icon : "success",
								}, function(){
									window.location.href ="adminmenu.mdo";				
								});
				            }

				         },
				         error: function(error) {
				            alert("error : " + error);
				         }
				      });

				   }
			});
		});
	</script>
</body>

</html>