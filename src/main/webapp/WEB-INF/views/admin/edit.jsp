<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
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
  	function addDept(){
  		var url = "addDeptListForm.mdo";
  		var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
  		window.open(url, "addDeptListForm", opt);	
  	}
function addClass(){
	var url = "addClassListForm.mdo";
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "addClassListForm", opt);	
  	}
  </script>
  <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto" style="width: 1000px;">
      <form name="addDeptForm">
      <div style="color:black">
      <button type="button" class="btn btn-success" onclick="addDept();">부서추가</button>
      	<h2>부서목록</h2>
      	<c:forEach items="${departmentList}" var="dept">
      	${dept.name}<br>
      	</c:forEach>
      </div>
      </form>
      <hr>
       <div style="color:black">
       <button type="button" class="btn btn-success" onclick="addClass();">클래스추가</button>
      	<h2>클래스목록</h2>
      	<c:forEach items="${classList}" var="classList">
      	${classList.name}<br>
      	</c:forEach>
      </div>
      <hr>
       <div style="color:black">
      	<h2>단어클래스목록</h2>
      	<c:forEach items="${wordClassList}" var="wordClassList">
      	${wordClassList.name}<br>
      	</c:forEach>
      </div>
      </div>
      </div>
</body>
</html>