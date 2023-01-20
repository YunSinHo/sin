<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<form action="insertCarrotGroup.mdo">
    <table  >
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>책제목</th>
                                            <th>단어테스트</th>
                                            <th>독후감</th>
                                            <th>원음눈으로읽기</th>
                                            <th>요약문영작</th>
                                            <th>관련문제풀기</th>
                                            <th>기억에남는문장</th>
                                            <th>주요구문습득</th>
                                            <th>기문암기발표</th>
                                            <th>정독쓰기및말하기</th>
                                            <th>숙제완성도</th>
                                            <th>총평</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <script>
                                    function goCarrotList(number){
                                    	 let f = document.createElement('form');
                                    	    
                                    	    let obj;
                                    	    obj = document.createElement('input');
                                    	    obj.setAttribute('type', 'hidden');
                                    	    obj.setAttribute('name', 'student_parentnumber');
                                    	    obj.setAttribute('value', number);
                                    	    
                                    	    f.appendChild(obj);
                                    	    f.setAttribute('method', 'post');
                                    	    f.setAttribute('action', 'carrotList.mdo');
                                    	    document.body.appendChild(f);
                                    	    f.submit();
                                    }
                                    </script>
                                    <c:forEach items="${studentList}" var="studentList">
                                    <input type="hidden" name="carrot_date" value="<%= sf.format(nowTime) %>">
                                    <input type="text" name="student_parentnumber" value="${studentList.student_parentnumber}" style="display:none;">
                                    <input type="text" name="student_class" value="${studentList.student_class}" style="display:none;">
                                    <input type="text" name="student_name" value="${studentList.student_name}" style="display:none;">
                                    <tr><%--carrotList.mdo?student_parentnumber=${studentList.student_parentnumber}--%>
                                            <th><a href="javascript:goCarrotList('${studentList.student_parentnumber}')">
                                              ${studentList.student_name}</a></th>
                                             <th><input type="text" class="booksbox" id="booksbox" name="carrot_books"></th>
                                            <th><input type="text" name="carrot_memorization"></th>
                                             <th><input type="text" name="carrot_report"></th>
                                          <th><input type="text" name="carrot_read"></th>
                                            <th><input type="text" name="carrot_trans"></th>
                                            <th><input type="text" name="carrot_solving"></th>
                                            <th><input type="text" name="carrot_listen"></th>
                                            <th><select class="gettingbox" name="gettingselect1" id="gettingselect1" onchange="gettingkindchange(this)">
	                                    		<option value="">대분류</option>
	                                    		<option value="문장의 형식">문장의 형식</option>
	                                    		<option value="시제">시제</option>
	                                    		<option value="조동사">조동사</option>
	                                    		<option value="수동태">수동태</option>
	                                    		<option value="부정사">부정사</option>
	                                    		<option value="동명사">동명사</option>
	                                    		<option value="분사">분사</option>
	                                    		<option value="분사구문">분사구문</option>
	                                    		<option value="명사와 대명사">명사와 대명사</option>
	                                    		<option value="형용사, 부사">형용사, 부사</option>
	                                    		<option value="비교급, 최상급">비교급, 최상급</option>
	                                    		<option value="전치사">전치사</option>
	                                    		<option value="접속사">접속사</option>
	                                    		<option value="관계사">관계사</option>
	                                    		<option value="가정법">가정법</option>
	                                    		<option value="일치와 화법">일치와 화법</option>
	                                    		<option value="특수구문">특수구문</option>
	                                    	</select>
	                                    	<br>
	                                    	<select class="gettingbox" id="gettingkind" name="carrot_getting">
	                                    		<option>대분류 우선 선택</option>
	                                    	</select></th>
                                            <th><input type="text" name="carrot_showdown"></th>
                                            <th><input type="text" name="carrot_speech"></th>
                                            <th><select class="perfectionbox" name="carrot_perfection">
	                                    		<option value="A+">A+</option>
	                                    		<option value="A">A</option>
	                                    		<option value="B+">B+</option>
	                                    		<option value="B">B</option>
	                                    		<option value="C">C</option>
	                                    		<option value="F">F</option>
	                                    	</select></th>
                                            <th><input type="text" name="carrot_result"></th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <input type="button" onclick="history.go(-1);" value="뒤로가기">
                                <input type="submit" value="등록하기">
                                </form>
                                <script>
        $("#datepicker").datepicker({
            language: 'ko'
        });
        function gettingkindchange(r){
        	var a = ["1형식과 2형식","감각동사","3형식","4형식","5형식","사역동사","지각동사"];
        	var b = ["현재시제","과거시제","미래시제","완료시제","진행시제","완료진행시제","시제일치"];
        	var c = ["can, may, will","must, should","should의 생략","used to, would","조동사 + have + p.p.","조동사 관용 표현"];
        	var d = ["수동태 만드는 법","수동태 안되는 동사","수동태 시제","조동사있는 수동태","4형식 수동태","5형식 수동태","구동사 수동태","목적어가 that절인 수동태","수동태 관용표현"];
        	var e = ["to부정사 명사적용법","to부정사 형용사적용법", "to부정사 부사적용법","부정사를 목적어로 쓰는 동사","의문사 + to부정사","be to용법","too ~ to, enough to","to부정사 의미상주어","to부정사 시제","원형부정사"];
        	var f = ["동명사 의미상주어","동명사 시제와 태","동명사를 목적어로 쓰는 동사","동명사 관용 표현"];
        	var g = ["현재분사 vs. 과거분사","감정을 나타내는 분사","현재분사 vs. 동명사"];
        	var h = ["분사구문찾기","독립분사구문","분사구문의 시제와 태","with+명사+분사","분사구문 관용표현"];
        	var i = ["셀 수 있는 명사","셀 수 없는 명사","명사의 소유격","재귀대명사","특수용법 it","부정대명사:one,some,any,another,other"];
        	var j = ["형용사용법","수량형용사","부사역할","형용사와 형태가 같은 부사","-ly가 붙으면 의미가 달라지는 부사","빈도부사 위치","타동사 + 부사"];
        	var k = ["비교급","비교급강조표현","최상급"];
        	var l = ["시간을 나타내는 전치사","장소를 나타내는 전치사","전치사구(형용사역할)","전치사구(부사역할)"];
        	var m = [" and, but, or, so","상관접속사","명사절 접속사: that, if/whether","명사절 접속사의문사S+V","부사절을 이끄는 접속사: 시간","부사절을 이끄는 접속사: 이유","부사절을 이끄는 접속사: 조건","부사절을 이끄는 접속사: 양보","부사절을 이끄는 접속사: so that ~","부사절을 이끄는 접속사: so ~ that …","다양한 의미의 부사절을 이끄는 접속사","접속부사"];
        	var n = ["관계대명사의 역할과 종류","주격 관계대명사","목적격 관계대명사","소유격 관계대명사","관계대명사 that","관계대명사 what","전치사 + 관계대명사","관계부사의 역할과 종류","관계사의 계속적 용법","복합관계사"];
        	var o = ["가정법과거","가정법과거완료","혼합가정법","if 생략가정법","Without 가정법","I wish 가정법","as if[though] 가정법"];
        	var p = ["수 일치","시제일치"];
        	var q = ["강조: It is ~ that 강조 구문","부정","도치","생략","동격","병치"];
        	var target = document.getElementById("gettingkind");
        	
        	if(r.value == "문장의 형식") var change = a;
        	else if(r.value == "시제") var change = b;
        	else if(r.value == "조동사") var change = c;
        	else if(r.value == "수동태") var change = d;
        	else if(r.value == "부정사") var change = e;
        	else if(r.value == "동명사") var change = f;
        	else if(r.value == "분사") var change = g;
        	else if(r.value == "분사구문") var change = h;
        	else if(r.value == "명사와 대명사") var change = i;
        	else if(r.value == "형용사, 부사") var change = j;
        	else if(r.value == "비교급, 최상급") var change = k;
        	else if(r.value == "전치사") var change = l;
        	else if(r.value == "접속사") var change = m;
        	else if(r.value == "관계사") var change = n;
        	else if(r.value == "가정법") var change = o;
        	else if(r.value == "일치와 화법") var change = p;
        	else if(r.value == "특수구문") var change = q;
    		
        	target.options.length = 0;
        	
        	for(x in change){
        		var opt = document.createElement("option");
        		opt.value = change[x];
        		opt.innerHTML = change[x];
        		target.appendChild(opt);
        	}
        }
    </script>
</body>
</html>