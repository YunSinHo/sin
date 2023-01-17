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
	<button onclick="location.href='schoolmatchtest.do';">학교 추천 테스트 시작하기</button>
	<div class="printlist">
		학교 추천 테스트 목록
		<table>
			<c:forEach var="list" items="${SchoolmatchList}" varStatus="status">
				<tr>
					<td onclick="location.href='schoolmatchresult.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<c:out value="${list.schoolmatch_name}" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>