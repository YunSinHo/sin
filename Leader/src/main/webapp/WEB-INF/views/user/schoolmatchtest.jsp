<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고교선택 매칭테스트</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<style>
* {
	margin: 0;
    padding: 0;
    font-family: sans-serif;
    box-sizing: border-box;
}
body{
    font-size:0.8333vw;
}
.bodydiv{
	margin:auto;
	width:65%;
}
div{
	margin-top:0.5208vw;
	margin-bottom:0.5208vw;
}
p{
	font-size:1.05vw;
	margin-bottom:0.5208vw;
}
.secondp{
	font-size:0.8333vw;
	color:#848484 !important;
}
table{
	font-size:1.05vw;
}
tr td:first-child{
	padding-left:0.7813vw;
	font-size:1.0417vw;
	width:22.9167vw;
}
tr td:last-child{
	display: flex;
    justify-content: space-around;
    width:37.7604vw;
}
.headertdspan{
	width:7.5521vw;
	text-align:center;
}
tr td{
	height:1.875vw;
	border: 1px solid black;
}
</style>
<body>
	<div class="bodydiv">
		<div class="agree">
			<p>▶ 위 내용은 정확한 결과물 제공을 위해 김지민영어 소속 본사인 (주) 헤듀컴퍼니와 리더스가 관련 정보를 활용함에 동의합니다.</p>
			<input type="radio" name="agreeradio" value="동의"> 동의
		</div>
		<br>
		<p>1. 학생 정보 입력</p>
		<div class="name">
			이름 : <input type="text" id="schoolmatch_name">
		</div>
		<div class="school">
			학교 : <input type="text" id="schoolmatch_school">
		</div>
		<div class="grade">
			학년 : <input type="text" id="schoolmatch_grade">
		</div>
		<div class="phone">
			번호 : <input type="text" id="schoolmatch_phone1"> - 
			<input type="text" id="schoolmatch_phone2"> - 
			<input type="text" id="schoolmatch_phone3">
		</div>
		<div class="parentphone">
			부모님 번호 : <input type="text" id="schoolmatch_parentphone1"> - 
			<input type="text" id="schoolmatch_parentphone2"> - 
			<input type="text" id="schoolmatch_parentphone3">
		</div>
		<br>
		<div class="interestgirl">
			<p>2-1. (여학생만 체크) 관심있는 학교 체크</p>
			<p class="secondp">(복수체크가능)</p>
			<input type="checkbox" class="girlcheck" name="girlcheck" value="외고"> 외고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="영재과고"> 영재과고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="자사고"> 자사고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="불암고"> 불암고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="상명고"> 상명고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="대진여고"> 대진여고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="청원여고"> 청원여고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="영신여고"> 영신여고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="용화여고"> 용화여고 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="없음"> 없음
		</div>
		<br>
		<div class="interestboy">
			<p>2-2. (남학생만 체크) 관심있는 학교 체크</p>
			<p class="secondp">(복수체크가능)</p>
			<input type="checkbox" class="boycheck" name="boycheck" value="외고"> 외고 
			<input type="checkbox" class="boycheck" name="boycheck" value="영재과고"> 영재과고 
			<input type="checkbox" class="boycheck" name="boycheck" value="자사고"> 자사고 
			<input type="checkbox" class="boycheck" name="boycheck" value="불암고"> 불암고 
			<input type="checkbox" class="boycheck" name="boycheck" value="상명고"> 상명고 
			<input type="checkbox" class="boycheck" name="boycheck" value="대진고"> 대진고 
			<input type="checkbox" class="boycheck" name="boycheck" value="서라벌고"> 서라벌고 
			<input type="checkbox" class="boycheck" name="boycheck" value="재현고"> 재현고 
			<input type="checkbox" class="boycheck" name="boycheck" value="청원고"> 청원고 
			<input type="checkbox" class="boycheck" name="boycheck" value="없음"> 없음
		</div>
		<br>
		<div class="mominfor">
			<p>3. 어머님의 직장 맘 여부</p>
			<input type="radio" name="momradio" value="yes"> 예 <input type="radio" name="momradio" value="no"> 아니오
		</div>
		<br>
		<div class="consultingtime">
			<p>4. 상담 가능한 시간대 체크</p>
			<p class="secondp">(복수체크가능)</p>
			<input type="checkbox" class="consultingcheck" name="consultingcheck" value="평일낮시간대"> 평일 낮 시간대 
			<input type="checkbox" class="consultingcheck" name="consultingcheck" value="평일오후시간대"> 평일 오후 시간대 
			<input type="checkbox" class="consultingcheck" name="consultingcheck" value="주말낮시간대"> 주말 낮 시간대 
			<input type="checkbox" class="consultingcheck" name="consultingcheck" value="주말오후시간대"> 주말 오후 시간대 
		</div>
		<br>
		<div class="test1">
			<p>5. 고등교육과정 선택과목 선호도 조사</p>
			<p class="secondp">아래 관심이 많은 쪽에 체크해주세요</p>
			<table>
				<thead>
					<tr>
						<td></td>
						<td>
							<span class="headertdspan">전혀없음</span>
							<span class="headertdspan">관심약간있음</span>
							<span class="headertdspan">관심많음</span>
							<span class="headertdspan">관심매우많음</span>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
					    <td>음악</td>
					    <td>
					    	<input type="radio" name="test1-1" value="0">
					    	<input type="radio" name="test1-1" value="0.1">
					    	<input type="radio" name="test1-1" value="0.5">
					    	<input type="radio" name="test1-1" value="1">
					    </td>
					</tr>
					<tr>
					    <td>체육활동</td>
					    <td>
					    	<input type="radio" name="test1-2" value="0">
					    	<input type="radio" name="test1-2" value="0.1">
					    	<input type="radio" name="test1-2" value="0.5">
					    	<input type="radio" name="test1-2" value="1">
					    </td>
					</tr>
					<tr>
					    <td>미술창작</td>
					    <td>
					    	<input type="radio" name="test1-3" value="0">
					    	<input type="radio" name="test1-3" value="0.1">
					    	<input type="radio" name="test1-3" value="0.5">
					    	<input type="radio" name="test1-3" value="1">
					    </td>
					</tr>
					<tr>
					    <td>IT 코딩</td>
					    <td>
					    	<input type="radio" name="test1-4" value="0">
					    	<input type="radio" name="test1-4" value="0.1">
					    	<input type="radio" name="test1-4" value="0.5">
					    	<input type="radio" name="test1-4" value="1">
					    </td>
					</tr>
					<tr>
					    <td>AI 인공지능</td>
					    <td>
					    	<input type="radio" name="test1-5" value="0">
					    	<input type="radio" name="test1-5" value="0.1">
					    	<input type="radio" name="test1-5" value="0.5">
					    	<input type="radio" name="test1-5" value="1">
					    </td>
					</tr>
					<tr>
					    <td>기계공학</td>
					    <td>
					    	<input type="radio" name="test1-6" value="0">
					    	<input type="radio" name="test1-6" value="0.1">
					    	<input type="radio" name="test1-6" value="0.5">
					    	<input type="radio" name="test1-6" value="1">
					    </td>
					</tr>
					<tr>
					    <td>경영분야</td>
					    <td>
					    	<input type="radio" name="test1-7" value="0">
					    	<input type="radio" name="test1-7" value="0.1">
					    	<input type="radio" name="test1-7" value="0.5">
					    	<input type="radio" name="test1-7" value="1">
					    </td>
					</tr>
					<tr>
					    <td>일본어</td>
					    <td>
					    	<input type="radio" name="test1-8" value="0">
					    	<input type="radio" name="test1-8" value="0.1">
					    	<input type="radio" name="test1-8" value="0.5">
					    	<input type="radio" name="test1-8" value="1">
					    </td>
					</tr>
					<tr>
					    <td>중국어</td>
					    <td>
						    <input type="radio" name="test1-9" value="0">
						    <input type="radio" name="test1-9" value="0.1">
						    <input type="radio" name="test1-9" value="0.5">
						    <input type="radio" name="test1-9" value="1">
					    </td>
					</tr>
					<tr>
					    <td>교육학</td>
					    <td>
						    <input type="radio" name="test1-10" value="0">
						    <input type="radio" name="test1-10" value="0.1">
						    <input type="radio" name="test1-10" value="0.5">
						    <input type="radio" name="test1-10" value="1">
					    </td>
					</tr>
					<tr>
					    <td>심리학, 철학</td>
					    <td>
						    <input type="radio" name="test1-11" value="0">
						    <input type="radio" name="test1-11" value="0.1">
						    <input type="radio" name="test1-11" value="0.5">
						    <input type="radio" name="test1-11" value="1">
					    </td>
					</tr>
					<tr>
					    <td>논술</td>
					    <td>
						    <input type="radio" name="test1-12" value="0">
						    <input type="radio" name="test1-12" value="0.1">
						    <input type="radio" name="test1-12" value="0.5">
						    <input type="radio" name="test1-12" value="1">
					    </td>
					</tr>
					<tr>
					    <td>실용경제</td>
					    <td>
						    <input type="radio" name="test1-13" value="0">
						    <input type="radio" name="test1-13" value="0.1">
						    <input type="radio" name="test1-13" value="0.5">
						    <input type="radio" name="test1-13" value="1">
					    </td>
					</tr>
					<tr>
					    <td>환경</td>
					    <td>
						    <input type="radio" name="test1-14" value="0">
						    <input type="radio" name="test1-14" value="0.1">
						    <input type="radio" name="test1-14" value="0.5">
						    <input type="radio" name="test1-14" value="1">
					    </td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="test2">
			<p>6. 나의 학업상황에 대해 정확히 체크해주세요</p>
			<p class="secondp">평소 느끼던 바를 빠르게 체크해주세요</p>
			<table>
				<thead>
					<tr>
						<td></td>
						<td>
							<span class="headertdspan">매우아니다</span>
							<span class="headertdspan">아니다</span>
							<span class="headertdspan">보통이다</span>
							<span class="headertdspan">그렇다</span>
							<span class="headertdspan">매우그렇다</span>
						</td>
					</tr>
				</thead>
				<tbody>
				    <tr>
				        <td>고3수능영어 2등급이상</td>
				        <td>
				            <input type="radio" name="test2-1" value="2">
				            <input type="radio" name="test2-1" value="4">
				            <input type="radio" name="test2-1" value="6">
				            <input type="radio" name="test2-1" value="8">
				            <input type="radio" name="test2-1" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>고등수능영단어 2권이상 마스터</td>
				        <td>
				            <input type="radio" name="test2-2" value="2">
				            <input type="radio" name="test2-2" value="4">
				            <input type="radio" name="test2-2" value="6">
				            <input type="radio" name="test2-2" value="8">
				            <input type="radio" name="test2-2" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>고1과정의 수학 모두 선행</td>
				        <td>
				            <input type="radio" name="test2-3" value="2">
				            <input type="radio" name="test2-3" value="4">
				            <input type="radio" name="test2-3" value="6">
				            <input type="radio" name="test2-3" value="8">
				            <input type="radio" name="test2-3" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>고3수능수리영역 2등급이상</td>
				        <td>
				            <input type="radio" name="test2-4" value="2">
				            <input type="radio" name="test2-4" value="4">
				            <input type="radio" name="test2-4" value="6">
				            <input type="radio" name="test2-4" value="8">
				            <input type="radio" name="test2-4" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>수능언어영역 1회독</td>
				        <td>
				            <input type="radio" name="test2-5" value="2">
				            <input type="radio" name="test2-5" value="4">
				            <input type="radio" name="test2-5" value="6">
				            <input type="radio" name="test2-5" value="8">
				            <input type="radio" name="test2-5" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>고1 국어 비문학파트 2회독</td>
				        <td>
				            <input type="radio" name="test2-6" value="2">
				            <input type="radio" name="test2-6" value="4">
				            <input type="radio" name="test2-6" value="6">
				            <input type="radio" name="test2-6" value="8">
				            <input type="radio" name="test2-6" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>고1 국어 문학파트 2회독</td>
				        <td>
				            <input type="radio" name="test2-7" value="2">
				            <input type="radio" name="test2-7" value="4">
				            <input type="radio" name="test2-7" value="6">
				            <input type="radio" name="test2-7" value="8">
				            <input type="radio" name="test2-7" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>사탐 1회독</td>
				        <td>
				            <input type="radio" name="test2-8" value="2">
				            <input type="radio" name="test2-8" value="4">
				            <input type="radio" name="test2-8" value="6">
				            <input type="radio" name="test2-8" value="8">
				            <input type="radio" name="test2-8" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>과탐 1회독</td>
				        <td>
				            <input type="radio" name="test2-9" value="2">
				            <input type="radio" name="test2-9" value="4">
				            <input type="radio" name="test2-9" value="6">
				            <input type="radio" name="test2-9" value="8">
				            <input type="radio" name="test2-9" value="10">
				        </td>
				    </tr>
				    <tr>
				        <td>음악전공자</td>
				        <td>
				            <input type="radio" name="test2-10" value="40">
				            <input type="radio" name="test2-10" value="60">
				            <input type="radio" name="test2-10" value="70">
				            <input type="radio" name="test2-10" value="80">
				            <input type="radio" name="test2-10" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>체육전공자</td>
				        <td>
				            <input type="radio" name="test2-11" value="40">
				            <input type="radio" name="test2-11" value="60">
				            <input type="radio" name="test2-11" value="70">
				            <input type="radio" name="test2-11" value="80">
				            <input type="radio" name="test2-11" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>미술전공자</td>
				        <td>
				            <input type="radio" name="test2-12" value="40">
				            <input type="radio" name="test2-12" value="60">
				            <input type="radio" name="test2-12" value="70">
				            <input type="radio" name="test2-12" value="80">
				            <input type="radio" name="test2-12" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>초등고학년부터 선행시작</td>
				        <td>
				            <input type="radio" name="test2-13" value="40">
				            <input type="radio" name="test2-13" value="60">
				            <input type="radio" name="test2-13" value="70">
				            <input type="radio" name="test2-13" value="80">
				            <input type="radio" name="test2-13" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>국영수등 주요과목 학원, 과외 진행중</td>
				        <td>
				            <input type="radio" name="test2-14" value="40">
				            <input type="radio" name="test2-14" value="60">
				            <input type="radio" name="test2-14" value="70">
				            <input type="radio" name="test2-14" value="80">
				            <input type="radio" name="test2-14" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>3개월이상 독학한 적 있음</td>
				        <td>
				            <input type="radio" name="test2-15" value="40">
				            <input type="radio" name="test2-15" value="60">
				            <input type="radio" name="test2-15" value="70">
				            <input type="radio" name="test2-15" value="80">
				            <input type="radio" name="test2-15" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>주요과목 고1과정 2회독</td>
				        <td>
				            <input type="radio" name="test2-16" value="1">
				            <input type="radio" name="test2-16" value="2">
				            <input type="radio" name="test2-16" value="3">
				            <input type="radio" name="test2-16" value="4">
				            <input type="radio" name="test2-16" value="5">
				        </td>
				    </tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="test3">
			<p>7. 나의 성향에 대한 부분을 솔직하게 답해주세요</p>
			<p class="secondp">평소 느끼던 바를 빠르게 체크해주세요</p>
			<table>
				<thead>
					<tr>
						<td></td>
						<td>
							<span class="headertdspan">매우아니다</span>
							<span class="headertdspan">아니다</span>
							<span class="headertdspan">보통이다</span>
							<span class="headertdspan">그렇다</span>
							<span class="headertdspan">매우그렇다</span>
						</td>
					</tr>
				</thead>
				<tbody>
				    <tr>
				        <td>어른들에게 공손함</td>
				        <td>
				            <input type="radio" name="test3-1" value="40">
				            <input type="radio" name="test3-1" value="60">
				            <input type="radio" name="test3-1" value="70">
				            <input type="radio" name="test3-1" value="80">
				            <input type="radio" name="test3-1" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>매사에 주도적이다</td>
				        <td>
				            <input type="radio" name="test3-2" value="40">
				            <input type="radio" name="test3-2" value="60">
				            <input type="radio" name="test3-2" value="70">
				            <input type="radio" name="test3-2" value="80">
				            <input type="radio" name="test3-2" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>SNS를 잘 활용함</td>
				        <td>
				            <input type="radio" name="test3-3" value="40">
				            <input type="radio" name="test3-3" value="60">
				            <input type="radio" name="test3-3" value="70">
				            <input type="radio" name="test3-3" value="80">
				            <input type="radio" name="test3-3" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>창의성이 뛰어나다</td>
				        <td>
				            <input type="radio" name="test3-4" value="40">
				            <input type="radio" name="test3-4" value="60">
				            <input type="radio" name="test3-4" value="70">
				            <input type="radio" name="test3-4" value="80">
				            <input type="radio" name="test3-4" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>남에게 싫은소리 들으면 잠을 못잠</td>
				        <td>
				            <input type="radio" name="test3-5" value="40">
				            <input type="radio" name="test3-5" value="60">
				            <input type="radio" name="test3-5" value="70">
				            <input type="radio" name="test3-5" value="80">
				            <input type="radio" name="test3-5" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>침착하고 차분하다</td>
				        <td>
				            <input type="radio" name="test3-6" value="40">
				            <input type="radio" name="test3-6" value="60">
				            <input type="radio" name="test3-6" value="70">
				            <input type="radio" name="test3-6" value="80">
				            <input type="radio" name="test3-6" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>모르는 문제는 끝까지 해결한다</td>
				        <td>
				            <input type="radio" name="test3-7" value="40">
				            <input type="radio" name="test3-7" value="60">
				            <input type="radio" name="test3-7" value="70">
				            <input type="radio" name="test3-7" value="80">
				            <input type="radio" name="test3-7" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>문제생길 일은 끼어들지 않는다</td>
				        <td>
				            <input type="radio" name="test3-8" value="40">
				            <input type="radio" name="test3-8" value="60">
				            <input type="radio" name="test3-8" value="70">
				            <input type="radio" name="test3-8" value="80">
				            <input type="radio" name="test3-8" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>선행이 매우 잘 되어있다</td>
				        <td>
				            <input type="radio" name="test3-9" value="1">
				            <input type="radio" name="test3-9" value="2">
				            <input type="radio" name="test3-9" value="3">
				            <input type="radio" name="test3-9" value="4">
				            <input type="radio" name="test3-9" value="5">
				        </td>
				    </tr>
				    <tr>
				        <td>어렸을 때부터 학원을 많이 다님</td>
				        <td>
				            <input type="radio" name="test3-10" value="1">
				            <input type="radio" name="test3-10" value="2">
				            <input type="radio" name="test3-10" value="3">
				            <input type="radio" name="test3-10" value="4">
				            <input type="radio" name="test3-10" value="5">
				        </td>
				    </tr>
				    <tr>
				        <td>성적이 매우 좋다</td>
				        <td>
				            <input type="radio" name="test3-11" value="1">
				            <input type="radio" name="test3-11" value="2">
				            <input type="radio" name="test3-11" value="3">
				            <input type="radio" name="test3-11" value="4">
				            <input type="radio" name="test3-11" value="5">
				        </td>
				    </tr>
				    <tr>
				        <td>공부를 많이 시켜서 대학에 잘 들어가면 좋겠다</td>
				        <td>
				            <input type="radio" name="test3-12" value="40">
				            <input type="radio" name="test3-12" value="60">
				            <input type="radio" name="test3-12" value="70">
				            <input type="radio" name="test3-12" value="80">
				            <input type="radio" name="test3-12" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>공부보다는 다른 활동도 많이 하고 싶다</td>
				        <td>
				            <input type="radio" name="test3-13" value="40">
				            <input type="radio" name="test3-13" value="60"> <!--  -->
				            <input type="radio" name="test3-13" value="70">
				            <input type="radio" name="test3-13" value="80">
				            <input type="radio" name="test3-13" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>정적인것보다 동적인것이 좋다</td>
				        <td>
				            <input type="radio" name="test3-14" value="40">
				            <input type="radio" name="test3-14" value="60"> <!--  -->
				            <input type="radio" name="test3-14" value="70">
				            <input type="radio" name="test3-14" value="80">
				            <input type="radio" name="test3-14" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>하나를 끝내야 다음 과목으로 넘어간다</td>
				        <td>
				            <input type="radio" name="test3-15" value="40">
				            <input type="radio" name="test3-15" value="60">
				            <input type="radio" name="test3-15" value="70">
				            <input type="radio" name="test3-15" value="80">
				            <input type="radio" name="test3-15" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>자투리시간을 잘 활용한다</td>
				        <td>
				            <input type="radio" name="test3-16" value="40">
				            <input type="radio" name="test3-16" value="60">
				            <input type="radio" name="test3-16" value="70">
				            <input type="radio" name="test3-16" value="80">
				            <input type="radio" name="test3-16" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>숙제를 다해야 맘이 편하다</td>
				        <td>
				            <input type="radio" name="test3-17" value="40">
				            <input type="radio" name="test3-17" value="60">
				            <input type="radio" name="test3-17" value="70">
				            <input type="radio" name="test3-17" value="80">
				            <input type="radio" name="test3-17" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>혼자있을 때 공부가 더 잘 된다</td>
				        <td>
				            <input type="radio" name="test3-18" value="40">
				            <input type="radio" name="test3-18" value="60">
				            <input type="radio" name="test3-18" value="70">
				            <input type="radio" name="test3-18" value="80">
				            <input type="radio" name="test3-18" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>봉사 등의 창체활동을 좋아한다</td>
				        <td>
				            <input type="radio" name="test3-19" value="40">
				            <input type="radio" name="test3-19" value="60">
				            <input type="radio" name="test3-19" value="70"><!--  -->
				            <input type="radio" name="test3-19" value="80">
				            <input type="radio" name="test3-19" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>월 2번은 스스로 독서한다</td>
				        <td>
				            <input type="radio" name="test3-20" value="40">
				            <input type="radio" name="test3-20" value="60">
				            <input type="radio" name="test3-20" value="70">
				            <input type="radio" name="test3-20" value="80">
				            <input type="radio" name="test3-20" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>자기주도학습이 잘 되어 있다</td>
				        <td>
				            <input type="radio" name="test3-21" value="40">
				            <input type="radio" name="test3-21" value="60">
				            <input type="radio" name="test3-21" value="70">
				            <input type="radio" name="test3-21" value="80">
				            <input type="radio" name="test3-21" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>가정에서 학습써포트가 잘 되어있다</td>
				        <td>
				            <input type="radio" name="test3-22" value="40">
				            <input type="radio" name="test3-22" value="60">
				            <input type="radio" name="test3-22" value="70">
				            <input type="radio" name="test3-22" value="80">
				            <input type="radio" name="test3-22" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>집안에서 비교되는 형제자매가 있다</td>
				        <td>
				            <input type="radio" name="test3-23" value="40">
				            <input type="radio" name="test3-23" value="60">
				            <input type="radio" name="test3-23" value="70">
				            <input type="radio" name="test3-23" value="80">
				            <input type="radio" name="test3-23" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>주변에 친구가 많다</td>
				        <td>
				            <input type="radio" name="test3-24" value="40">
				            <input type="radio" name="test3-24" value="60">
				            <input type="radio" name="test3-24" value="70">
				            <input type="radio" name="test3-24" value="80">
				            <input type="radio" name="test3-24" value="90">
				        </td>
				    </tr>
				    <tr>
				        <td>운동을 매우 좋아한다</td>
				        <td>
				            <input type="radio" name="test3-25" value="40">
				            <input type="radio" name="test3-25" value="60"> <!--  -->
				            <input type="radio" name="test3-25" value="70">
				            <input type="radio" name="test3-25" value="80">
				            <input type="radio" name="test3-25" value="90">
				        </td>
				    </tr>
				</tbody>
			</table>
		</div>
		<button class="finishbtn">제출하기</button>
		
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		$('.finishbtn').click(function(){
			if($('input:radio[name=agreeradio]').is(":checked") == false){
				alert("관련 정보 활용 동의는 필수입니다.");
				setTimeout(function(){$('input[name="agreeradio"]').focus();},1);
				return;
			}
			var agree = $('input[name=agreeradio]:checked').val();
			var name = $("#schoolmatch_name").val();
			if(name == ""){
				alert("이름을 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_name").focus();},1);
				return;
			}
			var school = $("#schoolmatch_school").val();
			if(school == ""){
				alert("학교를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_school").focus();},1);
				return;
			}
			var grade = $("#schoolmatch_grade").val();
			if(grade == ""){
				alert("학년을 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_grade").focus();},1);
				return;
			}
			var phone1 = $("#schoolmatch_phone1").val();
			if(phone1 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_phone1").focus();},1);
				return;
			}
			var phone2 = $("#schoolmatch_phone2").val();
			if(phone2 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_phone2").focus();},1);
				return;
			}
			var phone3 = $("#schoolmatch_phone3").val();
			if(phone3 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_phone3").focus();},1);
				return;
			}
			var parentphone1 = $("#schoolmatch_parentphone1").val();
			if(parentphone1 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_parentphone1").focus();},1);
				return;
			}
			var parentphone2 = $("#schoolmatch_parentphone2").val();
			if(parentphone2 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_parentphone2").focus();},1);
				return;
			}
			var parentphone3 = $("#schoolmatch_parentphone3").val();
			if(parentphone3 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_parentphone3").focus();},1);
				return;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == false && $('input:checkbox[name=boycheck]').is(":checked") == false){
				alert("항목을 선택해주세요.");
				setTimeout(function(){$('input[name="girlcheck"]').focus();},1);
				return;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == true && $('input:checkbox[name=boycheck]').is(":checked") == true){
				alert("6번 항목끼리 중복선택은 불가합니다.");
				setTimeout(function(){$('input[name="girlcheck"]').focus();},1);
				return;
			}
			var girlcheck = [];
			$('input[name=girlcheck]:checked').each(function(){
				var girlcheck_item = $(this).val();
				girlcheck.push(girlcheck_item);
			});
			var boycheck = [];
			$('input[name=boycheck]:checked').each(function(){
				var boycheck_item = $(this).val();
				boycheck.push(boycheck_item);
			});
			if($('input:radio[name=momradio]').is(":checked") == false){
				alert("항목을 선택해주세요.");
				setTimeout(function(){$('input[name="momradio"]').focus();},1);
				return;
			}
			var momradio = $('input[name=momradio]:checked').val();
			if($('input:checkbox[name=consultingcheck]').is(":checked") == false){
				alert("상담가능 시간을 선택해주세요.");
				setTimeout(function(){$('input[name="consultingcheck"]').focus();},1);
				return;
			}
			var consultingcheck = [];
			$('input[name=consultingcheck]:checked').each(function(){
				var consultingcheck_item = $(this).val();
				consultingcheck.push(consultingcheck_item);
			});
			if($('input:radio[name=test1-1]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-1"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-2]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-2"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-3]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-3"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-4]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-4"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-5]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-5"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-6]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-6"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-7]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-7"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-8]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-8"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-9]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-9"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-10]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-10"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-11]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-11"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-12]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-12"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-13]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-13"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-14]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-14"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-1]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-1"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-2]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-2"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-3]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-3"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-4]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-4"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-5]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-5"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-6]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-6"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-7]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-7"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-8]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-8"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-9]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-9"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-10]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-10"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-11]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-11"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-12]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-12"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-13]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-13"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-14]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-14"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-15]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-15"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-16]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-16"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-1]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-1"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-2]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-2"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-3]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-3"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-4]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-4"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-5]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-5"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-6]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-6"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-7]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-7"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-8]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-8"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-9]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-9"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-10]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-10"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-11]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-11"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-12]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-12"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-13]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-13"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-14]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-14"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-15]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-15"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-16]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-16"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-17]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-17"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-18]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-18"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-19]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-19"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-20]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-20"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-21]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-21"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-22]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-22"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-23]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-23"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-24]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-24"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-25]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-25"]').focus();},1);
			    return;
			}
			var test1_1 = parseFloat($('input[name=test1-1]:checked').val());
			var test1_2 = parseFloat($('input[name=test1-2]:checked').val());
			var test1_3 = parseFloat($('input[name=test1-3]:checked').val());
			var test1_4 = parseFloat($('input[name=test1-4]:checked').val());
			var test1_5 = parseFloat($('input[name=test1-5]:checked').val());
			var test1_6 = parseFloat($('input[name=test1-6]:checked').val());
			var test1_7 = parseFloat($('input[name=test1-7]:checked').val());
			var test1_8 = parseFloat($('input[name=test1-8]:checked').val());
			var test1_9 = parseFloat($('input[name=test1-9]:checked').val());
			var test1_10 = parseFloat($('input[name=test1-10]:checked').val());
			var test1_11 = parseFloat($('input[name=test1-11]:checked').val());
			var test1_12 = parseFloat($('input[name=test1-12]:checked').val());
			var test1_13 = parseFloat($('input[name=test1-13]:checked').val());
			var test1_14 = parseFloat($('input[name=test1-14]:checked').val());
			var test2_1 = parseFloat($('input[name=test2-1]:checked').val());
			var test2_2 = parseFloat($('input[name=test2-2]:checked').val());
			var test2_3 = parseFloat($('input[name=test2-3]:checked').val());
			var test2_4 = parseFloat($('input[name=test2-4]:checked').val());
			var test2_5 = parseFloat($('input[name=test2-5]:checked').val());
			var test2_6 = parseFloat($('input[name=test2-6]:checked').val());
			var test2_7 = parseFloat($('input[name=test2-7]:checked').val());
			var test2_8 = parseFloat($('input[name=test2-8]:checked').val());
			var test2_9 = parseFloat($('input[name=test2-9]:checked').val());
			var test2_10 = parseFloat($('input[name=test2-10]:checked').val());
			var test2_11 = parseFloat($('input[name=test2-11]:checked').val());
			var test2_12 = parseFloat($('input[name=test2-12]:checked').val());
			var test2_13 = parseFloat($('input[name=test2-13]:checked').val());
			var test2_14 = parseFloat($('input[name=test2-14]:checked').val());
			var test2_15 = parseFloat($('input[name=test2-15]:checked').val());
			var test2_16 = parseFloat($('input[name=test2-16]:checked').val());
			var test3_1 = parseFloat($('input[name=test3-1]:checked').val());
			var test3_2 = parseFloat($('input[name=test3-2]:checked').val());
			var test3_3 = parseFloat($('input[name=test3-3]:checked').val());
			var test3_4 = parseFloat($('input[name=test3-4]:checked').val());
			var test3_5 = parseFloat($('input[name=test3-5]:checked').val());
			var test3_6 = parseFloat($('input[name=test3-6]:checked').val());
			var test3_7 = parseFloat($('input[name=test3-7]:checked').val());
			var test3_8 = parseFloat($('input[name=test3-8]:checked').val());
			var test3_9 = parseFloat($('input[name=test3-9]:checked').val());
			var test3_10 = parseFloat($('input[name=test3-10]:checked').val());
			var test3_11 = parseFloat($('input[name=test3-11]:checked').val());
			var test3_12 = parseFloat($('input[name=test3-12]:checked').val());
			var test3_13 = parseFloat($('input[name=test3-13]:checked').val());
			var test3_14 = parseFloat($('input[name=test3-14]:checked').val());
			var test3_15 = parseFloat($('input[name=test3-15]:checked').val());
			var test3_16 = parseFloat($('input[name=test3-16]:checked').val());
			var test3_17 = parseFloat($('input[name=test3-17]:checked').val());
			var test3_18 = parseFloat($('input[name=test3-18]:checked').val());
			var test3_19 = parseFloat($('input[name=test3-19]:checked').val());
			var test3_20 = parseFloat($('input[name=test3-20]:checked').val());
			var test3_21 = parseFloat($('input[name=test3-21]:checked').val());
			var test3_22 = parseFloat($('input[name=test3-22]:checked').val());
			var test3_23 = parseFloat($('input[name=test3-23]:checked').val());
			var test3_24 = parseFloat($('input[name=test3-24]:checked').val());
			var test3_25 = parseFloat($('input[name=test3-25]:checked').val());
			var transtest3_13 = 0;
			var transtest3_14 = 0;
			var transtest3_19 = 0;
			var transtest3_25 = 0;
			if(test3_13 == 60){transtest3_13 = 0.3};
			if(test3_13 == 70){transtest3_13 = 0.5};
			if(test3_13 == 80){transtest3_13 = 0.7};
			if(test3_13 == 90){transtest3_13 = 1};
			if(test3_14 == 60){transtest3_14 = 0.3};
			if(test3_14 == 70){transtest3_14 = 0.5};
			if(test3_14 == 80){transtest3_14 = 0.7};
			if(test3_14 == 90){transtest3_14 = 1};
			if(test3_19 == 60){transtest3_19 = 0.3};
			if(test3_19 == 70){transtest3_19 = 0.5};
			if(test3_19 == 80){transtest3_19 = 0.7};
			if(test3_19 == 90){transtest3_19 = 1};
			if(test3_25 == 60){transtest3_25 = 0.3};
			if(test3_25 == 70){transtest3_25 = 0.5};
			if(test3_25 == 80){transtest3_25 = 0.7};
			if(test3_25 == 90){transtest3_25 = 1};
			var prior1 = (test2_5 + test2_6 + test2_7 + test2_16 + test3_9 + test3_10 + test3_11)/10*20; //국어
			var prior2 = (test2_3 + test2_4 + test2_16 + test3_9 + test3_10 + test3_11)/8*20;//수학
			var prior3 = (test2_1 + test2_2 + test2_16 + test3_9 + test3_10 + test3_11)/8*20;//영어
			var prior4 = (test2_8 + test2_16 + test3_9 + test3_10 + test3_11)/6*20;//사탐
			var prior5 = (test2_9 + test2_16 + test3_9 + test3_10 + test3_11)/6*20;//과탐
			var buramplus = 0;
			var sangmyungplus = 0;
			var youngsinplus = 0;
			var daejingirlsplus = 0;
			var yonghwaplus = 0;
			var cheongwongirlsplus = 0;
			var cheongwonplus = 0;
			var daejinplus = 0;
			var jaehyunplus = 0;
			var sorabolplus = 0;
			if(girlcheck.includes('불암고')){buramplus = 10};
			if(girlcheck.includes('상명고')){sangmyungplus = 10};
			if(boycheck.includes('불암고')){buramplus = 10};
			if(boycheck.includes('상명고')){sangmyungplus = 10};
			if(girlcheck.includes('영신여고')){youngsinplus = 10};
			if(girlcheck.includes('대진여고')){daejingirlsplus = 10};
			if(girlcheck.includes('용화여고')){yonghwaplus = 10};
			if(girlcheck.includes('청원여고')){cheongwongirlsplus = 10};
			if(boycheck.includes('청원고')){cheongwonplus = 10};
			if(boycheck.includes('대진고')){daejinplus = 10};
			if(boycheck.includes('재현고')){jaehyunplus = 10};
			if(boycheck.includes('서라벌고')){sorabolplus = 10};
			var buramprior = ((prior1 * 0.1) + (prior2 * 0.7) + (prior3 * 0.1) + (prior4 * 0.3) + (prior5 * 0.1))/50;
			var sangmyungprior = ((prior1 * 0.1) + (prior2 * 0.3) + (prior3 * 0.4) + (prior4 * 0.6) + (prior5 * 0.8))/50;
			var youngsinprior = ((prior1 * 0.7) + (prior2 * 0.6) + (prior3 * 0.7) + (prior4 * 0.3) + (prior5 * 0.1))/50;
			var daejingirlsprior = ((prior1 * 0.3) + (prior2 * 0.1) + (prior3 * 0.1) + (prior4 * 0.2) + (prior5 * 0.1))/50;
			var yonghwaprior = ((prior1 * 0.1) + (prior2 * 0.3) + (prior3 * 0.1) + (prior4 * 0.1) + (prior5 * 0.2))/50;
			var cheongwongirlsprior = ((prior1 * 0.1) + (prior2 * 0.2) + (prior3 * 0.1) + (prior4 * 0.1) + (prior5 * 0.1))/50;
			var cheongwonprior = ((prior1 * 0.1) + (prior2 * 0.8) + (prior3 * 0.6) + (prior4 * 0.5) + (prior5 * 0.1))/50;
			var daejinprior = ((prior1 * 0.1) + (prior2 * 0.6) + (prior3 * 0.1) + (prior4 * 0.3) + (prior5 * 0.2))/50;
			var jaehyunprior = ((prior1 * 0.1) + (prior2 * 0.3) + (prior3 * 0.5) + (prior4 * 0.1) + (prior5 * 0.1))/50;
			var sorabolprior = ((prior1 * 0.2) + (prior2 * 0.7) + (prior3 * 1.1) + (prior4 * 0.6) + (prior5 * 0.6))/50;
			var tendency1 = (test3_2 + test3_5 + test3_6 + test3_8 + test3_16 + test3_21)/6;//자기
			var tendency2 = (test3_4 + test3_20)/2;//창의
			var tendency3 = (test3_7 + test3_12 + test3_15 + test3_17 + test3_20 + test3_21)/6;//그릿
			var tendency4 = (test3_18 + test3_1 + test3_24)/3;//민감
			var tendency5 = (test3_3 + test3_13 + test3_14 + test3_19 + test3_24 + test3_25)/6;//활동
			var tendency6 = (test3_22 + test3_23)/2;//가정
			if($('input:checkbox[name=girlcheck]').is(":checked") == true && $('input:checkbox[name=boycheck]').is(":checked") == false){
				var buramsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 1) + (test1_6 * 1) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.1) + (transtest3_14 * 1) + (transtest3_19 * 0) + (transtest3_25 * 1) + buramprior + buramplus;
				var sangmyungsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.1) + (transtest3_14 * 1) + (transtest3_19 * 1) + (transtest3_25 * 1) + sangmyungprior + sangmyungplus;
				var youngsinsum = (test1_1 * 2) + (test1_2 * 1) + (test1_3 * 2) + (test1_4 * 0) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.3) + (transtest3_14 * 1) + (transtest3_19 * 0) + (transtest3_25 * 1) + youngsinprior + youngsinplus;
				var daejingirlssum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 1) + (transtest3_13 * 1.1) + (transtest3_14 * 1) + (transtest3_19 * 0) + (transtest3_25 * 1) + daejingirlsprior + daejingirlsplus;
				var yonghwasum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 1) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 1) + (test1_14 * 1) + (transtest3_13 * 1.6) + (transtest3_14 * 1) + (transtest3_19 * 1) + (transtest3_25 * 1) + yonghwaprior + yonghwaplus;
				var cheongwongirlssum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 1) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.4) + (transtest3_14 * 1) + (transtest3_19 * 0) + (transtest3_25 * 1) + cheongwongirlsprior + cheongwongirlsplus;
				var buram = buramsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var sangmyung = sangmyungsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var youngsin = youngsinsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var daejingirls = daejingirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var yonghwa = yonghwasum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var cheongwongirls = cheongwongirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == false && $('input:checkbox[name=boycheck]').is(":checked") == true){
				var buramsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 1) + (test1_6 * 1) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.1) + (transtest3_14 * 1) + (transtest3_19 * 0) + (transtest3_25 * 1) + buramprior + buramplus;
				var sangmyungsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.1) + (transtest3_14 * 1) + (transtest3_19 * 1) + (transtest3_25 * 1) + sangmyungprior + sangmyungplus;
				var cheongwonsum = (test1_1 * 1) + (test1_2 * 2) + (test1_3 * 2) + (test1_4 * 1) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 1) + (transtest3_13 * 1.9) + (transtest3_14 * 2) + (transtest3_19 * 2) + (transtest3_25 * 2) + cheongwonprior + cheongwonplus;
				var daejinsum = (test1_1 * 2) + (test1_2 * 2) + (test1_3 * 2) + (test1_4 * 1) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 0) + (transtest3_13 * 1.6) + (transtest3_14 * 2) + (transtest3_19 * 1) + (transtest3_25 * 2) + daejinprior + daejinplus;
				var jaehyunsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 0) + (test1_6 * 1) + (test1_7 * 1) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 1) + (test1_12 * 1) + (test1_13 * 1) + (test1_14 * 1) + (transtest3_13 * 1.6) + (transtest3_14 * 1) + (transtest3_19 * 1) + (transtest3_25 * 1) + jaehyunprior + jaehyunplus;
				var sorabolsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 1) + (test1_14 * 1) + (transtest3_13 * 1.1) + (transtest3_14 * 1) + (transtest3_19 * 0) + (transtest3_25 * 1) + sorabolprior + sorabolplus;
				var buram = buramsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var sangmyung = sangmyungsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var cheongwon = cheongwonsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var daejin = daejinsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var jaehyun = jaehyunsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var sorabol = sorabolsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
			}
			let today = new Date();
			let year = today.getFullYear();
			let month = today.getMonth()+1;
			let date = today.getDate();
			var insertdate = (year+'.'+month+'.'+date);
			$.ajax({
				url : "insertschoolmatch.do",
				type : "post",
				data : {
					schoolmatch_name : name,
					schoolmatch_school : school,
					schoolmatch_date : insertdate,
					schoolmatch_grade : grade,
					schoolmatch_phone1 : phone1,
					schoolmatch_phone2 : phone2,
					schoolmatch_phone3 : phone3,
					schoolmatch_parentphone1 : parentphone1,
					schoolmatch_parentphone2 : parentphone2,
					schoolmatch_parentphone3 : parentphone3,
					schoolmatch_agree : agree,
					schoolmatch_buram : buram,
					schoolmatch_sangmyung : sangmyung,
					schoolmatch_youngsin : youngsin,
					schoolmatch_daejingirls : daejingirls,
					schoolmatch_yonghwa : yonghwa,
					schoolmatch_cheongwongirls : cheongwongirls,
					schoolmatch_cheongwon : cheongwon,
					schoolmatch_daejin : daejin,
					schoolmatch_jaehyun : jaehyun,
					schoolmatch_sorabol : sorabol,
					schoolmatch_prior1 : prior1,
					schoolmatch_prior2 : prior2,
					schoolmatch_prior3 : prior3,
					schoolmatch_prior4 : prior4,
					schoolmatch_prior5 : prior5,
					schoolmatch_tendency1 : tendency1,
					schoolmatch_tendency2 : tendency2,
					schoolmatch_tendency3 : tendency3,
					schoolmatch_tendency4 : tendency4,
					schoolmatch_tendency5 : tendency5,
					schoolmatch_tendency6 : tendency6,
				},
				success : function(data) {
					alert("success!");
					window.location.href = "schoolmatchlist.do";
			     },
				error : function() {
					alert("error");
				}
			});
		});
	});
	</script>
</body>
</html>