<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

</head>
<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form name="form1" method="post" action="admin_register.mdo">
                            	<div class="form-group row">
                            		<div class="col-sm-6 mb-3 mb-sm-0">
                            			<div class="form-control form-control-user">
	                            			<input type="radio" name="admin_tier" value="head">
	                            			<label>학원장으로 가입</label>
                            			</div>
                            		</div>
                            		<div class="col-sm-6">
                            			<div class="form-control form-control-user">
	                            			<input type="radio" name="admin_tier" value="teacher">
	                            			<label>선생님으로 가입</label>
                            			</div>
                                    </div>
                            	</div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="admin_id" name="admin_id"
                                            placeholder="ID">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" id="admin_password" name="admin_password"
                                            placeholder="PASSWORD">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="admin_email" name="admin_email"
                                        placeholder="Email Address">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="admin_name" name="admin_name"
                                            placeholder="NAME">
                                    </div>
                                    <div class="col-sm-6">
                                        <select class="form-control form-control-user" id="exampleLastName" name="admin_academy">
                                        	<option value="">ACADEMY</option>
                                        	<c:forEach var="list" items="${AcademysigninList}" varStatus="status">
                                        		<option value="${list.academy_name}">${list.academy_name}</option>
                                        	</c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control form-control-user" id="admin_phone1" name="admin_phone1"
                                            placeholder="전화번호">
                                    </div>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control form-control-user" id="admin_phone2" name="admin_phone2">
                                    </div>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control form-control-user" id="admin_phone3" name="admin_phone3">
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입">
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.mdo">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="adminlogin.mdo">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

	<!-- Bootstrap core JavaScript-->
    <script src="/js/admin/jquery.min.js"></script>
    <script src="/js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/admin/sb-admin-2.min.js"></script>
</body>

</html>