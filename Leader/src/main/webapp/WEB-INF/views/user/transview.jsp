<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.admin.vo.TransVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
.categoryarea1{
	position: absolute;
    left: 43%;
    top: 11.4%;
    font-size: 1.3889vw;
    color:#F3B3A1;
}
.translatearea1{
	position: absolute;
    left: 8%;
    width: 88%;
    top: 15.8%;
    height:5.4vw;
    font-size: 1.1111vw;
    line-height: 2.7vw;
    word-break: break-all;
}
.contentarea1{
    position: absolute;
    left: 8%;
    top: 19.4%;
    width: 88%;
    height: 9.7vw;
    line-height: 4.85vw;
    font-size: 1.1111vw;
    word-break: break-all;
}
.categoryarea2{
	position: absolute;
    left: 43%;
    top: 40.2%;
    font-size: 1.3889vw;
    color:#F3B3A1;
}
.translatearea2{
	position: absolute;
    left: 8%;
    width: 88%;
    top: 44.6%;
    height:5.4vw;
    font-size: 1.1111vw;
    line-height: 2.7vw;
    word-break: break-all;
}
.contentarea2{
    position: absolute;
    left: 8%;
    top: 48.2%;
    width: 88%;
    height: 9.7vw;
    line-height: 4.85vw;
    font-size: 1.1111vw;
    word-break: break-all;
}
.categoryarea3{
	position: absolute;
    left: 43%;
    top: 69.3%;
    font-size: 1.3889vw;
    color:#F3B3A1;
}
.translatearea3{
	position: absolute;
    left: 8%;
    width: 88%;
    top: 73.8%;
    height:5.4vw;
    font-size: 1.1111vw;
    line-height: 2.7vw;
    word-break: break-all;
}
.contentarea3{
    position: absolute;
    left: 8%;
    top: 77.4%;
    width: 88%;
    height: 9.7vw;
    line-height: 4.85vw;
    font-size: 1.1111vw;
    word-break: break-all;
}
</style>
</head>

<body>
	<c:forEach var="list" items="${showtrans}" varStatus="status">
		<c:if test="${list.trans_content2 == ''}">
			<div class="bodyarea">
				<img class="mainheaderimg3" alt="img3" src="/img/user/trans1.png">
				<div class="categoryarea1">
					${list.trans_category1}, ${list.trans_category2}
				</div>
				<div class="translatearea1">
					${list.trans_translate1}
				</div>
				<div class="contentarea1">
					${list.trans_content1}
				</div>
			</div>
		</c:if>
		<c:if test="${list.trans_content3 == ''}">
			<div class="bodyarea">
				<img class="mainheaderimg3" alt="img3" src="/img/user/trans2.png">
				<div class="categoryarea1">
					${list.trans_category1}, ${list.trans_category2}
				</div>
				<div class="translatearea1">
					${list.trans_translate1}
				</div>
				<div class="contentarea1">
					${list.trans_content1}
				</div>
				<div class="categoryarea2">
					${list.trans_category3}, ${list.trans_category4}
				</div>
				<div class="translatearea2">
					${list.trans_translate2}
				</div>
				<div class="contentarea2">
					${list.trans_content2}
				</div>
			</div>
		</c:if>
		<c:if test="${list.trans_content3 != ''}">
			<div class="bodyarea">
				<img class="mainheaderimg3" alt="img3" src="/img/user/trans3.png">
				<div class="categoryarea1">
					${list.trans_category1}, ${list.trans_category2}
				</div>
				<div class="translatearea1">
					${list.trans_translate1}
				</div>
				<div class="contentarea1">
					${list.trans_content1}
				</div>
				<div class="categoryarea2">
					${list.trans_category3}, ${list.trans_category4}
				</div>
				<div class="translatearea2">
					${list.trans_translate2}
				</div>
				<div class="contentarea2">
					${list.trans_content2}
				</div>
				<div class="categoryarea3">
					${list.trans_category5}, ${list.trans_category6}
				</div>
				<div class="translatearea3">
					${list.trans_translate3}
				</div>
				<div class="contentarea3">
					${list.trans_content3}
				</div>
			</div>
		</c:if>
	</c:forEach>
</body>
</html>