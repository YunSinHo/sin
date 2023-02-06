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
function studentList(obj){
	if(obj=='o'){
		$('#studentList').show();
		$('#quitList').hide();
		$('#standByList').hide();
	}
	else if(obj=='x'){
		$('#studentList').hide();
		$('#quitList').show();
		$('#standByList').hide();
	}
	else if(obj=='t'){
		$('#studentList').hide();
		$('#quitList').hide();
		$('#standByList').show();
	}
}
function quitStudent(){
	if(confirm("탈퇴시키겠습니까?")){
		
		return true;
	}
	
}
function rejoinStudent(){
	if(confirm("재등록하겠습니까?")){
		return true;
	}
}
function approveStudent(){
	if(confirm("재등록하겠습니까?")){
		return true;
	}
}
</script>
                <div class="container-fluid">

                    <!-- Page Heading -->
                     <h1 class="m-0 font-weight-bold text-primary">학원생 관리</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        <button type="button" class="btn btn-dark"  onclick="location.href='studentClassList.mdo'">클래스 관리</button>
                        </div>
                        <div class="card-body">
                        <form method="get" name="studentClass" >
                            	<button type="button" class="btn btn-success"  onclick="studentList('o');">학원생목록</button>
                            	<button type="button" class="btn btn-success"  onclick="studentList('t');">가입대기목록</button>
                            	<button type="button" class="btn btn-danger"  onclick="studentList('x');">퇴원생</button>
                            <div class="filterarea">
                            </div>
                            <%--학원생 목록 --%>
                            <div class="table-responsive" id="studentList" style="display:block;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                  <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>학년</th>
                                            <th>학교</th>
                                            <th>학생 번호</th>
                                            <th>부모님번호</th>
                                            <th>가입일자</th>
                                            <th>탈퇴</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${studentList}" var="studentList">
                                    <tr><%--carrotList.mdo?student_parentnumber=${studentList.student_parentnumber}--%>
                                            <th>${studentList.name}<br>${studentList.stuid}</th>
                                            <th>${studentList.grade}</th>
                                          <th>${studentList.school}</th>
                                            <th>${studentList.number}</th>
                                            <th>${studentList.parentnumber}</th>
                                            <th><fmt:formatDate value="${studentList.join_date}" pattern="yyyy-MM-dd" /></th>
                                            <th><a href="quitStudent.mdo?id=${studentList.id}" onclick="quitStudent();">탈퇴하기</a></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <%--가입대기목록 --%>
<div class="table-responsive" id="standByList" style="display:none;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                              
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>학년</th>
                                            <th>가입신청 날짜</th>
                                            <th>가입승인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${studentStandByList}" var="studentStandByList">
                                    <tr>
<th>  ${studentStandByList.name}</th>
<th>${studentStandByList.grade}</th>
<th>${studentStandByList.join_date}</th>
<th><a  href="approve.mdo?id=${studentStandByList.id}" onclick="approveStudent();">승인하기</a></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <%--퇴원생 목록 --%>
<div class="table-responsive" id="quitList" style="display:none;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                             
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>학년</th>
                                            <th>퇴원날짜</th>
                                            <th>재등록</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${studentQuitList}" var="studentQuitList">
                                    <tr>
<th>${studentQuitList.name}</th>
<th>${studentQuitList.grade}</th>
<th><fmt:formatDate value="${studentQuitList.update_date}" pattern="yyyy-MM-dd" /></th>
<th><a href="reJoinStudent.mdo?id=${studentQuitList.id}" onclick="rejoinStudent();">재등록하기</a></th>
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