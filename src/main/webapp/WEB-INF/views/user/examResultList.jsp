<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  
  
  <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">평균점수 : ${score}점</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="filterarea">
                            </div>
                            
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                    <thead>
                                        <tr>
                                            <th>클래스</th>
                                            <th>날짜</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <c:forEach items="${exam_list}" var="exam_list">
                                    <tr>
                                            <th><a href="examOne.do?id=${exam_list.id}">${exam_list.class_name}</a></th>
                                          <th>${exam_list.date}</th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>

</body>
</html>