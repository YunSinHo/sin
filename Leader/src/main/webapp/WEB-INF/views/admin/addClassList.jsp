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
                + '<input type="text" id="name" style="width:300px;" name="name">&nbsp;&nbsp;'
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
function insertClassList(){
	if(confirm("등록하시겠습니까?")){
		document.addClassFrm.action="insertClassList.mdo";
		document.addClassFrm.submit();
		return true;
	}
}
function deleteClassList(id){
	if(confirm("삭제하시겠습니까?")){
		document.addClassFrm.action="deleteClassList.mdo?id="+id;
		document.addClassFrm.submit();
		return true;
	}
}
</script>
<form name="addClassFrm" method="POST" >
<h2 style="color:black;">클래스 추가</h2>
			<c:forEach items="${classList}" var="list">
				<input type="text" style="border:none;"
					value="${list.name}">
				&nbsp;
				<button type="button" class="btn btn-danger" onclick="deleteClassList('${list.id}');">삭제</button><br><br>
			</c:forEach>
		<br>
<input type="button" class="btn btn-primary" value="추가" onclick="add_div()"><br/>&nbsp;&nbsp;&nbsp;
    	<div id="room_type" style="width:900px">
    </div>
<button type="button" class="btn btn-success" onclick="insertClassList();">등록하기</button>
</form>
</body>
</html>