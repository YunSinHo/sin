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
    <link href="/css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/css/admin/sb-admin-2.min.css" rel="stylesheet">
    <link href="/css/admin/index.css?after" rel="stylesheet">

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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseone"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>학습센터 관리</span>
                </a>
                <div id="collapseone" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="workdivide.mdo">직원 업무 관리</a>
                        <a class="collapse-item" href="watchdisplay.mdo">출석 및 랭킹</a>
                        <a class="collapse-item" href="accessacademy.mdo">학습센터 정보</a>
                        <a class="collapse-item" href="tables.mdo">학습자 관리</a>
                        <a class="collapse-item" href="accessadmin.mdo">선생님 관리</a>
                        <a class="collapse-item" href="assignmentclass.mdo">반 편성 및 배정</a>
                        <a class="collapse-item" href="#">수납 관리</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsecontents"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>메인 컨텐츠</span>
                </a>
                <div id="collapsecontents" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="maincontent.mdo">전체 교재</a>
                        <a class="collapse-item" href="mainlecture.mdo">전체 강의</a>
                        <a class="collapse-item" href="mainhomework.mdo">전체 숙제</a>
                        <a class="collapse-item" href="assignmenthomework.mdo">숙제 배정</a>
                        <a class="collapse-item" href="studentindex.mdo">숙제 확인</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="sendmessage.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>알림장 전송</span></a>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsecommu"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>커뮤니케이션</span>
                </a>
                <div id="collapsecommu" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="notice.mdo">공지사항</a>
                        <a class="collapse-item" href="#">자료실</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="supplement.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>보충 강의 관리</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Heading -->
            <div class="sidebar-heading">
                최고 관리자 전용
            </div>

            <li class="nav-item">
                <a class="nav-link" href="insertnotice.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>공지 작성</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="speciallecture.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>특강 관리</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


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
                                <a class="dropdown-item text-center small text-gray-500" href="notice.mdo">공지사항으로 이동</a>
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
                                <a class="dropdown-item text-center small text-gray-500" href="adminmessage.mdo">메세지함으로 이동</a>
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
                                <a class="dropdown-item" href="setting.mdo">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    개인정보 변경
                                </a>
                                <a class="dropdown-item" href="adminmessage.mdo">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    개인 메세지함
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    로그아웃
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
                                    <h6 class="m-0 font-weight-bold text-primary">홍길동님 업무 리스트</h6>
                                    <button class="btn btn-success" data-toggle="modal" data-target="#workresultModal">업무 완료 보고</button>
                                </div>
                                <div class="card-body" style="display:grid; grid-template-columns: 0.8fr 1.2fr;">
                                    <div class="workcalender">
                                        <div class="calendar">
                                            <div class="header">
                                                <div class="year-month"></div>
                                                <div class="nav">
                                                    <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                                                    <button class="nav-btn go-today" onclick="goToday()">Today</button>
                                                    <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
                                                </div>
                                            </div>
                                            <div class="main">
                                                <div class="days">
                                                    <div class="day">일</div>
                                                    <div class="day">월</div>
                                                    <div class="day">화</div>
                                                    <div class="day">수</div>
                                                    <div class="day">목</div>
                                                    <div class="day">금</div>
                                                    <div class="day">토</div>
                                                </div>
                                                <div class="dates"></div>
                                            </div>
                                        </div>
                                        <div class="eventcontent">
                                            <div class="eventheader">
                                                <이벤트 확인>
                                            </div>
                                            <div class="event">
                                                1. 홍길동학생 생일축하
                                            </div>
                                            <div class="event1">
                                                1. 최지현학생 생일축하
                                            </div>
                                            <div class="event2">
                                                1. 박지현학생 생일축하
                                            </div>
                                            <div class="event3">
                                                <p>1. 김정수학생 생일축하</p>
                                                2. 할로윈
                                            </div>
                                        </div>
                                    </div>
                                    <div class="workright" style="display: grid; grid-template-rows: 1fr auto; grid-gap: 10px;">
                                        <div class="worktable">
                                            <table class="table table-bordered" id="dataTable1" style="width: 100%; height: 100%; min-height: 430px;" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th style="width:10%; text-align: center;">완료</th>
                                                        <th style="text-align: center;"><span id="changedate">금</span>일 업무내용</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="checkbox"></td>
                                                        <td style="vertical-align:middle;"><span id="workorder1">학생들 출결체크</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="checkbox"></td>
                                                        <td style="vertical-align:middle;"><span id="workorder2">학생들 자동진도체크</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="checkbox" id="cb1"></td>
                                                        <td style="vertical-align:middle;"><span id="workorder3">학생들 수업점검</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="checkbox" id="cb1"></td>
                                                        <td style="vertical-align:middle;"><span id="workorder4">환경미화</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="checkbox" id="cb1"></td>
                                                        <td style="vertical-align:middle;"><span id="workorder5">이전 달 컴플레인 건 누적보고</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="checkbox" id="cb1"></td>
                                                        <td style="vertical-align:middle;"><span id="workorder6">다음달 이벤트 포스터 제작써포트 및 문구전송</span></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="futurework">
                                            <table class="table table-bordered" id="dataTable1" style="width: 100%; height: 100%;" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th style="width:10%; text-align: center;">SEQ</th>
                                                        <th style="text-align: center;">예정된 업무내용</th>
                                                        <th style="width:12%; text-align: center;">마감일</th>
                                                        <th style="width:25%; text-align: center;">진행도</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align:middle;">1</td>
                                                        <td style="vertical-align:middle;"><span id="expectedwork">인건비신고</span></td>
                                                        <td style="text-align: center; vertical-align:middle;"><span id="expecteddeadline">10-25</span></td>
                                                        <td style="text-align: center; vertical-align:middle;"><input type="range" min="0" max="10" value="0"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="workcheck" style="text-align:right; min-height: 38px;">
                                            <span style="line-height: 38px;">* 업무 내용을 충분히 이해하고 실행함을 확인합니다.</span> &nbsp;&nbsp;&nbsp;<button class="btn btn-primary" id="workchecking">확인</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Area Menu -->
                        <div class="col-xl-12 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h3 class="m-0 font-weight-bold text-primary">자주 찾는 메뉴</h3>
                                    <button class="btn btn-primary" data-toggle="modal" data-target="#menuupdateModal">메뉴 편집</button>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area" style="height: auto;">
                                        <div class="contentsarea">
                                            <div class="contents" id="contentmenu" onclick="location.href='maincontent.mdo';">전체 교재</div>
                                            <div class="contents" id="tablesmenu" onclick="location.href='tables.mdo';">학습자 관리</div>
                                            <div class="contents" id="classdividemenu" onclick="location.href='assignmentclass.mdo';">반 배정/배정</div>
                                            <div class="contents" id="homeworkdividemenu" onclick="location.href='assignmenthomework.mdo';">숙제 배정</div>
                                            <div class="contents" id="homeworkcheckmenu" onclick="location.href='checkhomework.mdo';">숙제 확인</div>
                                            <div class="contents" id="sendmenu" onclick="location.href='sendmessage.mdo';">알림장 전송</div>
                                            <div class="contents" id="workmenu" onclick="location.href='workdivide.mdo';">직원 업무 관리</div>
                                            <div class="contents" id="watchmenu" onclick="location.href='watchdisplay.mdo';">출석 및 랭킹</div>
                                            <div class="contents" id="academymenu" onclick="location.href='accessacademy.mdo';">학습센터 정보</div>
                                            <div class="contents" id="teachermenu" onclick="location.href='accessadmin.mdo';">선생님 관리</div>
                                            <div class="contents" id="acceptancemenu" onclick="location.href='#';">수납 관리</div>
                                            <div class="contents" id="lecturemenu" onclick="location.href='mainlecture.mdo';">전체 강의</div>
                                            <div class="contents" id="homeworkmenu" onclick="location.href='mainhomework.mdo';">전체 숙제</div>
                                            <div class="contents" id="noticemenu" onclick="location.href='notice.mdo';">공지사항</div>
                                            <div class="contents" id="datamenu" onclick="location.href='#';">자료실</div>
                                            <div class="contents" id="supplementmenu" onclick="location.href='supplement.mdo';">보충강의 관리</div>
                                            <div class="contents" id="insertnoticemenu" onclick="location.href='insertnotice.mdo';">공지 작성</div>
                                            <div class="contents" id="specialmenu" onclick="location.href='speciallecture.mdo';">특강 관리</div>
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
    <div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">공지 사항</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>1. 주말 간 보충 학생 담당 선생님 확인</p>
                    2. 면접 자소서 3차개강 10월 24일
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" data-dismiss="modal">닫기</a>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="workresultModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">업무 완료 보고</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>금일 업무내용</th>
                                <th>미완료 사유</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>다음달 이벤트 포스터 제작써포트 및 문구 전송</td>
                                <td><textarea></textarea></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <button class="btn btn-success" type="button" data-dismiss="modal" id="completion">보고</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="menuupdateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">자주 찾는 메뉴 편집</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="menuheader">[메뉴 목록]</div>
                    <div class="menubody">
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="contentmenucheck">전체 교재</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="tablesmenucheck">학습자 관리</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="classdividemenucheck">반 배정/배정</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="homeworkdividemenucheck">숙제 배정</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="homeworkcheckmenucheck">숙제 확인</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="sendmenucheck">알림장 전송</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="workcheck">직원 업무 관리</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="watchcheck">출석 및 랭킹</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="academycheck">학습센터 정보</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="teachercheck">선생님 관리</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="acceptancecheck">수납 관리</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="lecturecheck">전체 강의</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="homeworkcheck">전체 숙제</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="noticecheck">공지사항</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="datacheck">자료실</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="supplementcheck">보충강의 관리</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="insertnoticecheck">공지 작성</div>
                        <div class="menucontent"><input type="checkbox" name="menucheck" onclick="count_check(this);" id="specialcheck">특강 관리</div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <button class="btn btn-primary" type="button" data-dismiss="modal" id="menuupdateresult">완료</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
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
    <script src="/js/admin/jquery.min.js"></script>
    <script src="/js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/admin/sb-admin-2.min.js"></script>
    <script type="text/javascript">
        let date = new Date();

        const renderCalendar = () => {
            const viewYear = date.getFullYear();
            const viewMonth = date.getMonth();

            // year-month 채우기
            document.querySelector('.year-month').textContent = `\${viewYear}년 \${viewMonth + 1}월`;

            // 지난 달 마지막 Date, 이번 달 마지막 Date
            const prevLast = new Date(viewYear, viewMonth, 0);
            const thisLast = new Date(viewYear, viewMonth + 1, 0);

            const PLDate = prevLast.getDate();
            const PLDay = prevLast.getDay();

            const TLDate = thisLast.getDate();
            const TLDay = thisLast.getDay();

            // Dates 기본 배열들
            const prevDates = [];
            const thisDates = [...Array(TLDate + 1).keys()].slice(1);
            const nextDates = [];

            // prevDates 계산
            if (PLDay !== 6) {
                for (let i = 0; i < PLDay + 1; i++) {
                    prevDates.unshift(PLDate - i);
                }
            }

            // nextDates 계산
            for (let i = 1; i < 7 - TLDay; i++) {
                nextDates.push(i);
            }

            // Dates 합치기
            const dates = prevDates.concat(thisDates, nextDates);

            // Dates 정리
            const firstDateIndex = dates.indexOf(1);
            const lastDateIndex = dates.lastIndexOf(TLDate);
            dates.forEach((date, i) => {
                const condition = i >= firstDateIndex && i < lastDateIndex + 1
                                    ? 'this'
                                    : 'other';

                dates[i] = `<div class="date" id="datefunc\${date}" onclick="orderchange(this)"><span class="\${condition}">\${date}</span></div>`;
            })

            // Dates 그리기
            document.querySelector('.dates').innerHTML = dates.join('');

            // 오늘 날짜 그리기
            const today = new Date();
            if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
                for (let date of document.querySelectorAll('.this')) {
                    if (+date.innerText === today.getDate()) {
                        date.classList.add('today');

                        break;
                    }
                }
            }
        }
        renderCalendar();

        
        const prevMonth = () => {
            date.setDate(1);
            date.setMonth(date.getMonth() - 1);
            renderCalendar();
        }

        const nextMonth = () => {
            date.setDate(1);
            date.setMonth(date.getMonth() + 1);
            renderCalendar();
        }

        const goToday = () => {
            date = new Date();
            renderCalendar();
        }
        function orderchange(obj){
            var date = obj.getAttribute('id');
            console.log(obj.children[0].getAttribute('class'))
            if(date==datefunc1){
                if(obj.children[0].getAttribute('class')=='this'){
                    document.getElementById('wordorder1').innerHTML = '1일';
                }
                else{
                }
            }
        }
        $(document).ready(function() {
	        $("#noticeModal").modal("show");
            $('.today').click(function(){
                $('.event').css('display','block');
                $('.event1').css('display','none');
                $('.event2').css('display','none');
                $('.event3').css('display','none');
            });
            $('#workchecking').click(function(){
                alert('확인되었습니다.');
                $('#workchecking').fadeOut();
            });
            $('.contents').css('display','none');
            $('.date').click(function(){
                $('.this').removeClass('today');
                $('.other').removeClass('today');
                $(this).children().addClass('today');
                var thisdate = $(this).attr("id");
                var regex = /[^0-9]/g;
                var result = thisdate.replace(regex, "");
                $("#changedate").text(result);
                $('.today').click(function(){
                    var clickdate = $(this).parent().attr("id");
                    if(clickdate == 'datefunc18'){
                        $('.event').css('display','block');
                        $('.event1').css('display','none');
                        $('.event2').css('display','none');
                        $('.event3').css('display','none');
                    }
                    else if(clickdate == 'datefunc5'){
                        $('.event1').css('display','block');
                        $('.event').css('display','none');
                        $('.event2').css('display','none');
                        $('.event3').css('display','none');
                    }
                    else if(clickdate == 'datefunc12'){
                        $('.event2').css('display','block');
                        $('.event1').css('display','none');
                        $('.event').css('display','none');
                        $('.event3').css('display','none');
                    }
                    else if(clickdate == 'datefunc31'){
                        $('.event3').css('display','block');
                        $('.event1').css('display','none');
                        $('.event2').css('display','none');
                        $('.event').css('display','none');
                    }else{
                        $('.event3').css('display','none');
                        $('.event1').css('display','none');
                        $('.event2').css('display','none');
                        $('.event').css('display','none');
                    }
                });
            });
            $('#completion').click(function(){
                alert("업무 완료 보고가 정상 처리 되었습니다.");
            })
        });
        function count_check(obj){
            var chkBox=document.getElementsByName("menucheck");
            var chkCnt=0;
            for(var i = 0; i < chkBox.length; i++){
                if(chkBox[i].checked){
                    chkCnt++;
                }
            }
            if(chkCnt > 6){
                alert("메뉴는 6개까지 체크할 수 있습니다.");
                obj.checked = false;
                return false;
            }
        };
        $(document).ready(function(){
            $('#menuupdateresult').click(function(){
                if($('#contentmenucheck').is(':checked')){
                    $('#contentmenu').show();
                }else{
                    $('#contentmenu').hide();
                }
                if($('#tablesmenucheck').is(':checked')){
                    $('#tablesmenu').show();
                }else{
                    $('#tablesmenu').hide();
                }
                if($('#classdividemenucheck').is(':checked')){
                    $('#classdividemenu').show();
                }else{
                    $('#classdividemenu').hide();
                }
                if($('#homeworkdividemenucheck').is(':checked')){
                    $('#homeworkdividemenu').show();
                }else{
                    $('#homeworkdividemenu').hide();
                }
                if($('#homeworkcheckmenucheck').is(':checked')){
                    $('#homeworkcheckmenu').show();
                }else{
                    $('#homeworkcheckmenu').hide();
                }
                if($('#sendmenucheck').is(':checked')){
                    $('#sendmenu').show();
                }else{
                    $('#sendmenu').hide();
                }
                if($('#workcheck').is(':checked')){
                    $('#workmenu').show();
                }else{
                    $('#workmenu').hide();
                }
                if($('#watchcheck').is(':checked')){
                    $('#watchmenu').show();
                }else{
                    $('#watchmenu').hide();
                }
                if($('#academycheck').is(':checked')){
                    $('#academymenu').show();
                }else{
                    $('#academymenu').hide();
                }
                if($('#teachercheck').is(':checked')){
                    $('#teachermenu').show();
                }else{
                    $('#teachermenu').hide();
                }
                if($('#acceptancecheck').is(':checked')){
                    $('#acceptancemenu').show();
                }else{
                    $('#acceptancemenu').hide();
                }
                if($('#lecturecheck').is(':checked')){
                    $('#lecturemenu').show();
                }else{
                    $('#lecturemenu').hide();
                }
                if($('#homeworkcheck').is(':checked')){
                    $('#homeworkmenu').show();
                }else{
                    $('#homeworkmenu').hide();
                }
                if($('#noticecheck').is(':checked')){
                    $('#noticemenu').show();
                }else{
                    $('#noticemenu').hide();
                }
                if($('#datacheck').is(':checked')){
                    $('#datamenu').show();
                }else{
                    $('#datamenu').hide();
                }
                if($('#supplementcheck').is(':checked')){
                    $('#supplementmenu').show();
                }else{
                    $('#supplementmenu').hide();
                }
                if($('#insertnoticecheck').is(':checked')){
                    $('#insertnoticemenu').show();
                }else{
                    $('#insertnoticemenu').hide();
                }
                if($('#specialcheck').is(':checked')){
                    $('#specialmenu').show();
                }else{
                    $('#specialmenu').hide();
                }
            })
        });
    </script>
</body>

</html>
