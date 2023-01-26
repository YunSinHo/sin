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
<form>
<c:forEach items="${classAll}" var="classAll">
<c:if test="${studentClass[1] eq classAll}">
등록&nbsp;${classAll}<br>
</c:if>
<c:if test="${studentClass[1] ne classAll}">
<input type="checkbox" name="name" value="${classAll}">${classAll}<br>
</c:if>

</c:forEach>
</form>
</body>
</html>