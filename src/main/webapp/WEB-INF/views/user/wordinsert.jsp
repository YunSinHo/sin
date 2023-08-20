<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
.wordsheader{
	display:flex;
	flex-direction: column;
}
.insertword{
	width:600px;
	height:600px;
}
</style>
</head>
<body>
	<div class="worsheader">
		<input type="text" placeholder="단 입력(ex)1-1)" id="gugudan">
		<textarea class="insertword" placeholder="Control+V로 붙여놓으세요." onkeydown="if(event.keyCode===9){var v=this.value,s=this.selectionStart,e=this.selectionEnd;this.value=v.substring(0, s)+'\t'+v.substring(e);this.selectionStart=this.selectionEnd=s+1;return false;}"></textarea>
		<button onclick="insertwords(this)">단어 추출</button>
	</div>
	<script>
		Array.prototype.division = function (n) {
			var arr = this;
			var len = arr.length;
			var cnt = Math.floor(len/n);
			var tmp = [];
			for(var i = 0; i < cnt; i++){
				tmp.push(arr.splice(0,n));
			}
			return tmp;
		}
		function insertwords(obj){
			var gugudan=document.getElementById("gugudan").value;//제목
			var i=0;
			const header="wpdf_header";
			const name="wpdf_name";
			const trans="wpdf_trans";
			var words = obj.parentNode.children[1].value;
			var splitwords = words.split(/\t|\n/);
			for(i=0;i<splitwords.length;i+=3){
				splitwords.splice(i,0,gugudan)
			}
			var result = splitwords.division(3);
			for(var j=0;j<result.length;j++){
				result[j] = {[header]:result[j][0],[name]:result[j][1],[trans]:result[j][2]};
			}
			var jsonwords = JSON.stringify(result);
			console.log(jsonwords);
			$.ajax({
				url: 'insertdata.do',
		        type: 'post',
		        data: jsonwords,
		        dataType: 'json',
		        contentType: 'application/json',
		        success: function(data) {
		        	alert("success!");
		        }
		    });
		};
	</script>
</body>
</html>