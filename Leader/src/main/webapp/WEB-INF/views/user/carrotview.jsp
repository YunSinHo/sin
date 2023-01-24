<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.admin.vo.CarrotVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="js/admin/img.js"></script>
<script src="js/admin/html2canvas.min.js"></script>
<script src="js/admin/jquery.min.js"></script>
</head><style>
body{
	margin:0;
}
img{
	width:100%;
	vertical-align:middle;
}
#card-body{
	position:relative !important;
	padding:0 !important;
}
.dayarea{
	position: absolute;
    top: 3.6%;
    right: 6.7%;
    width: 15%;
    text-align:center;
    font-size: 2.6783vw;
}
.classarea{
    position: absolute;
    top: 13.8%;
    right: 22%;
    width: 20%;
    height: 3.4vw;
    text-align:center;
    font-size:2.6783vw;
}
.namearea{
    position: absolute;
    top: 30%;
    left: 24.5%;
    width: 15.5%;
    font-size: 2.6783vw;
    text-align: center;
    height: 3.2vw;
}
.booksarea{
    position: absolute;
    top: 30%;
    right: 14%;
    width: 27%;
    height: 3vw;
    text-align: center;
    font-size: 2.6783vw;
}
.memorization{
    position: absolute;
    top: 52.7%;
    left: 32%;
    width: 17.5%;
    height: 6vw;
    text-align: center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.reportcheck{
    position: absolute;
    top: 52.7%;
    left: 69.65%;
    width: 17.15%;
    height: 6vw;
    text-align: center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.readcheck{
    position: absolute;
    top: 58.8%;
    left: 32%;
    width: 17.5%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.transcheck{
    position: absolute;
    top: 58.8%;
    left: 69.65%;
    width: 17.15%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.solvingcheck{
    position: absolute;
    top: 64.6%;
    left: 32%;
    width: 17.5%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.listencheck{
    position: absolute;
    top: 65%;
    left: 69.65%;
    width: 17.15%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.gettingcheck{
    position: absolute;
    top: 70.8%;
    left: 32%;
    width: 17.5%;
    height: 6.1vw;
    display:table;
}
.gettingbox{
	width: 100%;
    border: 0;
    resize: none;
    background-color: rgba(255,255,255,0);
    height: 100%;
    padding: 0;
    font-size:1.75vw;
    text-align:center;
    display:table-cell;
    vertical-align:middle;
    word-break: break-all;
}
.showdowncheck{
    position: absolute;
    top: 70.9%;
    left: 69.65%;
    width: 17.15%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.speechcheck{
    position: absolute;
    top: 77%;
    left: 32%;
    width: 17.5%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.perfectioncheck{
    position: absolute;
    top: 77.3%;
    left: 69.65%;
    width: 17.15%;
    height: 6vw;
    text-align:center;
    font-size: 2.5vw;
    line-height: 6vw;
}
.resultarea{
    position: absolute;
    top: 84%;
    left: 20%;
    width: 66.7%;
    height: 12.6vw;
    display:table;
}
.resultbox{
    width: 100%;
    height: 100%;
  	resize: none;
    font-size: 2.6783vw;
    border:0;
    background-color: rgba( 255, 255, 255, 0);
    display:table-cell;
    vertical-align:middle;
    word-break: break-all;
}
</style>
<script>
  $(function(){
    $("#shot").on("click", function(){
			// 캡쳐 라이브러리를 통해서 canvas 오브젝트를 받고 이미지 파일로 리턴한다.
      html2canvas(document.querySelector("#capture")).then(canvas => {
				saveAs(canvas.toDataURL('image/png'),"capture-test.png");
			});
    });
    function saveAs(uri, filename) { 
			// 캡쳐된 파일을 이미지 파일로 내보낸다.
      var link = document.createElement('a'); 
      if (typeof link.download === 'string') { 
        link.href = uri; 
        link.download = filename; 
        document.body.appendChild(link); 
        link.click(); 
        document.body.removeChild(link); 
      } else { 
        window.open(uri); 
      } 
    }
  });
</script>
<body>
 <button class="shot">이미지저장</button>
<form name="frm">
	<div id="card-body" >
		<img class="mainheaderimg1" alt="img1" src="img/admin/carrot3.png">
        <div class="dayarea">${carrot_view.carrot_date}</div>
        <div class="classarea">${carrot_view.carrot_class}</div>
        <div class="namearea">${carrot_view.carrot_name}</div>
        <div class="booksarea">${carrot_view.carrot_books}</div>
        <div class="memorization">${carrot_view.carrot_memorization}</div>
        <div class="reportcheck">${carrot_view.carrot_report}</div>
        <div class="readcheck">${carrot_view.carrot_read}</div>
        <div class="transcheck">${carrot_view.carrot_trans}</div>
        <div class="solvingcheck">${carrot_view.carrot_solving}</div>
        <div class="listencheck">${carrot_view.carrot_listen}P</div>
       	<div class="gettingcheck"><p class="gettingbox">${carrot_view.carrot_getting}</p></div>
        <div class="showdowncheck">${carrot_view.carrot_showdown}P</div>
        <div class="speechcheck">${carrot_view.carrot_speech}</div>
        <div class="perfectioncheck">${carrot_view.carrot_perfection}</div>
        <div class="resultarea"><p class="resultbox">${carrot_view.carrot_result}</p></div>
    </div>
    <input type="hidden" name="imgg" id="imgg" class="imgg" value="${carrot_view.carrot_seq}">
    </form>
   
    <script>
$(function(){
    $(".shot").click(function(e){
        html2canvas(document.getElementById("card-body")).then(function(canvas) {
        	var theForm = document.frm;
            var el = document.createElement("a")
            el.href = canvas.toDataURL("image/jpeg")
            el.download =theForm.imgg.value+'.jpg' //다운로드 할 파일명 설정
            el.click()
        })
    })
})
</script>
</body>
</html>