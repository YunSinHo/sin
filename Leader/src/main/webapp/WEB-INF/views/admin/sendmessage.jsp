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

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/admin/sb-admin-2.min.css" rel="stylesheet">
	<link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="css/admin/sendmessage.css" rel="stylesheet">
    <link href="air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- Air datepicker css -->
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
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">문자 전송 서비스</h4>
                                    <div>날짜 선택 : <input type="text" class="workday" id="datepicker" readonly></div>
                                    <select>
                                        <option value="0">반 선택</option>
                                        <option value="1">Class 1</option>
                                        <option value="2">Class 2</option>
                                        <option value="3">Class 3</option>
                                    </select>
                                    <select onchange="nameValue(this)">
                                        <option value="0">학생 선택</option>
                                        <option value="1">홍길동</option>
                                        <option value="2">손오공</option>
                                        <option value="3">사오정</option>
                                    </select>
                                    <div style="width:20%"></div>
                                </div>
                                <div class="card-body" style="display:grid; grid-template-columns:0.7fr 1.3fr 1fr;">
                                    <div class="selectoptionarea">
                                        <div class="selectoptionheader">수업 태도</div>
                                        <div class="attitude">
                                            <div class="attitudebodyone">
                                                <div class="oneheader">
                                                    집중도 및 이해도
                                                </div>
                                                <select id="attitudesel1" onchange="Change1()">
                                                    <option value="0">집중도/이해도 선택</option>
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                </select>
                                            </div>
                                            <div class="attitudebodytwo">
                                                <div class="twoheader">
                                                    필기 능력
                                                </div>
                                                <select id="attitudesel2" onchange="Change2()">
                                                    <option value="0">필기 능력 선택</option>
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                </select>
                                            </div>
                                            <div class="attitudebodythree">
                                                <div class="threeheader">
                                                    과제 능력
                                                </div>
                                                <select id="attitudesel3" onchange="Change3()">
                                                    <option value="0">과제 능력 선택</option>
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="homeworkresult">
                                            <div class="homeworkresultheader">과제 이행도</div>
                                            <select name="homeworkresultselect" onchange="homeworkresultValue(this)">
                                                <option value="">이행도 선택</option>
                                                <option value="100">100% 완료</option>
                                                <option value="90">90% 완료</option>
                                                <option value="80">80% 완료</option>
                                                <option value="70">70% 완료</option>
                                                <option value="60">60% 완료</option>
                                                <option value="50">50% 완료</option>
                                                <option value="40">40% 완료</option>
                                                <option value="30">30% 완료</option>
                                                <option value="20">20% 완료</option>
                                                <option value="10">10% 완료</option>
                                                <option value="0">0% 완료</option>
                                                <option value="놓고옴">놓고옴(긴장요망)</option>
                                            </select>
                                        </div>
                                        <div class="testresult">
                                            <div class="testresultheader">테스트 결과</div>
                                            <select class="testresultselect" name="testresultselect" onchange="testresultValue(this)">
                                                <option value="">결과 선택</option>
                                                <option value="통과">통과</option>
                                                <option value="미통과">미통과</option>
                                            </select>
                                            <input id="testresultone" onkeyup='testresultone()' type="text" placeholder="맞힌 문제"><input id="testresulttwo" onkeyup='testresulttwo()' type="text" placeholder="총 문제">
                                        </div>
                                    </div>
                                    <div class="optiondetail">
                                        <div class="detailbody">
                                            <div class="detailheader">집중력 및 이해도 세부옵션</div>
                                            <div class="detailbodyoption">
                                                <div class="bodyoptionone">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a1">a1
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b1">b1
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c1">c1
                                                    </div>
                                                </div>
                                                <div class="bodyoptiontwo">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a2">a2
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b2">b2
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c2">c2
                                                    </div>
                                                </div>
                                                <div class="bodyoptionthree">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a3">a3
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b3">b3
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c3">c3
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfour">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a4">a4
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b4">b4
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c4">c4
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfive">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a5">a5
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b5">b5
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c5">c5
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detailbody">
                                            <div class="detailheader">필기 능력 세부옵션</div>
                                            <div class="detailbodyoption">
                                                <div class="bodyoptionone">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a1">a1
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b1">b1
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c1">c1
                                                    </div>
                                                </div>
                                                <div class="bodyoptiontwo">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a2">a2
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b2">b2
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c2">c2
                                                    </div>
                                                </div>
                                                <div class="bodyoptionthree">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a3">a3
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b3">b3
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c3">c3
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfour">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a4">a4
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b4">b4
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c4">c4
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfive">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a5">a5
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b5">b5
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c5">c5
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detailbody">
                                            <div class="detailheader">과제 능력 세부옵션</div>
                                            <div class="detailbodyoption">
                                                <div class="bodyoptionone">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a1">a1
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b1">b1
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c1">c1
                                                    </div>
                                                </div>
                                                <div class="bodyoptiontwo">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a2">a2
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b2">b2
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c2">c2
                                                    </div>
                                                </div>
                                                <div class="bodyoptionthree">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a3">a3
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b3">b3
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c3">c3
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfour">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a4">a4
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b4">b4
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c4">c4
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfive">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a5">a5
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b5">b5
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c5">c5dfas
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sendarea">
                                        <div class="cellphonecover">
                                            <div class="phonedetail">
                                                <div class="speakerdetail">
                                                    <hr class="speaker">
                                                </div>
                                            </div>
                                            <div contenteditable class="phonedisplay" id="messageresult">
                                                <p><span id="messagedate"></span> <span id="mydate"></span> 김지민영어학습보고</p>
                                                <p id="namep"></p>
                                                <p>▶ 수업 태도</p>
                                                <p><span id="understandspan"></span>&nbsp;<span id="notesspan"></span>&nbsp;<span id="worksspan"></span></p>

                                                <p id="homeworkresultp">▶ 과제 이행도 : </p>

                                                <p id="testresultp">▶ 테스트 결과 : </p>
                                                <p>▶ 테스트 득점 : <span id="resultone"></span>개 / <span id="resulttwo"></span>개</p>

                                                <p>▶ 진도 : 단어 3과 시험, unit 7</p>

                                                <p>▶ 다음 과제 : 스마트파닉스 p.67~71 (sh, ch 소리 많이 듣고, 교재의 단어들 많이 따라 읽어오기)</p>
                                            </div>
                                            <div class="sendbuttonarea">
                                                <button type="button" class="sendbutton" onclick="getmessage()">전송</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        jQuery( function(){
            $('input:radio[name="understand"]').click( function (){
                if ($('input:radio[name="understand"]').is( ":checked")){
                    var understandlistVar = $('input:radio[name="understand"]:checked').val();
                    document.getElementById('understandspan').innerText = understandlistVar;
                }
            })
            $('input:radio[name="notes"]').click( function (){
                if ($('input:radio[name="notes"]').is( ":checked")){
                    var noteslistVar = $('input:radio[name="notes"]:checked').val();
                    document.getElementById('notesspan').innerText = noteslistVar;
                }
            })
            $('input:radio[name="works"]').click( function (){
                if ($('input:radio[name="works"]').is( ":checked")){
                    var workslistVar = $('input:radio[name="works"]:checked').val();
                    document.getElementById('worksspan').innerText = workslistVar;
                }
            })
        });
        const nameValue = (target) => {
            const value = target.value;
            const text =  target.options[target.selectedIndex].text;
            
            document.getElementById('namep').innerHTML = `\${text}`;
        }
        const homeworkresultValue = (target) => {
            const value = target.value;
            const text =  target.options[target.selectedIndex].text;
            
            document.getElementById('homeworkresultp').innerHTML = `▶ 과제 이행도 : \${text}`;
        }
        const testresultValue = (target) => {
            const value = target.value;
            const text =  target.options[target.selectedIndex].text;
  
            document.getElementById('testresultp').innerHTML = `▶ 테스트 결과 : \${text}`;
        }
        $("#datepicker").datepicker({
            language: 'ko',
            dateFormat:'yyyy.mm.dd',
            dayNamesMin:["일","월","화","수","목","금","토"],
            onSelect:function(d){
                //요일 가져오기
                //데이터를 먼저 가져오고 (숫자로 넘어옴)
                var date=new Date($("#datepicker").datepicker({dateFormat:"yyyy.mm.dd"}).val());
                //일요일 0~
                week=new Array("일","월","화","수","목","금","토");
                $("#mydate").text("("+week[date.getDay()]+")");
                $("#messagedate").text(d);
            }
        }); 
        function testresultone()  {
            const name1 = document.getElementById('testresultone').value;
            document.getElementById("resultone").innerText = name1;
        }
        function testresulttwo()  {
            const name2 = document.getElementById('testresulttwo').value;
            document.getElementById("resulttwo").innerText = name2;
        }
        function getmessage(){
            const element = document.getElementById('messageresult');
            alert(element.innerText);
        }
        function Change1() {
            var key1 = attitudesel1.value;
            if(key1==0){
                document.getElementsByClassName("understandoptiona")[0].style.display="none";
                document.getElementsByClassName("understandoptionb")[0].style.display="none";
                document.getElementsByClassName("understandoptionc")[0].style.display="none";
                document.getElementsByClassName("understandoptiona")[1].style.display="none";
                document.getElementsByClassName("understandoptionb")[1].style.display="none";
                document.getElementsByClassName("understandoptionc")[1].style.display="none";
                document.getElementsByClassName("understandoptiona")[2].style.display="none";
                document.getElementsByClassName("understandoptionb")[2].style.display="none";
                document.getElementsByClassName("understandoptionc")[2].style.display="none";
                document.getElementsByClassName("understandoptiona")[3].style.display="none";
                document.getElementsByClassName("understandoptionb")[3].style.display="none";
                document.getElementsByClassName("understandoptionc")[3].style.display="none";
                document.getElementsByClassName("understandoptiona")[4].style.display="none";
                document.getElementsByClassName("understandoptionb")[4].style.display="none";
                document.getElementsByClassName("understandoptionc")[4].style.display="none";
            }
            if(key1==1){
                document.getElementsByClassName("understandoptiona")[0].style.display="block";
                document.getElementsByClassName("understandoptionb")[0].style.display="none";
                document.getElementsByClassName("understandoptionc")[0].style.display="none";
                document.getElementsByClassName("understandoptiona")[1].style.display="block";
                document.getElementsByClassName("understandoptionb")[1].style.display="none";
                document.getElementsByClassName("understandoptionc")[1].style.display="none";
                document.getElementsByClassName("understandoptiona")[2].style.display="block";
                document.getElementsByClassName("understandoptionb")[2].style.display="none";
                document.getElementsByClassName("understandoptionc")[2].style.display="none";
                document.getElementsByClassName("understandoptiona")[3].style.display="block";
                document.getElementsByClassName("understandoptionb")[3].style.display="none";
                document.getElementsByClassName("understandoptionc")[3].style.display="none";
                document.getElementsByClassName("understandoptiona")[4].style.display="block";
                document.getElementsByClassName("understandoptionb")[4].style.display="none";
                document.getElementsByClassName("understandoptionc")[4].style.display="none";
            }
            if(key1==2){
                document.getElementsByClassName("understandoptiona")[0].style.display="none";
                document.getElementsByClassName("understandoptionb")[0].style.display="block";
                document.getElementsByClassName("understandoptionc")[0].style.display="none";
                document.getElementsByClassName("understandoptiona")[1].style.display="none";
                document.getElementsByClassName("understandoptionb")[1].style.display="block";
                document.getElementsByClassName("understandoptionc")[1].style.display="none";
                document.getElementsByClassName("understandoptiona")[2].style.display="none";
                document.getElementsByClassName("understandoptionb")[2].style.display="block";
                document.getElementsByClassName("understandoptionc")[2].style.display="none";
                document.getElementsByClassName("understandoptiona")[3].style.display="none";
                document.getElementsByClassName("understandoptionb")[3].style.display="block";
                document.getElementsByClassName("understandoptionc")[3].style.display="none";
                document.getElementsByClassName("understandoptiona")[4].style.display="none";
                document.getElementsByClassName("understandoptionb")[4].style.display="block";
                document.getElementsByClassName("understandoptionc")[4].style.display="none";
            }
            if(key1==3){
                document.getElementsByClassName("understandoptiona")[0].style.display="none";
                document.getElementsByClassName("understandoptionb")[0].style.display="none";
                document.getElementsByClassName("understandoptionc")[0].style.display="block";
                document.getElementsByClassName("understandoptiona")[1].style.display="none";
                document.getElementsByClassName("understandoptionb")[1].style.display="none";
                document.getElementsByClassName("understandoptionc")[1].style.display="block";
                document.getElementsByClassName("understandoptiona")[2].style.display="none";
                document.getElementsByClassName("understandoptionb")[2].style.display="none";
                document.getElementsByClassName("understandoptionc")[2].style.display="block";
                document.getElementsByClassName("understandoptiona")[3].style.display="none";
                document.getElementsByClassName("understandoptionb")[3].style.display="none";
                document.getElementsByClassName("understandoptionc")[3].style.display="block";
                document.getElementsByClassName("understandoptiona")[4].style.display="none";
                document.getElementsByClassName("understandoptionb")[4].style.display="none";
                document.getElementsByClassName("understandoptionc")[4].style.display="block";
            }
        }
        function Change2() {
            var key2 = attitudesel2.value;
            if(key2==0){
                document.getElementsByClassName("notesoptiona")[0].style.display="none";
                document.getElementsByClassName("notesoptionb")[0].style.display="none";
                document.getElementsByClassName("notesoptionc")[0].style.display="none";
                document.getElementsByClassName("notesoptiona")[1].style.display="none";
                document.getElementsByClassName("notesoptionb")[1].style.display="none";
                document.getElementsByClassName("notesoptionc")[1].style.display="none";
                document.getElementsByClassName("notesoptiona")[2].style.display="none";
                document.getElementsByClassName("notesoptionb")[2].style.display="none";
                document.getElementsByClassName("notesoptionc")[2].style.display="none";
                document.getElementsByClassName("notesoptiona")[3].style.display="none";
                document.getElementsByClassName("notesoptionb")[3].style.display="none";
                document.getElementsByClassName("notesoptionc")[3].style.display="none";
                document.getElementsByClassName("notesoptiona")[4].style.display="none";
                document.getElementsByClassName("notesoptionb")[4].style.display="none";
                document.getElementsByClassName("notesoptionc")[4].style.display="none";
            }
            if(key2==1){
                document.getElementsByClassName("notesoptiona")[0].style.display="block";
                document.getElementsByClassName("notesoptionb")[0].style.display="none";
                document.getElementsByClassName("notesoptionc")[0].style.display="none";
                document.getElementsByClassName("notesoptiona")[1].style.display="block";
                document.getElementsByClassName("notesoptionb")[1].style.display="none";
                document.getElementsByClassName("notesoptionc")[1].style.display="none";
                document.getElementsByClassName("notesoptiona")[2].style.display="block";
                document.getElementsByClassName("notesoptionb")[2].style.display="none";
                document.getElementsByClassName("notesoptionc")[2].style.display="none";
                document.getElementsByClassName("notesoptiona")[3].style.display="block";
                document.getElementsByClassName("notesoptionb")[3].style.display="none";
                document.getElementsByClassName("notesoptionc")[3].style.display="none";
                document.getElementsByClassName("notesoptiona")[4].style.display="block";
                document.getElementsByClassName("notesoptionb")[4].style.display="none";
                document.getElementsByClassName("notesoptionc")[4].style.display="none";
            }
            if(key2==2){
                document.getElementsByClassName("notesoptiona")[0].style.display="none";
                document.getElementsByClassName("notesoptionb")[0].style.display="block";
                document.getElementsByClassName("notesoptionc")[0].style.display="none";
                document.getElementsByClassName("notesoptiona")[1].style.display="none";
                document.getElementsByClassName("notesoptionb")[1].style.display="block";
                document.getElementsByClassName("notesoptionc")[1].style.display="none";
                document.getElementsByClassName("notesoptiona")[2].style.display="none";
                document.getElementsByClassName("notesoptionb")[2].style.display="block";
                document.getElementsByClassName("notesoptionc")[2].style.display="none";
                document.getElementsByClassName("notesoptiona")[3].style.display="none";
                document.getElementsByClassName("notesoptionb")[3].style.display="block";
                document.getElementsByClassName("notesoptionc")[3].style.display="none";
                document.getElementsByClassName("notesoptiona")[4].style.display="none";
                document.getElementsByClassName("notesoptionb")[4].style.display="block";
                document.getElementsByClassName("notesoptionc")[4].style.display="none";
            }
            if(key2==3){
                document.getElementsByClassName("notesoptiona")[0].style.display="none";
                document.getElementsByClassName("notesoptionb")[0].style.display="none";
                document.getElementsByClassName("notesoptionc")[0].style.display="block";
                document.getElementsByClassName("notesoptiona")[1].style.display="none";
                document.getElementsByClassName("notesoptionb")[1].style.display="none";
                document.getElementsByClassName("notesoptionc")[1].style.display="block";
                document.getElementsByClassName("notesoptiona")[2].style.display="none";
                document.getElementsByClassName("notesoptionb")[2].style.display="none";
                document.getElementsByClassName("notesoptionc")[2].style.display="block";
                document.getElementsByClassName("notesoptiona")[3].style.display="none";
                document.getElementsByClassName("notesoptionb")[3].style.display="none";
                document.getElementsByClassName("notesoptionc")[3].style.display="block";
                document.getElementsByClassName("notesoptiona")[4].style.display="none";
                document.getElementsByClassName("notesoptionb")[4].style.display="none";
                document.getElementsByClassName("notesoptionc")[4].style.display="block";
            }
        }
        function Change3() {
            var key3 = attitudesel3.value;
            if(key3==0){
                document.getElementsByClassName("worksoptiona")[0].style.display="none";
                document.getElementsByClassName("worksoptionb")[0].style.display="none";
                document.getElementsByClassName("worksoptionc")[0].style.display="none";
                document.getElementsByClassName("worksoptiona")[1].style.display="none";
                document.getElementsByClassName("worksoptionb")[1].style.display="none";
                document.getElementsByClassName("worksoptionc")[1].style.display="none";
                document.getElementsByClassName("worksoptiona")[2].style.display="none";
                document.getElementsByClassName("worksoptionb")[2].style.display="none";
                document.getElementsByClassName("worksoptionc")[2].style.display="none";
                document.getElementsByClassName("worksoptiona")[3].style.display="none";
                document.getElementsByClassName("worksoptionb")[3].style.display="none";
                document.getElementsByClassName("worksoptionc")[3].style.display="none";
                document.getElementsByClassName("worksoptiona")[4].style.display="none";
                document.getElementsByClassName("worksoptionb")[4].style.display="none";
                document.getElementsByClassName("worksoptionc")[4].style.display="none";
            }
            if(key3==1){
                document.getElementsByClassName("worksoptiona")[0].style.display="block";
                document.getElementsByClassName("worksoptionb")[0].style.display="none";
                document.getElementsByClassName("worksoptionc")[0].style.display="none";
                document.getElementsByClassName("worksoptiona")[1].style.display="block";
                document.getElementsByClassName("worksoptionb")[1].style.display="none";
                document.getElementsByClassName("worksoptionc")[1].style.display="none";
                document.getElementsByClassName("worksoptiona")[2].style.display="block";
                document.getElementsByClassName("worksoptionb")[2].style.display="none";
                document.getElementsByClassName("worksoptionc")[2].style.display="none";
                document.getElementsByClassName("worksoptiona")[3].style.display="block";
                document.getElementsByClassName("worksoptionb")[3].style.display="none";
                document.getElementsByClassName("worksoptionc")[3].style.display="none";
                document.getElementsByClassName("worksoptiona")[4].style.display="block";
                document.getElementsByClassName("worksoptionb")[4].style.display="none";
                document.getElementsByClassName("worksoptionc")[4].style.display="none";
            }
            if(key3==2){
                document.getElementsByClassName("worksoptiona")[0].style.display="none";
                document.getElementsByClassName("worksoptionb")[0].style.display="block";
                document.getElementsByClassName("worksoptionc")[0].style.display="none";
                document.getElementsByClassName("worksoptiona")[1].style.display="none";
                document.getElementsByClassName("worksoptionb")[1].style.display="block";
                document.getElementsByClassName("worksoptionc")[1].style.display="none";
                document.getElementsByClassName("worksoptiona")[2].style.display="none";
                document.getElementsByClassName("worksoptionb")[2].style.display="block";
                document.getElementsByClassName("worksoptionc")[2].style.display="none";
                document.getElementsByClassName("worksoptiona")[3].style.display="none";
                document.getElementsByClassName("worksoptionb")[3].style.display="block";
                document.getElementsByClassName("worksoptionc")[3].style.display="none";
                document.getElementsByClassName("worksoptiona")[4].style.display="none";
                document.getElementsByClassName("worksoptionb")[4].style.display="block";
                document.getElementsByClassName("worksoptionc")[4].style.display="none";
            }
            if(key3==3){
                document.getElementsByClassName("worksoptiona")[0].style.display="none";
                document.getElementsByClassName("worksoptionb")[0].style.display="none";
                document.getElementsByClassName("worksoptionc")[0].style.display="block";
                document.getElementsByClassName("worksoptiona")[1].style.display="none";
                document.getElementsByClassName("worksoptionb")[1].style.display="none";
                document.getElementsByClassName("worksoptionc")[1].style.display="block";
                document.getElementsByClassName("worksoptiona")[2].style.display="none";
                document.getElementsByClassName("worksoptionb")[2].style.display="none";
                document.getElementsByClassName("worksoptionc")[2].style.display="block";
                document.getElementsByClassName("worksoptiona")[3].style.display="none";
                document.getElementsByClassName("worksoptionb")[3].style.display="none";
                document.getElementsByClassName("worksoptionc")[3].style.display="block";
                document.getElementsByClassName("worksoptiona")[4].style.display="none";
                document.getElementsByClassName("worksoptionb")[4].style.display="none";
                document.getElementsByClassName("worksoptionc")[4].style.display="block";
            }
        }
    </script>
</body>

</html>