<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">학습센터 관리</h1>
                    <hr>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">학습센터</h6>
                            <button class="shadow-sm bg-body rounded" onclick="location.href='academyinsert.mdo'">학습센터 추가</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>seq</th>
                                            <th>학원 이름</th>
                                            <th>전화번호</th>
                                            <th>주소</th>
                                            <th>세부 주소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="list" items="${AcademyList}" varStatus="status">
											<tr>
												<td><c:out value="${status.count}" /></td>
												<td onclick="location.href='academyview.mdo?academy_seq=${list.academy_seq}'"><c:out value="${list.academy_name}" /></td>
												<td><c:out value="${list.academy_phone1}" />-<c:out value="${list.academy_phone2}" />-<c:out value="${list.academy_phone3}" /></td>
												<td><c:out value="${list.academy_address}" /></td>
												<td><c:out value="${list.academy_detailaddress}" /></td>
											</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
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
                        <span>Copyright &copy; Your Website 2021</span>
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
    <script>
        function rowDelsave(obj){
            var tr = obj.parentNode.parentNode;
            tr.parentNode.removeChild(tr);
            var insertTr = "";
            insertTr += "<tr>";
            insertTr += "<td><a href=\"#\" data-toggle=\"modal\" data-target=\"#inforModal\">김지민영어학원</a></td>";
            insertTr += "<td>홍길동</td>";
            insertTr += "<td>02-0000-0000</td>";
            insertTr += "<td>010-0000-0000</td>";
            insertTr += "<td>서울시 노원구 한글비석로</td>";
            insertTr += "</tr>";
            $("#dataTable2").append(insertTr);
        }
        function rowDelcancel(obj){
            var tr = obj.parentNode.parentNode;
            tr.parentNode.removeChild(tr);
        }
    </script>
</body>

</html>