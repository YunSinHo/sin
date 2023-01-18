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
    <link href="/air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <style>
	    .datepickers-container{
	    	z-index:1700 !important;
	    }
	    p{
	    	margin-bottom:10px;
	    }
    	.calendar {
		    width: 100%;
		}
		.header {
		    display: flex;
		    align-items: center;
    		justify-content: space-between;
		}
		.year-month {
		    font-size: 60px;
		    align-items: center;
		}
		.go-today {
		    width: 75px;
		    border-left: 2px solid #D8D8D8;
		    border-right: 2px solid #D8D8D8;
		}
		.days {
		    display: flex;
		    margin: 25px 0 0;
		    height: 30px;
		    border-left: 2px solid #D8D8D8;
		}
		.day {
		    width: calc(100% / 7);
		    text-align: center;
		    border-top: 2px solid #D8D8D8;
		    border-right: 2px solid #D8D8D8;
		}
		  
		.dates {
		    display: flex;
		    flex-flow: row wrap;
		    height: 100%;
		    min-height: 550px;
		    border-top: 2px solid #D8D8D8;
		    border-right: 2px solid #D8D8D8;
		}
		  
		.date {
		    width: calc(100% / 7);
		    padding: 15px;
		    text-align: center;
		    border-bottom: 2px solid #D8D8D8;
		    border-left: 2px solid #D8D8D8;
		}
		.day:nth-child(7n + 1),
		.date:nth-child(7n + 1) {
		    color: #D13E3E;
		}
		
		.day:nth-child(7n),
		.date:nth-child(7n) {
		    color: #396EE2;
		}
		.other {
		    opacity: .3;
		}
		.today {
		    position: relative;
		}
		  
		.today::before {
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    display: block;
		    width: 35px;
		    height: 35px;
		    border: 2px solid red;
		    border-radius: 50%;
		    transform: translate(-50%, -50%);
		    content: "";
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

            <!-- Nav Item - maincontent -->
            <li class="nav-item">
                <a class="nav-link" href="maincontent.mdo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>전체 교재</span></a>
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
                        <a class="collapse-item" href="assignmentclass.mdo">반 배정</a>
                        <a class="collapse-item" href="#">숙제 배정</a>
                        <a class="collapse-item" href="#">숙제 확인</a>
                        <a class="collapse-item" href="sendmessage.mdo">문자 전송</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="notice.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>공지사항</span></a>
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

            <li class="nav-item">
                <a class="nav-link" href="insertnotice.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>공지 작성</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="accessadmin.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>관리자 관리</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="sendadmin.mdo">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>개인 메세지 전송</span></a>
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
                        <!-- Area Menu -->
                        <div class="col-xl-12 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h3 class="m-0 font-weight-bold text-primary">보충강의 관리</h3>
                                    <button data-toggle="modal" data-target="#plusModal">보강생 추가</button>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
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
					                            <div class="day">SUN</div>
					                            <div class="day">MON</div>
					                            <div class="day">TUE</div>
					                            <div class="day">WED</div>
					                            <div class="day">THU</div>
					                            <div class="day">FRI</div>
					                            <div class="day">SAT</div>
					                        </div>
					                        <div class="dates"></div>
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
    <!-- Logout Modal-->
    <div class="modal fade" id="plusModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                	날짜 선택 : <input type="text" id="datepicker" readonly><br><br>
                	보강생 선택 : <select id="stuselect">
                		<option value="홍길동">홍길동</option>
                		<option value="김현아">김현아</option>
                		<option value="사오정">사오정</option>
                	</select>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <button class="btn btn-primary" type="button" id="savesupplement">저장</button>
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
				if(condition=='this'){
					dates[i] = `<div class="date" id="datefunc\${date}" name="\${viewYear}-\${viewMonth + 1}-\${date}"><p class="\${condition}">\${date}</p></div>`;
				}else{
					if(date>=26){
						dates[i] = `<div class="date" id="datefunc\${date}" name="\${viewYear}-\${viewMonth}-\${date}"><p class="\${condition}">\${date}</p></div>`;
					}
					if(date<=6){
						dates[i] = `<div class="date" id="datefunc\${date}" name="\${viewYear}-\${viewMonth + 2}-\${date}"><p class="\${condition}">\${date}</p></div>`;
					}
	                
				}
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
        $(document).ready(function(){
        	$("#savesupplement").click(function(){
        		var selectdate = $("#datepicker").val();
	      		var selectstu = $("#stuselect").val();
	      		$("div[name="+selectdate+"]").append("<p>"+selectstu+"</p>");
	      	});
        });
    </script>
</body>

</html>