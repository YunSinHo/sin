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
  <body>
  <form  class="validation-form"   name="todayOrderTeacher" enctype="multipart/form-data" action="/upload" method="post">
  <input type="hidden" name="date" value="<%=sf2.format(nowTime)%>">
  <input type="hidden" name="teacher_name" value="${loginTeacher.name}">
  <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto">
      <h5 style="color:black; background-color:#e6f2ff;">${loginTeacher.name} 업무현황&nbsp;<%= sf.format(nowTime) %></h5>
      <div  style="font-size:5px; color:#ff6666;">
      필참＞
데드라인이 정해진 경우 그 시간안에 표기되지 않으면 미이행 건수에는 자동 카운트되며 업무평가에 반영되오니 데드라인이 별도 표기된 경우 시간을 준수해주세요.<br><br>

1. 당일 미션란에 기입된 항목은 반드시 당일 완료해야 하며 결과물은 첨부파일에 저장해두어야 함<br>
2. 미 이행의 이유는 하단의 특이사항에 기입<br>
3. 장기프로젝트는 진행도를 표시
</div>
<hr>
          <div>
            <h5 style="color:black;">★ 미완성업무</h5>
           <p style="font-size:5px; color:#ff6666;"> 당일마감이니 상부에 보고하여 업무 전체적인 조율을 받고 데드라인 재확인 후 진행</p>
           <div style="width:900px;"class="text-muted">업무내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
세부내용 (자료보관시위치, 미이행시 사유, 업무이행상세내용 기입)</div>
           <c:forEach items="${incompleteOrderOne}" var="incompleteOrderOne">
           <div class="text-dark"><input type="checkbox" name="id" value="${incompleteOrderOne.id}">&nbsp;
           <input type="text" value="${incompleteOrderOne.title}"style="border:none;width:300px;" readonly >
           <input type="text" name="content" value="${incompleteOrderOne.content}"style="border:none; width:500px" >
           <input type="file"  name="file">
           </div>
           </c:forEach>
          </div>
          <hr>
          <div>
            <h5 style="color:black;">★ 재전송된업무</h5>
            <div style="width:900px;" class="text-muted">업무내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
세부내용 (자료보관시위치, 미이행시 사유, 업무이행상세내용 기입) 
</div>
           <c:forEach items="${reorderList}" var="reorderList">
<div class="text-dark"><input type="checkbox" name="id" value="${reorderList.id}">&nbsp;
<c:choose>
<c:when test="${reorderList.importance eq 'o'}">
<input type="text" value="${reorderList.title}" readonly style="border:none; background-color:yellow;width:300px;" >
</c:when>
<c:otherwise>
<input type="text" value="${reorderList.title}" readonly style="border:none;width:300px;" >
</c:otherwise>
</c:choose>

<input type="text" name="content" value="${reorderList.content}"style="border:none; width:500px" >
<input type="file"  name="file">
</div>
           </c:forEach>
          </div>
          <hr>
         <div>
            <h5 style="color:black;">★ 당일업무</h5>
           <div style="font-size:5px; color:#ff6666;"> 별 다른 데드라인이 없으면 당일 자정까지</div>
            <div style="width:900px;" class="text-muted">업무내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
세부내용 (자료보관시위치, 미이행시 사유, 업무이행상세내용 기입) 
</div>
           <c:forEach items="${todayOrderList}" var="todayOrderList">
<div class="text-dark"><input type="checkbox" name="id" value="${todayOrderList.id}">&nbsp;
<c:choose>
<c:when test="${todayOrderList.importance eq 'o'}">
<input type="text" value="${todayOrderList.title}" readonly style="border:none; background-color:yellow;width:300px;" >
</c:when>
<c:otherwise>
<input type="text" value="${todayOrderList.title}" readonly style="border:none;width:300px;" >
</c:otherwise>
</c:choose>

<input type="text" name="content" value="${todayOrderList.content}"style="border:none; width:500px" >
<input type="file"  name="file">
</div>
           </c:forEach>
          </div>
          <hr >
          <div>
            <h5 style="color:black;">★ 상시업무</h5>
           <div style="font-size:5px; color:#ff6666;"> 별 다른 데드라인이 없으면 당일 자정까지</div>
            <div style="width:900px;" class="text-muted">업무내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
세부내용 (자료보관시위치, 미이행시 사유, 업무이행상세내용 기입) 
</div>
           <c:forEach items="${dailyOrderList}" var="dailyOrderList">
<div class="text-dark"><input type="checkbox" name="id" value="${dailyOrderList.id}">&nbsp;
<input type="text" value="${dailyOrderList.title}"style="border:none;width:300px;" readonly>
<input type="text" name="content" value="${'X'}"style="border:none; width:500px">
<input type="file"  name="file">
</div>
           </c:forEach>
          </div>
          <hr>
          <div>
            <h5 style="color:black;">★ 장기프로젝트</h5><br>
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
            	<td style="color:black;">${longOrderList.title}
            	<br>D.L(<fmt:formatDate value="${longOrderList.deadline}" pattern="MM/dd" />)<br>
            	<input type="file"  name="file"></td>
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
        
          <hr >
          <div>
            <h5 style="color:black;">★ 특이사항</h5>
           <div class="text-muted"> 미완성 사유 혹은 업무상 추가설명이 필요한 경우 기입</div>
           <div><textarea rows="7" cols="110" name="postscript"></textarea></div><br>
          </div>
	   </form>
          <div style="float:right"><button type="button" class="btn btn-primary" onclick="submitOrder()">제출하기</button></div>
          
        
      </div>
      </div>
      
</body>
<script>
	function submitOrder(){
		for(var i=0;i<document.getElementsByName("id").length;i++){
			if(document.getElementsByName("id")[i].checked==false){
				document.getElementsByName("id")[i].value=0;
				document.getElementsByName("id")[i].checked=true;
			}
			}
		if(confirm("제출하시겠습니까?"))
		document.todayOrderTeacher.action="submitOrder.mdo";
		document.todayOrderTeacher.submit();
			return true;
	}
</script>
</html>