<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
                <!-- Begin Page Content -->
                <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<script>
function teacherList(obj){
	if(obj=='o'){
		$('#teacherList').show();
		$('#quitTeacherList').hide();
		$('#standByTeacherList').hide();
	}
	else if(obj=='x'){
		$('#teacherList').hide();
		$('#quitTeacherList').show();
		$('#standByTeacherList').hide();
	}
	else if(obj=='t'){
		$('#teacherList').hide();
		$('#quitTeacherList').hide();
		$('#standByTeacherList').show();
	}
}
function quitTeacher(){
	if(confirm("탈퇴시키겠습니까?")){
		
		return true;
	}
	
}
function rejoinTeacher(){
	if(confirm("재등록하겠습니까?")){
		return true;
	}
}
function approveTeacher(){
	if(confirm("재등록하겠습니까?")){
		return true;
	}
}

</script>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">강사 관리</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                        <form name="teacherList1" method="get">
                        	<button type="button" class="btn btn-success"  onclick="teacherList('o');">강사목록</button>
                            	<button type="button" class="btn btn-success"  onclick="teacherList('t');">가입대기목록</button>
                            	<button type="button" class="btn btn-danger"  onclick="teacherList('x');">퇴원강사</button>
                            <div class="filterarea">
                            </div>
                            
                            <div class="table-responsive" id="teacherList" style="display:block;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>번호</th>
                                            <th>가입날짜</th>
                                            <th>탈퇴</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${teacherList}" var="teacherList">
                                    <tr>
                                    <th>${teacherList.name}</th>
                                            <th>${teacherList.number}</th>
                                            <th><fmt:formatDate value="${teacherList.join_date}" pattern="yyyy-MM-dd" /></th>
                                            <th><a href="quitTeacher.mdo?id=${teacherList.id}" onclick="quitTeacher();">탈퇴하기</a></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                              <%--가입대기목록 --%>
<div class="table-responsive" id="standByTeacherList" style="display:none;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                              
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>가입신청 날짜</th>
                                            <th>가입승인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${teacherStandByList}" var="teacherStandByList">
                                    <tr>
<th>  ${teacherStandByList.name}</th>
<th>${teacherStandByList.join_date}</th>
<th><a  href="approveTeacher.mdo?id=${teacherStandByList.id}" onclick="approveTeacher();">승인하기</a></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <%--퇴원강사 목록 --%>
<div class="table-responsive" id="quitTeacherList" style="display:none;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                             
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>퇴원날짜</th>
                                            <th>재등록</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${teacherQuitList}" var="teacherQuitList">
                                    <tr>
<th>${teacherQuitList.name}</th>
<th><fmt:formatDate value="${teacherQuitList.update_date}" pattern="yyyy-MM-dd" /></th>
<th><a href="reJoinTeacher.mdo?id=${teacherQuitList.id}" onclick="rejoinTeacher();">재등록하기</a></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            </form>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    
    <!-- Logout Modal-->
    <div class="modal fade" id="inforModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">학생 정보</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    학생 정보
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.mdo">Logout</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>