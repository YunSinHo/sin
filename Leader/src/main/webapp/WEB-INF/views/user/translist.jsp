<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<c:forEach var="list" items="${TransList}" varStatus="status">
				<tr>
					<td onclick="location.href='transview.do?trans_title=${list.trans_title}'">
						<c:out value="${list.trans_title}" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>