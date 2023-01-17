<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.user.vo.SchoolmatchVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
* {
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
    box-sizing: border-box;
}
p{
	margin:0;
}
img{
	width:100%;
	vertical-align:middle;
}
.img1area{
	width:100%;
	position:relative;
}
.img2area{
	width:100%;
	position:relative;
}
.img3area{
	width:100%;
	position:relative;
}
.img4area{
	width:100%;
	position:relative;
}
.img5area{
	width:100%;
	position:relative;
}
.img6area{
	width:100%;
	position:relative;
}
.img7area{
	width:100%;
	position:relative;
}
.maininfor{
	position:absolute;
	left: 25%;
    top: 60%;
    width: 50%;
    height: 12%;
	display:grid;
	grid-template-columns: 1fr 1fr;
	grid-template-rows: 1fr 1fr 1fr;
}
.mainheader{
	color:white !important;
}
.maingrid{
	line-height:5.6250vw;
	text-align:center;
	color:#848484;
	font-size:2.5vw;
}
.barchartarea{
	position:absolute;
	left:5%;
	top:25%;
	width:90%;
	height:35%;
}
.barchartarea2{
	position:absolute;
	left:5%;
	top:25%;
	width:90%;
	height:40%;
}
.piechartarea{
	position: absolute;
    left: 15%;
    top: 25%;
    width: 70%;
    height: 48%;
}
.headerarea{
	position:absolute;
	font-size:5.5vw;
	font-weight:bold;
	text-align:center;
	left:20%;
	width:60%;
	top:7%;
	color:#61210B;
}
.explanationarea{
	position:absolute;
	left:10%;
	width:80%;
	top:65%;
	height:auto;
}
.explanationarea2{
	position:absolute;
	left:10%;
	width:80%;
	top:75%;
	height:auto;
}
.explanationhead{
	width:100%;
	font-size:3vw;
	font-weight:bold;
	color:#61210B;
	margin-bottom:2.0833vw;
}
.explanationbody{
	font-size:2.2vw;
}
.schoolheadarea1{
	color:white;
	position:absolute;
	font-size:5.5vw;
	top:23%;
	width:30%;
	left:35%;
	text-align:center;
}
.schoolheadarea2{
	color:white;
	position:absolute;
	font-size:3.5vw;
	top:24.5%;
	width:15%;
	left:15.5%;
	text-align:center;
}
.schoolheadarea3{
	color:white;
	position:absolute;
	font-size:3.5vw;
	top:24.5%;
	width:15%;
	right:15.5%;
	text-align:center;
}
.schoolexplanationhead{
	position:absolute;
	top:42%;
	font-size:2.2vw;
	left:9%;
	width:84%;
}
.schoolexplanationbody{
	position:absolute;
	top:55%;
	font-size:2vw;
	left:9%;
	width:82%;
}
.explanationarea3{
	position:absolute;
	left:10%;
	width:80%;
	font-size:3vw;
	top:20%;
	height:auto;
	color:#61210B;
	font-weight:bold;
}
.explanationareatable{
	font-size:2vw;
	width:100%;
	height:60vw;
	border:1px solid black;
	margin-top: 4vw;
	text-align:center;
	color:black;
	font-weight:normal;
}
th, td {
	border: 1px solid black;
}
.pexplan{
	font-size: 2.7vw;
	margin-top: 1vw;
	color:black;
	font-weight:normal;
}
@page {
	size: A4;
	margin: 0;
}
@media print {
	html, body {
		width: 210mm;
		height: 297mm;
	}
	.maingrid{
		line-height:34pt;
		font-size:18pt;
	}
	.headerarea{
		font-size:36pt;
	}
	.explanationhead{
		font-size:18pt;
		margin-bottom:8pt;
	}
	.explanationbody{
		font-size:14pt;
	}
	.schoolheadarea1{
		font-size:36pt;
	}
	.schoolheadarea2{
		font-size:22.8pt;
	}
	.schoolheadarea3{
		font-size:22.8pt;
	}
	.schoolexplanationhead{
		font-size:15pt;
	}
	.schoolexplanationbody{
		font-size:12.5pt;
	}
	.explanationarea3{
		font-size:19pt;
	}
	.explanationareatable{
		font-size:16pt;
		height:120mm;
	}
	.pexplan{
		font-size: 16pt;
		margin-top: 10pt;
	}
}
</style>
</head>
<body>
<input type="hidden" id="buram" value="${schoolmatchresult.schoolmatch_buram }">
<input type="hidden" id="sangmyung" value="${schoolmatchresult.schoolmatch_sangmyung }">
<input type="hidden" id="youngsin" value="${schoolmatchresult.schoolmatch_youngsin }">
<input type="hidden" id="daejingirls" value="${schoolmatchresult.schoolmatch_daejingirls }">
<input type="hidden" id="yonghwa" value="${schoolmatchresult.schoolmatch_yonghwa }">
<input type="hidden" id="cheongwongirls" value="${schoolmatchresult.schoolmatch_cheongwongirls }">
<input type="hidden" id="cheongwon" value="${schoolmatchresult.schoolmatch_cheongwon }">
<input type="hidden" id="daejin" value="${schoolmatchresult.schoolmatch_daejin }">
<input type="hidden" id="jaehyun" value="${schoolmatchresult.schoolmatch_jaehyun }">
<input type="hidden" id="sorabol" value="${schoolmatchresult.schoolmatch_sorabol }">
<input type="hidden" id="prior1" value="${schoolmatchresult.schoolmatch_prior1 }">
<input type="hidden" id="prior2" value="${schoolmatchresult.schoolmatch_prior2 }">
<input type="hidden" id="prior3" value="${schoolmatchresult.schoolmatch_prior3 }">
<input type="hidden" id="prior4" value="${schoolmatchresult.schoolmatch_prior4 }">
<input type="hidden" id="prior5" value="${schoolmatchresult.schoolmatch_prior5 }">
<input type="hidden" id="tendency1" value="${schoolmatchresult.schoolmatch_tendency1 }">
<input type="hidden" id="tendency2" value="${schoolmatchresult.schoolmatch_tendency2 }">
<input type="hidden" id="tendency3" value="${schoolmatchresult.schoolmatch_tendency3 }">
<input type="hidden" id="tendency4" value="${schoolmatchresult.schoolmatch_tendency4 }">
<input type="hidden" id="tendency5" value="${schoolmatchresult.schoolmatch_tendency5 }">
<input type="hidden" id="tendency6" value="${schoolmatchresult.schoolmatch_tendency6 }">
	<div class="img1area">
		<div class="img-area">
			<img class="mainheaderimg1" alt="img1" src="/img/user/학교매칭1(수정).png">
		</div>
		<div class="maininfor">
			<div class="maingrid mainheader">이름</div>
			<div class="maingrid mainheader">${schoolmatchresult.schoolmatch_name }</div>
			<div class="maingrid">추천학교1</div>
			<div class="maingrid"><span id="suggestion1"></span></div>
			<div class="maingrid">추천학교2</div>
			<div class="maingrid"><span id="suggestion2"></span></div>
		</div>
	</div>
	<div class="img2area">
		<div class="img-area">
			<img class="mainheaderimg2" alt="img2" src="/img/user/학교매칭2.png">
		</div>
	</div>
	<div class="img3area">
		<div class="img-area">
			<img class="mainheaderimg3" alt="img2" src="/img/user/학교매칭3.png">
		</div>
		<div class="schoolheadarea1"><span id="suggestionschool1"></span></div>
		<div class="schoolheadarea2"><span id="suggestionschool2"></span></div>
		<div class="schoolheadarea3"><span id="suggestionschool3"></span></div>
		<div class="schoolexplanationhead">
			<p id="mainschool"></p>검사자 ${schoolmatchresult.schoolmatch_name }이(가) 검사 시 기입하였던 내용을 바탕으로 1순위로 추천된 학교입니다.
		</div>
		<div class="schoolexplanationbody">
			<p>1. 검사자 ${schoolmatchresult.schoolmatch_name }의 주요과목 선행도와 해당학교 선배들의 1등급 점수대를 분석하면 다른 학교보다 학습적합도가 우위에 있음을 알 수 있습니다. 현재 중3 상태에서 고교선행도가 높지 않으면 최상위학생들이 모여있는 고등학교에 진학했을 때 내신등급이 낮을 수 밖에 없습니다. 낮은 내신 등급으로 인해서는 수시지원 시 대입성공률이 낮기 때문에 통상적으로 학습적합도를 학교선정 시 우선적으로 고려해야 합니다.</p>
			<br>
			<p>2. 공부그릿의 수치가 높으면 다소 선행도가 낮더라도 고교진학 후 충분히 만회가 가능하므로 해당학교는 공부그릿도 추가로 적용되어 있습니다.</p>
			<br>
			<p>3. 다음장에 보여지는 학습성향 항목을 분석해보면 약간의 취약점이 보이나 코칭멘트의 지시대로 단점을 극복하기 위해 끊임없이 노력한다면 고교진학 후 목표대학에 합격할 수 있습니다.</p>
			<br>  
			<span id="explanationword1"></span>
		</div>
	</div>
	<div class="img4area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/img/user/학교매칭4.png">
		</div>
		<div class="headerarea">
			추천학교 순위표
		</div>
		<div class="piechartarea">
			<canvas id="mypieChart" style="height:100%; width:100%;"></canvas>
		</div>
	</div>
	<div class="img5area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/img/user/학교매칭4.png">
		</div>
		<div class="headerarea">
			나의 학습선행도
		</div>
		<div class="barchartarea">
			<canvas id="mybarChart2" style="height:100%; width:100%;"></canvas>
		</div>
		<div class="explanationarea">
			<div class="explanationhead">
				선행도 평가
			</div>
			<div class="explanationbody">
				<p>기존의 중학교 성적은 학교별 출제 수준에 차이가 있어 자신의 정확한 실력을 판단하는 기준으로 사용하기 어렵습니다.<p>
				<p>자신의 실력에 맞는 고등학교를 선정할 때는 선행도가 함께 반영되어야 학교 적합도가 높아집니다.</p>
				<p>피아스에서는 선행정도에 따라 예측결과값을 짐작하고 학습량이 많은 학교를 추천함으로써 중고등연계 프로젝트를 실현하고자 합니다.</p>
				<span id="explanationword2"></span>
			</div>
		</div>
	</div>
	<div class="img6area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/img/user/학교매칭4.png">
		</div>
		<div class="headerarea">
			학습에 미치는 나의 성향
		</div>
		<div class="barchartarea2">
			<canvas id="mybarChart1" style="height:100%; width:100%;"></canvas>
		</div>
		<div class="explanationarea2">
			<div class="explanationhead">
				종합평가
			</div>
			<div class="explanationbody">
				<p>위의 항목들은 학습에 미치는 영향이 상당합니다</p>
				<p>환경민감도를 제외하고 수치가 낮은 경우, 높일 수 있는 구체적인 팁을 받고 지속적인 훈련을 진행해야 합니다.</p>
				<p>맞춤식 방법에 대한 컨설팅과 프로그램제공은 피아스를 개발한 (주) 헤듀컴퍼니에서 진행하고 있으니 추가 문의사항이 있으시면 아래번호로 연락주세요.</p>
			</div>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/img/user/학교매칭4.png">
		</div>
		<div class="headerarea">
			추천학교 세부 정보
		</div>
		<div class="explanationarea3">
			<p>4년제 대학 입시율</p>
			<p class="pexplan" id="suggestionrate"></p>
			<br>
			<p>선택과목</p>
			<p class="pexplan" id="suggestionsubject"></p>
			<br>
			<p>주요과목별 1등급 점수 (2022학년도 1학기 기준)</p>
			<table class="explanationareatable">
				<thead>
					<tr>
						<td rowspan='2'><span id="tableschool"></span></td>
						<td colspan='3'>1등급 점수</td>
						<td colspan='3'>2등급 점수</td>
						<td colspan='3'>3등급 점수</td>
					</tr>
					<tr>
						<td>1학년</td>
						<td>2학년</td>
						<td>3학년</td>
						<td>1학년</td>
						<td>2학년</td>
						<td>3학년</td>
						<td>1학년</td>
						<td>2학년</td>
						<td>3학년</td>
					</tr>
				</thead>
				<tbody>
				    <tr>
				        <td>국어</td>
				        <td><span id="prior1-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior1-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior1-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior1-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior1-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior1-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior1-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior1-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior1-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>수학</td>
				        <td><span id="prior2-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior2-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior2-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior2-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior2-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior2-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior2-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior2-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior2-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>영어</td>
				        <td><span id="prior3-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior3-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior3-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior3-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior3-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior3-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior3-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior3-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior3-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>사탐</td>
				        <td><span id="prior4-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior4-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior4-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior4-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior4-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior4-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior4-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior4-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior4-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>과탐</td>
				        <td><span id="prior5-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior5-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior5-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior5-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior5-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior5-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior5-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior5-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior5-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				</tbody>
			</table></div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0/dist/chart.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
	<script>
	const buram = parseFloat(document.getElementById("buram").value).toFixed(1);
	const sangmyung = parseFloat(document.getElementById("sangmyung").value).toFixed(1);
	const youngsin = parseFloat(document.getElementById("youngsin").value).toFixed(1);
	const daejingirls = parseFloat(document.getElementById("daejingirls").value).toFixed(1);
	const yonghwa = parseFloat(document.getElementById("yonghwa").value).toFixed(1);
	const cheongwongirls = parseFloat(document.getElementById("cheongwongirls").value).toFixed(1);
	const cheongwon = parseFloat(document.getElementById("cheongwon").value).toFixed(1);
	const daejin = parseFloat(document.getElementById("daejin").value).toFixed(1);
	const jaehyun = parseFloat(document.getElementById("jaehyun").value).toFixed(1);
	const sorabol = parseFloat(document.getElementById("sorabol").value).toFixed(1);
	const prior1 = parseFloat(document.getElementById("prior1").value).toFixed(1);
	const prior2 = parseFloat(document.getElementById("prior2").value).toFixed(1);
	const prior3 = parseFloat(document.getElementById("prior3").value).toFixed(1);
	const prior4 = parseFloat(document.getElementById("prior4").value).toFixed(1);
	const prior5 = parseFloat(document.getElementById("prior5").value).toFixed(1);
	const tendency1 = parseFloat(document.getElementById("tendency1").value).toFixed(1);
	const tendency2 = parseFloat(document.getElementById("tendency2").value).toFixed(1);
	const tendency3 = parseFloat(document.getElementById("tendency3").value).toFixed(1);
	const tendency4 = parseFloat(document.getElementById("tendency4").value).toFixed(1);
	const tendency5 = parseFloat(document.getElementById("tendency5").value).toFixed(1);
	const tendency6 = parseFloat(document.getElementById("tendency6").value).toFixed(1);
	var arrschool = [buram,sangmyung,youngsin,daejingirls,yonghwa,cheongwongirls,cheongwon,daejin,jaehyun,sorabol];
	arrschool.sort(function(a, b)  {
		  return b - a;
	});
	const schoolmax = Math.max.apply(null, arrschool);
	if(schoolmax == buram){
		document.getElementById("suggestion1").innerText = '불암고';
		document.getElementById("suggestionschool1").innerText = '불암고';
		document.getElementById("mainschool").innerText = '불암고는';
		document.getElementById("tableschool").innerText = '불암고';
		document.getElementById("suggestionrate").innerText = '40.6%';
		document.getElementById("suggestionsubject").innerText = '인공지능기초,공학일반,교육학';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '98';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '98';
		document.getElementById("prior1-2.1").innerText = '88';
		document.getElementById("prior1-2.2").innerText = '95';
		document.getElementById("prior1-2.3").innerText = '86';
		document.getElementById("prior1-3.1").innerText = '80';
		document.getElementById("prior1-3.2").innerText = '84';
		document.getElementById("prior1-3.3").innerText = '77';
		document.getElementById("prior2-1.1").innerText = '96';
		document.getElementById("prior2-1.2").innerText = '93';
		document.getElementById("prior2-1.3").innerText = '79';
		document.getElementById("prior2-2.1").innerText = '87';
		document.getElementById("prior2-2.2").innerText = '79';
		document.getElementById("prior2-2.3").innerText = '67';
		document.getElementById("prior2-3.1").innerText = '79';
		document.getElementById("prior2-3.2").innerText = '67';
		document.getElementById("prior2-3.3").innerText = '57';
		document.getElementById("prior3-1.1").innerText = '100';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '100';
		document.getElementById("prior3-2.1").innerText = '89';
		document.getElementById("prior3-2.2").innerText = '88';
		document.getElementById("prior3-2.3").innerText = '88';
		document.getElementById("prior3-3.1").innerText = '79';
		document.getElementById("prior3-3.2").innerText = '78';
		document.getElementById("prior3-3.3").innerText = '78';
		document.getElementById("prior4-1.1").innerText = '99';
		document.getElementById("prior4-1.2").innerText = '99';
		document.getElementById("prior4-1.3").innerText = '96';
		document.getElementById("prior4-2.1").innerText = '90';
		document.getElementById("prior4-2.2").innerText = '89';
		document.getElementById("prior4-2.3").innerText = '83';
		document.getElementById("prior4-3.1").innerText = '83';
		document.getElementById("prior4-3.2").innerText = '81';
		document.getElementById("prior4-3.3").innerText = '72';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '100';
		document.getElementById("prior5-1.3").innerText = '66';
		document.getElementById("prior5-2.1").innerText = '95';
		document.getElementById("prior5-2.2").innerText = '88';
		document.getElementById("prior5-2.3").innerText = '66';
		document.getElementById("prior5-3.1").innerText = '85';
		document.getElementById("prior5-3.2").innerText = '79';
		document.getElementById("prior5-3.3").innerText = '66';
	}
	if(schoolmax == sangmyung){
		document.getElementById("suggestion1").innerText = '상명고';
		document.getElementById("suggestionschool1").innerText = '상명고';
		document.getElementById("mainschool").innerText = '상명고는';
		document.getElementById("tableschool").innerText = '상명고';
		document.getElementById("suggestionrate").innerText = '44.9';
		document.getElementById("suggestionsubject").innerText = '철학, 심리학, 교육학, 보건, 논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '98';
		document.getElementById("prior1-1.2").innerText = '97';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '90';
		document.getElementById("prior1-2.2").innerText = '85';
		document.getElementById("prior1-2.3").innerText = '95';
		document.getElementById("prior1-3.1").innerText = '84';
		document.getElementById("prior1-3.2").innerText = '75';
		document.getElementById("prior1-3.3").innerText = '85';
		document.getElementById("prior2-1.1").innerText = '100';
		document.getElementById("prior2-1.2").innerText = '88';
		document.getElementById("prior2-1.3").innerText = '91';
		document.getElementById("prior2-2.1").innerText = '89';
		document.getElementById("prior2-2.2").innerText = '79';
		document.getElementById("prior2-2.3").innerText = '81';
		document.getElementById("prior2-3.1").innerText = '80';
		document.getElementById("prior2-3.2").innerText = '71';
		document.getElementById("prior2-3.3").innerText = '72';
		document.getElementById("prior3-1.1").innerText = '99';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '92';
		document.getElementById("prior3-2.1").innerText = '88';
		document.getElementById("prior3-2.2").innerText = '89';
		document.getElementById("prior3-2.3").innerText = '79';
		document.getElementById("prior3-3.1").innerText = '80';
		document.getElementById("prior3-3.2").innerText = '78';
		document.getElementById("prior3-3.3").innerText = '67';
		document.getElementById("prior4-1.1").innerText = '98';
		document.getElementById("prior4-1.2").innerText = '95';
		document.getElementById("prior4-1.3").innerText = '93';
		document.getElementById("prior4-2.1").innerText = '88';
		document.getElementById("prior4-2.2").innerText = '84';
		document.getElementById("prior4-2.3").innerText = '81';
		document.getElementById("prior4-3.1").innerText = '81';
		document.getElementById("prior4-3.2").innerText = '75';
		document.getElementById("prior4-3.3").innerText = '70';
		document.getElementById("prior5-1.1").innerText = '99';
		document.getElementById("prior5-1.2").innerText = '87';
		document.getElementById("prior5-1.3").innerText = '65';
		document.getElementById("prior5-2.1").innerText = '89';
		document.getElementById("prior5-2.2").innerText = '76';
		document.getElementById("prior5-2.3").innerText = '65';
		document.getElementById("prior5-3.1").innerText = '81';
		document.getElementById("prior5-3.2").innerText = '68';
		document.getElementById("prior5-3.3").innerText = '65';
	}
	if(schoolmax == youngsin){
		document.getElementById("suggestion1").innerText = '영신여고';
		document.getElementById("suggestionschool1").innerText = '영신여고';
		document.getElementById("mainschool").innerText = '영신여고는';
		document.getElementById("tableschool").innerText = '영신여고';
		document.getElementById("suggestionrate").innerText = '46.2%';
		document.getElementById("suggestionsubject").innerText = '입체조형, 인공지능기초, 종교학/논리학 중 택일(필수)';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '93';
		document.getElementById("prior1-1.2").innerText = '96';
		document.getElementById("prior1-1.3").innerText = '95';
		document.getElementById("prior1-2.1").innerText = '86';
		document.getElementById("prior1-2.2").innerText = '87';
		document.getElementById("prior1-2.3").innerText = '85';
		document.getElementById("prior1-3.1").innerText = '81';
		document.getElementById("prior1-3.2").innerText = '79';
		document.getElementById("prior1-3.3").innerText = '76';
		document.getElementById("prior2-1.1").innerText = '92';
		document.getElementById("prior2-1.2").innerText = '86';
		document.getElementById("prior2-1.3").innerText = '91';
		document.getElementById("prior2-2.1").innerText = '80';
		document.getElementById("prior2-2.2").innerText = '75';
		document.getElementById("prior2-2.3").innerText = '79';
		document.getElementById("prior2-3.1").innerText = '70';
		document.getElementById("prior2-3.2").innerText = '65';
		document.getElementById("prior2-3.3").innerText = '68';
		document.getElementById("prior3-1.1").innerText = '91';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '90';
		document.getElementById("prior3-2.1").innerText = '84';
		document.getElementById("prior3-2.2").innerText = '91';
		document.getElementById("prior3-2.3").innerText = '80';
		document.getElementById("prior3-3.1").innerText = '78';
		document.getElementById("prior3-3.2").innerText = '82';
		document.getElementById("prior3-3.3").innerText = '71';
		document.getElementById("prior4-1.1").innerText = '97';
		document.getElementById("prior4-1.2").innerText = '96';
		document.getElementById("prior4-1.3").innerText = '100';
		document.getElementById("prior4-2.1").innerText = '89';
		document.getElementById("prior4-2.2").innerText = '85';
		document.getElementById("prior4-2.3").innerText = '87';
		document.getElementById("prior4-3.1").innerText = '81';
		document.getElementById("prior4-3.2").innerText = '76';
		document.getElementById("prior4-3.3").innerText = '76';
		document.getElementById("prior5-1.1").innerText = '98';
		document.getElementById("prior5-1.2").innerText = '100';
		document.getElementById("prior5-1.3").innerText = '72';
		document.getElementById("prior5-2.1").innerText = '87';
		document.getElementById("prior5-2.2").innerText = '92';
		document.getElementById("prior5-2.3").innerText = '72';
		document.getElementById("prior5-3.1").innerText = '77';
		document.getElementById("prior5-3.2").innerText = '84';
		document.getElementById("prior5-3.3").innerText = '72';
	}
	if(schoolmax == daejingirls){
		document.getElementById("suggestion1").innerText = '대진여고';
		document.getElementById("suggestionschool1").innerText = '대진여고';
		document.getElementById("mainschool").innerText = '대진여고는';
		document.getElementById("tableschool").innerText = '대진여고';
		document.getElementById("suggestionrate").innerText = '56.2%';
		document.getElementById("suggestionsubject").innerText = '교육학,진로와직업,환경,논술(필수)';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '97';
		document.getElementById("prior1-1.2").innerText = '98';
		document.getElementById("prior1-1.3").innerText = '88';
		document.getElementById("prior1-2.1").innerText = '87';
		document.getElementById("prior1-2.2").innerText = '88';
		document.getElementById("prior1-2.3").innerText = '89';
		document.getElementById("prior1-3.1").innerText = '79';
		document.getElementById("prior1-3.2").innerText = '79';
		document.getElementById("prior1-3.3").innerText = '81';
		document.getElementById("prior2-1.1").innerText = '94';
		document.getElementById("prior2-1.2").innerText = '92';
		document.getElementById("prior2-1.3").innerText = '98';
		document.getElementById("prior2-2.1").innerText = '82';
		document.getElementById("prior2-2.2").innerText = '80';
		document.getElementById("prior2-2.3").innerText = '86';
		document.getElementById("prior2-3.1").innerText = '72';
		document.getElementById("prior2-3.2").innerText = '70';
		document.getElementById("prior2-3.3").innerText = '75';
		document.getElementById("prior3-1.1").innerText = '94';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '97';
		document.getElementById("prior3-2.1").innerText = '84';
		document.getElementById("prior3-2.2").innerText = '98';
		document.getElementById("prior3-2.3").innerText = '84';
		document.getElementById("prior3-3.1").innerText = '75';
		document.getElementById("prior3-3.2").innerText = '88';
		document.getElementById("prior3-3.3").innerText = '72';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '93';
		document.getElementById("prior4-1.3").innerText = '100';
		document.getElementById("prior4-2.1").innerText = '93';
		document.getElementById("prior4-2.2").innerText = '81';
		document.getElementById("prior4-2.3").innerText = '88';
		document.getElementById("prior4-3.1").innerText = '84';
		document.getElementById("prior4-3.2").innerText = '70';
		document.getElementById("prior4-3.3").innerText = '77';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '100';
		document.getElementById("prior5-1.3").innerText = '71';
		document.getElementById("prior5-2.1").innerText = '90';
		document.getElementById("prior5-2.2").innerText = '90';
		document.getElementById("prior5-2.3").innerText = '71';
		document.getElementById("prior5-3.1").innerText = '79';
		document.getElementById("prior5-3.2").innerText = '80';
		document.getElementById("prior5-3.3").innerText = '71';
	}
	if(schoolmax == yonghwa){
		document.getElementById("suggestion1").innerText = '용화여고';
		document.getElementById("suggestionschool1").innerText = '용화여고';
		document.getElementById("mainschool").innerText = '용화여고는';
		document.getElementById("tableschool").innerText = '용화여고';
		document.getElementById("suggestionrate").innerText = '58.0%';
		document.getElementById("suggestionsubject").innerText = '프랑스어,실용경제,철학,교육학,진로와직업,심리학,환경,논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '97';
		document.getElementById("prior1-2.2").innerText = '96';
		document.getElementById("prior1-2.3").innerText = '88';
		document.getElementById("prior1-3.1").innerText = '93';
		document.getElementById("prior1-3.2").innerText = '90';
		document.getElementById("prior1-3.3").innerText = '78';
		document.getElementById("prior2-1.1").innerText = '96';
		document.getElementById("prior2-1.2").innerText = '100';
		document.getElementById("prior2-1.3").innerText = '83';
		document.getElementById("prior2-2.1").innerText = '88';
		document.getElementById("prior2-2.2").innerText = '88';
		document.getElementById("prior2-2.3").innerText = '77';
		document.getElementById("prior2-3.1").innerText = '82';
		document.getElementById("prior2-3.2").innerText = '77';
		document.getElementById("prior2-3.3").innerText = '73';
		document.getElementById("prior3-1.1").innerText = '100';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '100';
		document.getElementById("prior3-2.1").innerText = '96';
		document.getElementById("prior3-2.2").innerText = '94';
		document.getElementById("prior3-2.3").innerText = '89';
		document.getElementById("prior3-3.1").innerText = '87';
		document.getElementById("prior3-3.2").innerText = '84';
		document.getElementById("prior3-3.3").innerText = '77';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '97';
		document.getElementById("prior4-2.1").innerText = '95';
		document.getElementById("prior4-2.2").innerText = '97';
		document.getElementById("prior4-2.3").innerText = '86';
		document.getElementById("prior4-3.1").innerText = '90';
		document.getElementById("prior4-3.2").innerText = '88';
		document.getElementById("prior4-3.3").innerText = '76';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '99';
		document.getElementById("prior5-1.3").innerText = '66';
		document.getElementById("prior5-2.1").innerText = '91';
		document.getElementById("prior5-2.2").innerText = '88';
		document.getElementById("prior5-2.3").innerText = '66';
		document.getElementById("prior5-3.1").innerText = '81';
		document.getElementById("prior5-3.2").innerText = '78';
		document.getElementById("prior5-3.3").innerText = '66';
	}
	if(schoolmax == cheongwongirls){
		document.getElementById("suggestion1").innerText = '청원여고';
		document.getElementById("suggestionschool1").innerText = '청원여고';
		document.getElementById("mainschool").innerText = '청원여고는';
		document.getElementById("tableschool").innerText = '청원여고';
		document.getElementById("suggestionrate").innerText = '44.4%';
		document.getElementById("suggestionsubject").innerText = '인공지능기초,프로그래밍,식품안전과건강,심리학,교육학,보건,논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '94';
		document.getElementById("prior1-2.2").innerText = '92';
		document.getElementById("prior1-2.3").innerText = '91';
		document.getElementById("prior1-3.1").innerText = '89';
		document.getElementById("prior1-3.2").innerText = '85';
		document.getElementById("prior1-3.3").innerText = '83';
		document.getElementById("prior2-1.1").innerText = '93';
		document.getElementById("prior2-1.2").innerText = '93';
		document.getElementById("prior2-1.3").innerText = '98';
		document.getElementById("prior2-2.1").innerText = '83';
		document.getElementById("prior2-2.2").innerText = '83';
		document.getElementById("prior2-2.3").innerText = '85';
		document.getElementById("prior2-3.1").innerText = '74';
		document.getElementById("prior2-3.2").innerText = '74';
		document.getElementById("prior2-3.3").innerText = '75';
		document.getElementById("prior3-1.1").innerText = '100';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '100';
		document.getElementById("prior3-2.1").innerText = '93';
		document.getElementById("prior3-2.2").innerText = '92';
		document.getElementById("prior3-2.3").innerText = '92';
		document.getElementById("prior3-3.1").innerText = '85';
		document.getElementById("prior3-3.2").innerText = '81';
		document.getElementById("prior3-3.3").innerText = '80';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '100';
		document.getElementById("prior4-2.1").innerText = '94';
		document.getElementById("prior4-2.2").innerText = '90';
		document.getElementById("prior4-2.3").innerText = '90';
		document.getElementById("prior4-3.1").innerText = '86';
		document.getElementById("prior4-3.2").innerText = '81';
		document.getElementById("prior4-3.3").innerText = '79';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '92';
		document.getElementById("prior5-1.3").innerText = '79';
		document.getElementById("prior5-2.1").innerText = '92';
		document.getElementById("prior5-2.2").innerText = '82';
		document.getElementById("prior5-2.3").innerText = '79';
		document.getElementById("prior5-3.1").innerText = '82';
		document.getElementById("prior5-3.2").innerText = '73';
		document.getElementById("prior5-3.3").innerText = '79';
	}
	if(schoolmax == cheongwon){
		document.getElementById("suggestion1").innerText = '청원고';
		document.getElementById("suggestionschool1").innerText = '청원고';
		document.getElementById("mainschool").innerText = '청원고는';
		document.getElementById("tableschool").innerText = '청원고';
		document.getElementById("suggestionrate").innerText = '54.8%';
		document.getElementById("suggestionsubject").innerText = '단체운동,체육전공실기기초,육상운동,체조운동,체육전공실기심화, 연극의이해(필수), 인공지능기초,인공지능과피지컬컴퓨팅,프로그래밍,정보과제연구,인공지능과미래사회,독일어,심리학,진로와직업,논술,보건,환경,교육학';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '93';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '87';
		document.getElementById("prior1-2.2").innerText = '95';
		document.getElementById("prior1-2.3").innerText = '93';
		document.getElementById("prior1-3.1").innerText = '82';
		document.getElementById("prior1-3.2").innerText = '87';
		document.getElementById("prior1-3.3").innerText = '84';
		document.getElementById("prior2-1.1").innerText = '89';
		document.getElementById("prior2-1.2").innerText = '91';
		document.getElementById("prior2-1.3").innerText = '82';
		document.getElementById("prior2-2.1").innerText = '83';
		document.getElementById("prior2-2.2").innerText = '83';
		document.getElementById("prior2-2.3").innerText = '78';
		document.getElementById("prior2-3.1").innerText = '79';
		document.getElementById("prior2-3.2").innerText = '75';
		document.getElementById("prior2-3.3").innerText = '74';
		document.getElementById("prior3-1.1").innerText = '95';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '87';
		document.getElementById("prior3-2.1").innerText = '88';
		document.getElementById("prior3-2.2").innerText = '94';
		document.getElementById("prior3-2.3").innerText = '75';
		document.getElementById("prior3-3.1").innerText = '81';
		document.getElementById("prior3-3.2").innerText = '86';
		document.getElementById("prior3-3.3").innerText = '64';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '95';
		document.getElementById("prior4-1.3").innerText = '95';
		document.getElementById("prior4-2.1").innerText = '92';
		document.getElementById("prior4-2.2").innerText = '87';
		document.getElementById("prior4-2.3").innerText = '84';
		document.getElementById("prior4-3.1").innerText = '86';
		document.getElementById("prior4-3.2").innerText = '80';
		document.getElementById("prior4-3.3").innerText = '74';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '96';
		document.getElementById("prior5-1.3").innerText = '74';
		document.getElementById("prior5-2.1").innerText = '95';
		document.getElementById("prior5-2.2").innerText = '87';
		document.getElementById("prior5-2.3").innerText = '74';
		document.getElementById("prior5-3.1").innerText = '87';
		document.getElementById("prior5-3.2").innerText = '79';
		document.getElementById("prior5-3.3").innerText = '74';
	}
	if(schoolmax == daejin){
		document.getElementById("suggestion1").innerText = '대진고';
		document.getElementById("suggestionschool1").innerText = '대진고';
		document.getElementById("mainschool").innerText = '대진고는';
		document.getElementById("tableschool").innerText = '대진고';
		document.getElementById("suggestionrate").innerText = '68.0%';
		document.getElementById("suggestionsubject").innerText = '스포츠생활(필수),체육과진로탐구, 음악연주,미술창작, 프로그래밍(필수), 진로와직업,심리학,논술(필수)';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '92';
		document.getElementById("prior1-2.2").innerText = '91';
		document.getElementById("prior1-2.3").innerText = '90';
		document.getElementById("prior1-3.1").innerText = '85';
		document.getElementById("prior1-3.2").innerText = '83';
		document.getElementById("prior1-3.3").innerText = '81';
		document.getElementById("prior2-1.1").innerText = '91';
		document.getElementById("prior2-1.2").innerText = '90';
		document.getElementById("prior2-1.3").innerText = '87';
		document.getElementById("prior2-2.1").innerText = '82';
		document.getElementById("prior2-2.2").innerText = '80';
		document.getElementById("prior2-2.3").innerText = '77';
		document.getElementById("prior2-3.1").innerText = '73';
		document.getElementById("prior2-3.2").innerText = '72';
		document.getElementById("prior2-3.3").innerText = '68';
		document.getElementById("prior3-1.1").innerText = '100';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '97';
		document.getElementById("prior3-2.1").innerText = '96';
		document.getElementById("prior3-2.2").innerText = '88';
		document.getElementById("prior3-2.3").innerText = '86';
		document.getElementById("prior3-3.1").innerText = '86';
		document.getElementById("prior3-3.2").innerText = '78';
		document.getElementById("prior3-3.3").innerText = '76';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '92';
		document.getElementById("prior4-2.1").innerText = '90';
		document.getElementById("prior4-2.2").innerText = '88';
		document.getElementById("prior4-2.3").innerText = '80';
		document.getElementById("prior4-3.1").innerText = '82';
		document.getElementById("prior4-3.2").innerText = '77';
		document.getElementById("prior4-3.3").innerText = '70';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '94';
		document.getElementById("prior5-1.3").innerText = '72';
		document.getElementById("prior5-2.1").innerText = '92';
		document.getElementById("prior5-2.2").innerText = '84';
		document.getElementById("prior5-2.3").innerText = '72';
		document.getElementById("prior5-3.1").innerText = '82';
		document.getElementById("prior5-3.2").innerText = '75';
		document.getElementById("prior5-3.3").innerText = '72';
	}
	if(schoolmax == jaehyun){
		document.getElementById("suggestion1").innerText = '재현고';
		document.getElementById("suggestionschool1").innerText = '재현고';
		document.getElementById("mainschool").innerText = '재현고는';
		document.getElementById("tableschool").innerText = '재현고';
		document.getElementById("suggestionrate").innerText = '51.3%';
		document.getElementById("suggestionsubject").innerText = '체육탐구, 공학일반,창의경영, 종교학/철학 중 택일,논술(필수),실용경제,환경';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '96';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '90';
		document.getElementById("prior1-2.2").innerText = '94';
		document.getElementById("prior1-2.3").innerText = '94';
		document.getElementById("prior1-3.1").innerText = '84';
		document.getElementById("prior1-3.2").innerText = '86';
		document.getElementById("prior1-3.3").innerText = '83';
		document.getElementById("prior2-1.1").innerText = '91';
		document.getElementById("prior2-1.2").innerText = '92';
		document.getElementById("prior2-1.3").innerText = '96';
		document.getElementById("prior2-2.1").innerText = '84';
		document.getElementById("prior2-2.2").innerText = '84';
		document.getElementById("prior2-2.3").innerText = '85';
		document.getElementById("prior2-3.1").innerText = '77';
		document.getElementById("prior2-3.2").innerText = '77';
		document.getElementById("prior2-3.3").innerText = '76';
		document.getElementById("prior3-1.1").innerText = '97';
		document.getElementById("prior3-1.2").innerText = '95';
		document.getElementById("prior3-1.3").innerText = '97';
		document.getElementById("prior3-2.1").innerText = '89';
		document.getElementById("prior3-2.2").innerText = '85';
		document.getElementById("prior3-2.3").innerText = '83';
		document.getElementById("prior3-3.1").innerText = '82';
		document.getElementById("prior3-3.2").innerText = '77';
		document.getElementById("prior3-3.3").innerText = '72';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '99';
		document.getElementById("prior4-1.3").innerText = '100';
		document.getElementById("prior4-2.1").innerText = '92';
		document.getElementById("prior4-2.2").innerText = '89';
		document.getElementById("prior4-2.3").innerText = '89';
		document.getElementById("prior4-3.1").innerText = '86';
		document.getElementById("prior4-3.2").innerText = '81';
		document.getElementById("prior4-3.3").innerText = '79';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '100';
		document.getElementById("prior5-1.3").innerText = '67';
		document.getElementById("prior5-2.1").innerText = '97';
		document.getElementById("prior5-2.2").innerText = '92';
		document.getElementById("prior5-2.3").innerText = '67';
		document.getElementById("prior5-3.1").innerText = '89';
		document.getElementById("prior5-3.2").innerText = '83';
		document.getElementById("prior5-3.3").innerText = '67';
	}
	if(schoolmax == sorabol){
		document.getElementById("suggestion1").innerText = '서라벌고';
		document.getElementById("suggestionschool1").innerText = '서라벌고';
		document.getElementById("mainschool").innerText = '서라벌고는';
		document.getElementById("tableschool").innerText = '서라벌고';
		document.getElementById("suggestionrate").innerText = '55.0%';
		document.getElementById("suggestionsubject").innerText = '운동과건강, 사물인터넷,데이터과학과머신러닝,인공지능기초, 진로와직업(필수),환경,실용경제';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '97';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '96';
		document.getElementById("prior1-2.1").innerText = '88';
		document.getElementById("prior1-2.2").innerText = '94';
		document.getElementById("prior1-2.3").innerText = '86';
		document.getElementById("prior1-3.1").innerText = '81';
		document.getElementById("prior1-3.2").innerText = '86';
		document.getElementById("prior1-3.3").innerText = '74';
		document.getElementById("prior2-1.1").innerText = '85';
		document.getElementById("prior2-1.2").innerText = '88';
		document.getElementById("prior2-1.3").innerText = '94';
		document.getElementById("prior2-2.1").innerText = '76';
		document.getElementById("prior2-2.2").innerText = '77';
		document.getElementById("prior2-2.3").innerText = '81';
		document.getElementById("prior2-3.1").innerText = '68';
		document.getElementById("prior2-3.2").innerText = '68';
		document.getElementById("prior2-3.3").innerText = '71';
		document.getElementById("prior3-1.1").innerText = '94';
		document.getElementById("prior3-1.2").innerText = '98';
		document.getElementById("prior3-1.3").innerText = '78';
		document.getElementById("prior3-2.1").innerText = '82';
		document.getElementById("prior3-2.2").innerText = '88';
		document.getElementById("prior3-2.3").innerText = '68';
		document.getElementById("prior3-3.1").innerText = '71';
		document.getElementById("prior3-3.2").innerText = '80';
		document.getElementById("prior3-3.3").innerText = '59';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '94';
		document.getElementById("prior4-1.3").innerText = '91';
		document.getElementById("prior4-2.1").innerText = '89';
		document.getElementById("prior4-2.2").innerText = '80';
		document.getElementById("prior4-2.3").innerText = '77';
		document.getElementById("prior4-3.1").innerText = '80';
		document.getElementById("prior4-3.2").innerText = '68';
		document.getElementById("prior4-3.3").innerText = '65';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '91';
		document.getElementById("prior5-1.3").innerText = '64';
		document.getElementById("prior5-2.1").innerText = '89';
		document.getElementById("prior5-2.2").innerText = '82';
		document.getElementById("prior5-2.3").innerText = '64';
		document.getElementById("prior5-3.1").innerText = '79';
		document.getElementById("prior5-3.2").innerText = '74';
		document.getElementById("prior5-3.3").innerText = '64';
	}
	if(arrschool[1] == sorabol){
		document.getElementById("suggestion2").innerText = '서라벌고';
		document.getElementById("suggestionschool2").innerText = '서라벌고';
	}
	if(arrschool[1] == jaehyun){
		document.getElementById("suggestion2").innerText = '재현고';
		document.getElementById("suggestionschool2").innerText = '재현고';
	}
	if(arrschool[1] == daejin){
		document.getElementById("suggestion2").innerText = '대진고';
		document.getElementById("suggestionschool2").innerText = '대진고';
	}
	if(arrschool[1] == cheongwon){
		document.getElementById("suggestion2").innerText = '청원고';
		document.getElementById("suggestionschool2").innerText = '청원고';
	}
	if(arrschool[1] == cheongwongirls){
		document.getElementById("suggestion2").innerText = '청원여고';
		document.getElementById("suggestionschool2").innerText = '청원여고';
	}
	if(arrschool[1] == yonghwa){
		document.getElementById("suggestion2").innerText = '용화여고';
		document.getElementById("suggestionschool2").innerText = '용화여고';
	}
	if(arrschool[1] == daejingirls){
		document.getElementById("suggestion2").innerText = '대진여고';
		document.getElementById("suggestionschool2").innerText = '대진여고';
	}
	if(arrschool[1] == youngsin){
		document.getElementById("suggestion2").innerText = '영신여고';
		document.getElementById("suggestionschool2").innerText = '영신여고';
	}
	if(arrschool[1] == sangmyung){
		document.getElementById("suggestion2").innerText = '상명고';
		document.getElementById("suggestionschool2").innerText = '상명고';
	}
	if(arrschool[1] == buram){
		document.getElementById("suggestion2").innerText = '불암고';
		document.getElementById("suggestionschool2").innerText = '불암고';
	}
	if(arrschool[2] == buram){
		document.getElementById("suggestionschool3").innerText = '불암고';
	}
	if(arrschool[2] == sangmyung){
		document.getElementById("suggestionschool3").innerText = '상명고';
	}
	if(arrschool[2] == youngsin){
		document.getElementById("suggestionschool3").innerText = '영신여고';
	}
	if(arrschool[2] == daejingirls){
		document.getElementById("suggestionschool3").innerText = '대진여고';
	}
	if(arrschool[2] == yonghwa){
		document.getElementById("suggestionschool3").innerText = '용화여고';
	}
	if(arrschool[2] == cheongwongirls){
		document.getElementById("suggestionschool3").innerText = '청원여고';
	}
	if(arrschool[2] == cheongwon){
		document.getElementById("suggestionschool3").innerText = '청원고';
	}
	if(arrschool[2] == daejin){
		document.getElementById("suggestionschool3").innerText = '대진고';
	}
	if(arrschool[2] == jaehyun){
		document.getElementById("suggestionschool3").innerText = '재현고';
	}
	if(arrschool[2] == sorabol){
		document.getElementById("suggestionschool3").innerText = '서라벌고';
	}
	if(youngsin == 0.0){
		// Removes the alpha channel from background colors
		function handleLeave(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = color.length === 9 ? color.slice(0, -2) : color;
		  	});
		  	legend.chart.update();
		}
		// Append '4d' to the colors (alpha channel), except for the hovered index
		function handleHover(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = index === item.index || color.length === 9 ? color : color + '4D';
		  	});
		  	legend.chart.update();
		}
		const piedata = {
			labels: ['불암고', '상명고', '청원고', '대진고', '재현고', '서라벌고'],
		  	datasets: [{
		    	label: '# of Votes',
		    	data: [buram, sangmyung, cheongwon, daejin, jaehyun, sorabol],
		    	borderWidth: 1,
		    	backgroundColor: ['#CB4335', '#1F618D', '#F1C40F', '#27AE60', '#884EA0', '#D35400'],
	  		}]
		};
		const piechart = new Chart(document.getElementById('mypieChart'),{
		  	type: 'pie',
		  	data: piedata,
		  	plugins: [ChartDataLabels],
		  	options: {
		  		responsive: false,
				plugins: {
					legend: {
						onHover: handleHover,
				        onLeave: handleLeave,
		                labels: {
		                    // This more specific font property overrides the global property
		                    font: {
		                        size: 40
		                    }
		                }
		            },
	            	datalabels:{
	            		color:'black',
						font:{size:50},
	            	}
	        	}
		  	}
		});
	}
	if(daejin == 0.0){
		// Removes the alpha channel from background colors
		function handleLeave(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = color.length === 9 ? color.slice(0, -2) : color;
		  	});
		  	legend.chart.update();
		}
		// Append '4d' to the colors (alpha channel), except for the hovered index
		function handleHover(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = index === item.index || color.length === 9 ? color : color + '4D';
		  	});
		  	legend.chart.update();
		}
		const piedata = {
			labels: ['불암고', '상명고', '영신여고', '대진여고', '용화여고', '청원여고'],
		  	datasets: [{
		    	label: '# of Votes',
		    	data: [buram, sangmyung, youngsin, daejingirls, yonghwa, cheongwongirls],
		    	borderWidth: 1,
		    	backgroundColor: ['#CB4335', '#1F618D', '#F1C40F', '#27AE60', '#884EA0', '#D35400'],
	  		}]
		};
		const piechart = new Chart(document.getElementById('mypieChart'),{
		  	type: 'pie',
		  	data: piedata,
		  	plugins: [ChartDataLabels],
		  	options: {
		  		responsive: false,
				plugins: {
					legend: {
						onHover: handleHover,
				        onLeave: handleLeave,
		                labels: {
		                    // This more specific font property overrides the global property
		                    font: {
		                        size: 40
		                    }
		                }
		            },
	            	datalabels:{
	            		color:'black',
						font:{size:50},
	            	}
	        	}
		  	}
		});
	}
	var averageprior = (parseFloat(prior1) + parseFloat(prior2) + parseFloat(prior3) + parseFloat(prior4) + parseFloat(prior5))/5;
	var minprior = Math.min(prior1, prior2, prior3, prior4, prior5);
	if(averageprior >= 80){
		if(minprior < 50){
			document.getElementById("explanationword2").innerHTML = '<p>위 영역중 50% 이하 영역의 경우, 이번 겨울방학을 통해 공부량을 늘리는 것이 필요하며 당장 1학년 1학기에 진행되는 내신범위만이라도 집중적으로 학습하여야  1등급 확보가 가능합니다. 1학기가 완성되면 2학기  과정으로 진행하는 것이 바람직합니다.</p>';
		}
		document.getElementById("explanationword2").innerHTML = '<p>현재에도 우수한 상태이지만 고등학교 내신은 상위 4%로만 1등급을 확보할 수 있기에 완벽에 가까운 학습이 진행되어야 합니다. 고3과정까지 선행을 많이 하였겠지만 일단, 1학년과정부터 완벽히 다져서 만점에 가까운 점수를 확보할 수 있도록 해주세요. 과목마다 차이가 있지만 100점을 받아야만 1등급을 받을 수 있는 경우도 있으니까요.  완벽한 학습을 위해서는 오답노트와 암기요약노트는 필수입니다. 고3까지 간직할 수 있도록 사전에 준비해주시고 세부특기사항과 종합평가란에 들어가는 학교프로그램도 철저히 대비해주세요</p>';
	}
	if(averageprior >= 50 && averageprior < 80){
		if(minprior < 50){
			document.getElementById("explanationword2").innerHTML = '<p>위 영역중 50% 이하 영역의 경우, 이번 겨울방학을 통해 공부량을 늘리는 것이 필요하며 당장 1학년 1학기에 진행되는 내신범위만이라도 집중적으로 학습하여야  1등급 확보가 가능합니다. 1학기가 완성되면 2학기  과정으로 진행하는 것이 바람직합니다.</p>';
		}
		document.getElementById("explanationword2").innerHTML = '<p>선행도는 전반적으로 잘 갖추어져 있지만 완벽한 상태는 아니므로 이번 방학을 통해 부족한 영역은 100%에 가깝도록 훈련해야 합니다. 시간은 흐르면 다시 돌아오지 않습니다. 예비고1 겨울방학은 최상위권으로 진입할 수 있는 좋은 기회입니다. </p>';
	}
	if(averageprior < 50){
		document.getElementById("explanationword2").innerHTML = '<p>위 영역중 50% 이하 영역의 경우, 이번 겨울방학을 통해 공부량을 늘리는 것이 필요하며 당장 1학년 1학기에 진행되는 내신범위만이라도 집중적으로 학습하여야  1등급 확보가 가능합니다. 1학기가 완성되면 2학기  과정으로 진행하는 것이 바람직합니다.</p>';
	}
	const data1 = {
	  	labels: ['자기주도성','창의성','공부그릿','환경민감도','활동성','가정학습환경도'],
	  	datasets: [{
	  		axis: 'y',
	    	label: '학습성향',
	    	data: [tendency1, tendency2, tendency3, tendency4, tendency5, tendency6],
	    	backgroundColor: [
	      		'rgba(54, 162, 235, 0.9)'
	    	],
	    	borderColor: [
	      		'rgb(54, 162, 235)'
	    	],
	    	borderWidth: 1
	  	}]
	};
	const barchart1 = new Chart(document.getElementById('mybarChart1'),{
	  	type: 'bar',
	  	data: data1,
	  	options: {
	  		maxBarThickness: 60,
	  		responsive: false,
	  		indexAxis: 'y',
	  		plugins: {
            	legend: {
            		display: false
            	}
        	},
	        scales:{
	        	x:{
	        		ticks:{
	        			font:{
	        				size:48
	        			}
	        		},
        			max:100
	        	},
	        	y:{
	        		ticks:{
	        			font:{
	        				size:48
	        			}
	        		}
	        	}
	        }
	  	},
	});
	const data2 = {
	  	labels: ['국어','수학','영어','사탐','과탐'],
	  	datasets: [{
	  		axis: 'y',
	    	label: '학습선행도',
	    	data: [prior1, prior2, prior3, prior4, prior5],
	    	backgroundColor: [
	      		'rgba(54, 162, 235, 0.9)'
	    	],
	    	borderColor: [
	      		'rgb(54, 162, 235)'
	    	],
	    	borderWidth: 1
	  	}]
	};
	const barchart2 = new Chart(document.getElementById('mybarChart2'),{
	  	type: 'bar',
	  	data: data2,
	  	options: {
	  		maxBarThickness: 60,
	  		responsive: false,
	  		indexAxis: 'y',
	  		plugins: {
            	legend: {
            		display: false
            	}
        	},
	        scales:{
	        	x:{
	        		ticks:{
	        			font:{
	        				size:48
	        			}
	        		},
        			max:100
	        	},
	        	y:{
	        		ticks:{
	        			font:{
	        				size:48
	        			}
	        		}
	        	}
	        }
	  	},
	});
	</script>
</body>
</html>