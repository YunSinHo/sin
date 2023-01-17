<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="location.href='tendencytest.do';">성향 검사 시작하기</button>
	<div class="printlist">
		작성 테스트 목록
		<table>
			<c:forEach var="list" items="${TendencyList}" varStatus="status">
				<tr>
					<td onclick="location.href='tendencyresult.do?tendency_seq=${list.tendency_seq}'">
						<c:out value="${list.tendency_name}" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>