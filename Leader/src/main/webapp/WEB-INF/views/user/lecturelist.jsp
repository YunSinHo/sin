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
	<div class="printlist">
		영작 교재 목록
		<table>
			<c:forEach var="list" items="${LectureList}" varStatus="status">
				<tr>
					<td onclick="location.href='mylecture.do?lecture_seq=${list.lecture_seq}'">
						<c:out value="${list.lecture_name}" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>