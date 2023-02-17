<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>이미지 출력</h3>
		<div th:each="imageFile : ${all} ">
			<img  th:src="|/images/${imageFile.id}|" width="150" height="150">
			<p th:text="${imageFile.orgNm}"></p>
		</div>
		
		<h3>파일 다운로드</h3>
		<div th:each="file : ${all}">
			<a th:href="|/attach/${file.id}|" th:text="${file.orgNm}"></a>
		</div>
</body>
</html>