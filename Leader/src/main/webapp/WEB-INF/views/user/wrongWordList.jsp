<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <script>
  	function goReExamSubjective(){
  		document.reExamForm.action="reExamSubjective.do?student_class="+"틀린단어목록";
  		document.reExamForm.submit();
  	}
  	function goReExamObjective(){
  		document.reExamForm.action="reExamObjective.do?student_class="+"틀린단어목록";
  		document.reExamForm.submit();
  	}
  </script>
  <form name="reExamForm"  method="POST">
	 <h2>틀린단어목록</h2>
	 <button type="button" class="btn btn-success" onclick="goReExamSubjective();">재시험보기(주관식)</button>
	 <button type="button" class="btn btn-success" onclick="goReExamObjective();">재시험보기(객관식)</button>
    <table class="table ">
        <tr>
        	<th>#</th>
            <th>구구단번호</th>
            <th>단어</th>
            <th>뜻</th>
            <th>틀린횟수</th>
        </tr>
        <c:forEach items="${examList}" var="wrong" varStatus="status">
        <tr>
        <td>${status.count}</td>
            <td>${wrong.word_seq}</td>
            <td>${wrong.word_name}</td>
            <td>${wrong.word_trans}</td>
           	<td>${wrong.wrongWordCount}회</td>
        </tr>
        <input type="hidden" name="word_seq" value="${wrong.word_seq}">
        <input type="hidden" name="word_name" value="${wrong.word_name}">
        <input type="hidden" name="word_trans" value="${wrong.word_trans}">
         </c:forEach>
       
    </table>
  
  </form>
  </body>
</html>