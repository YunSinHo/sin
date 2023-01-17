<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.user.vo.ArrangementVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<style>
	.testarea{
		width:57.2917vw;
		height:auto;
		margin:auto;
		display:flex;
		flex-direction: column;
	}
	.headerarea{
		width:100%;
		display:flex;
		flex-direction:row;
		min-height:3vw;
		border:1px solid black;
		margin-bottom:10px;
	}
	.filearea{
		width:100%;
		display:flex;
		flex-direction:column;
		min-height:20vw;
		border:1px solid black;
		margin-bottom:10px;
	}
	.examarea{
		width:100%;
		display:flex;
		flex-direction:column;
		min-height:10vw;
		border:1px solid black;
		margin-bottom:10px;
	}
	.answerarea{
		width:100%;
		display:flex;
		flex-direction:row;
		min-height:3vw;
		border:1px solid black;
		margin-bottom:10px;
	}
	.explanationarea{
		width:100%;
		min-height:6vw;
		border:1px solid black;
	}
</style>
</head>
<body>
	<table id="dataTable" style="display:none;">
		<thead>
			<tr>
				<td>제목</td>
				<td>번호</td>
				<td>객,주관식</td>
				<td>시험타입</td>
				<td>문제</td>
				<td>정답</td>
				<td>설명</td>
				<td>객관식문항1</td>
				<td>객관식문항2</td>
				<td>객관식문항3</td>
				<td>객관식문항4</td>
				<td>객관식문항5</td>
				<td>주관식대체1</td>
				<td>주관식대체2</td>
				<td>주관식대체3</td>
				<td>주관식대체4</td>
				<td>문제 이미지</td>
				<td>문제 mp3</td>
			</tr>
		</thead>
		<c:forEach var="list" items="${arrangementtest}" varStatus="status">
			<tr>
				<td><c:out value="${list.arrangement_name}" /></td>
				<td><c:out value="${status.count}" /></td>
				<td><c:out value="${list.arrangement_type1}" /></td>
				<td><c:out value="${list.arrangement_type2}" /></td>
				<td><c:out value="${list.arrangement_header}" /></td>
				<td><c:out value="${list.arrangement_answer}" /></td>
				<td><c:out value="${list.arrangement_explanation}" /></td>
				<td><c:out value="${list.arrangement_exam1}" /></td>
				<td><c:out value="${list.arrangement_exam2}" /></td>
				<td><c:out value="${list.arrangement_exam3}" /></td>
				<td><c:out value="${list.arrangement_exam4}" /></td>
				<td><c:out value="${list.arrangement_exam5}" /></td>
				<td><c:out value="${list.arrangement_alternative1}" /></td>
				<td><c:out value="${list.arrangement_alternative2}" /></td>
				<td><c:out value="${list.arrangement_alternative3}" /></td>
				<td><c:out value="${list.arrangement_alternative4}" /></td>
				<td><c:out value="${list.arrangement_img_path}" /></td>
				<td><c:out value="${list.arrangement_mp3_path}" /></td>
			</tr>
		</c:forEach>
	</table>
	<div class="testarea" id="testarea">
		<div class="headerarea">
			<span class="seqarea" id=""></span>
			<span class="questionarea" id=""></span>
		</div>
		<div class="filearea">
			<div class="imgarea"></div>
			<div class="mp3area"></div>
		</div>
		<div class="examarea">
			<p><span class="examseqarea">①</span><span class="exam"></span></p>
			<p><span class="examseqarea">②</span><span class="exam"></span></p>
			<p><span class="examseqarea">③</span><span class="exam"></span></p>
			<p><span class="examseqarea">④</span><span class="exam"></span></p>
			<p><span class="examseqarea">⑤</span><span class="exam"></span></p>
		</div>
		<div class="answerarea">
			<span>정답 : </span><input type="text"><button onclick="">정답확인</button>
		</div>
		<div class="explanationarea">
			<span>추가 설명 : </span><div></div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script>
	    var table = document.getElementById('dataTable');//데이터를 추출할 DOM의 <table> 요소
	    var result = [];
	    for ( var i = 1; i < table.rows.length; i++ ) {//<tr> 숫자만큼 반복
	        var obj = {};
	        for ( var j = 0; j < table.rows[i].cells.length; j++ ) {//각 tr속 td 만큼 반복
	            var a = table.rows[0].cells[j].innerText.replace(/\s/g, '');//공백제거한 문자열로 변환
	            obj[a] = table.rows[i].cells[j].innerText;//객체 만들기
	        }
	        result.push(obj);//위에서 만들어진 객체를 반환할 배열의 원소로 설정
	    }
		console.log(result)
		var str = "";
		
	</script>
</body>
</html>