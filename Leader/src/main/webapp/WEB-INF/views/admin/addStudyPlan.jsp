<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
  <script src="js/login.js"></script>
  <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("MM/dd");
	SimpleDateFormat sf2 = new SimpleDateFormat("yyyy-MM-dd");
%>
  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 1000px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
  <form action="imsi4">
 <div class="input-form-backgroud row">
      <div class="input-form col-md-auto mx-auto" style="width: 1000px;color:black;">
      
      <div>교재명 : <input type="text"></div>
      <hr>
      <div>요일 선택 : 일<input type="checkbox" name="choiceDay" value="${'일'}"> 월<input type="checkbox" name="choiceDay" value="${'월'}"> 
      화<input type="checkbox" name="choiceDay" value="${'화'}"> 수<input type="checkbox" name="choiceDay" value="${'수'}"> 
      목<input type="checkbox" name="choiceDay" value="${'목'}">
       금<input type="checkbox" name="choiceDay" value="${'금'}"> 토<input type="checkbox" name="choiceDay" value="${'토'}">
       <input type="text" class="workday" id="datepicker" value="시작날짜" style="border:none;width:100px;" name="date">
       <span id="mydate"></span>
       <input type="hidden" id="mydate2" name="day" style="display:none;"/></div>
      <hr>
      <div>반 선택 <select>
      <c:forEach items="${classList}" var="classList">
      <option value="">${classList.name}</option>
      </c:forEach>
      </select>
      </div>
      <hr>
      <div>
      회차<br>
      <div id="room_type" style="width:900px">
    </div> 
    <br>
      <input type="button" class="btn btn-primary" value="추가" onclick="add_div()"><br/>&nbsp;&nbsp;&nbsp;
      </div>
      <input type="submit">
      </div>
      </div>
      </form>
<script>
$("#datepicker").datepicker({
    language: 'ko',
    dateFormat:'yyyy-mm-dd',
    dayNamesMin:["일","월","화","수","목","금","토"],
    onSelect:function(d){
        //요일 가져오기
        //데이터를 먼저 가져오고 (숫자로 넘어옴)
        var date=new Date($("#datepicker").datepicker({dateFormat:"yyyy-mm-dd"}).val());
        //일요일 0~
        week=new Array("일","월","화","수","목","금","토");
        $("#mydate").text(""+week[date.getDay()]+"");
        $("#mydate2").text(""+week[date.getDay()]+"");
        $("#messagedate").text(d);
    }
});
var cnt = 1;
var remove_div = function(test){		
	$("#"+test).remove();
	cnt--;
}

var add_div = function(){
	var choice="날짜 선택";
	var strMenu = "";
    var test =cnt;
   strMenu += '<div id="'+test+'"  style="width:900px;margin-top:5px;">'
           		+ ''+test+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="content" style="width:600px;" name="word"  >&nbsp;'
           		+ '<input type="button" id="test'+test+'" value="삭제" onclick="remove_div('+test+')">'
            + '</div>';                          
                                            
	$("#room_type").append(strMenu);
	cnt ++;
	
	
}
</script>
</body>
</html>