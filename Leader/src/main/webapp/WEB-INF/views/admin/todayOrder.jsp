<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<script>
function addJointOrder(){
	var url = "addJointOrderForm.mdo";
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "addJoinForm", opt);	
	
}
function deleteJointOrder(){
	if(confirm("삭제하시겠습니까?"))
		return true;
}

</script>
<form name="todayOrder" method="post" action="addTodayOrder.mdo">
	<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">상시업무</h1>
                    <!-- DataTales Example -->
                    
                    <div class="card shadow mb-4">
                     <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                     <button type="button" class="btn btn-success" onclick="addJointOrder();">상시업무 추가</button> 
                        </div>
                        <div class="card-body">
                        
                            <div class="table" id="teacherList" style="display:block;">
                                <table class="table table-bordered" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
                                   <colgroup>
            <col width="60%">
            <col width="13%">
            <col width="13%">
        </colgroup> 
                                        <tr>
                                        <th>업무내용</th>
                                        <th>강사</th>
                                        <th>삭제</th>
                                        </tr>
                                        <c:forEach items="${jointOrderList}" var="list">
                                        <tr>
<td><input name="title" type="text" style="width:100%;border:none;" value="${list.title}"></td>
<td>
<select id="selbox" name="teacher_id" style="border:none;width:100%;">
	<option value="${0}">전체</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
                                        </td>
 <td><a type="button" class="btn btn-danger" href="deleteJointOrder.mdo?id=${list.id}"onclick="deleteJointOrder();">삭제하기</a></td>
                                        </tr>
                                        </c:forEach>
                                </table>
                            </div>
                            
                        </div>
                    </div>

                </div>
                
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800">개인업무</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                     <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                       </div>
                        <div class="card-body">
                            <div class="table" id="teacherList" style="display:block;">
 <table  border="1" class="table table-bordered" width="100%" cellspacing="0" style="text-align: center; vertical-align:middle;">
        <colgroup>
            <col width="60%">
            <col width="13%">
        </colgroup> 
                                  <thead>
<tr>
<th>업무내용</th>
<th>강사</th>
</tr>
</thead>
<tbody>
<tr>
<td><input type="text" name="title" style="border:none;width:100%;"></td>
<td>
<select id="selbox2" name="teacher_id" style="border:none;width:100%;">
	<option value="${9999}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
</td>
</tr>
<tr>
<td><input type="text" name="title" style="border:none;width:100%;"></td>
<td>
<select id="selbox2" name="teacher_id" style="border:none;width:100%;">
	<option value="${9999}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
</td>
</tr>
<tr>
<td><input type="text" name="title" style="border:none;width:100%;"></td>
<td>
<select id="selbox2" name="teacher_id" style="border:none;width:100%;">
	<option value="${9999}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
</td>
</tr>
<tr>
<td><input type="text" name="title" style="border:none;width:100%;"></td>
<td>
<select id="selbox2" name="teacher_id" style="border:none;width:100%;">
	<option value="${9999}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
</td>
</tr>
<tr>
<td><input type="text" name="title" style="border:none;width:100%;"></td>
<td>
<select id="selbox2" name="teacher_id" style="border:none;width:100%;">
	<option value="${9999}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
</td>
</tr>
<tr>
<td><input type="text" name="title" style="border:none;width:100%;"></td>
<td>
<select id="selbox2" name="teacher_id" style="border:none;width:100%;">
	<option value="${9999}">선택</option>
	<c:forEach items="${teacherList}" var="teacherList">
	<option value="${teacherList.id}">${teacherList.name}</option>
	</c:forEach>
</select>
</td>
</tr>

	                                        </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <button class="btn btn-success" type="submit">전송하기</button>
                </div>
                </form>
</body>
</html>