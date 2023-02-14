<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<script>
function addDailyOrder(){
	for(var i=0; i<document.getElementsByName("teacher_id").length;i++){
		if(document.getElementsByName("teacher_id")[i].checked==true){
			var url = "addDailyOrder.mdo?teacher_id="+document.getElementsByName("teacher_id")[i].value;
			var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
			window.open(url, "addDailyForm", opt);	
			break;
			
		}
	}
	
	
}
</script>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-primary">상시업무 추가</h4>
                        </div>
                        <div class="card-body">
                            <div class="filterarea" style="display:block;">
                            <button type="button" class="btn btn-primary" onclick="addDailyOrder();">추가</button>
                            </div>
                            <form  name="addDailyForm" method="POST">
                            <div class="table-responsive">
                                <table class="table table-bordered"  width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                    <thead>
                                    <tr>
                                    <th>이름</th>
                                    <th>전화번호</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${teacherList}" var="teacherList">
                                    <tr>
                                    <td><input type="radio" name="teacher_id" value="${teacherList.id}">&nbsp;${teacherList.name}</td>
                                    <td>${teacherList.number}</td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                    </table>
                                    </div>
                                    </form>
                                    </div>
                                    </div>

</body>
</html>