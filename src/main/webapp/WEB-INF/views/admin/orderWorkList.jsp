<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>

    <!-- Custom styles for this template-->
<script>
	function selectDate(){
		if(confirm("날짜를 변경하시겠습니까?")){
			document.teacherList1.action="changeDate.mdo";
			document.teacherList1.submit();
			return true;
		}
		
	}
</script>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">완료된 업무</h1>

                    <!-- DataTales Example -->
                    <form name="teacherList1" method="get">
                    <div class="card shadow mb-4">
                     <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                       <div>날짜 선택 : <input type="text"  class="workday" name="choiceDate" id="datepicker" autocomplete="off"></div>
                        <div style="position: absolute;left: 305px;"><button type="button" class="btn btn-info" onclick="selectDate();">변경</button></div>
                        </div>
                       
                        <div class="card-body">
                        
                        <span id="messagedate"></span> <span id="mydate"></span>
                            <div class="table" id="teacherList" style="display:block;">
                                <table class="table table-bordered"  width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
            <col width=10%>
            <col width=40%>
            <col width=13%>
            <col width=13%>
            <col width=10%>
            <col width=13%>
        </colgroup> 
                                    <thead>
                                        <tr class="text-dark">
                                            <th>이름</th>
                                            <th>제목</th>
                                            <th>날짜</th>
                                            <th>완료시간</th>
                                            <th>상태</th>
                                            <th>데드라인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${finishOrderTeacher}" var="list">
                                    
                                    <tr>
                                    <th class="text-dark">${list.teacher_name}</th>
                                            <th class="text-dark"><a href="orderListOne.mdo?id=${list.id}">${list.title}<br>
                                            ${list.teacher_name}:${list.replyteacher}
                                            </a></th>
                                            <c:if test="${list.check ne 'x'}">
                                            <th><fmt:formatDate value="${list.create_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                            </c:if>
                                            <th><fmt:formatDate value="${list.update_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                            <th class="text-info">
                                            <c:if test="${list.reorder eq 'o'}">재전송된 업무</c:if>
                                            <c:if test="${list.success eq 'o'}">최종완료</c:if>
                                            <c:if test="${list.fulfill eq 'o'&&list.success eq 'x'}">완료</c:if>
                                            <c:if test="${list.check eq 'x'}">읽지않음</c:if>
                                            <c:if test="${list.check eq 'o'&&list.fulfill eq 'x'&&list1.reorder eq 'x'}">읽음</c:if>
                                            </th>
<th class="text-danger"><fmt:formatDate value="${list.deadline}" pattern="yyyy-MM-dd HH:mm" /></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">미완성업무</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                     <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                       
                        </div>
                       
                        <div class="card-body">
                        
                        <span id="messagedate"></span> <span id="mydate"></span>
                            <div class="table" id="teacherList" style="display:block;">
                                <table class="table table-bordered"  width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
             <col width=10%>
            <col width=40%>
            <col width=13%>
            <col width=13%>
            <col width=10%>
            <col width=13%>
        </colgroup> 
                                    <thead>
                                        <tr class="text-dark">
                                            <th>이름</th>
                                            <th>제목</th>
                                            <th>날짜</th>
                                            <th>읽기or완료</th>
                                            <th>상태</th>
                                            <th>데드라인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${incompleteOrder}" var="list1">
                                    
                                    <tr>
                                    <th class="text-dark">${list1.teacher_name}</th>
                                            <th><a href="orderListOne.mdo?id=${list1.id}">${list1.title}</a></th>
                                            <c:if test="${list1.check ne 'x'}">
                                            <th><fmt:formatDate value="${list1.create_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                            </c:if>
                                            <th><fmt:formatDate value="${list1.update_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                             <c:if test="${list1.check eq 'x'}">
                                            <th>X</th>
                                            </c:if>
                                            <th class="text-info">
                                            <c:if test="${list1.reorder eq 'o'}">재전송</c:if>
                                            <c:if test="${list1.success eq 'o'}">최종완료</c:if>
                                            <c:if test="${list1.fulfill eq 'o'&&list1.success eq 'x'}">완료</c:if>
                                            <c:if test="${list1.check eq 'x'}">읽지않음</c:if>
                                            <c:if test="${list1.check eq 'o'&&list1.fulfill eq 'x'&&list1.reorder eq 'x'}">읽음</c:if>
                                            </th>
                                            <th class="text-danger"><fmt:formatDate value="${list1.deadline}" pattern="yyyy-MM-dd HH:mm" /></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        </div>
</div>
<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">진행중인업무</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                     <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        
                        </div>
                       
                        <div class="card-body">
                        
                        <span id="messagedate"></span> <span id="mydate"></span>
                            <div class="table" id="teacherList" style="display:block;">
                                <table class="table table-bordered"  width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
            <col width=10%>
            <col width=40%>
            <col width=13%>
            <col width=13%>
            <col width=10%>
            <col width=13%>
        </colgroup> 
                                    <thead>
                                        <tr class="text-dark">
                                            <th>이름</th>
                                            <th>제목</th>
                                            <th>날짜</th>
                                            <th>읽은시간</th>
                                            <th>상태</th>
                                            <th>데드라인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${ongoingOrder}" var="list2">
                                    
                                    <tr>
                                    <th class="text-dark">${list2.teacher_name}</th>
                                            <th><a href="orderListOne.mdo?id=${list2.id}">${list2.title}</a></th>
                                            <c:if test="${list2.check ne 'x'}">
                                            <th><fmt:formatDate value="${list2.create_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                            </c:if>
                                            <th><fmt:formatDate value="${list2.update_date}" pattern="yyyy-MM-dd HH:mm" /></th>
                                             <c:if test="${list2.check eq 'x'}">
                                            <th>X</th>
                                            </c:if>
                                            <th class="text-info">
                                            <c:if test="${list2.reorder eq 'o'}">재전송</c:if>
                                            <c:if test="${list2.success eq 'o'}">최종완료</c:if>
                                            <c:if test="${list2.fulfill eq 'o'&&list2.success eq 'x'}">완료</c:if>
                                            <c:if test="${list2.check eq 'x'}">읽지않음</c:if>
                                            <c:if test="${list2.check eq 'o'&&list2.fulfill eq 'x'&&list2.reorder eq 'x'}">읽음</c:if>
                                            </th>
                                            <th class="text-danger"><fmt:formatDate value="${list2.deadline}" pattern="yyyy-MM-dd HH:mm" /></th>
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

    
    

    <script>
$("#datepicker").datepicker({
    language: 'ko'
});
    </script>
</body>

</html>