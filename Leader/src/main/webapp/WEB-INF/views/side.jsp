<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Custom fonts for this template-->
    <script src="js/test.js"></script>
    <script src="js/login.js"></script>
    <script src="js/admin/studentClass.js"></script>
    <link href="css/admin/tables.css" rel="stylesheet">
    <link href="css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
<link href="css/admin/sb-admin-2.min.css" rel="stylesheet">
	<link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="css/admin/sendmessage.css" rel="stylesheet">
    <link href="air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    
		<!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="js/admin/jquery.dataTables.min.js"></script>
    <script src="js/admin/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/admin/datatables-demo.js"></script>
    <!-- Air datepicker css -->
    
	 <script src="air-datepicker/dist/js/datepicker.js"></script> <!-- Air datepicker js -->
    <script src="air-datepicker/dist/js/i18n/datepicker.ko.js"></script> <!-- 달력 한글 추가를 위해 커스텀 -->
</head>
<body id="page-top">

<div id="wrapper">
 <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="tables.mdo">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">김지민 영어학원</div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                메뉴
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="studentClass.do" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>클래스</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <c:if test="${loginStudent ne null}">
                        <c:forEach items="${studentClass}" var="studentClass">
                        <a class="collapse-item" href="goClass.do?student_class=${studentClass.name}">${studentClass.name}</a>
                        </c:forEach>
                        </c:if>
                        <c:if test="${loginTeacher ne null}">
                         <c:forEach items="${teacherClass}" var="teacherClass">
                        <a class="collapse-item" href="classAll.do?student_class=${teacherClass}">${teacherClass}</a>
                        </c:forEach>
                        </c:if>
                    </div>
                </div>
            </li>
			
            <!-- Nav Item - Pages Collapse Menu -->
            <c:if test="${loginStudent ne null}">
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseone"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>시험 결과</span>
                </a>
                <div id="collapseone" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <c:forEach items="${studentClass}" var="studentClass">
<a class="collapse-item" href="testCheckForm.do?student_class=${studentClass.name}&id=${id}">${studentClass.name}</a>
                        </c:forEach>
<a class="collapse-item" href="wrongWord.do?id=${id}">틀린단어목록</a>
                    </div>
                </div>
            </li>
            </c:if>
            <c:if test="${loginTeacher ne null}">
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseone"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>학습자 관리</span>
                </a>
                <div id="collapseone" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="tables.mdo">당근 목록</a>
                        <a class="collapse-item" href="dailyStudentList.mdo">일일학습</a>
                     <!--    <a class="collapse-item" href="#">반 배정</a>
                        <a class="collapse-item" href="#">숙제 배정</a>
                        <a class="collapse-item" href="sendmessage.mdo">문자 전송</a> -->
                    </div>
                </div>
            </li>
			</c:if>
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
                업무
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            

            <!-- Nav Item - Charts -->
            <c:if test="${loginTeacher.teaid ne 'admin'&&loginTeacher ne null}">
             <li class="nav-item"> 
                <a class="nav-link" href="main.do?id=${id}">
                    <i class="fas fa-fw fa-table"></i>
                    <span>업무목록</span></a>
            </li>
            </c:if>
            <c:if test="${loginTeacher.teaid eq 'admin'}">
          <!--   <li class="nav-item">
                <a class="nav-link" href="todayOrder.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>오늘업무작성</span></a>
            </li>
            
            
            <li class="nav-item">
                <a class="nav-link" href="orderWork.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>추가업무작성</span></a>
            </li> -->

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="adminOrderList.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>업무목록</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="addDailyOrderForm.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>상시업무등록</span></a>
            </li>
            
			</c:if>
           

            
            <!-- Nav Item - Tables -->
            <c:if test="${loginTeacher.teaid eq 'admin' }">
            <!-- Heading -->
           
            
             <div class="sidebar-heading">
                최고 관리자 전용
            </div>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                      <h6 class="collapse-header">학원생&강사관리</h6>
                        <a class="collapse-item" href="studentList.mdo">학원생관리</a>
                        <a class="collapse-item" href="teacherList.mdo">강사관리</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">기타</h6>
                    </div>
                    </div>
                    </li>
                        </c:if>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
<!-- End of Sidebar -->
