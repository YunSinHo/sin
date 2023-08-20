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
}
header{
	width:100%;
	height:7.8125vw;
	display:flex;
	justify-content:space-around;
}
.mainlogo{
	margin-left:1.8229vw;
	margin-top:1.8229vw;
	width:15%;
}
.logo{
	width:10.4167vw;
}
.dummyarea{
	width:38%;
}
.optionarea{
	width:35.5%;
	margin-right:1.8229vw;
	display:flex;
	justify-content:space-around;
    font-size: 1vw;
}
.payarea{
	color:red;
	line-height:7.7083vw;
	width:20%;
}
.missionarea{
	width:37%;
	display:flex;
	justify-content:space-between;
}
.noncompliance{
	text-align:center;
	width:47%;
	border: 3px solid black;
    border-radius: 2.0833vw 2.0833vw 2.0833vw 2.0833vw;
    margin-top: 1.5625vw;
    height:4.5833vw;
	color:red;
}
.todaymission{
	text-align:center;
	width:47%;
	border: 3px solid black;
    border-radius: 2.0833vw 2.0833vw 2.0833vw 2.0833vw;
    margin-top: 1.5625vw;
    height:4.5833vw;
	color:red;
}
.loginarea{
	width:30%;
	display:flex;
	justify-content:space-between;
}
.login{
	width:100%;
	line-height:7.8125vw;
	text-align:center;
}
.myarea{
	width:47%;
	text-align:center;
}
.mypageimg{
	margin-top: 1.5208vw;
    width: 2vw;
    height: 2.7vw;
}
.banner{
	width:100%;
	height:23.4375vw;
	margin-bottom:1.0417vw;
}
.menu{
	width: 73.8%;
    margin-left: 12.7%;
	display:flex;
	justify-content:space-around;
}
.dropdownoption{
    position : relative;
    display : inline-block;
}
.dropdowncontent{
	width:120%;
	margin-left:-10%;
	text-align:center;
    display : none;
    position : absolute;
    z-index : 1; /*다른 요소들보다 앞에 배치*/
    font-size:1.0417vw;
}
.dropdowncontent a{
    display : block;
}

.dropdownoption:hover .dropdowncontent {
    display: block;
}
.dropimg{
	width:3.6875vw;
	box-shadow:5px 5px 5px 5px gray;
	margin:auto;
}
.dropbtn{
	text-align:center;
	margin-top:15px;
}
i{
	text-weight:bold;
	text-decoration: underline;
}
.contentwrap1 {
	width:65.1042vw;
	height:20.8333vw;
	margin:auto;
	padding:1.3021vw 0 0 0;
	position:relative;
	z-index:9;
}
.main_visual {
	width:65.1042vw;
	height:20.8333vw;
	position:relative;
}
.main_img {
	width:59.8958vw;
	height:20.8333vw;
	margin:auto;
	overflow: hidden;
}
.bannerimg{
	width:100%;
	height:20.8333vw;
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
	top:9.1146vw;
	left:-30px;
	font-size: 50px;
}
p.btn_next {
	position:absolute;
	top:9.1146vw;
	right:-30px;
	font-size: 50px;
}
.fa-solid, .fas{
	text-decoration:none;
}
</style>
</head>
<body>
	<header>
		<div class="mainlogo">
			<img class="logo" src="img/user/userindeximg/피아스학생용 로그인접속중-004.png"
			 onclick="location.href='userindex.do';">
			 <!-- /img/user/userindeximg/피아스학생용 로그인접속중-004.png -->
		</div>
		
		<div class="dummyarea"></div>
		<div class="optionarea">
			<c:choose>
				<c:when test="${sessionScope.user_id == null}">
				</c:when>
				<c:otherwise>
					<div class="payarea">수강료미납상태</div>
				</c:otherwise>
			</c:choose>
			<div class="missionarea">
			<c:choose>
				<c:when test="${sessionScope.user_id == null}">
				</c:when>
				<c:otherwise>
					<div class="noncompliance"><p style="margin-top:17px; margin-bottom:4px; color:black;">미이행미션</p>6</div>
					<div class="todaymission"><p style="margin-top:17px; margin-bottom:4px; color:black;">투데이미션</p>4</div>
				</c:otherwise>
			</c:choose>
			</div>
			<div class="loginarea">
			<c:choose>
				<c:when test="${sessionScope.user_id == null}">
					<div class="login" onclick="location.href='login.do';">로그인</div>
				</c:when>
				<c:otherwise>
					<div class="myarea" onclick="location.href='logout.do';">
						<img class="mypageimg" src="img/user/userindeximg/로고(로그아웃).png" alt="로그아웃로고">
						<p>로그아웃</p>
					</div>
					<div class="myarea">
						<img class="mypageimg" src="img/user/userindeximg/로고(강의실).png" alt="강의실 로고">
						<p>마이페이지</p>
					</div>
				</c:otherwise>
			</c:choose>
			</div>
		</div>
	</header>
	<div class="banner">
		<div class="contentwrap1" id="slides">
		    <div class="main_visual">
		        <p class="btn_pre"><a href="javascript:slides_next();" style="color:black"><i class="fa-solid fa-circle-chevron-left"></i></a></p>
		        <div class="main_img">
		            <div class="content">
		                <a href="#" idx="0"><img class="bannerimg" src="img/user/bannerimg/KakaoTalk_20221026_094741199.png" alt="배너1" title="배너1" /></a>
		                <a href="#" idx="1"><img class="bannerimg" src="img/user/bannerimg/KakaoTalk_20221026_094741199.png" alt="배너2" title="배너2" /></a>
		                <a href="#" idx="2"><img class="bannerimg" src="img/user/bannerimg/KakaoTalk_20221026_094741199.png" alt="배너3" title="배너3" /></a>
		            </div>
		        </div>
		        <p class="btn_next"><a href="javascript:slides_prev();" style="color:black"><i class="fa-solid fa-circle-chevron-right"></i></a></p>
		    </div>
		</div>
	</div>
	<div class="menu">
		<div class="dropdownoption">
			<div class="droparea" style="display:flex; flex-direction: column;">
				<img class="dropimg" src="img/user/userindeximg/메뉴(위치).png">
		        <span class="dropbtn"><i>나의위치</i></span>
			</div>
	        <div class="dropdowncontent">
	            <p style="margin-top:10px;" onclick="location.href='arrangementlist.do';">레벨테스트</p>
	            <p style="margin-top:10px;" onclick="location.href='tendencyboard.do';">학습성향검사</p>
	            <p style="margin-top:10px;" onclick="location.href='arrangementresult.do';">내 학습 위치</p>
	            <p style="margin-top:10px;" onclick="location.href='carrotlist.do';">학습종합관리</p>
	        </div>
	    </div>
		<div class="dropdownoption">
	        <div class="droparea" style="display:flex; flex-direction: column;">
				<img class="dropimg" src="img/user/userindeximg/메뉴(학습상황).png">
		        <span class="dropbtn"><i>학습상황</i></span>
			</div>
	        <div class="dropdowncontent">
	        	<p style="margin-top:10px;" onclick="location.href='studentschedule.do'">진도계획표</p>
	        	<p style="margin-top:10px;">학습알림장</p>
	        	<p style="margin-top:10px;">오답관리</p>
	        </div>
	    </div>
		<div class="dropdownoption">
	        <div class="droparea" style="display:flex; flex-direction: column;">
				<img class="dropimg" src="img/user/userindeximg/메뉴(교재컨텐츠).png">
		        <span class="dropbtn"><i>교재컨텐츠</i></span>
			</div>
	        <div class="dropdowncontent">
	            <p style="margin-top:10px;"><span onclick="location.href='grammarlist.do';">독해</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>문법</span> </p>
	            <p style="margin-top:10px;"><span>듣기</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>내신</span></p>
	            <p style="margin-top:10px;"><span onclick="location.href='translist.do'">영작</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span onclick="location.href='wordpdflist.do';">단어</span></p>
	            <p style="margin-top:10px;">파닉스</p>
	            <p style="margin-top:10px;">실전수능모의고사</p>
	        </div>
	    </div>
		<div class="dropdownoption">
	        <div class="droparea" style="display:flex; flex-direction: column;">
				<img class="dropimg" src="img/user/userindeximg/메뉴(강의실).png">
		        <span class="dropbtn"><i>내강의실</i></span>
			</div>
	        <div class="dropdowncontent">
	            <p style="margin-top:10px;" onclick="location.href='lecturelist.do'">강의영상</p>
	        </div>
	    </div>
	</div>
	<script>
	console.log(window.innerHeight);
	var slides_auto_time = 5000; //자동으로 다음이미지를 불러올시간
	var slides_ani_time = 500; // 애니메이션 초

	let slides;
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
	        btn_page_html += "<a href=\"javascript:slides_move_page('"+i+"');\" idx='"+i+"'><img src='.images/jquery_slides/btn_off.png' alt='"+(i+1)+"' /></a>\n";
	    }
	  
	    slides_pagination.html(btn_page_html);
	  
	    slides_pagination.find("a img").eq(0).attr("src", ".images/jquery_slides/btn_on.png");
	  
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
	    slides_pagination.find("a img").attr("src", ".images/jquery_slides/btn_off.png");
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
	    slides_pagination.find("a img").attr("src", ".images/jquery_slides/btn_off.png");
	    slides_pagination.find("a img").eq(slides_idx).attr("src", ".images/jquery_slides/btn_on.png");
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