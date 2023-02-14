<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
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
  <form name="mainForm1">
  <input type="hidden" name="date" value="<%=sf2.format(nowTime)%>">
	<div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto">
      <div style="color:black;">
      	${teacher.name} 님 환영합니다.<br><br>
      	오늘은 <%= sf.format(nowTime) %> 입니다.<br>
      	즐거운 하루 보내세요 ^^<br><br>
      	${teacher.name}는<br>
      	오늘의 업무 오더를 열람하겠습니다.(상시업무 추가)&nbsp;<button class="btn btn-primary" onclick="addDailyOrder()">열람</button><br><br>
      	</form>
      	<form name="mainForm2">
      	이전의 업무 현황표만 확인하겠습니다.<input type="text" name="deadline" class="workday" name="deadline" id="datepicker" autocomplete="off" 
value="날짜 선택(전체)" style="border:none; width:115px;">
<button class="btn btn-primary" onclick="openOrder()">열람</button>
</form>
      </div>
      </div>
      </div>
	
</body>
<script>
function addDailyOrder(){
	if(confirm("오늘의 업무 오더를 열람하시겠습니까?(상시업무 추가)")){
		document.mainForm1.action="teacherOrderList.mdo"
		document.mainForm1.submit();
		return true;
	}
}
function openOrder(){
	if(confirm("이전 업무를 확인하시겠습니까?")){
		document.mainForm2.action="teacherOrderList2.mdo"
		document.mainForm2.submit();
		return true;
	}
}
	$(".workday").datepicker({
	    language: 'ko',
	    Dateformat: 'YYYY-MM-DD HH:mm:ss'
	});
	</script>
</html>