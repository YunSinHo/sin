<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>

<script>
function orderSuccess(){
	if(confirm("업무완료 보고하시겠습니까?")){
		return true;
	}
}
function modifyOrder(){
	if(confirm("수정하시겠습니까?")){
		return true;
	}
}
function successOrder(){
	if(confirm("최종완료처리 하시겠습니까?")){
		return true;
	}
}
</script>
<form name="orderForm">
<input type="hidden" name="id" value="${orderListOne.id}">
 <h1 class="h1 mb-2 text-gray-800">${orderListOne.teacher_name}&nbsp;&nbsp;<fmt:formatDate value="${orderListOne.update_date}" pattern="yyyy-MM-dd HH:mm" /></h1>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" name="title"class="form-control" id="exampleFormControlInput1"
  value="${orderListOne.title}" readonly>
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control col-sm-15" rows="6" id="exampleFormControlTextarea1" name="content"
  readonly>${orderListOne.content}</textarea>
</div>
<c:if test="${orderListOne.fulfill eq 'o'&&orderListOne.success eq 'x'}">
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">업무완료 내용</label>
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" name="reply"
  readonly>${orderListOne.reply}</textarea>
</div>
</c:if>
<c:if test="${loginTeacher.teaid ne 'admin'&&loginTeacher ne null}">
 <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">업무 완료 보고</label>
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" name="reply"
  readonly>${orderListOne.reply}</textarea>
</div>
  </c:if>

<a class="btn btn-success"  href="javascript:window.history.go(-1);">뒤로가기</a>
<c:if test="${loginTeacher.teaid eq 'admin'&&orderListOne.success eq 'x'}">
<a class="btn btn-success"  href="modifyOrder.mdo?id=${orderListOne.id}" onclick="modifyOrder();">수정하기</a>
<c:if test="${orderListOne.fulfill eq 'o'&&orderListOne.success eq 'x'}">
<a class="btn btn-success"  href="successFinal.mdo?id=${orderListOne.id}" onclick="successOrder();">업무완료처리</a>
</c:if>
</c:if>
  <c:if test="${loginTeacher.teaid ne 'admin'&&loginTeacher ne null}">
  <a class="btn btn-success"  href="orderSuccess.mdo?id=${orderListOne.id}" onclick="orderSuccess();">업무완료</a>
  </c:if>
</form>
</body>
</html>