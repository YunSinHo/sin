<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>단어 구구단</th>
		</tr>
		<c:forEach var="list" items="${WordpdfList}" varStatus="status">
			<tr>
				<td onclick="location.href='wordpdf.do?gugudan_name=${list.gugudan_name}'">
					<c:out value="${list.gugudan_name}" />
				</td>
			</tr>
		</c:forEach>
	</table>
	<table>
		<tr>
			<th>단어 구구단 시험지</th>
		</tr>
		<c:forEach var="list" items="${WordpdfList}" varStatus="status">
			<tr>
				<td onclick="location.href='wordpdftest.do?gugudan_name=${list.gugudan_name}'">
					<c:out value="${list.gugudan_name}" />
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>