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
                                        <div class="small text-gray-500">Emily Fowler ?? 58m</div>
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
                                        <div class="small text-gray-500">Jae Chun ?? 1d</div>
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
                                        <div class="small text-gray-500">Morgan Alvarez ?? 2d</div>
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
                                        <div class="small text-gray-500">Chicken the Dog ?? 2w</div>
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
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">???????????? ???????????????.</span>
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
	                                    <input type="button" class="shadow-sm bg-body rounded" onclick="insertCarrot();" value="??????">
	                                   ???????????????: <input type="text" name="carrot_number" value="${studentList.parentnumber}">
	                                </div>
	                                <div class="card-body">
										<img class="mainheaderimg1" alt="img1" src="img/admin/carrot3.png">
	                                    <div class="dayarea"><input type="text" class="daybox" id="datepicker"  name="carrot_date" readonly></div>
	                                    
	                                    <div class="namearea"><input type="text"value="${studentList.name}" class="namebox" id="namebox" name="carrot_name"></div>
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
	                                    <div class="listencheck"><input type="text" class="pagebox" name="carrot_listen"></div>
	                                    <div class="gettingcheck">
	                                    	<select class="gettingbox" name="gettingselect1" id="gettingselect1" onchange="gettingkindchange(this)">
	                                    		<option value="">?????????</option>
	                                    		<option value="????????? ??????">????????? ??????</option>
	                                    		<option value="??????">??????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="??????">??????</option>
	                                    		<option value="????????????">????????????</option>
	                                    		<option value="????????? ?????????">????????? ?????????</option>
	                                    		<option value="?????????, ??????">?????????, ??????</option>
	                                    		<option value="?????????, ?????????">?????????, ?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="?????????">?????????</option>
	                                    		<option value="????????? ??????">????????? ??????</option>
	                                    		<option value="????????????">????????????</option>
	                                    	</select>
	                                    	<br>
	                                    	<select class="gettingbox" id="gettingkind" name="carrot_getting">
	                                    		<option>????????? ?????? ??????</option>
	                                    	</select>
	                                    </div>
	                                    <div class="showdowncheck"><input type="text" class="pagebox" name="carrot_showdown">7</div>
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
    <script src="air-datepicker/dist/js/i18n/datepicker.ko.js"></script> <!-- ?????? ?????? ????????? ?????? ????????? -->
    <script>
        $("#datepicker").datepicker({
            language: 'ko'
        });
        function gettingkindchange(r){
        	var a = ["1????????? 2??????","????????????","3??????","4??????","5??????","????????????","????????????"];
        	var b = ["????????????","????????????","????????????","????????????","????????????","??????????????????","????????????"];
        	var c = ["can, may, will","must, should","should??? ??????","used to, would","????????? + have + p.p.","????????? ?????? ??????"];
        	var d = ["????????? ????????? ???","????????? ????????? ??????","????????? ??????","??????????????? ?????????","4?????? ?????????","5?????? ?????????","????????? ?????????","???????????? that?????? ?????????","????????? ????????????"];
        	var e = ["to????????? ???????????????","to????????? ??????????????????", "to????????? ???????????????","???????????? ???????????? ?????? ??????","????????? + to?????????","be to??????","too ~ to, enough to","to????????? ???????????????","to????????? ??????","???????????????"];
        	var f = ["????????? ???????????????","????????? ????????? ???","???????????? ???????????? ?????? ??????","????????? ?????? ??????"];
        	var g = ["???????????? vs. ????????????","????????? ???????????? ??????","???????????? vs. ?????????"];
        	var h = ["??????????????????","??????????????????","??????????????? ????????? ???","with+??????+??????","???????????? ????????????"];
        	var i = ["??? ??? ?????? ??????","??? ??? ?????? ??????","????????? ?????????","???????????????","???????????? it","???????????????:one,some,any,another,other"];
        	var j = ["???????????????","???????????????","????????????","???????????? ????????? ?????? ??????","-ly??? ????????? ????????? ???????????? ??????","???????????? ??????","????????? + ??????"];
        	var k = ["?????????","?????????????????????","?????????"];
        	var l = ["????????? ???????????? ?????????","????????? ???????????? ?????????","????????????(???????????????)","????????????(????????????)"];
        	var m = [" and, but, or, so","???????????????","????????? ?????????: that, if/whether","????????? ??????????????????S+V","???????????? ????????? ?????????: ??????","???????????? ????????? ?????????: ??????","???????????? ????????? ?????????: ??????","???????????? ????????? ?????????: ??????","???????????? ????????? ?????????: so that ~","???????????? ????????? ?????????: so ~ that ???","????????? ????????? ???????????? ????????? ?????????","????????????"];
        	var n = ["?????????????????? ????????? ??????","?????? ???????????????","????????? ???????????????","????????? ???????????????","??????????????? that","??????????????? what","????????? + ???????????????","??????????????? ????????? ??????","???????????? ????????? ??????","???????????????"];
        	var o = ["???????????????","?????????????????????","???????????????","if ???????????????","Without ?????????","I wish ?????????","as if[though] ?????????"];
        	var p = ["??? ??????","????????????"];
        	var q = ["??????: It is ~ that ?????? ??????","??????","??????","??????","??????","??????"];
        	var target = document.getElementById("gettingkind");
        	
        	if(r.value == "????????? ??????") var change = a;
        	else if(r.value == "??????") var change = b;
        	else if(r.value == "?????????") var change = c;
        	else if(r.value == "?????????") var change = d;
        	else if(r.value == "?????????") var change = e;
        	else if(r.value == "?????????") var change = f;
        	else if(r.value == "??????") var change = g;
        	else if(r.value == "????????????") var change = h;
        	else if(r.value == "????????? ?????????") var change = i;
        	else if(r.value == "?????????, ??????") var change = j;
        	else if(r.value == "?????????, ?????????") var change = k;
        	else if(r.value == "?????????") var change = l;
        	else if(r.value == "?????????") var change = m;
        	else if(r.value == "?????????") var change = n;
        	else if(r.value == "?????????") var change = o;
        	else if(r.value == "????????? ??????") var change = p;
        	else if(r.value == "????????????") var change = q;
    		
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