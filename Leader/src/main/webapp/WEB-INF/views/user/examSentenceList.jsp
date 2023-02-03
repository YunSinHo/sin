<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
	<table class="table">
		<tr>
			<th>클래스</th>
		</tr>
		<c:forEach var="list" items="${WordpdfList}" varStatus="status">
			<tr>
				<td>
				<a class="btn btn-Info" href="wordpdf.do?gugudan_name=${list.gugudan_name}">${list.gugudan_name}</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<table class="table">
		<tr>
			<th>시험보기</th>
		</tr>
			<tr>
			
				<td >
				<a class="btn btn-Success" href="examSubjective.do?gugudan_name=${student_class}&num=${30}">${student_class}&nbsp;30문제</a>
				</td>
			</tr>
			<tr>
			<td>
				<a class="btn btn-Success" href="examSubjective.do?gugudan_name=${student_class}&num=${60}">${student_class}&nbsp;60문제</a>
				</td>
			</tr>
			<tr>
			<td>
				<a class="btn btn-Success" href="examObjective.do?gugudan_name=${student_class}&num=${30}">${student_class}&nbsp;30문제 객관식</a>
				</td>
			</tr>
			<tr>
			<td>
				<a class="btn btn-Success" href="examObjective.do?gugudan_name=${student_class}&num=${60}">${student_class}&nbsp;60문제 객관식</a>
				</td>
				
			<tr>
			<td>
				<a class="btn btn-Success" href="examSentenceForm.do?gugudan_name=${student_class}&check=${'subjective'}">${student_class}&nbsp;영자신문</a>
				</td>
			</tr>
			<tr>
			<td>
				<a class="btn btn-Success" href="examSentenceForm.do?gugudan_name=${student_class}&check=${'objective'}">${student_class}&nbsp;영자신문&nbsp;객관식</a>
				</td>
			</tr>
			
	</table>
</body>
</html>