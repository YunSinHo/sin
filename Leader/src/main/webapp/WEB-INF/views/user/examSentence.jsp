<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <c:if test="${check eq 'subjective'}">
	<form name="goExam" action="examSentence.do" method="POST">
	<input type="hidden" name="gugudan_name" value="${gugudan_name}">
	<input type="hidden" name="num" value="${num}">
	
	<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-primary-800">${gugudan_name}&nbsp;영자신문&nbsp;${num}주관식</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-info">문장가져오기</h4>
                        </div>
                        <div class="card-body">
                        <textarea class="form-control col-sm-15" rows="13" name="sentence"></textarea>
                        <button type="submit" class="btn btn-success">문제풀기</button>
                        </div>
                    </div>

                </div>
                </form>
                </c:if>
                 <c:if test="${check eq 'objective'}">
	<form name="goExam" action="examSentenceObjective.do">
	<input type="hidden" name="gugudan_name" value="${gugudan_name}">
	<input type="hidden" name="num" value="${num}">
	<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-primary-800">${gugudan_name}&nbsp;영자신문&nbsp;${num}객관식</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-info">문장가져오기</h4>
                        </div>
                        <div class="card-body">
                        <textarea class="form-control col-sm-15" rows="13" name="sentence"></textarea>
                        <button type="submit" class="btn btn-success">문제풀기</button>
                        </div>
                    </div>

                </div>
                </form>
	</c:if>

</body>
</html>