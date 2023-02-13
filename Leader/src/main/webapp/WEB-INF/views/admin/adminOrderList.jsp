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
	SimpleDateFormat sf2 = new SimpleDateFormat("yyyy-MM-dd");
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
	for(var i=0;i<document.getElementsByName("id").length;i++){
	if(document.getElementsByName("id")[i].checked==false){
		document.getElementsByName("id")[i].value=0;
		document.getElementsByName("id")[i].checked=true;
	}
	}
	if(confirm("재전송하시겠습니까?")){
		document.adminCompleteForm.action="reOrder.mdo";
		document.adminCompleteForm.submit();
		return true;
	}
}
function ongoingReOrder(){
	for(var i=0;i<document.getElementsByName("id").length;i++){
		if(document.getElementsByName("id")[i].checked==false){
			document.getElementsByName("id")[i].value=0;
			document.getElementsByName("id")[i].checked=true;
		}
		}
	if(confirm("재전송하시겠습니까?")){
		document.adminOngoingForm.action="reOrder.mdo?re="+"o";
		document.adminOngoingForm.submit();
		return true;
	}
}
function incompleteReOrder(){
	for(var i=0;i<document.getElementsByName("id").length;i++){
		if(document.getElementsByName("id")[i].checked==false){
			document.getElementsByName("id")[i].value=0;
			document.getElementsByName("id")[i].checked=true;
		}
		}
	if(confirm("재전송하시겠습니까?")){
		document.adminIncompleteForm.action="reOrder.mdo?re="+"o";
		document.adminIncompleteForm.submit();
		return true;
	}
}
function deletePostscript(){
	if(confirm("삭제하시겠습니까?")){
		document.adminLongorderForm.action="deletePostscript.mdo";
		document.adminLongorderForm.submit();
		return true;
	}
}
function deleteLongorder(){
	if(confirm("삭제하시겠습니까?")){
		document.adminLongorderForm.action="deleteOrder.mdo";
		document.adminLongorderForm.submit();
		return true;
	}
}
function longorderReOrder(){
	for(var i=0;i<document.getElementsByName("id").length;i++){
	if(document.getElementsByName("id")[i].checked==false){
		document.getElementsByName("id")[i].value=0;
		document.getElementsByName("id")[i].checked=true;
	}
	}
	if(confirm("재전송하시겠습니까?")){
		document.adminLongorderForm.action="reOrder.mdo";
		document.adminLongorderForm.submit();
		return true;
	}
}
function newOrder(){
	if(confirm("등록하시겠습니까?")){
		document.adminNewForm.action="newOrder.mdo";
		document.adminNewForm.submit();
		return true;
	}
	
}
</script>
  <body>
  
  <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto" style="width: 1000px;">
      <h5 style="color:black;">업무현황표<br><%= sf.format(nowTime) %></h5>
      <div class="text-danger">
</div>
<hr>
    	<form  class="validation-form"   name="adminNewForm" method="POST">
    	<h5 style="color:black;">★ 업무추가</h5>
    	<input type="button" class="btn btn-primary" value="추가" onclick="add_div()"><br/>&nbsp;&nbsp;&nbsp;
    	<div id="room_type" style="width:900px">
    </div>   
    <button type="button" class="btn btn-info" onclick="newOrder();">등록</button>
    <hr> 
    <input type="hidden" name="deadline1" value=<%= sf2.format(nowTime) %>>
    </form>
    <form  class="validation-form"   name="adminCompleteForm" method="POST">
          <div>
            <h5 style="color:black;">★ 완성된업무</h5>
           <button type="button" class="btn btn-primary" onclick="deleteCompleteOrder();">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-info" onclick="completeReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;
           <c:forEach items="${finishOrderTeacher}" var="finishOrderTeacher">
<div class="text-dark">
<input type="checkbox"  name="id" value="${finishOrderTeacher.id}">&nbsp;
<input type="text" value="${finishOrderTeacher.title}" name="title" style="border:none; width:300px;" >
<select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${finishOrderTeacher.teacher_id}">선택</option>
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
           <form  class="validation-form"   name="adminOngoingForm" method="POST">
            <div>
            <h5 style="color:black;">★ 진행중인업무</h5>
            <button type="button" class="btn btn-primary" onclick="deleteOngoingOrder()">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-info" onclick="ongoingReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;
           <c:forEach items="${ongoingOrder}" var="ongoingOrder">
           <div class="text-dark">
            <input type="checkbox" name="id" value="${ongoingOrder.id}">&nbsp;
           <input type="text" name="title" value="${ongoingOrder.title}"style="border:none;width:300px;" >
           <select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${ongoingOrder.teacher_id}">선택</option>
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
           <form  class="validation-form"   name="adminIncompleteForm" method="POST">
         <div>
            <h5 style="color:black;">★ 미완성업무</h5>
             <button type="button" class="btn btn-primary" onclick="deleteIncompleteOrder()">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-info" onclick="incompleteReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;
           <c:forEach items="${incompleteOrder}" var="incompleteOrder">
           <div class="text-dark">
           <input type="checkbox" name="id" value="${incompleteOrder.id}">&nbsp;
           <input type="text" value="${incompleteOrder.title}" name="title" style="border:none;width:300px;">
           <select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${incompleteOrder.teacher_id}">선택</option>
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
          <form  class="validation-form"   name="adminLongorderForm" method="POST">
          <div>
            <h5 style="color:black;">★ 장기프로젝트</h5><br>
            <button type="button" class="btn btn-primary" onclick="deleteLongorder()">삭제</button>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-info" onclick="longorderReOrder();">재발송</button>&nbsp;&nbsp;&nbsp;<br>
            	<c:forEach items="${longOrderListAll}" var="longOrderListAll">
            	<input type="checkbox" name="id" value="${longOrderListAll.id}">&nbsp;
            	<input type="text" value="${longOrderListAll.title} ${longOrderListAll.fulfill}" name="title" style="border:none;width:300px;">
            	 <select id="selbox2"  name="teacher_id" style="border:none;">
<option value="${longOrderListAll.teacher_id}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
${longOrderListAll.teacher_name}
<input type="text" name="deadline" class="workday" name="deadline" id="datepicker" autocomplete="off" 
value="<fmt:formatDate value="${longOrderListAll.deadline}" pattern="MM/dd HH:mm"/>" style="border:none;"><br>
            	</c:forEach>
            	
          </div>
          
          <hr>
          <div>
            <h5 style="color:black;">★ 결과물제출</h5>
          </div>
          <hr >
          <div style="color:black;">
            <h5 style="color:black;">★ 특이사항</h5>
            <button type="button" class="btn btn-primary" onclick="deletePostscript()">삭제</button><br>
           <c:forEach items="${postscriptList}" var="postscriptList">
           <input style="color:black;" type="checkbox" name="post_id" value="${postscriptList.id}">
           ${postscriptList.teacher_name}(<fmt:formatDate value="${postscriptList.create_date}" pattern="MM/dd"/>): 
           ${postscriptList.content}<br>
           </c:forEach>
           </div><br>
           </form>
          </div>
          
          
        
      
      
</body>
<script>
	$(".workday").datepicker({
	    language: 'ko',
	    Dateformat: 'YYYY-MM-DD HH:mm:ss'
	});
	var remove_div = function(test){		
		$("#"+test.id).remove();		
	}
	var cnt = 1;
	var add_div = function(){
		var choice="날짜 선택";
		var strMenu = "";
	    var test = "t" + cnt;
	   strMenu += '<div id="'+test+'"  style="width:900px">'
	                + '<input type="text" id="title" style="width:300px;" name="title"  >&nbsp;&nbsp;'
	                +'<select id="selbox2"  name="teacher_id" style="border:none;">'
	           		+'<option value="${"0"}">강사 선택</option>'
	           			+'<c:forEach items="${teacherList}" var="teacherList">'
	           			+'<option value="${teacherList.id}">${teacherList.name}</option>'
	           			+'</c:forEach>'
	           		+'</select>&nbsp;&nbsp;'
	           		+'<input type="text" name="deadline" style="border:none;" class="workday" name="deadline" id="datepicker" autocomplete="off" value="'+choice+'"><br>'
	           		+ '<input type="button" id="test'+test+'" value="삭제" onclick="remove_div('+test+')">'
	            + '</div><br>';                          
	                                            
		$("#room_type").append(strMenu);
		cnt ++;
		$(".workday").datepicker({
		    language: 'ko',
		    Dateformat: 'YYYY-MM-DD HH:mm:ss'
		})
		
	}
	$(document).ready(function() {	
	});
</script>
</html>