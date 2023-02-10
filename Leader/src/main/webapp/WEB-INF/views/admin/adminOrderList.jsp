<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <script src="js/login.js"></script>
  <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("MM/dd");
%>
  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 1000px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
<script>
function deleteCompleteOrder(){
	if(confirm("삭제하시겠습니까?")){
		document.adminCompleteForm.action="deleteOrder.mdo";
		document.adminCompleteForm.submit();
		return true;
	}
}
function deleteOngoingOrder(){
	if(confirm("삭제하시겠습니까?")){
		document.adminOngoingForm.action="deleteOrder.mdo";
		document.adminOngoingForm.submit();
		return true;
	}
}
function deleteIncompleteOrder(){
	if(confirm("삭제하시겠습니까?")){
		document.adminIncompleteForm.action="deleteOrder.mdo";
		document.adminIncompleteForm.submit();
		return true;
	}
}
function completeReOrder(){
	if(confirm("재전송하시겠습니까?")){
		document.adminCompleteForm.action="reOrder.mdo";
		document.adminCompleteForm.submit();
		return true;
	}
}
function ongoingReOrder(){
	if(confirm("재전송하시겠습니까?")){
		document.adminOngoingForm.action="reOrder.mdo";
		document.adminOngoingForm.submit();
		return true;
	}
}
function incompleteReOrder(){
	if(confirm("재전송하시겠습니까?")){
		document.adminIncompleteForm.action="reOrder.mdo";
		document.adminIncompleteForm.submit();
		return true;
	}
}
function deletePostscript(){
	if(confirm("삭제하시겠습니까?")){
		document.adminOrderForm.action="deletePostscript.mdo";
		document.adminOrderForm.submit();
		return true;
	}
}
</script>
  <body>
  <form  class="validation-form"   name="adminCompleteForm">
  <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto" style="width: 1000px;">
      <h1 class="text-dark">업무현황표<br><%= sf.format(nowTime) %></h1>
      <div class="text-danger">
</div>
<hr style="background-color: black;height: 5px;">
        
          <div>
            <h5 class="text-dark">★ 업무현황</h5>
           <div class="text-muted">완성된 업무</div>
           <button type="button" class="btn btn-info" onclick="deleteCompleteOrder();">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-danger" onclick="completeReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;
           <c:forEach items="${finishOrderTeacher}" var="finishOrderTeacher">
<div class="text-dark">
<input type="checkbox"  name="id" value="${finishOrderTeacher.id}">
<input type="text" value="${finishOrderTeacher.title}" name="title" style="border:none; width:300px;" >
<select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${0}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
${finishOrderTeacher.teacher_name}
<input type="text" name="deadline" class="workday" name="deadline" id="datepicker" autocomplete="off" 
value="<fmt:formatDate value="${finishOrderTeacher.deadline}" pattern="MM/dd HH:mm"/>" style="border:none;">

</div>
           </c:forEach>
          </div>
          </form>
          <hr>
           <form  class="validation-form"   name="adminOngoingForm">
            <div>
            <h5 class="text-dark">★ 진행중인업무</h5>
            <button type="button" class="btn btn-info" onclick="deleteOngoingOrder()">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-danger" onclick="ongoingReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;
           <c:forEach items="${ongoingOrder}" var="ongoingOrder">
           <div class="text-dark">
            <input type="checkbox" name="id" value="${ongoingOrder.id}">
           <input type="text" value="${ongoingOrder.title}"style="border:none;width:300px;" readonly>
           <select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${0}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
           	${ongoingOrder.teacher_name}
<input type="text" name="deadline" class="workday" name="deadline" id="datepicker" autocomplete="off" 
value="<fmt:formatDate value="${ongoingOrder.deadline}" pattern="MM/dd HH:mm"/>" style="border:none;">

</div>
           	
           </c:forEach>
           </div>
         </form>
          <hr>
           <form  class="validation-form"   name="adminIncompleteForm">
         <div>
            <h5 class="text-danger">★ 미완성업무</h5>
             <button type="button" class="btn btn-info" onclick="deleteIncompleteOrder()">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-danger" onclick="incompleteReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;
           <c:forEach items="${incompleteOrder}" var="incompleteOrder">
           <div class="text-dark">
           <input type="checkbox" name="id" value="${incompleteOrder.id}">
           <input type="text" value="${incompleteOrder.title}" name="title" style="border:none;width:300px;">
           <select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${0}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
${incompleteOrder.teacher_name}
<input type="text" name="deadline" class="workday" name="deadline" id="datepicker" autocomplete="off" 
value="<fmt:formatDate value="${incompleteOrder.deadline}" pattern="MM/dd HH:mm"/>" style="border:none;">
           </div>
           </c:forEach>
          </div>
          </form>
          <hr >
          <div>
            <h5 class="text-dark">★ 장기프로젝트</h5><br>
            	<table class="table table-m">
            	<colgroup>
        </colgroup> 
            	<thead>
            	<tr>
            	<th></th>
            	<th>20%</th>
            	<th>40%</th>
            	<th>60%</th>
            	<th>80%</th>
            	<th>완성</th>
            	</tr>
            	</thead>
            	<tbody>
            	<c:forEach items="${longOrderListAll}" var="longOrderListAll">
            	<input type="hidden" name="id2" value="${longOrderList.id}">
            	<tr>
            	<td class="text-dark">${longOrderListAll.title}<br><fmt:formatDate value="${longOrderListAll.deadline}" pattern="MM/dd" />
            	${longOrderListAll.teacher_name}
            	</td>
            	<td><input type="radio"onclick="return(false);" name="${'fulfill'}${longOrderListAll.id}" value="${'20%'}"></td>
            	<td><input type="radio"onclick="return(false);" name="${'fulfill'}${longOrderListAll.id}"  value="${'40%'}"></td>
            	<td><input type="radio"onclick="return(false);" name="${'fulfill'}${longOrderListAll.id}"  value="${'60%'}"></td>
            	<td><input type="radio"onclick="return(false);" name="${'fulfill'}${longOrderListAll.id}" value="${'80%'}"></td>
            	<td><input type="radio"onclick="return(false);" name="${'fulfill'}${longOrderListAll.id}"  value="${'o'}"></td>
            	</tr>
            	</c:forEach>
            	</tbody>
            	</table>
          </div>
          <hr>
          <div>
            <h5 class="text-dark">★ 결과물제출</h5>
          </div>
          <hr >
          <div>
            <h5 class="text-dark">★ 특이사항</h5>
            <button type="button" class="btn btn-info" onclick="deletePostscript()">삭제</button><br>
           <c:forEach items="${postscriptList}" var="postscriptList">
           <input type="checkbox" name="post_id" value="${postscriptList.id}">${postscriptList.teacher_name}(<fmt:formatDate value="${postscriptList.create_date}" pattern="MM/dd"/>): 
           ${postscriptList.content}<br>
           </c:forEach>
           </div><br>
          </div>
          
          
        
      
      
</body>
<script>
	function submitOrder(){
		if(confirm("제출하시겠습니까?"))
		document.todayOrderTeacher.action="imsi2";
		document.todayOrderTeacher.submit();
			return true;
	}
	$(".workday").datepicker({
	    language: 'ko',
	    Dateformat: 'YYYY-MM-DD HH:mm:ss'
	});
</script>
</html>