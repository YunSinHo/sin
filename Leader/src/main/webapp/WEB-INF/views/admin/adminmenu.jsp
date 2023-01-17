<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://kit.fontawesome.com/4054601d2a.js" crossorigin="anonymous"></script>
</head>
<style>
* {
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
    box-sizing: border-box;
}
body{
    display: grid;
    grid-template-columns: 44.7vw 1fr;
    background-color:#E0ECF8;
}
.mainarea{
	height:100vh;
	border-bottom:1px solid black;
}
.menuarea{
	background-color:#E6E6E6;
	height:100vh;
}
.mainheader{
	margin-left:5.7292vw;
	margin-top:3vw;
	padding-left:1.7208vw;
	font-size:1.8750vw;
	font-weight:600;
}
.logo{
	width:8.8542vw;
	height:3.125vw;
	margin-left:1.0417vw;
}
.contentwrap1 {
	width:40vw;
	height:33.3333vw;
	margin:auto;
	padding:1.8750vw 0 0 0;
	position:relative;
	z-index:9;
}
.main_visual {
	width:40vw;
	height:33.3333vw;
	position:relative;
}
.main_img {
	width:30.2083vw;
	height:30.2083vw;
	margin:auto;
	overflow: hidden;
}
.bannerimg{
	width:100%;
	height:30.2083vw;
}
.main_img ul {
	width:546px;
	height:250px;
	overflow:hidden;
	float:left;
}
.main_img ul li {
	float:left;
}
p.btn_pre {
	position:absolute;
	top:14vw;
	left:0;
	font-size: 50px;
}
p.btn_next {
	position:absolute;
	top:14vw;
	right:0;
	font-size: 50px;
}
.fa-solid, .fas{
	text-decoration:none;
}
.downloadarea{
	margin-left:5.7292vw;
	font-size:1.5625vw;
	padding-left:1.5208vw;
}
.menuarea{
	position:relative;
}
.backline{
	position:absolute;
	border:2px solid gray;
	border-radius: 40px 40px 40px 40px;
	width:39.5833vw;
	height:39.5417vw;
	left:7.8125vw;
	top:7.8125vw;
}
.backline2{
	position:absolute;
	border-left:2px solid gray;
	border-right:2px solid gray;
	width:13.1944vw;
	height:39.5417vw;
	left:21.0069vw;
	top:7.8125vw;
}
.menuheader{
	position:absolute;
	border:1px solid black;
	border-radius:20px 20px 20px 20px;
	width:11.9792vw;
	height:4.1667vw;
	line-height:4.1667vw;
	text-align:center;
	top:1.0417vw;
	left:21.3542vw;
	font-size:1.4583vw;
	font-weight:600;
	background-color:#E6E6E6;
}
.headeracc{
	position:absolute;
	border:1px solid black;
	left:24.349vw;
	top:0.5208vw;
	background-color:black;
	width:5.9896vw;
	height:1.0417vw;
	border-radius:10px 10px 10px 10px;
	z-index:1;
	border-top:2px solid gray;
	border-right:2px solid gray;
}
.headerback1{
	position:absolute;
	top:3.125vw;
	left:15.3646vw;
	height:4.6875vw;
	width:11.9792vw;
	border-top:2px solid gray;
	border-right:2px solid gray;
}
.headerback2{
	position:absolute;
	top:3.125vw;
	right:15.3646vw;
	height:4.6875vw;
	width:11.9792vw;
	border-top:2px solid gray;
}
.headersub1{
	background-color:white;
	border:2px solid black;
	border-radius:30px 30px 30px 30px;
	position:absolute;
	top:2.3438vw;
	left:11.7188vw;
	height:2.0833vw;
	line-height:2.0833vw;
	width:7.2917vw;
	text-align:center;
	font-size:0.9375vw;
}
.headersub2{
	background-color:white;
	border:2px solid black;
	border-radius:30px 30px 30px 30px;
	position:absolute;
	top:2.3438vw;
	right:11.7188vw;
	height:2.0833vw;
	line-height:2.0833vw;
	width:7.2917vw;
	text-align:center;
	font-size:0.9375vw;
}
.menuline1{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:10.9792vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.topmenu{
	color:gray;
	background-color:#E0ECF8;
	width:10.4166vw;
	height:3.3854vw;
	border:2px solid black;
	border-radius:30px 30px 30px 30px;
	line-height:3.3854vw;
	font-size:1.25vw;
	text-align:center;
}
.menuline2{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:15.9271vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.normalmenu{
	color:gray;
	background-color:#E6E6E6;
	width:10.4166vw;
	height:3.3854vw;
	border:2px solid black;
	border-radius:30px 30px 30px 30px;
	line-height:3.3854vw;
	font-size:1.25vw;
	text-align:center;
}
.normalmenu:hover{
	border:2px solid red;
	color:red;
	background-color:white;
}
.dummy{
	color:gray;
	background-color:#E6E6E6;
	width:10.4166vw;
	height:3.3854vw;
}
.menuline3{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:20.875vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.menuline4{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:25.8229vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.menuline5{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:30.7708vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.menuline6{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:35.7187vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.menuline7{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:40.6666vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.menuline8{
	position:absolute;
	width:50vw;
	height:3.3854vw;
	top:45.6145vw;
	left:2.6042vw;
	display:flex;
	justify-content:space-between;
}
.backyard1{
	background-color:#E6E6E6;
	position:absolute;
	width:50vw;
	height:1.3854vw;
	top:46.6145vw;
	left:2.6042vw;
}
.backyard2{
	background-color: #E6E6E6;
    position: absolute;
    width: 5vw;
    height: 18vw;
    top: 31vw;
    left: 5.1042vw;
}
.backyard3{
	background-color: #E6E6E6;
    position: absolute;
    width: 5vw;
    height: 10vw;
    top: 38vw;
    right: 18.1042vw;
}
.backyard4{
	background-color: #E6E6E6;
    position: absolute;
    width: 5vw;
    height: 19vw;
    top: 28vw;
    right: 5.1042vw;
}
.hongbobtn{
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    background: linear-gradient(
        45deg,
        #ff0000,
        #ff7300,
        #fffb00,
        #48ff00,
        #00ffd5,
        #002bff,
        #7a00ff,
        #ff00c8,
        #ff0000
    );
    color: black;
    font-size:24px;
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}
@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}
.hongbobtn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}
.hongbobtn:active {
    transform: scale(1.5);
}
</style>
<body>
	<div class="mainarea">
		<div class="mainheader">
			<span>about</span><img class="logo" src="/img/admin/adminmenulogo.png">
			<p>september's event</p>
		</div>
		<div class="contentwrap1" id="slides">
		    <div class="main_visual">
		        <p class="btn_pre"><a href="javascript:slides_next();" style="color:black"><i class="fa-solid fa-circle-chevron-left"></i></a></p>
		        <div class="main_img">
		            <div class="content">
		                <a href="#" idx="0"><img class="bannerimg" src="/img/admin/adminbanner1.png" alt="배너1" title="배너1" /></a>
		                <a href="#" idx="1"><img class="bannerimg" src="/img/admin/adminbanner2.png" alt="배너2" title="배너2" /></a>
		            </div>
		        </div>
		        <p class="btn_next"><a href="javascript:slides_prev();" style="color:black"><i class="fa-solid fa-circle-chevron-right"></i></a></p>
		    </div>
		</div>
		<div class="downloadarea">
			<button class="hongbobtn" onclick="location.href='materiallist.mdo'">홍보자료 다운로드</button>
		</div>
	</div>
	<div class="menuarea">
		<div class="backline"></div>
		<div class="backline2"></div>
		<div class="backyard1"></div>
		<div class="backyard2"></div>
		<div class="backyard3"></div>
		<div class="backyard4"></div>
		<div class="headeracc"></div>
		<div class="headerback1"></div>
		<div class="headerback2"></div>
		<div class="menuheader" onclick="location.href='admininfor.mdo'">센터장</div>
		<div class="headersub1" onclick="location.href='noticelist.mdo'">공지사항</div>
		<div class="headersub2" onclick="location.href='index.mdo'">오늘의 업무</div>
		<div class="menuline1">
			<div class="topmenu">운영관리</div>
			<div class="topmenu">학생관리</div>
			<div class="topmenu">학습컨텐츠</div>
			<div class="topmenu">직원관리</div>
		</div>
		<div class="menuline2">
			<div class="normalmenu" onclick="location.href='accessacademy.mdo'">센터정보</div>
			<div class="normalmenu" onclick="location.href='tables.mdo'">학생정보</div>
			<div class="normalmenu" onclick="location.href='mainlecture.mdo'">영상강의</div>
			<div class="normalmenu" onclick="location.href='accessadmin.mdo'">직원정보</div>
		</div>
		<div class="menuline3">
			<div class="normalmenu">서비스이용료</div>
			<div class="normalmenu">출결관리</div>
			<div class="normalmenu" onclick="location.href='maincontent.mdo'">교재컨텐츠</div>
			<div class="normalmenu" onclick="location.href='workdivide.mdo'">직원업무관리</div>
		</div>
		<div class="menuline4">
			<div class="normalmenu" onclick="location.href='materiallist.mdo'">운영자료</div>
			<div class="normalmenu">진도계획표</div>
			<div class="normalmenu">커리큘럼</div>
			<div class="normalmenu" style="line-height:1.4063vw"><span style="font-size:1.0417vw">급여관리</span><p style="font-size:1.0417vw">(명세표)</p></div>
		</div>
		<div class="menuline5">
			<div class="normalmenu" onclick="location.href='assignmentclass.mdo'">클래스편성</div>
			<div class="normalmenu" onclick="location.href='supplement.mdo'">보강관리</div>
			<div class="normalmenu">학습성향검사</div>
			<div class="dummy"></div>
		</div>
		<div class="menuline6">
			<div class="dummy"></div>
			<div class="normalmenu">숙제점검</div>
			<div class="normalmenu">레벨테스트</div>
			<div class="dummy"></div>
		</div>
		<div class="menuline7">
			<div class="dummy"></div>
			<div class="normalmenu" onclick="location.href='sendcarrot.mdo'">알림장전송</div>
			<div class="dummy"></div>
			<div class="dummy"></div>
		</div>
		<div class="menuline8">
			<div class="dummy"></div>
			<div class="normalmenu">수납관리</div>
			<div class="dummy"></div>
			<div class="dummy"></div>
		</div>
	</div>
	<script>
	var slides_auto_time = 5000; //자동으로 다음이미지를 불러올시간
	var slides_ani_time = 500; // 애니메이션 초
	  
	var slides;
	var slides_pagination;
	var slides_total = 0;
	var slides_idx = 0;
	var slides_time = null;
	var slides_click_page = -1;
	var slides_move_img = -1;
	var slides_button_lock = 0;
	  
	$(document).ready(function () {
	    slides_main();
	});
	  
	function slides_main() {
	    slides = $("#slides .main_img .content"); //슬라이드 컨텐츠 영역
	    slides_pagination = $("#slides .btn_area p"); // 슬라이드 페이지 영역
	  
	    slides_total = slides.find("a").length;
	  
	    var btn_page_html = "";
	    for(i=0;i<slides_total;i++) {
	        btn_page_html += "<a href=\"javascript:slides_move_page('"+i+"');\" idx='"+i+"'><img src='./images/jquery_slides/btn_off.png' alt='"+(i+1)+"' /></a>\n";
	    }
	  
	    slides_pagination.html(btn_page_html);
	  
	    slides_pagination.find("a img").eq(0).attr("src", "./images/jquery_slides/btn_on.png");
	  
	    slides_time = setTimeout("slides_prev()", slides_auto_time);
	}
	  
	function slides_page_next() {
	    if(slides_click_page == -1) {
	        slides_idx--;
	  
	        if(slides_idx < 0) {
	            slides_idx = slides_total-1;
	        }
	    } else {
	        slides_idx = slides_click_page;
	        slides_click_page = -1;
	    }
	    slides_pagination.find("a img").attr("src", "./images/jquery_slides/btn_off.png");
	    slides_pagination.find("a img").eq(slides_idx).attr("src", "./images/jquery_slides/btn_on.png");
	}
	  
	function slides_page_prev() {
	    if(slides_click_page == -1) {
	        slides_idx++;
	  
	        if(slides_idx >= slides_total) {
	            slides_idx = 0;
	        }
	    } else {
	        slides_idx = slides_click_page;
	        slides_click_page = -1;
	    }
	    slides_pagination.find("a img").attr("src", "./images/jquery_slides/btn_off.png");
	    slides_pagination.find("a img").eq(slides_idx).attr("src", "./images/jquery_slides/btn_on.png");
	}
	  
	function slides_next() {
	    if(slides_button_lock) return ;
	    slides_button_lock = 1;
	  
	    if(slides_time != null) {
	        clearTimeout(slides_time);
	        slides_time = null;
	    }
	  
	    slides.find("a").last().css({"margin-left":"-546px"});
	    var tmp = slides.find("a").last();
	    slides.prepend(tmp);
	  
	    slides.find("a").eq(0).animate({ marginLeft: "+=546" }, slides_ani_time, function () {
	        slides.find("a").css("margin-left","0");
	        slides_page_next();
	  
	        if(slides_move_img > -1) sortSlides();
	  
	        slides_button_lock = 0;
	  
	        slides_time = setTimeout("slides_prev()", slides_auto_time);
	    });
	}
	  
	function slides_prev() {
	    if(slides_button_lock) return ;
	    slides_button_lock = 1;
	  
	    if(slides_time != null) {
	        clearTimeout(slides_time);
	        slides_time = null;
	    }
	  
	    slides.find("a").eq(0).animate({ marginLeft: "-=546" }, slides_ani_time, function () {
	        var tmp = slides.find("a").first();
	        slides.append(tmp);
	        slides.find("a").css("margin-left","0");
	        slides_page_prev();
	  
	        if(slides_move_img > -1) sortSlides();
	  
	        slides_button_lock = 0;
	  
	        slides_time = setTimeout("slides_prev()", slides_auto_time);
	    });
	}
	  
	function slides_move_page(idx) {
	    var tmp;
	    slides.find("a").each(function () {
	        if(idx == $(this).attr("idx")) {
	            tmp = $(this);
	        }
	    });
	  
	    slides_click_page = idx;
	    slides_move_img = idx;
	  
	    if(slides_idx > idx && idx > -1) {
	        slides.append(tmp);
	        slides_next();
	    } else if(slides_idx < idx && idx < slides_total) {
	        slides.find("a").eq(0).after(tmp)
	        slides_prev();
	    } else {
	        slides_click_page = -1;
	        slides_move_img = -1;
	    }
	}
	  
	function sortSlides() {
	    var tmp = new Array();
	  
	    slides_move_img = slides.find("a").eq(0).attr("idx");
	  
	    slides.find("a").each(function () {
	        var idx = $(this).attr("idx");
	        tmp[idx] = $(this);
	    });
	  
	    var i = 0;
	    while(i < slides_total) {
	        slides.append(tmp[slides_move_img]);
	  
	        slides_move_img++;
	        if(slides_move_img >= slides_total) {
	            slides_move_img = 0;
	        }
	  
	        i++;
	    }
	  
	    slides_move_img = -1;
	}
	</script>
</body>
</html>