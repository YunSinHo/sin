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
  <body>
  <form  class="validation-form"   name="todayOrderTeacher">
  <input type="hidden" name="teacher_name" value="${loginTeacher.name}">
  <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto">
      <h1 class="text-dark">${loginTeacher.name} 업무현황<br><%= sf.format(nowTime) %></h1>
      <div class="text-danger">
      필참＞
데드라인이 정해진 경우 그 시간안에 표기되지 않으면 미이행 건수에는 자동 카운트되며 업무평가에 반영되오니 데드라인이 별도 표기된 경우 시간을 준수해주세요.<br><br>

1. 당일 미션란에 기입된 항목은 반드시 당일 완료해야 하며 결과물은 첨부파일에 저장해두어야 함<br>
2. 이행 업무는 v 표시를 하고 미 이행 업무는 X 표시를 함<br>
3. 미 이행의 이유는 하단의 특이사항에 기입<br>
4. 장기프로젝트는 진행도를 표시
</div>
<hr style="background-color: green;height: 5px;">
        
          <div>
            <h5 class="text-dark">★ 당일업무</h5>
           <div class="text-muted"> 별 다른 데드라인이 없으면 당일 자정까지</div>
           <c:forEach items="${todayOrderList}" var="todayOrderList">
<div class="text-dark"><input type="checkbox" name="id" value="${todayOrderList.id}"><input type="text" value="${todayOrderList.title}"style="border:none;" ></div>
           </c:forEach>
          </div>
          <hr>
         <div>
            <h5 class="text-dark">★ 미완성업무</h5>
           <p class="text-muted"> 당일마감이니 상부에 보고하여 업무 전체적인 조율을 받고 데드라인 재확인 후 진행</p>
           <c:forEach items="${incompleteOrderOne}" var="incompleteOrderOne">
           <div class="text-dark"><input type="checkbox" name="id" value="${incompleteOrderOne.id}"><input type="text" value="${incompleteOrderOne.title}"style="border:none;" ></div>
           </c:forEach>
          </div>
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
            	<c:forEach items="${longOrderList}" var="longOrderList">
            	<input type="hidden" name="id2" value="${longOrderList.id}">
            	<tr>
            	<td class="text-dark">${longOrderList.title}<br><fmt:formatDate value="${longOrderList.deadline}" pattern="MM/dd" /></td>
            	<td><input type="radio" name="${'fulfill'}${longOrderList.id}" value="${'20%'}"></td>
            	<td><input type="radio" name="${'fulfill'}${longOrderList.id}"  value="${'40%'}"></td>
            	<td><input type="radio" name="${'fulfill'}${longOrderList.id}"  value="${'60%'}"></td>
            	<td><input type="radio" name="${'fulfill'}${longOrderList.id}" value="${'80%'}"></td>
            	<td><input type="radio" name="${'fulfill'}${longOrderList.id}"  value="${'o'}"></td>
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
           <div class="text-muted"> 미완성 사유 혹은 업무상 추가설명이 필요한 경우 기입</div>
           <div><textarea rows="7" cols="110" name="postscript"></textarea></div><br>
          </div>
          </form>
          <div style="float:right"><button type="button" class="btn btn-success" onclick="submitOrder()">제출하기</button></div>
          
        
      </div>
      </div>
      
</body>
<script>
	function submitOrder(){
		if(confirm("제출하시겠습니까?"))
		document.todayOrderTeacher.action="imsi2";
		document.todayOrderTeacher.submit();
			return true;
	}
</script>
</html>