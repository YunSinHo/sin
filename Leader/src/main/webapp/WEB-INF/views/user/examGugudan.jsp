<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
 <h3>${student_class}</h3>
   <h2>점수:${score}점</h2>
    <table class="table ">
        <tr>
        	<th>#</th>
            <th>단어</th>
            <th>뜻</th>
            <th>작성한답</th>
            <th>결과</th>
        </tr>
        <c:forEach items="${gugudan_result}" var="gugudan" varStatus="status">
        <tr>
        	<td>${status.count}</td>
            <td>${gugudan.word_name}</td>
            <td>${gugudan.word_trans}</td>
            <td>${gugudan.write}</td>
            <td>${gugudan.ox}</td>
           
        </tr>
         </c:forEach>
       
    </table>
</body>
</html>