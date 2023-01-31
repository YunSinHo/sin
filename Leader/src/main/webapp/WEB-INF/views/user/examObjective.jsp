<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
 <h3>${student_class}</h3>
    <table class="table ">
        <colgroup>
            <col width=10%>
            <col width=20%>
            <col width=40%>
            <col width=30%>
        </colgroup>
        <tr>
            <th>단어</th>
            <th>보기</th>
            <th>보기</th>
            <th>보기</th>
            <th>보기</th>
        </tr>
        <c:forEach items="${wpdf_view}" var="gugudan">
        <tr>
            <td>${gugudan.word_name}</td>
            <td>${gugudan.word_trans}</td>
            <td>${gugudan.word_trans1}</td>
            <td>${gugudan.word_trans2}</td>
            <td>${gugudan.word_trans3}</td>
            
            
           
        </tr>
         </c:forEach>
       
    </table>
</body>
</html>