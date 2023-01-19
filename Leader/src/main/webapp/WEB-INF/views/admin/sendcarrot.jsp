<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<script src="js/admin/insertCarrot.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/admin/sb-admin-2.min.css" rel="stylesheet">
	<link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- Air datepicker css -->
    <style>
    	img{
			width:100%;
			vertical-align:middle;
		}
		.card-body{
			position:relative !important;
			padding:0 !important;
		}
		.dayarea{
			position: absolute;
		    top: 4%;
		    right: 6.5%;
		    width: 15%;
		    height: 2.3vw;
		}
		.daybox{
			width:100%;
			height:100%;
			font-size:1.6783vw;
		}
		.classarea{
		    position: absolute;
		    top: 13.6%;
		    right: 22%;
		    width: 20%;
		    height: 3.4vw;
		}
		.classbox{
		    width: 100%;
		    height: 100%;
		    font-size: 2.2378vw;
		    text-align:center;
		}
		.namearea{
		    position: absolute;
		    top: 30%;
		    left: 24.5%;
		    width: 15.5%;
		    height: 3vw;
		}
		.namebox{
		    width: 100%;
		    height: 100%;
		    font-size: 2.2378vw;
		    text-align:center;
		}
		.booksarea{
		    position: absolute;
		    top: 30%;
		    right: 14%;
		    width: 27%;
		    height: 3vw;
		}
		.booksbox{
		    width: 100%;
		    height: 100%;
		    font-size: 2.2378vw;
		    text-align:center;
		}
		input[type=radio]{
			width:1.3986vw;
			height:1.3986vw;
		}
		.memorization{
		    position: absolute;
		    top: 54.1%;
		    left: 32%;
		    width: 17.5%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.reportcheck{
		    position: absolute;
		    top: 54.1%;
		    left: 69.8%;
		    width: 17%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.readcheck{
		    position: absolute;
		    top: 59.9%;
		    left: 32%;
		    width: 17.5%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.transcheck{
		    position: absolute;
		    top: 59.9%;
		    left: 69.8%;
		    width: 17%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.solvingcheck{
		    position: absolute;
		    top: 66%;
		    left: 32%;
		    width: 17.5%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.listencheck{
		    position: absolute;
		    top: 65.7%;
		    left: 69.8%;
		    width: 17%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.gettingcheck{
		    position: absolute;
		    top: 71.4%;
		    left: 32%;
		    width: 17.4%;
		    height: 4vw;
		    text-align:center;
		}
		.gettingbox{
			width:100%;
    		height: 50%;
		}
		.showdowncheck{
		    position: absolute;
		    top: 71.7%;
		    left: 69.8%;
		    width: 17%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.speechcheck{
		    position: absolute;
		    top: 78.5%;
		    left: 32%;
		    width: 17.5%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.perfectioncheck{
		    position: absolute;
		    top: 78.4%;
		    left: 69.8%;
		    width: 17%;
		    height: 3vw;
		    text-align: center;
		    font-size: 1.9vw;
		}
		.perfectionbox{
			width:100%;
			height:100%;
			font-size:1.9vw;
    		text-align: center;
		}
		.resultarea{
		    position: absolute;
		    top: 84%;
		    left: 20%;
		    width: 66.7%;
		    height: 10.2vw;
		}
		.resultbox{
		    width: 100%;
		    height: 100%;
    		resize: none;
		    font-size: 1.3986vw;
		}
		.pagebox{
		    width: 70%;
		    height: 100%;
		    font-size: 2.2378vw;
		    text-align:center;
		}
    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.mdo">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                메뉴
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>전체 교재</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="maincontent.mdo">모두 보기</a>
                        <a class="collapse-item" href="textcontents.mdo">독해</a>
                        <a class="collapse-item" href="#">문법</a>
                        <a class="collapse-item" href="#">어휘</a>
                        <a class="collapse-item" href="#">듣기</a>
                        <a class="collapse-item" href="#">영작</a>
                        <a class="collapse-item" href="#">내신</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseone"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>학습자 관리</span>
                </a>
                <div id="collapseone" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="tables.mdo">학습자 목록</a>
                        <a class="collapse-item" href="#">반 배정</a>
                        <a class="collapse-item" href="#">숙제 배정</a>
                        <a class="collapse-item" href="sendmessage.mdo">문자 전송</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Components</span>
                </a>
                <div id="collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.mdo">Buttons</a>
                        <a class="collapse-item" href="cards.mdo">Cards</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Utilities</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.mdo">Colors</a>
                        <a class="collapse-item" href="utilities-border.mdo">Borders</a>
                        <a class="collapse-item" href="utilities-animation.mdo">Animations</a>
                        <a class="collapse-item" href="utilities-other.mdo">Other</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.mdo">Login</a>
                        <a class="collapse-item" href="register.mdo">Register</a>
                        <a class="collapse-item" href="forgot-password.mdo">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.mdo">404 Page</a>
                        <a class="collapse-item" href="blank.mdo">Blank Page</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.mdo">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Heading -->
            <div class="sidebar-heading">
                최고 관리자 전용
            </div>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="workdivide.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>업무 리스트 작성</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">홍길동님 안녕하세요.</span>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-7">
                            <!-- Basic Card Example -->
                            <form id="form1" name="CarrotVO" method="POST" onsubmit="return onclickOk()" action="insertcarrot.mdo">
	                            <div class="card shadow mb-4">
	                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
	                                    <h4 class="m-0 font-weight-bold text-primary">CARROT library</h4>
	                                    <input type="button" class="shadow-sm bg-body rounded" onclick="insertCarrot();" value="등록">
	                                   부모님번호: <input type="text" name="carrot_number" value="${studentList.student_parentnumber}">
	                                </div>
	                                <div class="card-body">
										<img class="mainheaderimg1" alt="img1" src="img/admin/carrot3.png">
	                                    <div class="dayarea"><input type="text" class="daybox" id="datepicker"  name="carrot_date" readonly></div>
	                                    <div class="classarea"><input type="text" value="${studentList.student_class}" class="classbox" id="classbox" name="carrot_class"></div>
	                                    <div class="namearea"><input type="text"value="${studentList.student_name}" class="namebox" id="namebox" name="carrot_name"></div>
	                                    <div class="booksarea"><input type="text" class="booksbox" id="booksbox" name="carrot_books"></div>
	                                    <div class="memorization">
	                                    	<input type="radio" name="carrot_memorization" value="pass"> P / 
	                                    	<input type="radio" name="carrot_memorization" value="non-pass"> N /
	                                    	<input type="radio" name="carrot_memorization" value="holding"> H
	                                    </div>
	                                    <div class="reportcheck">
	                                    	<input type="radio" name="carrot_report" value="pass"> P / 
	                                    	<input type="radio" name="carrot_report" value="non-pass"> N /
	                                    	<input type="radio" name="carrot_report" value="holding"> H
	                                    </div>
	                                    <div class="readcheck">
	                                    	<input type="radio" name="carrot_read" value="pass"> P / 
	                                    	<input type="radio" name="carrot_read" value="non-pass"> N /
	                                    	<input type="radio" name="carrot_read" value="holding"> H
	                                    </div>
	                                    <div class="transcheck">
	                                    	<input type="radio" name="carrot_trans" value="pass"> P / 
	                                    	<input type="radio" name="carrot_trans" value="non-pass"> N /
	                                    	<input type="radio" name="carrot_trans" value="holding"> H
	                                    </div>
	                                    <div class="solvingcheck">
	                                    	<input type="radio" name="carrot_solving" value="pass"> P / 
	                                    	<input type="radio" name="carrot_solving" value="non-pass"> N /
	                                    	<input type="radio" name="carrot_solving" value="holding"> H
	                                    </div>
	                                    <div class="listencheck"><input type="text" class="pagebox" name="carrot_listen">P</div>
	                                    <div class="gettingcheck">
	                                    	<select class="gettingbox" name="gettingselect1" id="gettingselect1" onchange="gettingkindchange(this)">
	                                    		<option value="">대분류</option>
	                                    		<option value="문장의 형식">문장의 형식</option>
	                                    		<option value="시제">시제</option>
	                                    		<option value="조동사">조동사</option>
	                                    		<option value="수동태">수동태</option>
	                                    		<option value="부정사">부정사</option>
	                                    		<option value="동명사">동명사</option>
	                                    		<option value="분사">분사</option>
	                                    		<option value="분사구문">분사구문</option>
	                                    		<option value="명사와 대명사">명사와 대명사</option>
	                                    		<option value="형용사, 부사">형용사, 부사</option>
	                                    		<option value="비교급, 최상급">비교급, 최상급</option>
	                                    		<option value="전치사">전치사</option>
	                                    		<option value="접속사">접속사</option>
	                                    		<option value="관계사">관계사</option>
	                                    		<option value="가정법">가정법</option>
	                                    		<option value="일치와 화법">일치와 화법</option>
	                                    		<option value="특수구문">특수구문</option>
	                                    	</select>
	                                    	<br>
	                                    	<select class="gettingbox" id="gettingkind" name="carrot_getting">
	                                    		<option>대분류 우선 선택</option>
	                                    	</select>
	                                    </div>
	                                    <div class="showdowncheck"><input type="text" class="pagebox" name="carrot_showdown">P</div>
	                                    <div class="speechcheck">
	                                    	<input type="radio" name="carrot_speech" value="pass"> P / 
	                                    	<input type="radio" name="carrot_speech" value="non-pass"> N /
	                                    	<input type="radio" name="carrot_speech" value="holding"> H
	                                    </div>
	                                    <div class="perfectioncheck">
	                                    	<select class="perfectionbox" name="carrot_perfection">
	                                    		<option value="A+">A+</option>
	                                    		<option value="A">A</option>
	                                    		<option value="B+">B+</option>
	                                    		<option value="B">B</option>
	                                    		<option value="C">C</option>
	                                    		<option value="F">F</option>
	                                    	</select>
	                                    </div>
	                                    <div class="resultarea"><textarea class="resultbox" name="carrot_result"></textarea></div>
	                                </div>
	                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">x</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.mdo">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin/sb-admin-2.min.js"></script>

    <script src="air-datepicker/dist/js/datepicker.js"></script> <!-- Air datepicker js -->
    <script src="air-datepicker/dist/js/i18n/datepicker.ko.js"></script> <!-- 달력 한글 추가를 위해 커스텀 -->
    <script>
        $("#datepicker").datepicker({
            language: 'ko'
        });
        function gettingkindchange(r){
        	var a = ["1형식과 2형식","감각동사","3형식","4형식","5형식","사역동사","지각동사"];
        	var b = ["현재시제","과거시제","미래시제","완료시제","진행시제","완료진행시제","시제일치"];
        	var c = ["can, may, will","must, should","should의 생략","used to, would","조동사 + have + p.p.","조동사 관용 표현"];
        	var d = ["수동태 만드는 법","수동태 안되는 동사","수동태 시제","조동사있는 수동태","4형식 수동태","5형식 수동태","구동사 수동태","목적어가 that절인 수동태","수동태 관용표현"];
        	var e = ["to부정사 명사적용법","to부정사 형용사적용법", "to부정사 부사적용법","부정사를 목적어로 쓰는 동사","의문사 + to부정사","be to용법","too ~ to, enough to","to부정사 의미상주어","to부정사 시제","원형부정사"];
        	var f = ["동명사 의미상주어","동명사 시제와 태","동명사를 목적어로 쓰는 동사","동명사 관용 표현"];
        	var g = ["현재분사 vs. 과거분사","감정을 나타내는 분사","현재분사 vs. 동명사"];
        	var h = ["분사구문찾기","독립분사구문","분사구문의 시제와 태","with+명사+분사","분사구문 관용표현"];
        	var i = ["셀 수 있는 명사","셀 수 없는 명사","명사의 소유격","재귀대명사","특수용법 it","부정대명사:one,some,any,another,other"];
        	var j = ["형용사용법","수량형용사","부사역할","형용사와 형태가 같은 부사","-ly가 붙으면 의미가 달라지는 부사","빈도부사 위치","타동사 + 부사"];
        	var k = ["비교급","비교급강조표현","최상급"];
        	var l = ["시간을 나타내는 전치사","장소를 나타내는 전치사","전치사구(형용사역할)","전치사구(부사역할)"];
        	var m = [" and, but, or, so","상관접속사","명사절 접속사: that, if/whether","명사절 접속사의문사S+V","부사절을 이끄는 접속사: 시간","부사절을 이끄는 접속사: 이유","부사절을 이끄는 접속사: 조건","부사절을 이끄는 접속사: 양보","부사절을 이끄는 접속사: so that ~","부사절을 이끄는 접속사: so ~ that …","다양한 의미의 부사절을 이끄는 접속사","접속부사"];
        	var n = ["관계대명사의 역할과 종류","주격 관계대명사","목적격 관계대명사","소유격 관계대명사","관계대명사 that","관계대명사 what","전치사 + 관계대명사","관계부사의 역할과 종류","관계사의 계속적 용법","복합관계사"];
        	var o = ["가정법과거","가정법과거완료","혼합가정법","if 생략가정법","Without 가정법","I wish 가정법","as if[though] 가정법"];
        	var p = ["수 일치","시제일치"];
        	var q = ["강조: It is ~ that 강조 구문","부정","도치","생략","동격","병치"];
        	var target = document.getElementById("gettingkind");
        	
        	if(r.value == "문장의 형식") var change = a;
        	else if(r.value == "시제") var change = b;
        	else if(r.value == "조동사") var change = c;
        	else if(r.value == "수동태") var change = d;
        	else if(r.value == "부정사") var change = e;
        	else if(r.value == "동명사") var change = f;
        	else if(r.value == "분사") var change = g;
        	else if(r.value == "분사구문") var change = h;
        	else if(r.value == "명사와 대명사") var change = i;
        	else if(r.value == "형용사, 부사") var change = j;
        	else if(r.value == "비교급, 최상급") var change = k;
        	else if(r.value == "전치사") var change = l;
        	else if(r.value == "접속사") var change = m;
        	else if(r.value == "관계사") var change = n;
        	else if(r.value == "가정법") var change = o;
        	else if(r.value == "일치와 화법") var change = p;
        	else if(r.value == "특수구문") var change = q;
    		
        	target.options.length = 0;
        	
        	for(x in change){
        		var opt = document.createElement("option");
        		opt.value = change[x];
        		opt.innerHTML = change[x];
        		target.appendChild(opt);
        	}
        }
    </script>
</body>

</html>