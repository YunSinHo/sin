<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</script>
<form name="addJoinForm">
공동업무<br>
<input type="text" name="title"><br>
공동업무<br>
<input type="text" name="title"><br>
공동업무<br>
<input type="text" name="title"><br>
<a class="btn btn-success" onclick="addOrder();">추가하기</a>
</form>
</body>
</html>