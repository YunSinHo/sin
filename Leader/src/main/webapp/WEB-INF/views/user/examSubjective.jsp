<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <form name="testGugudan" method="POST">
  <input type="hidden" name="num" value="${num}">
	   <table class="table ">
        <tr>
        	<th>#</th>
            <th>단어</th>
            <th>뜻</th>
        </tr>
        <c:forEach items="${wpdf_view}" var="list" varStatus="status">
        <tr>
        	<td>${status.count}</td>
        	<td><input type="text" name="write" style="border:none"></td>
            <td>${list.word_trans}</td>
        </tr>
        	<input type="hidden" name="word_trans" value="${list.word_trans}">
				<input type="hidden" name="word_name" value="${list.word_name}">
				<input type="hidden" name="word_seq" value="${list.word_seq}">
         </c:forEach>
    </table>
  <button type="button"  class="btn btn-success" onclick="submitTest();">제출하기</button>
  </form>
  </body>
</html>