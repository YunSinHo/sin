<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">업무목록</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                        <form name="teacherList1" method="get">
                            <div class="table" id="teacherList" style="display:block;">
                                <table class="table table-bordered"  width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
            <col width=20%>
            <col width=50%>
            <col width=8%>
            <col width=10%>
        </colgroup> 
                                    <thead>
                                        <tr class="text-dark">
                                            <th>날짜</th>
                                            <th>제목</th>
                                            <th>상태</th>
                                            <th>데드라인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${reportList}" var="reportList">
                                    <tr>
                                    <c:if test="${reportList.reorder eq 'o'}">
                                    <th><fmt:formatDate value="${reportList.update_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                    </c:if>
                                    <c:if test="${reportList.reorder ne 'o'}">
                                    <th><fmt:formatDate value="${reportList.create_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                    </c:if>
                                            <th><a href="orderListOneRead.mdo?id=${reportList.id}">${reportList.title}</a></th>
                                            <th class="text-info">
                                            
                                            <c:if test="${reportList.reorder eq 'o'}">재전송된 업무</c:if>
                                            <c:if test="${reportList.success eq 'o'}">최종완료</c:if>
                                            <c:if test="${reportList.fulfill eq 'o'&&reportList.success eq 'x'}">완료</c:if>
                                            <c:if test="${reportList.check eq 'x'}">읽지않음</c:if>
                                            <c:if test="${reportList.check eq 'o'&&reportList.fulfill eq 'x'&&reportList.reorder eq 'x'}">읽음</c:if>
                                            </th>
                                             <th class="text-danger"><fmt:formatDate value="${reportList.deadline}" pattern="yyyy-MM-dd HH:mm" /></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            </form>
                        </div>
                    </div>
                    <h1 class="h1 mb-2 text-gray-800">공동업무</h1>
   <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table" id="teacherList" style="display:block;">
                                <table class="table table-bordered"  width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
            <col width=20%>
            <col width=50%>
            <col width=8%>
            <col width=10%>
        </colgroup> 
                                    <thead>
                                        <tr class="text-dark">
                                            <th>날짜</th>
                                            <th>제목</th>
                                            <th>상태</th>
                                            <th>데드라인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${realJointOrderList}" var="list">
                                    <tr>
                                    <c:if test="${list.reorder eq 'o'}">
                                    <th><fmt:formatDate value="${list.update_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                    </c:if>
                                    <c:if test="${list.reorder ne 'o'}">
                                    <th><fmt:formatDate value="${list.create_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                    </c:if>
                                            <th><a href="orderListOneRead.mdo?id=${list.id}">${list.title}</a></th>
                                            <th class="text-info">
                                            <c:if test="${list.reorder eq 'o'}">재전송된 업무</c:if>
                                            <c:if test="${list.success eq 'o'}">최종완료</c:if>
                                            <c:if test="${list.fulfill eq 'o'&&list.success eq 'x'}">완료</c:if>
                                            <c:if test="${list.check eq 'x'}">읽지않음</c:if>
                                            <c:if test="${list.check eq 'o'&&list.fulfill eq 'x'&&list.reorder eq 'x'}">읽음</c:if>
                                            </th>
                                             <th class="text-danger"><fmt:formatDate value="${list.deadline}" pattern="yyyy-MM-dd HH:mm" /></th>
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
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

   

</body>

</html>