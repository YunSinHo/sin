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
 <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto" style="width: 1000px;color:black;">
      
      <div style="text align:center"><h2>일일학습</h2> <%=sf.format(nowTime)%></div>
      <hr>
      <div>
      	<c:forEach items="${daily}" var="daily">
      		반: ${daily.class_name}&nbsp;&nbsp;
      		교재명: ${daily.book_name}&nbsp;&nbsp;
      		내용: ${daily.title}&nbsp;&nbsp;
      		날짜: ${daily.create_date}<br>
      		
      	</c:forEach>
      </div>
      </div>
      
      </div>
<script>
</script>
</body>
</html>