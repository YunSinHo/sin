<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<script>				

function countChecked(obj){ 					
	var page=document.getElementsByName("page");
	var pageCnt=0;
	for(var i=0; i<page.length;i++){
		if(page[i].checked){
			pageCnt++;
		}
	}
	if(pageCnt>2){
		alert("시작페이지와 마지막페이지를 선택해주세요.");
		obj.checked=false;
		return false;
	}
}
</script>
	<form name="goExam" action="wordpdfPageExam.do" method="POST">
	<input type="hidden" name="restPage" value="${restPage}">
	<input type="hidden" name="gugudan_name" value="${gugudan_name}">
	<input type="hidden" name="num" value="${num}">
	
	<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-primary-800">${gugudan_name}&nbsp;${num}문제</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-info">페이지선택</h4>
                        </div>
                        <div class="card-body">
                        <c:forEach items="${page}" var="page">
                        <input type="checkbox" value="${page}" name="page" onclick="countChecked(this);">${page}페이지<br>
                        <input type="hidden" name="allPage" value="${page}">
                        </c:forEach>
                        <button type="submit" class="btn btn-success">문제풀기</button>
                        </div>
                    </div>

                </div>
                </form>
</body>
</html>