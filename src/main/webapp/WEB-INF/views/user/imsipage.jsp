<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
		문단 작성
	</button>
	<div class="printlist">
		문단 목록
		<table>
			<c:forEach var="list" items="${ImsiList}" varStatus="status">
				<tr>
					<td onclick="location.href='imsiview.do?imsi_seq=${list.imsi_seq}'">
						<c:out value="${list.imsi_title}" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		    	<div class="modal-header">
		      		<h1 class="modal-title fs-5" id="exampleModalLabel">문단 작성</h1>
		      		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		    	</div>
		    	<form id="form1" name="ImsiVO" method="POST" onsubmit="return onclickOk()" action="/insertimsi.do">
			    	<div class="modal-body">
			    		제목 작성 : <input type="text" name="imsi_title"><br><br>
			    		본문 작성<br>
			    		<textarea name="imsi_content"></textarea>
			    	</div>
			    	<div class="modal-footer">
			      		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			      		<input type="submit" value="저장" class="btn btn-primary">
			    	</div>
		    	</form>
			</div>
		</div>
	</div>
</body>
</html>