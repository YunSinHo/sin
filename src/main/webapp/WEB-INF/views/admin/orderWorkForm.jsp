<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<script>
function cancel(){
	if(confirm("취소하시겠습니까?")){
		return true;
	}
}
function submitOrder(id){
	if(confirm("전송하시겠습니까?")){
		document.orderForm.action="orderWorkOne.mdo";
		document.orderForm.submit();
		return true;
	}
}
</script>
<form name="orderForm">
<input type="hidden" name="id" value="${teacher.id}">
<input type="hidden" name="name" value="${teacher.name}">
 <h1 class="h1 mb-2 text-gray-800">${teacher.name}</h1>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" name="title"class="form-control" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control col-sm-15" rows="10" id="exampleFormControlTextarea1" name="content" ></textarea>
  <button class="btn btn-success" onclick="submitOrder(${teacher.id});">전송</button><br>
  <a class="btn btn-danger" onclick="cancel();" href="javascript:window.history.go(-1);">취소</a>
</div>
</form>
</body>
</html>