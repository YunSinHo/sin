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
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="m-0 font-weight-bold text-primary">단어클래스 관리</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                        <form method="get" name="studentClass" >
                            <input type="hidden" name="id" value="${id}">
                            	<button type="button" class="btn btn-success"  onclick="addClass();">클래스 추가</button>
                            	<button type="button" class="btn btn-danger" onclick="deleteClass();">클래스 삭제</button><br><br>
                            <div class="filterarea">
                            </div>
                            <%--학원생 목록 --%>
                            <div class="table-responsive" id="studentList" style="display:block;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
            <col width=15%>
            <col width=10%>
            <col width=45%>
            <col width=20%>
        </colgroup>
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>학년</th>
                                            <th>클래스</th>
                                            <th>가입날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${studentClassList}" var="studentClassList">
                                    <tr><%--carrotList.mdo?student_parentnumber=${studentList.student_parentnumber}--%>
                                        <%--    <th><a href="studentInfo.mdo?id=${studentClass.id}"> --%> 
<th><input type="radio" name="id" value="${studentClassList.id}">  ${studentClassList.name}<br>${studentClassList.user_id}</th>
<th>${studentClassList.grade}</th>
<th>${studentClassList.class_name}<br></th>
<th><fmt:formatDate value="${studentClassList.join_date}" pattern="yyyy-MM-dd" /></th>
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