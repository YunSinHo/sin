<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  
  <form name="wordObjective" action="examObjectiveCheck.do" method="POST">
  <input type="hidden" name="gugudan_name" value="${student_class}">
  <input type="hidden" name="num" value="${num}">
  <c:forEach items="${word_collect}" var="word_collect">
  <input type="hidden" name="word_collect" value="${word_collect}">
  </c:forEach>
 <h3>${student_class}</h3>
    <table class="table ">
        <colgroup>
        </colgroup>
        <tr>
            <th>단어</th>
            <th>보기</th>
        </tr>
        <c:forEach items="${wpdf_view}" var="gugudan" varStatus="status">
        <tr>
            <td>${gugudan.word_name}</td>
<td><input type="radio" name="write${status.index}" id="write" value="${gugudan.word_trans}">&nbsp;${gugudan.word_trans}<br>
<input type="radio"  name="write${status.index}"  id="write" value="${gugudan.word_trans1}">&nbsp;${gugudan.word_trans1}<br>
<input type="radio"  name="write${status.index}"  id="write" value="${gugudan.word_trans2}">&nbsp;${gugudan.word_trans2}<br>
<input type="radio"  name="write${status.index}"  id="write" value="${gugudan.word_trans3}">&nbsp;${gugudan.word_trans3}</td>
        </tr>
         <input type="hidden" name="word_name" value="${gugudan.word_name}">
    <input type="hidden" name="word_seq" value="${gugudan.word_seq}">
    <input type="hidden" name="word_trans" value="${gugudan.word_trans}">
         </c:forEach>
    </table>
    <button type="submit" class="btn"  >제출하기</button>
    </form>
</body>
</html>