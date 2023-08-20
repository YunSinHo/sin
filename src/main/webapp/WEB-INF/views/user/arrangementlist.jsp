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
		<c:forEach var="list" items="${ArrangementList}" varStatus="status">
			<tr>
				<td onclick="location.href='arrangementtest.do?arrangement_name=${list.arrangement_name}'">
					<c:out value="${list.arrangement_name}" />
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>