<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<style>
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
    width: 25%;
    left: 3%;
    height: 2%;
    top: 2.5%;
    font-size: 1.6783vw;
}
.nametext{
	height: 70%;
    padding-top: 0.3497vw;
    font-size: 1.3986vw;
}
.plusbtnarea{
	position: absolute;
    top: 2.5%;
    left:30%;
}
.plusbtn{
    font-size: 1.6783vw;
}
.savebtnarea{
	position: absolute;
    top: 0.2%;
    right: 3%;
}
.savebtn{
    font-size: 1.3986vw;
}
.optionarea1{
	position: absolute;
	left: 13%;
    top: 5.8%;
}
.categorysel{
	font-size: 1.6783vw;
}
.contentarea1{
	position: absolute;
    top: 8%;
    left: 5.5%;
    height: 40%;
    width: 40%;
}
.contentbox{
	height: 100%;
    width: 100%;
    resize: none;
    font-size:1.2587vw;
}
.optionarea2{
	position: absolute;
	left: 61.5%;
    top: 5.8%;
}
.contentarea2{
	position: absolute;
    top: 8%;
    left: 54%;
    height: 40%;
    width: 40%;
}
.optionarea3{
	position: absolute;
	left: 13%;
    top: 52.3%;
}
.contentarea3{
	position: absolute;
    top: 54.5%;
    left: 5.5%;
    height: 40%;
    width: 40%;
}
.optionarea4{
	position: absolute;
	left: 61.5%;
    top: 52.3%;
}
.contentarea4{
	position: absolute;
    top: 54.5%;
    left: 54%;
    height: 40%;
    width: 40%;
}
.viewmorebtn{
	font-size: 1.3986vw;
    margin-left: 1.3986vw;
}
.viewmoretext{
	width:100%;
}
</style>
</head>
<body>
	<div class="bodyarea">
		<img class="mainheaderimg1" alt="img1" src="img/admin/content8.png">
		<div class="namearea">
			제목 : <input type="text" class="nametext" id="maintitle">
		</div>
		<div class="savebtnarea">
			<button class="savebtn" onclick="insertgrammar()">저장</button>
		</div>
		<div class="plusbtnarea">
			<button class="plusbtn" id="plusbtn">본문 추가</button>
			<button class="plusbtn" id="deletebtn">본문 제거</button>
		</div>
		<div class="optionarea1">
			<select class="categorysel" id="categorysel1_1">
				<option value="">카테고리 선택</option>
				<option value="글의 목적">글의 목적</option>
				<option value="심경 변화">심경 변화</option>
				<option value="밑줄 친 의미">밑줄 친 의미</option>
				<option value="요지">요지</option>
				<option value="주제, 제목, 주장">주제, 제목, 주장</option>
				<option value="내용 일치">내용 일치</option>
				<option value="어법성 판단">어법성 판단</option>
				<option value="적절한 어휘">적절한 어휘</option>
				<option value="빈칸 추론">빈칸 추론</option>
				<option value="무관한 문장">무관한 문장</option>
				<option value="순서 삽입">순서 삽입</option>
				<option value="한문장 요약">한문장 요약</option>
				<option value="장문">장문</option>
			</select>
			<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal1_1">더보기구문 설정</button>
		</div>
		<div class="contentarea1">
			<textarea class="contentbox" id="contentbox1_1"></textarea>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="viewmoreModal1_1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		      			더보기구문 1<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext1_1"><br><br>
		      			더보기구문 2<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext2_1">
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>
		      		</div>
		    	</div>
			</div>
		</div>
		<div class="optionarea2">
			<select class="categorysel" id="categorysel2_1">
				<option value="">카테고리 선택</option>
				<option value="글의 목적">글의 목적</option>
				<option value="심경 변화">심경 변화</option>
				<option value="밑줄 친 의미">밑줄 친 의미</option>
				<option value="요지">요지</option>
				<option value="주제, 제목, 주장">주제, 제목, 주장</option>
				<option value="내용 일치">내용 일치</option>
				<option value="어법성 판단">어법성 판단</option>
				<option value="적절한 어휘">적절한 어휘</option>
				<option value="빈칸 추론">빈칸 추론</option>
				<option value="무관한 문장">무관한 문장</option>
				<option value="순서 삽입">순서 삽입</option>
				<option value="한문장 요약">한문장 요약</option>
				<option value="장문">장문</option>
			</select>
			<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal2_1">더보기구문 설정</button>
		</div>
		<div class="contentarea2">
			<textarea class="contentbox" id="contentbox2_1"></textarea>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="viewmoreModal2_1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		      			더보기구문 1<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext3_1"><br><br>
		      			더보기구문 2<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext4_1">
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>
		      		</div>
		    	</div>
			</div>
		</div>
		<div class="optionarea3">
			<select class="categorysel" id="categorysel1_2">
				<option value="">카테고리 선택</option>
				<option value="글의 목적">글의 목적</option>
				<option value="심경 변화">심경 변화</option>
				<option value="밑줄 친 의미">밑줄 친 의미</option>
				<option value="요지">요지</option>
				<option value="주제, 제목, 주장">주제, 제목, 주장</option>
				<option value="내용 일치">내용 일치</option>
				<option value="어법성 판단">어법성 판단</option>
				<option value="적절한 어휘">적절한 어휘</option>
				<option value="빈칸 추론">빈칸 추론</option>
				<option value="무관한 문장">무관한 문장</option>
				<option value="순서 삽입">순서 삽입</option>
				<option value="한문장 요약">한문장 요약</option>
				<option value="장문">장문</option>
			</select>
			<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal1_2">더보기구문 설정</button>
		</div>
		<div class="contentarea3">
			<textarea class="contentbox" id="contentbox1_2"></textarea>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="viewmoreModal1_2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		      			더보기구문 1<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext1_2"><br><br>
		      			더보기구문 2<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext2_2">
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>
		      		</div>
		    	</div>
			</div>
		</div>
		<div class="optionarea4">
			<select class="categorysel" id="categorysel2_2">
				<option value="">카테고리 선택</option>
				<option value="글의 목적">글의 목적</option>
				<option value="심경 변화">심경 변화</option>
				<option value="밑줄 친 의미">밑줄 친 의미</option>
				<option value="요지">요지</option>
				<option value="주제, 제목, 주장">주제, 제목, 주장</option>
				<option value="내용 일치">내용 일치</option>
				<option value="어법성 판단">어법성 판단</option>
				<option value="적절한 어휘">적절한 어휘</option>
				<option value="빈칸 추론">빈칸 추론</option>
				<option value="무관한 문장">무관한 문장</option>
				<option value="순서 삽입">순서 삽입</option>
				<option value="한문장 요약">한문장 요약</option>
				<option value="장문">장문</option>
			</select>
			<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal2_2">더보기구문 설정</button>
		</div>
		<div class="contentarea4">
			<textarea class="contentbox" id="contentbox2_2"></textarea>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="viewmoreModal2_2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		      			더보기구문 1<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext3_2"><br><br>
		      			더보기구문 2<br>
		        		<input type="text" class="viewmoretext" id="viewmoretext4_2">
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>
		      		</div>
		    	</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var a=1;
		var b=2;
		$(document).ready(function() {
			$(document).on("click","#plusbtn", function(){
				a += 2;
				b += 2;
				var test = '';
				test += '<div class="bodyarea">';
				test += '<img class="mainheaderimg1" alt="img1" src="img/admin/content8.png">';
				test += '<div class="optionarea1">';
				test += '<select class="categorysel" id="categorysel1_'+ a +'">';
				test += '<option value="">카테고리 선택</option>';
				test += '<option value="글의 목적">글의 목적</option>';
				test += '<option value="심경 변화">심경 변화</option>';
				test += '<option value="밑줄 친 의미">밑줄 친 의미</option>';
				test += '<option value="요지">요지</option>';
				test += '<option value="주제, 제목, 주장">주제, 제목, 주장</option>';
				test += '<option value="내용 일치">내용 일치</option>';
				test += '<option value="어법성 판단">어법성 판단</option>';
				test += '<option value="적절한 어휘">적절한 어휘</option>';
				test += '<option value="빈칸 추론">빈칸 추론</option>';
				test += '<option value="무관한 문장">무관한 문장</option>';
				test += '<option value="순서 삽입">순서 삽입</option>';
				test += '<option value="한문장 요약">한문장 요약</option>';
				test += '<option value="장문">장문</option>';
				test += '</select>';
				test += '<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal1_'+a+'">더보기구문 설정</button>';
				test += '</div>';
				test += '<div class="contentarea1">';
				test += '<textarea class="contentbox" id="contentbox1_'+ a +'"></textarea>';
				test += '</div>';
				test += '<div class="modal fade" id="viewmoreModal1_'+ a +'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
				test += '<div class="modal-dialog">';
				test += '<div class="modal-content">';
				test += '<div class="modal-header">';
				test += '<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>';
				test += '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
				test += '</div>';
				test += '<div class="modal-body">';
				test += '더보기구문 1<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext1_'+ a +'"><br><br>';
				test += '더보기구문 2<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext2_'+ a +'">';
				test += '</div>';
				test += '<div class="modal-footer">';
				test += '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>';
				test += '<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '<div class="optionarea2">';
				test += '<select class="categorysel" id="categorysel2_'+ a +'">';
				test += '<option value="">카테고리 선택</option>';
				test += '<option value="글의 목적">글의 목적</option>';
				test += '<option value="심경 변화">심경 변화</option>';
				test += '<option value="밑줄 친 의미">밑줄 친 의미</option>';
				test += '<option value="요지">요지</option>';
				test += '<option value="주제, 제목, 주장">주제, 제목, 주장</option>';
				test += '<option value="내용 일치">내용 일치</option>';
				test += '<option value="어법성 판단">어법성 판단</option>';
				test += '<option value="적절한 어휘">적절한 어휘</option>';
				test += '<option value="빈칸 추론">빈칸 추론</option>';
				test += '<option value="무관한 문장">무관한 문장</option>';
				test += '<option value="순서 삽입">순서 삽입</option>';
				test += '<option value="한문장 요약">한문장 요약</option>';
				test += '<option value="장문">장문</option>';
				test += '</select>';
				test += '<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal2_'+ a +'">더보기구문 설정</button>';
				test += '</div>';
				test += '<div class="contentarea2">';
				test += '<textarea class="contentbox" id="contentbox2_'+ a +'"></textarea>';
				test += '</div>';
				test += '<div class="modal fade" id="viewmoreModal2_'+ a +'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
				test += '<div class="modal-dialog">';
				test += '<div class="modal-content">';
				test += '<div class="modal-header">';
				test += '<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>';
				test += '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
				test += '</div>';
				test += '<div class="modal-body">';
				test += '더보기구문 1<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext3_'+ a +'"><br><br>';
				test += '더보기구문 2<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext4_'+ a +'">';
				test += '</div>';
				test += '<div class="modal-footer">';
				test += '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>';
				test += '<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '<div class="optionarea3">';
				test += '<select class="categorysel" id="categorysel1_'+ b +'">';
				test += '<option value="">카테고리 선택</option>';
				test += '<option value="글의 목적">글의 목적</option>';
				test += '<option value="심경 변화">심경 변화</option>';
				test += '<option value="밑줄 친 의미">밑줄 친 의미</option>';
				test += '<option value="요지">요지</option>';
				test += '<option value="주제, 제목, 주장">주제, 제목, 주장</option>';
				test += '<option value="내용 일치">내용 일치</option>';
				test += '<option value="어법성 판단">어법성 판단</option>';
				test += '<option value="적절한 어휘">적절한 어휘</option>';
				test += '<option value="빈칸 추론">빈칸 추론</option>';
				test += '<option value="무관한 문장">무관한 문장</option>';
				test += '<option value="순서 삽입">순서 삽입</option>';
				test += '<option value="한문장 요약">한문장 요약</option>';
				test += '<option value="장문">장문</option>';
				test += '</select>';
				test += '<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal1_'+ b +'">더보기구문 설정</button>';
				test += '</div>';
				test += '<div class="contentarea3">';
				test += '<textarea class="contentbox" id="contentbox1_'+ b +'"></textarea>';
				test += '</div>';
				test += '<div class="modal fade" id="viewmoreModal1_'+ b +'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
				test += '<div class="modal-dialog">';
				test += '<div class="modal-content">';
				test += '<div class="modal-header">';
				test += '<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>';
				test += '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
				test += '</div>';
				test += '<div class="modal-body">';
				test += '더보기구문 1<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext1_'+ b +'"><br><br>';
				test += '더보기구문 2<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext2_'+ b +'">';
				test += '</div>';
				test += '<div class="modal-footer">';
				test += '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>';
				test += '<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '<div class="optionarea4">';
				test += '<select class="categorysel" id="categorysel2_'+ b +'">';
				test += '<option value="">카테고리 선택</option>';
				test += '<option value="글의 목적">글의 목적</option>';
				test += '<option value="심경 변화">심경 변화</option>';
				test += '<option value="밑줄 친 의미">밑줄 친 의미</option>';
				test += '<option value="요지">요지</option>';
				test += '<option value="주제, 제목, 주장">주제, 제목, 주장</option>';
				test += '<option value="내용 일치">내용 일치</option>';
				test += '<option value="어법성 판단">어법성 판단</option>';
				test += '<option value="적절한 어휘">적절한 어휘</option>';
				test += '<option value="빈칸 추론">빈칸 추론</option>';
				test += '<option value="무관한 문장">무관한 문장</option>';
				test += '<option value="순서 삽입">순서 삽입</option>';
				test += '<option value="한문장 요약">한문장 요약</option>';
				test += '<option value="장문">장문</option>';
				test += '</select>';
				test += '<button type="button" class="viewmorebtn" data-bs-toggle="modal" data-bs-target="#viewmoreModal2_'+ b +'">더보기구문 설정</button>';
				test += '</div>';
				test += '<div class="contentarea4">';
				test += '<textarea class="contentbox" id="contentbox2_'+ b +'"></textarea>';
				test += '</div>';
				test += '<div class="modal fade" id="viewmoreModal2_'+ b +'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
				test += '<div class="modal-dialog">';
				test += '<div class="modal-content">';
				test += '<div class="modal-header">';
				test += '<h1 class="modal-title fs-5" id="exampleModalLabel">더보기구문 설정</h1>';
				test += '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
				test += '</div>';
				test += '<div class="modal-body">';
				test += '더보기구문 1<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext3_'+ b +'"><br><br>';
				test += '더보기구문 2<br>';
				test += '<input type="text" class="viewmoretext" id="viewmoretext4_'+ b +'">';
				test += '</div>';
				test += '<div class="modal-footer">';
				test += '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>';
				test += '<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
				test += '</div>';
                $("body").append(test);
			});
			$(document).on("click","#deletebtn", function(){
				$(".bodyarea")[$(".bodyarea").length-1].remove();
				a -= 2;
				b -= 2;
			});
		})
		Array.prototype.division = function (n) {
			var arr = this;
			var len = arr.length;
			var cnt = Math.floor(len/n);
			var tmp = [];
			for(var i = 0; i < cnt; i++){
				tmp.push(arr.splice(0,n));
			}
			return tmp;
		}
		function insertgrammar(){
        	var grammarValues = new Array();
        	for(j=1;j<=b;j++){
       			var sel1 = document.getElementById("categorysel1_"+j);
       			var sel2 = document.getElementById("categorysel2_"+j);
           		var category1 = sel1.options[sel1.selectedIndex].value;
           		var content1 = document.getElementById("contentbox1_"+j).value;
           		var category2 = sel2.options[sel2.selectedIndex].value;
           		var content2 = document.getElementById("contentbox2_"+j).value;
           		var viewmoretext1 = document.getElementById("viewmoretext1_"+j).value;
           		var viewmoretext2 = document.getElementById("viewmoretext2_"+j).value;
           		var viewmoretext3 = document.getElementById("viewmoretext3_"+j).value;
           		var viewmoretext4 = document.getElementById("viewmoretext4_"+j).value;
           		for(var k=1; k<=8; k++){
           			if(k==1){
           				grammarValues.push(category1);
           			}if(k==2){
           				grammarValues.push(content1);
           			}if(k==3){
           				grammarValues.push(viewmoretext1);
           			}if(k==4){
           				grammarValues.push(viewmoretext2);
           			}if(k==5){
           				grammarValues.push(category2);
           			}if(k==6){
           				grammarValues.push(content2);
           			}if(k==7){
           				grammarValues.push(viewmoretext3);
           			}if(k==8){
           				grammarValues.push(viewmoretext4);
           			}
           		}
        	}
        	const maintitle=document.getElementById("maintitle").value;
        	for(m=0;m<grammarValues.length;m+=9){
    			grammarValues.splice(m,0,maintitle)
			}
        	var resultgrammar = grammarValues.division(9);
        	const grammar_title = "grammar_title";
        	const grammar_category1 = "grammar_category1";
        	const grammar_content1 = "grammar_content1";
        	const grammar_viewmoretext1 = "grammar_viewmoretext1";
        	const grammar_viewmoretext2 = "grammar_viewmoretext2";
        	const grammar_category2 = "grammar_category2";
        	const grammar_content2 = "grammar_content2";
        	const grammar_viewmoretext3 = "grammar_viewmoretext3";
        	const grammar_viewmoretext4 = "grammar_viewmoretext4";
        	for(var k=0;k<resultgrammar.length;k++){
				resultgrammar[k] = {[grammar_title]:resultgrammar[k][0],[grammar_category1]:resultgrammar[k][1],[grammar_content1]:resultgrammar[k][2],[grammar_viewmoretext1]:resultgrammar[k][3],[grammar_viewmoretext2]:resultgrammar[k][4],[grammar_category2]:resultgrammar[k][5],[grammar_content2]:resultgrammar[k][6],[grammar_viewmoretext3]:resultgrammar[k][7],[grammar_viewmoretext4]:resultgrammar[k][8]};
			}
        	var jsonresult = JSON.stringify(resultgrammar);
        	$.ajax({
				url: 'grammarinsert.mdo',
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