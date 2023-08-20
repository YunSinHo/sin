<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>

<script>
function orderSuccess(id){
	if(confirm("업무완료 보고하시겠습니까?")){
		document.orderForm.action="orderSuccess.mdo";
		document.orderForm.submit();
		return true;
	}
}
function successFinal(id){
	if(confirm("최종완료처리 하시겠습니까?")){
		document.orderForm.action="successFinal.mdo";
		document.orderForm.submit();
		return true;
	}
}
function reOrder(id){
		if(confirm("재전송 하시겠습니까?")){
		document.orderForm.action="reOrder.mdo";
		document.orderForm.submit();
		return true;
		}
	
	
}
</script>
<form name="orderForm">
<input type="hidden" name="id" value="${orderListOne.id}">
<input type="hidden" name="teacher_name" value="${orderListOne.teacher_name}">
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

<c:if test="${loginTeacher.user_id eq 'admin'&&loginTeacher ne null&&orderListOne.fulfill eq 'o'}">
 <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">업무완료 보고</label>
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" name="replyteacher"
  readonly>${orderListOne.replyteacher}</textarea>
</div>
  </c:if>
<c:if test="${orderListOne.fulfill eq 'o'&&orderListOne.success eq 'o'&&loginTeacher.user_id eq 'admin'}">
<div class="mb-3 text-dark">
  <label for="exampleFormControlTextarea1" class="form-label">재전송내용</label>
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" id="reply" name="reply"
  readonly>${orderListOne.reply}</textarea>
</div>
</c:if>
<c:if test="${orderListOne.fulfill eq 'o'&&orderListOne.success eq 'x'&&loginTeacher.user_id eq 'admin'}">
<div class="mb-3 text-dark">
  <label for="exampleFormControlTextarea1" class="form-label">재전송내용</label>&nbsp;&nbsp;&nbsp;
  데드라인 변경 : <input type="text"  class="workday" name="deadline" id="datepicker" autocomplete="off">
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" id="reply" name="reply"
  >${orderListOne.reply}</textarea>
</div>
</c:if>

<c:if test="${orderListOne.success eq 'x'&&loginTeacher.user_id ne 'admin'&&orderListOne.reorder eq 'o'}">
<div class="mb-3 text-dark">
  <label for="exampleFormControlTextarea1" class="form-label">재전송내용</label>
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" name="reply"
  readonly>${orderListOne.reply}</textarea>
</div>
</c:if>

<c:if test="${loginTeacher.user_id ne 'admin'&&loginTeacher ne null&&orderListOne.fulfill eq 'x'}">
 <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">업무완료 보고</label>
  <textarea class="form-control col-sm-15" rows="3" id="exampleFormControlTextarea1" name="replyteacher"
  >${orderListOne.replyteacher}</textarea>
</div>
  </c:if>

<c:if test="${orderListOne.fulfill eq 'o'&&orderListOne.success eq 'x'&&loginTeacher.user_id eq 'admin'}">
<button class="btn btn-success"  onclick="successFinal(${orderListOne.id});">업무완료처리</button>
</c:if>
<c:if test="${orderListOne.fulfill eq 'o'&&orderListOne.success eq 'x'&&loginTeacher.user_id eq 'admin'}">
<button class="btn btn-success"  onclick="reOrder(${orderListOne.id});">재전송하기</button>
</c:if>
  <c:if test="${loginTeacher.user_id ne 'admin'&&loginTeacher ne null&&orderListOne.fulfill eq 'x'}">
  <button class="btn btn-success" onclick="orderSuccess();">업무완료</button>
  </c:if>
</form>

 <script>
$("#datepicker").datepicker({
    language: 'ko',
    Dateformat: 'YYYY-MM-DD HH:mm:ss'
});
    </script>
</body>
</html>