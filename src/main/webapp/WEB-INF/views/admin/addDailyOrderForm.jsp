<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/admin/studentClass.js"></script>
     <!-- Custom styles for this template-->
    <link href="css/admin/sb-admin-2.min.css" rel="stylesheet">
    <link href="air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- Air datepicker css -->
    <link href="css/admin/tables.css" rel="stylesheet">
	<link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
		<!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="js/admin/jquery.dataTables.min.js"></script>
    <script src="js/admin/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/admin/datatables-demo.js"></script>
</head>
<body>
<script>
function addOrder(){
	var title;
	for(var i=0; i<document.getElementsByName("title").length;i++){
		if(i==document.getElementsByName("title").length-1)
			title+=document.getElementsByName("title")[i].value;
		else
		title+=document.getElementsByName("title")[i].value+",";
	}
	var title1=title.replace('undefined','');
	if(confirm("추가하시겠습니까?")){
		location.href="addJointOrder.mdo?title="+title1;
	window.opener.location.reload();
	window.close();
	return true;
	}
}
function addDailyOrder(){
	
}
var remove_div = function(test){		
	$("#"+test.id).remove();		
}
var cnt = 1;
var add_div = function(){
	var strMenu = "";
    var test = "t" + cnt;
   strMenu += '<div id="'+test+'">'
                + '<input type="text" id="title" style="width:300px;" name="title">&nbsp;&nbsp;'
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
function insertDailyOrder(){
	if(confirm("등록하시겠습니까?")){
		document.addDailyFrm.action="insertDailyOrder.mdo";
		document.addDailyFrm.submit();
		return true;
	}
}
function deleteDailyOrder(id){
	if(confirm("삭제하시겠습니까?")){
		document.addDailyFrm.action="deleteDailyOrder.mdo?id="+id;
		document.addDailyFrm.submit();
		return true;
	}
}
</script>
<form name="addDailyFrm" method="POST" >
<h2 style="color:black;">등록된 상시업무</h2>
			<c:forEach items="${dailyList}" var="list">
				<input type="text" style="border:none;"
					value="${list.title}">
				&nbsp;
				<button type="button" class="btn btn-danger" onclick="deleteDailyOrder('${list.id}');">삭제</button><br><br>
			</c:forEach>
	
		<br>
<input type="button" class="btn btn-primary" value="추가" onclick="add_div()"><br/>&nbsp;&nbsp;&nbsp;
    	<div id="room_type" style="width:900px">
    </div>
<input type="hidden" name="teacher_id" value="${teacher_id}">
<button type="button" class="btn btn-success" onclick="insertDailyOrder();">등록하기</button>
</form>
</body>
</html>