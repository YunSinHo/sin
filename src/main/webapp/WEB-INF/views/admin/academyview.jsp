<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">학습센터 관리</h1>
                    <hr>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">학습센터</h6>
                            <button class="shadow-sm bg-body rounded" id="">학습센터 추가</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>seq</th>
                                            <th>학원 이름</th>
                                            <th>대표 번호</th>
                                            <th>주소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>김지민영어학원</td>
                                            <td>02-0000-0000</td>
                                            <td>서울시 노원구 한글비석로</td>
                                        </tr>
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

    <!-- Logout Modal-->
    <div class="modal fade" id="inforModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">학습센터 세부정보</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="modalac logo"><img class ="logoimg"src="logotest1.jpg"></div>
                    <div class="modalac name">학원명 : 김지민영어학원</div>
                    <div class="modalac admin">대표자명 : 김영주</div>
                    <div class="modalac number">학원 번호 : 02-0000-0000</div>
                    <div class="modalac phone">대표자 번호 : 010-0000-0000</div>
                    <div class="modalac adress1">주소 : 서울특별시 노원구 한글비석로 265</div>
                    <div class="modalac adress2">상세주소 : 중계동, 영광프라자 7층</div>

                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">확인</button>
                </div>
            </div>
        </div>
    </div>
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