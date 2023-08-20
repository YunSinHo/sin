<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
body{
	margin:0;
}
img{
	width:100%;
	vertical-align:middle;
}
.bodyarea{
	width:100%;
	position:relative;
}
.namearea{
	position: absolute;
    width: 33%;
    left: 33.5%;
    height: 2%;
    top: 5%;
    font-size: 1.6783vw;
}
.nametext{
	height: 70%;
    width: 83%;
    padding-top: 0.3497vw;
    font-size: 1.3986vw;
}
.plusbtnarea{
	position: absolute;
    top: 3%;
    right:2.1%;
}
.plusbtn{
    font-size: 1.6783vw;
}
.savebtnarea{
	position: absolute;
    top: 1%;
    right: 2.1%;
}
.savebtn{
    font-size: 1.3986vw;
}
.categoryarea1{
	position: absolute;
    top: 8%;
    left: 13.3%;
    width: 34.2%;
}
.categorybox1{
	font-size:1.3986vw;
	border:0;
	width:35%;
}
.categorybox2{
	font-size:1.3986vw;
	border:0;
	width:60%;
}
.categoryarea2{
	position: absolute;
    top: 9.5%;
    left: 13.3%;
    width: 34.2%;
}
.categoryarea3{
	position: absolute;
    top: 8%;
    left: 63.5%;
    width: 34.2%;
}
.categoryarea4{
	position: absolute;
    top: 9.5%;
    left: 63.5%;
    width: 34.2%;
}
.contentbox{
	font-size:1.3986vw;
	width:100%;
	height:100%;
	resize: none;
    font-size: 1.3986vw;
}
.translatebox{
	font-size:1.3986vw;
	width:100%;
	height:100%;
	resize: none;
    font-size: 1.3986vw;
}
.contentarea1{
    position: absolute;
    top: 11.9%;
    left: 7.5%;
    width: 39.6%;
    height: 15.7vw;
}
.translatearea1{
    position: absolute;
    top: 24.2%;
    left: 7.5%;
    width: 39.6%;
    height: 15.7vw;
}
.contentarea2{
    position: absolute;
    top: 11.9%;
    left: 57.7%;
    width: 39.6%;
    height: 15.7vw;
}
.translatearea2{
    position: absolute;
    top: 24.2%;
    left: 57.7%;
    width: 39.6%;
    height: 15.7vw;
}
.categoryarea5{
	position: absolute;
    top: 38.3%;
    left: 13.3%;
    width: 34.2%;
}
.categoryarea6{
	position: absolute;
    top: 39.8%;
    left: 13.3%;
    width: 34.2%;
}
.categoryarea7{
	position: absolute;
    top: 38.3%;
    left: 63.5%;
    width: 34.2%;
}
.categoryarea8{
	position: absolute;
    top: 39.8%;
    left: 63.5%;
    width: 34.2%;
}
.contentarea3{
    position: absolute;
    top: 42.2%;
    left: 7.5%;
    width: 39.6%;
    height: 15.7vw;
}
.translatearea3{
    position: absolute;
    top: 54.5%;
    left: 7.5%;
    width: 39.6%;
    height: 15.7vw;
}
.contentarea4{
    position: absolute;
    top: 42.2%;
    left: 57.7%;
    width: 39.6%;
    height: 15.7vw;
}
.translatearea4{
    position: absolute;
    top: 54.5%;
    left: 57.7%;
    width: 39.6%;
    height: 15.7vw;
}
.categoryarea9{
	position: absolute;
    top: 68.6%;
    left: 13.3%;
    width: 34.2%;
}
.categoryarea10{
	position: absolute;
    top: 70.1%;
    left: 13.3%;
    width: 34.2%;
}
.categoryarea11{
	position: absolute;
    top: 68.6%;
    left: 63.5%;
    width: 34.2%;
}
.categoryarea12{
	position: absolute;
    top: 70.1%;
    left: 63.5%;
    width: 34.2%;
}
.contentarea5{
    position: absolute;
    top: 72.5%;
    left: 7.5%;
    width: 39.6%;
    height: 15.7vw;
}
.translatearea5{
    position: absolute;
    top: 84.8%;
    left: 7.5%;
    width: 39.6%;
    height: 15.7vw;
}
.contentarea6{
    position: absolute;
    top: 72.5%;
    left: 57.7%;
    width: 39.6%;
    height: 15.7vw;
}
.translatearea6{
    position: absolute;
    top: 84.8%;
    left: 57.7%;
    width: 39.6%;
    height: 15.7vw;
}
</style>
</head>
<body>
	<div class="bodyarea">
		<img class="mainheaderimg1" alt="img1" src="img/admin/trans1.png">
		<div class="namearea">
			제목 : <input type="text" class="nametext" id="maintitle">
		</div>
		<div class="savebtnarea">
			<button class="savebtn" onclick="inserttrans()">저장</button>
		</div>
		<div class="plusbtnarea">
			<button class="plusbtn" id="plusbtn">본문 추가</button>
		</div>
		<div class="categoryarea1">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category1_1">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea2">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category2_1">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea3">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category3_1">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea4">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category4_1">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="contentarea1">
			<textarea class="contentbox" id="trans_content1_1"></textarea>
		</div>
		<div class="translatearea1">
			<textarea class="translatebox" id="trans_translate1_1"></textarea>
		</div>
		<div class="contentarea2">
			<textarea class="contentbox" id="trans_content2_1"></textarea>
		</div>
		<div class="translatearea2">
			<textarea class="translatebox" id="trans_translate2_1"></textarea>
		</div>
		<div class="categoryarea5">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category5_1">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea6">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category6_1">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea7">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category1_2">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea8">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category2_2">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="contentarea3">
			<textarea class="contentbox" id="trans_content3_1"></textarea>
		</div>
		<div class="translatearea3">
			<textarea class="translatebox" id="trans_translate3_1"></textarea>
		</div>
		<div class="contentarea4">
			<textarea class="contentbox" id="trans_content1_2"></textarea>
		</div>
		<div class="translatearea4">
			<textarea class="translatebox" id="trans_translate1_2"></textarea>
		</div>
		<div class="categoryarea9">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category3_2">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea10">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category4_2">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea11">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category5_2">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="categoryarea12">
			<select class="categorybox1" onchange="gettingkindchange(this)">
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
			<select class="categorybox2" id="trans_category6_2">
				<option>대분류 우선 선택</option>
			</select>
		</div>
		<div class="contentarea5">
			<textarea class="contentbox" id="trans_content2_2"></textarea>
		</div>
		<div class="translatearea5">
			<textarea class="translatebox" id="trans_translate2_2"></textarea>
		</div>
		<div class="contentarea6">
			<textarea class="contentbox" id="trans_content3_2"></textarea>
		</div>
		<div class="translatearea6">
			<textarea class="translatebox" id="trans_translate3_2"></textarea>
		</div>
	</div>
	<script>
	function gettingkindchange(r){
    	var a = ["1형식과 2형식","감각동사","3형식","4형식","5형식","명사,형용사,to부정사를 목적격 보어로 쓰는 동사","사역동사","지각동사"];
    	var b = ["현재시제","과거시제","미래시제","현재완료시제"];
    	var c = ["can, may, will","must, should","should의 생략","used to, would","조동사 + have + p.p.","조동사 관용 표현"];
    	var d = ["수동태 문장 만드는 법","수동태로 쓸 수 없는 동사","수동태의 시제","조동사가 있는 수동태","4형식 문장의 수동태","5형식 문장의 수동태","구동사의 수동태","목적어가 that절인 문장의 수동태","수동태 관용 표현"];
    	var e = ["to부정사의 형태와 용법","명사적 용법: 주어와 보어로 쓰이는 to부정사","명사적 용법: 목적어로 쓰이는 to부정사","명사적 용법: 의문사 + to부정사","형용사적 용법: 명사•대명사 수식","형용사적 용법: be동사 + to부정사","부사적 용법","too ~ to, enough to","to부정사의 의미상의 주어"];
    	var f = ["동명사의 형태와 쓰임","동명사의 의미상의 주어","동명사의 시제와 태","동명사를 목적어로 쓰는 동사","동명사와 to부정사를 모두 목적어로 쓰는 동사","동명사 관용 표현"];
    	var g = ["분사의 형태와 쓰임","현재분사 vs. 과거분사","감정을 나타내는 분사","현재분사 vs. 동명사"];
    	var h = ["분사구문 만드는 법","분사구문의 다양한 의미","분사구문의 시제와 태","with + 명사 + 분사","분사구문 관용 표현"];
    	var i = ["셀 수 있는 명사","셀 수 없는 명사","명사의 소유격","재귀대명사","it의 다양한 쓰임 I","it의 다양한 쓰임 II","부정대명사: one","부정대명사: some, any","부정대명사: another, other","부정대명사: all, each, every","부정대명사: both, either, neither"];
    	var j = ["형용사의 용법","수량형용사","부사의 역할","형용사와 형태가 같은 부사","-ly가 붙으면 의미가 달라지는 부사","빈도부사","타동사 + 부사"];
    	var k = ["원급 비교: as + 원급 + as","원급 관련 표현","비교급 비교: 비교급 + than","비교급 관련 표현","최상급 비교와 관련된 표현"];
    	var l = ["시간을 나타내는 전치사 I","시간을 나타내는 전치사 II","시간을 나타내는 전치사 III","장소를 나타내는 전치사 I","장소를 나타내는 전치사 II","위치를 나타내는 전치사","방향을 나타내는 전치사","기타 전치사","전치사 관용 표현: 형용사 + 전치사","전치사 관용 표현: 동사 + 전치사","전치사 관용 표현: 동사 + 명사 + 전치사"];
    	var m = ["등위접속사: and, but, or, so","상관접속사","명사절을 이끄는 접속사: that","명사절을 이끄는 접속사: if/whether","명사절을 이끄는 접속사: 의문사","부사절을 이끄는 접속사: 시간","부사절을 이끄는 접속사: 이유","부사절을 이끄는 접속사: 조건","부사절을 이끄는 접속사: 양보","부사절을 이끄는 접속사: so that ~","부사절을 이끄는 접속사: so ~ that …","다양한 의미의 부사절을 이끄는 접속사","접속부사"];
    	var n = ["관계대명사의 역할과 종류","주격 관계대명사","목적격 관계대명사","소유격 관계대명사","관계대명사 that","관계대명사 what","전치사 + 관계대명사","관계부사의 역할과 종류","관계사의 계속적 용법","복합관계사"];
    	var o = ["가정법 과거와 과거완료","혼합 가정법","가정법을 직설법으로 바꾸는 법","if를 생략한 가정법","Without 가정법","I wish 가정법","as if[though] 가정법"];
    	var p = ["수 일치 I","수 일치 II","시제 일치","화법 전환: 평서문","화법 전환: 의문사가 있는 의문문","화법 전환: 의문사가 없는 의문문","화법 전환: 명령문"];
    	var q = ["강조","강조: It is ~ that 강조 구문","부정","도치","생략","동격","병치"];
    	var target = r.parentNode.children[1];
    	
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
	Array.prototype.division = function (u) {
		var arr = this;
		var len = arr.length;
		var cnt = Math.floor(len/n);
		var tmp = [];
		for(var i = 0; i < cnt; i++){
			tmp.push(arr.splice(0,u));
		}
		return tmp;
	}
	var a=1;
	var b=2;
	$(document).ready(function() {
		$(document).on("click","#plusbtn", function(){
			a += 2;
			b += 2;
			var plus = '';
			plus += '<div class="bodyarea">';
			plus += '<img class="mainheaderimg1" alt="img1" src="img/admin/trans1.png">';
			plus += '<div class="categoryarea1">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category1_'+a+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea2">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category2_'+a+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea3">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category3_'+a+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea4">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category4_'+a+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="contentarea1">';
			plus += '<textarea class="contentbox" id="trans_content1_'+a+'"></textarea>';
			plus += '</div>';
			plus += '<div class="translatearea1">';
			plus += '<textarea class="translatebox" id="trans_translate1_'+a+'"></textarea>';
			plus += '</div>';
			plus += '<div class="contentarea2">';
			plus += '<textarea class="contentbox" id="trans_content2_'+a+'"></textarea>';
			plus += '</div>';
			plus += '<div class="translatearea2">';
			plus += '<textarea class="translatebox" id="trans_translate2_'+a+'"></textarea>';
			plus += '</div>';
			plus += '<div class="categoryarea5">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category5_'+a+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea6">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category6_'+a+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea7">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category1_'+b+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea8">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category2_'+b+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="contentarea3">';
			plus += '<textarea class="contentbox" id="trans_content3_'+a+'"></textarea>';
			plus += '</div>';
			plus += '<div class="translatearea3">';
			plus += '<textarea class="translatebox" id="trans_translate3_'+a+'"></textarea>';
			plus += '</div>';
			plus += '<div class="contentarea4">';
			plus += '<textarea class="contentbox" id="trans_content1_'+b+'"></textarea>';
			plus += '</div>';
			plus += '<div class="translatearea4">';
			plus += '<textarea class="translatebox" id="trans_translate1_'+b+'"></textarea>';
			plus += '</div>';
			plus += '<div class="categoryarea9">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category3_'+b+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea10">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category4_'+b+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea11">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category5_'+b+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="categoryarea12">';
			plus += '<select class="categorybox1" onchange="gettingkindchange(this)">';
			plus += '<option value="">대분류</option>';
			plus += '<option value="문장의 형식">문장의 형식</option>';
			plus += '<option value="시제">시제</option>';
			plus += '<option value="조동사">조동사</option>';
			plus += '<option value="수동태">수동태</option>';
			plus += '<option value="부정사">부정사</option>';
			plus += '<option value="동명사">동명사</option>';
			plus += '<option value="분사">분사</option>';
			plus += '<option value="분사구문">분사구문</option>';
			plus += '<option value="명사와 대명사">명사와 대명사</option>';
			plus += '<option value="형용사, 부사">형용사, 부사</option>';
			plus += '<option value="비교급, 최상급">비교급, 최상급</option>';
			plus += '<option value="전치사">전치사</option>';
			plus += '<option value="접속사">접속사</option>';
			plus += '<option value="관계사">관계사</option>';
			plus += '<option value="가정법">가정법</option>';
			plus += '<option value="일치와 화법">일치와 화법</option>';
			plus += '<option value="특수구문">특수구문</option>';
			plus += '</select>';
			plus += '<select class="categorybox2" id="trans_category6_'+b+'">';
			plus += '<option>대분류 우선 선택</option>';
			plus += '</select>';
			plus += '</div>';
			plus += '<div class="contentarea5">';
			plus += '<textarea class="contentbox" id="trans_content2_'+b+'"></textarea>';
			plus += '</div>';
			plus += '<div class="translatearea5">';
			plus += '<textarea class="translatebox" id="trans_translate2_'+b+'"></textarea>';
			plus += '</div>';
			plus += '<div class="contentarea6">';
			plus += '<textarea class="contentbox" id="trans_content3_'+b+'"></textarea>';
			plus += '</div>';
			plus += '<div class="translatearea6">';
			plus += '<textarea class="translatebox" id="trans_translate3_'+b+'"></textarea>';
			plus += '</div>';
			plus += '</div>';
            $("body").append(plus);
		});
	});
	function inserttrans(){
    	var transValues = new Array();
    	for(j=1;j<=b;j++){
   			var sel1 = document.getElementById("trans_category1_"+j);
   			var sel2 = document.getElementById("trans_category2_"+j);
   			var sel3 = document.getElementById("trans_category3_"+j);
   			var sel4 = document.getElementById("trans_category4_"+j);
   			var sel5 = document.getElementById("trans_category5_"+j);
   			var sel6 = document.getElementById("trans_category6_"+j);
       		var category1 = sel1.options[sel1.selectedIndex].value;
       		var category2 = sel2.options[sel2.selectedIndex].value;
       		var content1 = document.getElementById("trans_content1_"+j).value;
       		var translate1 = document.getElementById("trans_translate1_"+j).value;
       		var category3 = sel3.options[sel3.selectedIndex].value;
       		var category4 = sel4.options[sel4.selectedIndex].value;
       		var content2 = document.getElementById("trans_content2_"+j).value;
       		var translate2 = document.getElementById("trans_translate2_"+j).value;
       		var category5 = sel5.options[sel5.selectedIndex].value;
       		var category6 = sel6.options[sel6.selectedIndex].value;
       		var content3 = document.getElementById("trans_content3_"+j).value;
       		var translate3 = document.getElementById("trans_translate3_"+j).value;
       		for(var k=1; k<=12; k++){
       			if(k==1){
       				transValues.push(category1);
       			}if(k==2){
       				transValues.push(category2);
       			}if(k==3){
       				transValues.push(content1);
       			}if(k==4){
       				transValues.push(translate1);
       			}if(k==5){
       				transValues.push(category3);
       			}if(k==6){
       				transValues.push(category4);
       			}if(k==7){
       				transValues.push(content2);
       			}if(k==8){
       				transValues.push(translate2);
       			}if(k==9){
       				transValues.push(category5);
       			}if(k==10){
       				transValues.push(category6);
       			}if(k==11){
       				transValues.push(content3);
       			}if(k==12){
       				transValues.push(translate3);
       			}
       		}
    	}
    	const maintitle=document.getElementById("maintitle").value;
    	for(m=0;m<transValues.length;m+=13){
    		transValues.splice(m,0,maintitle)
		}
    	var resulttrans = transValues.division(13);
    	const trans_title = "trans_title";
    	const trans_category1 = "trans_category1";
    	const trans_category2 = "trans_category2";
    	const trans_content1 = "trans_content1";
    	const trans_translate1 = "trans_translate1";
    	const trans_category3 = "trans_category3";
    	const trans_category4 = "trans_category4";
    	const trans_content2 = "trans_content2";
    	const trans_translate2 = "trans_translate2";
    	const trans_category5 = "trans_category5";
    	const trans_category6 = "trans_category6";
    	const trans_content3 = "trans_content3";
    	const trans_translate3 = "trans_translate3";
    	for(var k=0;k<resulttrans.length;k++){
			resulttrans[k] = {[trans_title]:resulttrans[k][0],[trans_category1]:resulttrans[k][1],[trans_category2]:resulttrans[k][2],[trans_content1]:resulttrans[k][3],[trans_translate1]:resulttrans[k][4],[trans_category3]:resulttrans[k][5],[trans_category4]:resulttrans[k][6],[trans_content2]:resulttrans[k][7],[trans_translate2]:resulttrans[k][8],[trans_category5]:resulttrans[k][9],[trans_category6]:resulttrans[k][10],[trans_content3]:resulttrans[k][11],[trans_translate3]:resulttrans[k][12]};
		}
    	var jsonresult = JSON.stringify(resulttrans);
    	$.ajax({
			url: 'inserttrans.mdo',
	        type: 'post',
	        data: jsonresult,
	        dataType: 'json',
	        contentType: 'application/json',
	        success: function(data) {
	        	alert("success!");
	        }
	    });
	}
	</script>
</body>
</html>