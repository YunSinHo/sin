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
                    <h1 class="h1 mb-2 text-gray-800">학습자 관리</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-primary">학습자 관리</h4>
                        </div>
                        <div class="card-body">
                            <div class="filterarea">
                            </div>
                            <form action="selectStudent.mdo" method="get">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>학년</th>
                                            <th>학교</th>
                                            <th>학생 번호</th>
                                            <th>부모님번호</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <script>
                                    function goCarrotList(number){
                                    	 let f = document.createElement('form');
                                    	    
                                    	    let obj;
                                    	    obj = document.createElement('input');
                                    	    obj.setAttribute('type', 'hidden');
                                    	    obj.setAttribute('name', 'parentnumber');
                                    	    obj.setAttribute('value', number);
                                    	    
                                    	    f.appendChild(obj);
                                    	    f.setAttribute('method', 'post');
                                    	    f.setAttribute('action', 'carrotList.mdo');
                                    	    document.body.appendChild(f);
                                    	    f.submit();
                                    }
                                    </script>
                                    <c:forEach items="${studentList}" var="studentList">
                                    <tr><%--carrotList.mdo?student_parentnumber=${studentList.student_parentnumber}--%>
                                            <th><input type="checkbox" value="${studentList.parentnumber}" name="parentnumber">
                                          &nbsp;  <a href="javascript:goCarrotList('${studentList.parentnumber}')">
                                              ${studentList.name}</a></th>
                                            <th>${studentList.grade}</th>
                                          <th>${studentList.school}</th>
                                            <th>${studentList.number}</th>
                                            <th>${studentList.parentnumber}</th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
 <input type="submit" value="그룹당근작성">
 <input type="button" value="오늘당근목록" onclick="location.href='todayCarrotList.mdo?carrot_date=<%= sf.format(nowTime) %>'">
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