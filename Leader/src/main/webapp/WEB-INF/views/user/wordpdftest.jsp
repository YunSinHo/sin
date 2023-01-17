<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.user.vo.WordpdfVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <style>
        @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
        * {
            margin: 0;
            padding: 0;
            font-family: 'Noto Sans KR', sans-serif;
            box-sizing: border-box;
        }
        @media print {
            .contentheader {background-color:#FFFF00 !important; -webkit-print-color-adjust:exact;}
            .bodytrans{font-size: 10pt; transform: scale(0.7); text-align:left; margin-left: -20px; white-space: nowrap;}
            .bodyword{font-size: 10pt; text-align: left; padding-left: 10px;}
            .bigword{font-size: 10pt; transform: scale(0.45); text-align:left; margin-left: -40px; white-space: nowrap;}
        }
        .insertname{
            width:100%;
            margin-bottom:20px;
            height:50px;
        }
        .insertword{
            width:100%;
            height:700px;
        }        
        img{
            width:100%;
            vertical-align:middle;
        }        
        .imgarea{
            width:100%;
            position:relative;
        }
        .headnamearea{
            position:absolute;
            left: 70%;
            top:35%;
            font-size: 9.5vw;
            color: #12887A;
        }
        .namearea{
            position:absolute;
            left: 87.3%;
            top:5.86%;
            font-size: 3.5vw;
            color: #12887A;
        }
        .wordcontent1{
            position:absolute;
            width: 44%;
            height: 85%;
            left: 5%;
            top: 10.5%;
            border: 1px solid #12887A;
            text-align: center;
        }
        .wordcontent2{
            position:absolute;
            width: 44%;
            height: 85%;
            right: 5%;
            top: 10.5%;
            border: 1px solid #12887A;
            text-align: center;
        }
        .contentheader{
            display: flex;
            height: 4%;
            background-color: #FFFF00;
            border-bottom: 1px solid #12887A;
            font-size: 1.2vw;
        }
        .headernum{
            width: 10%;
            border-right: 1px solid #12887A;
            line-height: 4.6875vw;
            color: #12887A;
        }
        .headerword{
            width: 40%;
            border-right: 1px solid #12887A;
            line-height: 4.6875vw;
            color: #12887A;
        }
        .headertrans{
            width: 50%;
            line-height: 4.6875vw;
            color: #12887A;
        }
        .contentbody{
            height: 96%;
            overflow: hidden;
        }
        .bodycontent{
            border-bottom: 1px solid #12887A;
            height: 3.333333333333332%;
            display: flex;
        }
        .bodynum{
            width: 10%;
            border-right: 1px solid #12887A;
            line-height: 3.7396vw;
            font-size: 1.2vw;
        }
        .bodyword{
            width: 40%;
            border-right: 1px solid #12887A;
            line-height: 3.7396vw;
            font-size: 1.2vw;
        }
        .bodytrans{
            width: 50%;
            line-height: 3.7396vw;
        }
        .testarea{
		    height: 2.4648vw;
		    width: 95%;
		    text-align: center;
	    }
        </style>
</head>
<body>
	<table id="dataTable" style="display:none;">
	<thead>
			<tr>
				<td>제목</td>
				<td>단어</td>
				<td>해석</td>
			</tr>
		</thead>
	   	<c:forEach var="list" items="${wpdf_view}" varStatus="status" >
			<tr>
				<td><c:out value="${list.word_seq}" /></td>
				<c:choose>
				<c:when test="${status.count <= 30}">
				<td><c:out value="${list.word_name}" /></td>
				<td></td>
				</c:when>
				<c:otherwise>
				<td></td>
				<td><c:out value="${list.word_trans}"/></td>
				</c:otherwise>
			</c:choose>
			</tr>
			
		</c:forEach> 
		</table>
    <div class="imgarea">
        <div class="mainimg">
            <img class="mainimg1" alt="img1" src="/img/user/001단어.png">
        </div>
        <div class="headnamearea">
            <span id="headname1" ></span>
        </div>
    </div>
    <div class="imgarea">
        <div class="mainimg">
            <img class="mainimg2" src="/img/user/002단어.png">
        </div>
        <div class="namearea">
            <span class='topname'></span>
        </div>
        <div class="wordcontent1">
            <div class="contentheader">
                <div class="headernum">
                    번호
                </div>
                <div class="headerword">
                    영단어
                </div>
                <div class="headertrans">
                    한글의미
                </div>
            </div>
            <div class="contentbody" id="wordcontent1">
            </div>
        </div>
        <div class="wordcontent2">
            <div class="contentheader">
                <div class="headernum">
                    번호
                </div>
                <div class="headerword">
                    영단어
                </div>
                <div class="headertrans">
                    한글의미
                </div>
            </div>
            <div class="contentbody" id="wordcontent2">
            </div>
        </div>
    </div>
    <div>
    <table id="dataTable" >
		<thead>
			<tr>
				<td>제목</td>
				<td>단어</td>
				<td>해석</td>
			</tr>
		</thead>
		<c:forEach var="list" items="${wpdf_view}" varStatus="status">
			<tr>
			<td><c:out value="${list.word_seq}" /></td>
				<td><c:out value="${list.word_name}" /></td>
				<td><c:out value="${list.word_trans}" /></td>
			</tr>
		</c:forEach>
	</table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
   <script>
	    window.onload=function getTableData2() {
	        var table = document.getElementById('dataTable');//데이터를 추출할 DOM의 <table> 요소
	        var result = [];
	
	        for ( var i = 1; i < table.rows.length; i++ ) {//<tr> 숫자만큼 반복
	            var obj = {};
	            for ( var j = 0; j < table.rows[i].cells.length; j++ ) {//각 tr속 td 만큼 반복
	                var a = table.rows[0].cells[j].innerText.replace(/\s/g, '');//공백제거한 문자열로 변환
	                obj[a] = table.rows[i].cells[j].innerText;//객체 만들기
	            }
	            result.push(obj);//위에서 만들어진 객체를 반환할 배열의 원소로 설정
	        }
	        var name=result[0]["제목"];
            document.getElementById('headname1').innerText = "${gugudan.gugudan_name}";
            document.getElementsByClassName('topname')[0].innerText = "${gugudan.gugudan_name}";
	        var k = 1;
            var m = 30;
            var copy = "<div class='imgarea'>\
		                <div class='mainimg'>\
		            <img class='mainimg2' src='/img/user/002단어.png'>\
		        </div>\
		        <div class='namearea'>\
		            <span class='topname'></span>\
		        </div>\
		        <div class='wordcontent1'>\
		            <div class='contentheader'>\
		                <div class='headernum'>\
		                    번호\
		                </div>\
		                <div class='headerword'>\
		                    영단어\
		                </div>\
		                <div class='headertrans'>\
		                    한글의미\
		                </div>\
		            </div>\
		            <div class='contentbody'>\
		            </div>\
		        </div>\
		        <div class='wordcontent2'>\
		            <div class='contentheader'>\
		                <div class='headernum'>\
		                    번호\
		                </div>\
		                <div class='headerword'>\
		                    영단어\
		                </div>\
		                <div class='headertrans'>\
		                    한글의미\
		                </div>\
		            </div>\
		            <div class='contentbody'></div>\
		        </div>\
		    </div>";
		    for(let j = 0; j < result.length; j++) {
                document.getElementsByClassName("contentbody")[0].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'><input type='text' class='testarea' id='trans' name='word_trans'></div>\
                </div>";
                if(j>=m){
                    document.getElementsByClassName("contentbody")[1].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'><input type='text' class='testarea' id='words' name='word_name'></div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*2)){
                    var n=1;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*2); j<result.length; j++){
                document.getElementsByClassName("contentbody")[2].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=90){
                    document.getElementsByClassName("contentbody")[3].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*4)){
                    var n=2;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*4); j<result.length; j++){
                document.getElementsByClassName("contentbody")[4].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*5)){
                    document.getElementsByClassName("contentbody")[5].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*6)){
                    var n=3;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*6); j<result.length; j++){
                document.getElementsByClassName("contentbody")[6].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*7)){
                    document.getElementsByClassName("contentbody")[7].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*8)){
                    var n = 4;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*8); j<result.length; j++){
                document.getElementsByClassName("contentbody")[8].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*9)){
                    document.getElementsByClassName("contentbody")[9].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*10)){
                    var n = 5;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*10); j<result.length; j++){
                document.getElementsByClassName("contentbody")[10].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*11)){
                    
                    document.getElementsByClassName("contentbody")[11].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*12)){
                    var n = 6;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*12); j<result.length; j++){
                document.getElementsByClassName("contentbody")[12].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*13)){
                    
                    document.getElementsByClassName("contentbody")[13].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*14)){
                    var n = 7;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*14); j<result.length; j++){
                document.getElementsByClassName("contentbody")[14].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*15)){
                    
                    document.getElementsByClassName("contentbody")[15].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*16)){
                    var n = 8;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*16); j<result.length; j++){
                document.getElementsByClassName("contentbody")[16].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*17)){
                    
                    document.getElementsByClassName("contentbody")[17].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*18)){
                    var n = 9;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*18); j<result.length; j++){
                document.getElementsByClassName("contentbody")[18].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*19)){
                    
                    document.getElementsByClassName("contentbody")[19].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*20)){
                    var n = 10;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*20); j<result.length; j++){
                document.getElementsByClassName("contentbody")[20].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*21)){
                    
                    document.getElementsByClassName("contentbody")[21].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*22)){
                    var n = 11;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*22); j<result.length; j++){
                document.getElementsByClassName("contentbody")[22].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*23)){
                    
                    document.getElementsByClassName("contentbody")[23].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*24)){
                    var n = 12;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*24); j<result.length; j++){
                document.getElementsByClassName("contentbody")[24].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*25)){
                    
                    document.getElementsByClassName("contentbody")[25].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*26)){
                    var n = 13;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*26); j<result.length; j++){
                document.getElementsByClassName("contentbody")[26].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*27)){
                    
                    document.getElementsByClassName("contentbody")[27].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*28)){
                    var n = 14;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*28); j<result.length; j++){
                document.getElementsByClassName("contentbody")[28].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*29)){
                    
                    document.getElementsByClassName("contentbody")[29].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*30)){
                    var n = 15;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*30); j<result.length; j++){
                document.getElementsByClassName("contentbody")[30].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*31)){
                    
                    document.getElementsByClassName("contentbody")[31].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*32)){
                    var n = 16;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*32); j<result.length; j++){
                document.getElementsByClassName("contentbody")[32].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*33)){
                    
                    document.getElementsByClassName("contentbody")[33].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*34)){
                    var n = 17;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*34); j<result.length; j++){
                document.getElementsByClassName("contentbody")[34].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*35)){
                    
                    document.getElementsByClassName("contentbody")[35].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*36)){
                    var n = 18;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*36); j<result.length; j++){
                document.getElementsByClassName("contentbody")[36].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*37)){
                    
                    document.getElementsByClassName("contentbody")[37].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*38)){
                    var n = 19;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*38); j<result.length; j++){
                document.getElementsByClassName("contentbody")[38].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*39)){
                    
                    document.getElementsByClassName("contentbody")[39].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*40)){
                    var n = 20;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*40); j<result.length; j++){
                document.getElementsByClassName("contentbody")[40].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*41)){
                    
                    document.getElementsByClassName("contentbody")[41].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*42)){
                    var n = 21;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*42); j<result.length; j++){
                document.getElementsByClassName("contentbody")[42].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*43)){
                    
                    document.getElementsByClassName("contentbody")[43].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*44)){
                    var n = 22;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*44); j<result.length; j++){
                document.getElementsByClassName("contentbody")[44].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*45)){
                    
                    document.getElementsByClassName("contentbody")[45].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*46)){
                    var n = 23;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*46); j<result.length; j++){
                document.getElementsByClassName("contentbody")[46].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*47)){
                    
                    document.getElementsByClassName("contentbody")[47].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*48)){
                    var n = 24;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*48); j<result.length; j++){
                document.getElementsByClassName("contentbody")[48].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*49)){
                    
                    document.getElementsByClassName("contentbody")[49].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*50)){
                    var n = 25;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*50); j<result.length; j++){
                document.getElementsByClassName("contentbody")[50].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*51)){
                    
                    document.getElementsByClassName("contentbody")[51].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*52)){
                    var n = 26;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*52); j<result.length; j++){
                document.getElementsByClassName("contentbody")[52].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*53)){
                    
                    document.getElementsByClassName("contentbody")[53].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*54)){
                    var n = 27;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*54); j<result.length; j++){
                document.getElementsByClassName("contentbody")[54].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*55)){
                    
                    document.getElementsByClassName("contentbody")[55].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*56)){
                    var n = 28;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*56); j<result.length; j++){
                document.getElementsByClassName("contentbody")[56].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*57)){
                    
                    document.getElementsByClassName("contentbody")[57].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*58)){
                    var n = 29;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*58); j<result.length; j++){
                document.getElementsByClassName("contentbody")[58].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*59)){
                    
                    document.getElementsByClassName("contentbody")[59].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*60)){
                    var n = 30;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*60); j<result.length; j++){
                document.getElementsByClassName("contentbody")[60].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*61)){
                    
                    document.getElementsByClassName("contentbody")[61].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*62)){
                    var n = 31;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*62); j<result.length; j++){
                document.getElementsByClassName("contentbody")[62].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*63)){
                    
                    document.getElementsByClassName("contentbody")[63].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*64)){
                    var n = 32;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*64); j<result.length; j++){
                document.getElementsByClassName("contentbody")[64].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*65)){
                    
                    document.getElementsByClassName("contentbody")[65].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*66)){
                    var n = 33;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*66); j<result.length; j++){
                document.getElementsByClassName("contentbody")[66].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*67)){
                document.getElementsByClassName("contentbody")[67].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*68)){
                    var n = 34;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*68); j<result.length; j++){
                document.getElementsByClassName("contentbody")[68].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*69)){
                document.getElementsByClassName("contentbody")[69].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*70)){
                    var n = 35;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*70); j<result.length; j++){
                document.getElementsByClassName("contentbody")[70].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*71)){
                document.getElementsByClassName("contentbody")[71].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*72)){
                    var n = 36;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*72); j<result.length; j++){
                document.getElementsByClassName("contentbody")[72].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*73)){
                document.getElementsByClassName("contentbody")[73].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*74)){
                    var n = 37;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*74); j<result.length; j++){
                document.getElementsByClassName("contentbody")[74].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*75)){
                document.getElementsByClassName("contentbody")[75].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*76)){
                    var n = 38;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*76); j<result.length; j++){
                document.getElementsByClassName("contentbody")[76].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*77)){
                document.getElementsByClassName("contentbody")[77].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*78)){
                    var n = 39;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*78); j<result.length; j++){
                document.getElementsByClassName("contentbody")[78].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*79)){
                document.getElementsByClassName("contentbody")[79].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*80)){
                    var n = 40;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*80); j<result.length; j++){
                document.getElementsByClassName("contentbody")[80].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*81)){
                document.getElementsByClassName("contentbody")[81].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*82)){
                    var n = 41;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*82); j<result.length; j++){
                document.getElementsByClassName("contentbody")[82].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*83)){
                document.getElementsByClassName("contentbody")[83].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*84)){
                    var n = 42;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*84); j<result.length; j++){
                document.getElementsByClassName("contentbody")[84].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*85)){
                document.getElementsByClassName("contentbody")[85].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*86)){
                    var n = 43;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*86); j<result.length; j++){
                document.getElementsByClassName("contentbody")[86].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*87)){
                document.getElementsByClassName("contentbody")[87].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*88)){
                    var n = 44;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*88); j<result.length; j++){
                document.getElementsByClassName("contentbody")[88].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*89)){
                document.getElementsByClassName("contentbody")[89].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*90)){
                    var n = 45;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*90); j<result.length; j++){
                document.getElementsByClassName("contentbody")[90].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*91)){
                document.getElementsByClassName("contentbody")[91].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*92)){
                    var n = 46;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*92); j<result.length; j++){
                document.getElementsByClassName("contentbody")[92].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*93)){
                document.getElementsByClassName("contentbody")[93].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*94)){
                    var n = 47;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*94); j<result.length; j++){
                document.getElementsByClassName("contentbody")[94].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*95)){
                document.getElementsByClassName("contentbody")[95].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*96)){
                    var n = 48;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*96); j<result.length; j++){
                document.getElementsByClassName("contentbody")[96].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*97)){
                document.getElementsByClassName("contentbody")[97].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*98)){
                    var n = 49;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*98); j<result.length; j++){
                document.getElementsByClassName("contentbody")[98].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*99)){
                document.getElementsByClassName("contentbody")[99].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*100)){
                    var n = 50;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*100); j<result.length; j++){
                document.getElementsByClassName("contentbody")[100].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*101)){
                document.getElementsByClassName("contentbody")[101].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*102)){
                    var n = 51;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*102); j<result.length; j++){
                document.getElementsByClassName("contentbody")[102].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*103)){
                document.getElementsByClassName("contentbody")[103].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*104)){
                    var n = 52;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*104); j<result.length; j++){
                document.getElementsByClassName("contentbody")[104].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*105)){
                document.getElementsByClassName("contentbody")[105].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*106)){
                    var n = 53;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*106); j<result.length; j++){
                document.getElementsByClassName("contentbody")[106].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*107)){
                document.getElementsByClassName("contentbody")[107].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*108)){
                    var n = 54;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*108); j<result.length; j++){
                document.getElementsByClassName("contentbody")[108].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*109)){
                document.getElementsByClassName("contentbody")[109].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*110)){
                    var n = 55;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*110); j<result.length; j++){
                document.getElementsByClassName("contentbody")[110].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*111)){
                document.getElementsByClassName("contentbody")[111].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*112)){
                    var n = 56;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*112); j<result.length; j++){
                document.getElementsByClassName("contentbody")[112].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*113)){
                document.getElementsByClassName("contentbody")[113].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*114)){
                    var n = 57;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*114); j<result.length; j++){
                document.getElementsByClassName("contentbody")[114].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*115)){
                document.getElementsByClassName("contentbody")[115].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*116)){
                    var n = 58;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*116); j<result.length; j++){
                document.getElementsByClassName("contentbody")[116].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*117)){
                document.getElementsByClassName("contentbody")[117].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*118)){
                    var n = 59;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*118); j<result.length; j++){
                document.getElementsByClassName("contentbody")[118].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*119)){
                document.getElementsByClassName("contentbody")[119].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*120)){
                    var n = 60;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*120); j<result.length; j++){
                document.getElementsByClassName("contentbody")[120].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*121)){
                document.getElementsByClassName("contentbody")[121].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*122)){
                    var n = 61;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*122); j<result.length; j++){
                document.getElementsByClassName("contentbody")[122].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*123)){
                document.getElementsByClassName("contentbody")[123].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*124)){
                    var n = 62;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*124); j<result.length; j++){
                document.getElementsByClassName("contentbody")[124].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*125)){
                document.getElementsByClassName("contentbody")[125].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*126)){
                    var n = 63;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*126); j<result.length; j++){
                document.getElementsByClassName("contentbody")[126].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*127)){
                document.getElementsByClassName("contentbody")[127].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*128)){
                    var n = 64;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*128); j<result.length; j++){
                document.getElementsByClassName("contentbody")[128].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*129)){
                document.getElementsByClassName("contentbody")[129].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*130)){
                    var n = 65;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*130); j<result.length; j++){
                document.getElementsByClassName("contentbody")[130].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*131)){
                document.getElementsByClassName("contentbody")[131].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*132)){
                    var n = 66;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*132); j<result.length; j++){
                document.getElementsByClassName("contentbody")[132].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*133)){
                document.getElementsByClassName("contentbody")[133].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*134)){
                    var n = 67;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*134); j<result.length; j++){
                document.getElementsByClassName("contentbody")[134].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*135)){
                document.getElementsByClassName("contentbody")[135].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*136)){
                    var n = 68;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*136); j<result.length; j++){
                document.getElementsByClassName("contentbody")[136].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*137)){
                document.getElementsByClassName("contentbody")[137].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*138)){
                    var n = 69;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*138); j<result.length; j++){
                document.getElementsByClassName("contentbody")[138].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*139)){
                document.getElementsByClassName("contentbody")[139].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*140)){
                    var n = 70;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*140); j<result.length; j++){
                document.getElementsByClassName("contentbody")[140].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*141)){
                document.getElementsByClassName("contentbody")[141].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*142)){
                    var n = 71;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*142); j<result.length; j++){
                document.getElementsByClassName("contentbody")[142].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*143)){
                document.getElementsByClassName("contentbody")[143].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*144)){
                    var n = 72;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*144); j<result.length; j++){
                document.getElementsByClassName("contentbody")[144].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*145)){
                document.getElementsByClassName("contentbody")[145].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*146)){
                    var n = 73;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*146); j<result.length; j++){
                document.getElementsByClassName("contentbody")[146].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*147)){
                document.getElementsByClassName("contentbody")[147].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*148)){
                    var n = 74;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*148); j<result.length; j++){
                document.getElementsByClassName("contentbody")[148].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*149)){
                document.getElementsByClassName("contentbody")[149].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*150)){
                    var n = 75;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*150); j<result.length; j++){
                document.getElementsByClassName("contentbody")[150].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*151)){
                document.getElementsByClassName("contentbody")[151].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*152)){
                    var n = 76;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*152); j<result.length; j++){
                document.getElementsByClassName("contentbody")[152].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*153)){
                document.getElementsByClassName("contentbody")[153].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*154)){
                    var n = 77;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*154); j<result.length; j++){
                document.getElementsByClassName("contentbody")[154].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*155)){
                document.getElementsByClassName("contentbody")[155].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*156)){
                    var n = 78;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*156); j<result.length; j++){
                document.getElementsByClassName("contentbody")[156].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*157)){
                document.getElementsByClassName("contentbody")[157].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*158)){
                    var n = 79;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*158); j<result.length; j++){
                document.getElementsByClassName("contentbody")[158].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*159)){
                document.getElementsByClassName("contentbody")[159].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*160)){
                    var n = 80;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*160); j<result.length; j++){
                document.getElementsByClassName("contentbody")[160].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*161)){
                document.getElementsByClassName("contentbody")[161].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*162)){
                    var n = 81;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*162); j<result.length; j++){
                document.getElementsByClassName("contentbody")[162].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*163)){
                document.getElementsByClassName("contentbody")[163].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*164)){
                    var n = 82;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*164); j<result.length; j++){
                document.getElementsByClassName("contentbody")[164].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*165)){
                document.getElementsByClassName("contentbody")[165].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*166)){
                    var n = 83;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*166); j<result.length; j++){
                document.getElementsByClassName("contentbody")[166].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*167)){
                document.getElementsByClassName("contentbody")[167].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*168)){
                    var n = 84;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*168); j<result.length; j++){
                document.getElementsByClassName("contentbody")[168].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*169)){
                document.getElementsByClassName("contentbody")[169].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*170)){
                    var n = 85;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*170); j<result.length; j++){
                document.getElementsByClassName("contentbody")[170].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*171)){
                document.getElementsByClassName("contentbody")[171].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*172)){
                    var n = 86;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*172); j<result.length; j++){
                document.getElementsByClassName("contentbody")[172].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*173)){
                document.getElementsByClassName("contentbody")[173].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*174)){
                    var n = 87;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*174); j<result.length; j++){
                document.getElementsByClassName("contentbody")[174].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*175)){
                document.getElementsByClassName("contentbody")[175].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*176)){
                    var n = 88;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*176); j<result.length; j++){
                document.getElementsByClassName("contentbody")[176].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*177)){
                document.getElementsByClassName("contentbody")[177].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*178)){
                    var n = 89;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*178); j<result.length; j++){
                document.getElementsByClassName("contentbody")[178].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*179)){
                document.getElementsByClassName("contentbody")[179].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*180)){
                    var n = 90;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*180); j<result.length; j++){
                document.getElementsByClassName("contentbody")[180].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*181)){
                document.getElementsByClassName("contentbody")[181].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*182)){
                    var n = 91;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*182); j<result.length; j++){
                document.getElementsByClassName("contentbody")[182].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*183)){
                document.getElementsByClassName("contentbody")[183].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*184)){
                    var n = 92;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*184); j<result.length; j++){
                document.getElementsByClassName("contentbody")[184].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*185)){
                document.getElementsByClassName("contentbody")[185].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*186)){
                    var n = 93;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*186); j<result.length; j++){
                document.getElementsByClassName("contentbody")[186].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*187)){
                document.getElementsByClassName("contentbody")[187].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*188)){
                    var n = 94;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*188); j<result.length; j++){
                document.getElementsByClassName("contentbody")[188].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*189)){
                document.getElementsByClassName("contentbody")[189].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*190)){
                    var n = 95;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*190); j<result.length; j++){
                document.getElementsByClassName("contentbody")[190].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*191)){
                document.getElementsByClassName("contentbody")[191].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*192)){
                    var n = 96;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*192); j<result.length; j++){
                document.getElementsByClassName("contentbody")[192].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*193)){
                document.getElementsByClassName("contentbody")[193].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*194)){
                    var n = 97;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*194); j<result.length; j++){
                document.getElementsByClassName("contentbody")[194].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*195)){
                document.getElementsByClassName("contentbody")[195].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*196)){
                    var n = 98;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*196); j<result.length; j++){
                document.getElementsByClassName("contentbody")[196].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*197)){
                document.getElementsByClassName("contentbody")[197].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*198)){
                    var n = 99;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*198); j<result.length; j++){
                document.getElementsByClassName("contentbody")[198].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*199)){
                document.getElementsByClassName("contentbody")[199].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*200)){
                    var n = 100;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*200); j<result.length; j++){
                document.getElementsByClassName("contentbody")[200].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*201)){
                document.getElementsByClassName("contentbody")[201].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*202)){
                    var n = 101;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*202); j<result.length; j++){
                document.getElementsByClassName("contentbody")[202].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*203)){
                document.getElementsByClassName("contentbody")[203].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*204)){
                    var n = 102;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*204); j<result.length; j++){
                document.getElementsByClassName("contentbody")[204].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*205)){
                document.getElementsByClassName("contentbody")[205].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*206)){
                    var n = 103;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*206); j<result.length; j++){
                document.getElementsByClassName("contentbody")[206].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*207)){
                document.getElementsByClassName("contentbody")[207].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*208)){
                    var n = 104;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*208); j<result.length; j++){
                document.getElementsByClassName("contentbody")[208].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*209)){
                document.getElementsByClassName("contentbody")[209].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*210)){
                    var n = 105;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*210); j<result.length; j++){
                document.getElementsByClassName("contentbody")[210].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*211)){
                document.getElementsByClassName("contentbody")[211].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*212)){
                    var n = 106;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*212); j<result.length; j++){
                document.getElementsByClassName("contentbody")[212].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*213)){
                document.getElementsByClassName("contentbody")[213].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*214)){
                    var n = 107;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*214); j<result.length; j++){
                document.getElementsByClassName("contentbody")[214].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*215)){
                document.getElementsByClassName("contentbody")[215].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*216)){
                    var n = 108;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*216); j<result.length; j++){
                document.getElementsByClassName("contentbody")[216].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*217)){
                document.getElementsByClassName("contentbody")[217].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*218)){
                    var n = 109;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*218); j<result.length; j++){
                document.getElementsByClassName("contentbody")[218].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*219)){
                document.getElementsByClassName("contentbody")[219].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*220)){
                    var n = 110;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*220); j<result.length; j++){
                document.getElementsByClassName("contentbody")[220].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*221)){
                document.getElementsByClassName("contentbody")[221].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*222)){
                    var n = 111;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*222); j<result.length; j++){
                document.getElementsByClassName("contentbody")[222].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*223)){
                document.getElementsByClassName("contentbody")[223].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*224)){
                    var n = 112;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*224); j<result.length; j++){
                document.getElementsByClassName("contentbody")[224].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*225)){
                document.getElementsByClassName("contentbody")[225].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*226)){
                    var n = 113;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*226); j<result.length; j++){
                document.getElementsByClassName("contentbody")[226].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*227)){
                document.getElementsByClassName("contentbody")[227].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*228)){
                    var n = 114;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*228); j<result.length; j++){
                document.getElementsByClassName("contentbody")[228].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*229)){
                document.getElementsByClassName("contentbody")[229].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*230)){
                    var n = 115;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*230); j<result.length; j++){
                document.getElementsByClassName("contentbody")[230].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*231)){
                document.getElementsByClassName("contentbody")[231].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*232)){
                    var n = 116;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*232); j<result.length; j++){
                document.getElementsByClassName("contentbody")[232].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*233)){
                document.getElementsByClassName("contentbody")[233].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*234)){
                    var n = 117;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*234); j<result.length; j++){
                document.getElementsByClassName("contentbody")[234].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*235)){
                document.getElementsByClassName("contentbody")[235].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*236)){
                    var n = 118;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*236); j<result.length; j++){
                document.getElementsByClassName("contentbody")[236].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*237)){
                document.getElementsByClassName("contentbody")[237].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*238)){
                    var n = 119;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*238); j<result.length; j++){
                document.getElementsByClassName("contentbody")[238].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*239)){
                document.getElementsByClassName("contentbody")[239].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*240)){
                    var n = 120;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*240); j<result.length; j++){
                document.getElementsByClassName("contentbody")[240].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*241)){
                document.getElementsByClassName("contentbody")[241].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*242)){
                    var n = 121;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*242); j<result.length; j++){
                document.getElementsByClassName("contentbody")[242].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*243)){
                document.getElementsByClassName("contentbody")[243].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*244)){
                    var n = 122;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*244); j<result.length; j++){
                document.getElementsByClassName("contentbody")[244].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*245)){
                document.getElementsByClassName("contentbody")[245].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*246)){
                    var n = 123;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*246); j<result.length; j++){
                document.getElementsByClassName("contentbody")[246].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*247)){
                document.getElementsByClassName("contentbody")[247].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*248)){
                    var n = 124;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*248); j<result.length; j++){
                document.getElementsByClassName("contentbody")[248].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*249)){
                document.getElementsByClassName("contentbody")[249].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*250)){
                    var n = 125;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*250); j<result.length; j++){
                document.getElementsByClassName("contentbody")[250].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*251)){
                document.getElementsByClassName("contentbody")[251].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*252)){
                    var n = 126;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*252); j<result.length; j++){
                document.getElementsByClassName("contentbody")[252].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*253)){
                document.getElementsByClassName("contentbody")[253].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*254)){
                    var n = 127;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*254); j<result.length; j++){
                document.getElementsByClassName("contentbody")[254].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*255)){
                document.getElementsByClassName("contentbody")[255].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*256)){
                    var n = 128;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*256); j<result.length; j++){
                document.getElementsByClassName("contentbody")[256].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*257)){
                document.getElementsByClassName("contentbody")[257].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*258)){
                    var n = 129;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*258); j<result.length; j++){
                document.getElementsByClassName("contentbody")[258].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*259)){
                document.getElementsByClassName("contentbody")[259].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*260)){
                    var n = 130;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*260); j<result.length; j++){
                document.getElementsByClassName("contentbody")[260].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*261)){
                document.getElementsByClassName("contentbody")[261].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*262)){
                    var n = 131;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*262); j<result.length; j++){
                document.getElementsByClassName("contentbody")[262].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*263)){
                document.getElementsByClassName("contentbody")[263].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*264)){
                    var n = 132;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*264); j<result.length; j++){
                document.getElementsByClassName("contentbody")[264].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*265)){
                document.getElementsByClassName("contentbody")[265].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*266)){
                    var n = 133;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*266); j<result.length; j++){
                document.getElementsByClassName("contentbody")[266].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*267)){
                document.getElementsByClassName("contentbody")[267].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*268)){
                    var n = 134;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*268); j<result.length; j++){
                document.getElementsByClassName("contentbody")[268].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*269)){
                document.getElementsByClassName("contentbody")[269].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*270)){
                    var n = 135;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*270); j<result.length; j++){
                document.getElementsByClassName("contentbody")[270].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*271)){
                document.getElementsByClassName("contentbody")[271].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*272)){
                    var n = 136;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*272); j<result.length; j++){
                document.getElementsByClassName("contentbody")[272].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*273)){
                document.getElementsByClassName("contentbody")[273].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*274)){
                    var n = 137;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*274); j<result.length; j++){
                document.getElementsByClassName("contentbody")[274].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*275)){
                document.getElementsByClassName("contentbody")[275].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*276)){
                    var n = 138;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*276); j<result.length; j++){
                document.getElementsByClassName("contentbody")[276].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*277)){
                document.getElementsByClassName("contentbody")[277].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*278)){
                    var n = 139;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*278); j<result.length; j++){
                document.getElementsByClassName("contentbody")[278].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*279)){
                document.getElementsByClassName("contentbody")[279].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*280)){
                    var n = 140;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*280); j<result.length; j++){
                document.getElementsByClassName("contentbody")[280].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*281)){
                document.getElementsByClassName("contentbody")[281].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*282)){
                    var n = 141;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*282); j<result.length; j++){
                document.getElementsByClassName("contentbody")[282].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*283)){
                document.getElementsByClassName("contentbody")[283].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*284)){
                    var n = 142;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*284); j<result.length; j++){
                document.getElementsByClassName("contentbody")[284].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*285)){
                document.getElementsByClassName("contentbody")[285].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*286)){
                    var n = 143;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*286); j<result.length; j++){
                document.getElementsByClassName("contentbody")[286].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*287)){
                document.getElementsByClassName("contentbody")[287].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*288)){
                    var n = 144;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*288); j<result.length; j++){
                document.getElementsByClassName("contentbody")[288].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*289)){
                document.getElementsByClassName("contentbody")[289].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*290)){
                    var n = 145;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*290); j<result.length; j++){
                document.getElementsByClassName("contentbody")[290].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*291)){
                document.getElementsByClassName("contentbody")[291].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*292)){
                    var n = 146;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*292); j<result.length; j++){
                document.getElementsByClassName("contentbody")[292].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*293)){
                document.getElementsByClassName("contentbody")[293].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*294)){
                    var n = 147;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*294); j<result.length; j++){
                document.getElementsByClassName("contentbody")[294].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*295)){
                document.getElementsByClassName("contentbody")[295].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*296)){
                    var n = 148;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*296); j<result.length; j++){
                document.getElementsByClassName("contentbody")[296].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*297)){
                document.getElementsByClassName("contentbody")[297].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*298)){
                    var n = 149;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*298); j<result.length; j++){
                document.getElementsByClassName("contentbody")[298].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*299)){
                document.getElementsByClassName("contentbody")[299].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*300)){
                    var n = 150;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*300); j<result.length; j++){
                document.getElementsByClassName("contentbody")[300].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*301)){
                document.getElementsByClassName("contentbody")[301].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*302)){
                    var n = 151;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*302); j<result.length; j++){
                document.getElementsByClassName("contentbody")[302].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*303)){
                document.getElementsByClassName("contentbody")[303].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*304)){
                    var n = 152;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*304); j<result.length; j++){
                document.getElementsByClassName("contentbody")[304].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*305)){
                document.getElementsByClassName("contentbody")[305].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*306)){
                    var n = 153;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*306); j<result.length; j++){
                document.getElementsByClassName("contentbody")[306].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*307)){
                document.getElementsByClassName("contentbody")[307].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*308)){
                    var n = 154;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*308); j<result.length; j++){
                document.getElementsByClassName("contentbody")[308].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*309)){
                document.getElementsByClassName("contentbody")[309].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*310)){
                    var n = 155;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*310); j<result.length; j++){
                document.getElementsByClassName("contentbody")[310].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*311)){
                document.getElementsByClassName("contentbody")[311].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*312)){
                    var n = 156;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*312); j<result.length; j++){
                document.getElementsByClassName("contentbody")[312].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*313)){
                document.getElementsByClassName("contentbody")[313].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*314)){
                    var n = 157;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*314); j<result.length; j++){
                document.getElementsByClassName("contentbody")[314].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*315)){
                document.getElementsByClassName("contentbody")[315].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*316)){
                    var n = 158;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*316); j<result.length; j++){
                document.getElementsByClassName("contentbody")[316].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*317)){
                document.getElementsByClassName("contentbody")[317].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*318)){
                    var n = 159;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*318); j<result.length; j++){
                document.getElementsByClassName("contentbody")[318].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*319)){
                document.getElementsByClassName("contentbody")[319].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*320)){
                    var n = 160;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*320); j<result.length; j++){
                document.getElementsByClassName("contentbody")[320].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*321)){
                document.getElementsByClassName("contentbody")[321].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*322)){
                    var n = 161;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*322); j<result.length; j++){
                document.getElementsByClassName("contentbody")[322].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*323)){
                document.getElementsByClassName("contentbody")[323].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*324)){
                    var n = 162;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*324); j<result.length; j++){
                document.getElementsByClassName("contentbody")[324].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*325)){
                document.getElementsByClassName("contentbody")[325].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*326)){
                    var n = 163;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*326); j<result.length; j++){
                document.getElementsByClassName("contentbody")[326].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*327)){
                document.getElementsByClassName("contentbody")[327].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*328)){
                    var n = 164;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*328); j<result.length; j++){
                document.getElementsByClassName("contentbody")[328].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*329)){
                document.getElementsByClassName("contentbody")[329].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*330)){
                    var n = 165;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*330); j<result.length; j++){
                document.getElementsByClassName("contentbody")[330].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*331)){
                document.getElementsByClassName("contentbody")[331].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*332)){
                    var n = 166;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*332); j<result.length; j++){
                document.getElementsByClassName("contentbody")[332].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*333)){
                document.getElementsByClassName("contentbody")[333].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*334)){
                    var n = 167;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*334); j<result.length; j++){
                document.getElementsByClassName("contentbody")[334].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*335)){
                document.getElementsByClassName("contentbody")[335].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*336)){
                    var n = 168;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
		    return result;
	    }
    </script>
  <!--  <script>
	    window.onload=function getTableData2() {
	        var table = document.getElementById('dataTable');//데이터를 추출할 DOM의 <table> 요소
	        var result = [];
	
	        for ( var i = 1; i < table.rows.length; i++ ) {//<tr> 숫자만큼 반복
	            var obj = {};
	            for ( var j = 0; j < table.rows[i].cells.length; j++ ) {//각 tr속 td 만큼 반복
	                var a = table.rows[0].cells[j].innerText.replace(/\s/g, '');//공백제거한 문자열로 변환
	                obj[a] = table.rows[i].cells[j].innerText;//객체 만들기
	            }
	            result.push(obj);//위에서 만들어진 객체를 반환할 배열의 원소로 설정
	        }
	        var name=result[0]["제목"];
            document.getElementById('headname1').innerText = name;
            document.getElementsByClassName('topname')[0].innerText = name;
	        var k = 1;
            var m = 30;
            var copy = "<div class='imgarea'>\
		                <div class='mainimg'>\
		            <img class='mainimg2' src='/img/user/002단어.png'>\
		        </div>\
		        <div class='namearea'>\
		            <span class='topname'></span>\
		        </div>\
		        <div class='wordcontent1'>\
		            <div class='contentheader'>\
		                <div class='headernum'>\
		                    번호\
		                </div>\
		                <div class='headerword'>\
		                    영단어\
		                </div>\
		                <div class='headertrans'>\
		                    한글의미\
		                </div>\
		            </div>\
		            <div class='contentbody'>\
		            </div>\
		        </div>\
		        <div class='wordcontent2'>\
		            <div class='contentheader'>\
		                <div class='headernum'>\
		                    번호\
		                </div>\
		                <div class='headerword'>\
		                    영단어\
		                </div>\
		                <div class='headertrans'>\
		                    한글의미\
		                </div>\
		            </div>\
		            <div class='contentbody'></div>\
		        </div>\
		    </div>";
		    var b=0;
		    var c=0;
		    var wordlist=[];
		    var translist=[];
		    for(let j = 0; j < result.length; j++) {
	    		var random = Math.floor(Math.random() * 10) + 1;
	    		if(j<m){
		    		if(random>=1 && random<6){
		    			if(c<15){
			    			document.getElementsByClassName("contentbody")[0].innerHTML += "<div class='bodycontent'>\
			                    <div class='bodynum'>"+k+"</div>\
			                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
			                    <div class='bodytrans'><input type='text' class='testarea' id='trans"+c+"'></div>\
			                </div>";
			                c++;
			                translist.push(result[j]["해석"]);
		    			}else{j--;continue;};
		    		}
		    		if(random>=6){
		    			if(b<15){
			    			document.getElementsByClassName("contentbody")[0].innerHTML += "<div class='bodycontent'>\
			                    <div class='bodynum'>"+k+"</div>\
			                    <div class='bodyword'><input type='text' class='testarea' id='words"+b+"'></div>\
			                    <div class='bodytrans'>"+result[j]["해석"]+"</div>\
			                </div>";
			                b++;
			                wordlist.push(result[j]["단어"]);
		    			}else{j--;continue;};
		    		}
	    		}
                if(j>=m){
                	if(random>=1 && random<6){
		    			if(c<16){
			    			document.getElementsByClassName("contentbody")[1].innerHTML += "<div class='bodycontent'>\
			                    <div class='bodynum'>"+k+"</div>\
			                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
			                    <div class='bodytrans'><input type='text' class='testarea' id='trans"+c+"'></div>\
			                </div>";
			                c++;
			                translist.push(result[j]["해석"]);
		    			}else{j--;continue;};
		    		}
		    		if(random>=6){
		    			if(b<16){
			    			document.getElementsByClassName("contentbody")[1].innerHTML += "<div class='bodycontent'>\
			                    <div class='bodynum'>"+k+"</div>\
			                    <div class='bodyword'><input type='text' class='testarea' id='words"+b+"'></div>\
			                    <div class='bodytrans'>"+result[j]["해석"]+"</div>\
			                </div>";
			                b++;
			                wordlist.push(result[j]["단어"]);
		    			}else{j--;continue;};
		    		}
                }
                if(j>=(m*2)){
                    var n=1;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*2); j<result.length; j++){
            	var random = Math.floor(Math.random() * 10) + 1;
            	if(j<90){
            		document.getElementsByClassName("contentbody")[3].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
	    		}
                if(j>=90){
                    document.getElementsByClassName("contentbody")[3].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*4)){
                    var n=2;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*4); j<result.length; j++){
                document.getElementsByClassName("contentbody")[4].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*5)){
                    document.getElementsByClassName("contentbody")[5].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*6)){
                    var n=3;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*6); j<result.length; j++){
                document.getElementsByClassName("contentbody")[6].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*7)){
                    document.getElementsByClassName("contentbody")[7].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*8)){
                    var n = 4;
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*8); j<result.length; j++){
                document.getElementsByClassName("contentbody")[8].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*9)){
                    document.getElementsByClassName("contentbody")[9].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*10)){
                    var n = 5;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*10); j<result.length; j++){
                document.getElementsByClassName("contentbody")[10].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*11)){
                    
                    document.getElementsByClassName("contentbody")[11].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*12)){
                    var n = 6;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*12); j<result.length; j++){
                document.getElementsByClassName("contentbody")[12].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*13)){
                    
                    document.getElementsByClassName("contentbody")[13].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*14)){
                    var n = 7;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*14); j<result.length; j++){
                document.getElementsByClassName("contentbody")[14].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*15)){
                    
                    document.getElementsByClassName("contentbody")[15].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*16)){
                    var n = 8;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*16); j<result.length; j++){
                document.getElementsByClassName("contentbody")[16].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*17)){
                    
                    document.getElementsByClassName("contentbody")[17].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*18)){
                    var n = 9;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*18); j<result.length; j++){
                document.getElementsByClassName("contentbody")[18].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*19)){
                    
                    document.getElementsByClassName("contentbody")[19].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*20)){
                    var n = 10;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*20); j<result.length; j++){
                document.getElementsByClassName("contentbody")[20].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*21)){
                    
                    document.getElementsByClassName("contentbody")[21].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*22)){
                    var n = 11;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*22); j<result.length; j++){
                document.getElementsByClassName("contentbody")[22].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*23)){
                    
                    document.getElementsByClassName("contentbody")[23].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*24)){
                    var n = 12;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*24); j<result.length; j++){
                document.getElementsByClassName("contentbody")[24].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*25)){
                    
                    document.getElementsByClassName("contentbody")[25].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*26)){
                    var n = 13;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*26); j<result.length; j++){
                document.getElementsByClassName("contentbody")[26].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*27)){
                    
                    document.getElementsByClassName("contentbody")[27].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*28)){
                    var n = 14;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*28); j<result.length; j++){
                document.getElementsByClassName("contentbody")[28].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*29)){
                    
                    document.getElementsByClassName("contentbody")[29].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*30)){
                    var n = 15;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*30); j<result.length; j++){
                document.getElementsByClassName("contentbody")[30].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*31)){
                    
                    document.getElementsByClassName("contentbody")[31].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*32)){
                    var n = 16;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*32); j<result.length; j++){
                document.getElementsByClassName("contentbody")[32].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*33)){
                    
                    document.getElementsByClassName("contentbody")[33].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*34)){
                    var n = 17;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*34); j<result.length; j++){
                document.getElementsByClassName("contentbody")[34].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*35)){
                    
                    document.getElementsByClassName("contentbody")[35].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*36)){
                    var n = 18;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*36); j<result.length; j++){
                document.getElementsByClassName("contentbody")[36].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*37)){
                    
                    document.getElementsByClassName("contentbody")[37].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*38)){
                    var n = 19;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*38); j<result.length; j++){
                document.getElementsByClassName("contentbody")[38].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*39)){
                    
                    document.getElementsByClassName("contentbody")[39].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*40)){
                    var n = 20;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*40); j<result.length; j++){
                document.getElementsByClassName("contentbody")[40].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*41)){
                    
                    document.getElementsByClassName("contentbody")[41].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*42)){
                    var n = 21;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*42); j<result.length; j++){
                document.getElementsByClassName("contentbody")[42].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*43)){
                    
                    document.getElementsByClassName("contentbody")[43].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*44)){
                    var n = 22;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*44); j<result.length; j++){
                document.getElementsByClassName("contentbody")[44].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*45)){
                    
                    document.getElementsByClassName("contentbody")[45].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*46)){
                    var n = 23;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*46); j<result.length; j++){
                document.getElementsByClassName("contentbody")[46].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*47)){
                    
                    document.getElementsByClassName("contentbody")[47].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*48)){
                    var n = 24;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*48); j<result.length; j++){
                document.getElementsByClassName("contentbody")[48].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*49)){
                    
                    document.getElementsByClassName("contentbody")[49].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*50)){
                    var n = 25;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*50); j<result.length; j++){
                document.getElementsByClassName("contentbody")[50].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*51)){
                    
                    document.getElementsByClassName("contentbody")[51].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*52)){
                    var n = 26;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*52); j<result.length; j++){
                document.getElementsByClassName("contentbody")[52].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*53)){
                    
                    document.getElementsByClassName("contentbody")[53].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*54)){
                    var n = 27;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*54); j<result.length; j++){
                document.getElementsByClassName("contentbody")[54].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*55)){
                    
                    document.getElementsByClassName("contentbody")[55].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*56)){
                    var n = 28;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*56); j<result.length; j++){
                document.getElementsByClassName("contentbody")[56].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*57)){
                    
                    document.getElementsByClassName("contentbody")[57].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*58)){
                    var n = 29;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*58); j<result.length; j++){
                document.getElementsByClassName("contentbody")[58].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*59)){
                    
                    document.getElementsByClassName("contentbody")[59].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*60)){
                    var n = 30;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*60); j<result.length; j++){
                document.getElementsByClassName("contentbody")[60].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*61)){
                    
                    document.getElementsByClassName("contentbody")[61].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*62)){
                    var n = 31;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*62); j<result.length; j++){
                document.getElementsByClassName("contentbody")[62].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*63)){
                    
                    document.getElementsByClassName("contentbody")[63].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*64)){
                    var n = 32;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*64); j<result.length; j++){
                document.getElementsByClassName("contentbody")[64].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*65)){
                    
                    document.getElementsByClassName("contentbody")[65].innerHTML += "<div class='bodycontent'>\
                        <div class='bodynum'>"+k+"</div>\
                        <div class='bodyword'>"+result[j]["단어"]+"</div>\
                        <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                    </div>";
                }
                if(j>=(m*66)){
                    var n = 33;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*66); j<result.length; j++){
                document.getElementsByClassName("contentbody")[66].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*67)){
                document.getElementsByClassName("contentbody")[67].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*68)){
                    var n = 34;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*68); j<result.length; j++){
                document.getElementsByClassName("contentbody")[68].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*69)){
                document.getElementsByClassName("contentbody")[69].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*70)){
                    var n = 35;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*70); j<result.length; j++){
                document.getElementsByClassName("contentbody")[70].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*71)){
                document.getElementsByClassName("contentbody")[71].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*72)){
                    var n = 36;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*72); j<result.length; j++){
                document.getElementsByClassName("contentbody")[72].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*73)){
                document.getElementsByClassName("contentbody")[73].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*74)){
                    var n = 37;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*74); j<result.length; j++){
                document.getElementsByClassName("contentbody")[74].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*75)){
                document.getElementsByClassName("contentbody")[75].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*76)){
                    var n = 38;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*76); j<result.length; j++){
                document.getElementsByClassName("contentbody")[76].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*77)){
                document.getElementsByClassName("contentbody")[77].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*78)){
                    var n = 39;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*78); j<result.length; j++){
                document.getElementsByClassName("contentbody")[78].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*79)){
                document.getElementsByClassName("contentbody")[79].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*80)){
                    var n = 40;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*80); j<result.length; j++){
                document.getElementsByClassName("contentbody")[80].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*81)){
                document.getElementsByClassName("contentbody")[81].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*82)){
                    var n = 41;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*82); j<result.length; j++){
                document.getElementsByClassName("contentbody")[82].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*83)){
                document.getElementsByClassName("contentbody")[83].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*84)){
                    var n = 42;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*84); j<result.length; j++){
                document.getElementsByClassName("contentbody")[84].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*85)){
                document.getElementsByClassName("contentbody")[85].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*86)){
                    var n = 43;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*86); j<result.length; j++){
                document.getElementsByClassName("contentbody")[86].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*87)){
                document.getElementsByClassName("contentbody")[87].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*88)){
                    var n = 44;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*88); j<result.length; j++){
                document.getElementsByClassName("contentbody")[88].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*89)){
                document.getElementsByClassName("contentbody")[89].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*90)){
                    var n = 45;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*90); j<result.length; j++){
                document.getElementsByClassName("contentbody")[90].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*91)){
                document.getElementsByClassName("contentbody")[91].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*92)){
                    var n = 46;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*92); j<result.length; j++){
                document.getElementsByClassName("contentbody")[92].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*93)){
                document.getElementsByClassName("contentbody")[93].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*94)){
                    var n = 47;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*94); j<result.length; j++){
                document.getElementsByClassName("contentbody")[94].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*95)){
                document.getElementsByClassName("contentbody")[95].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*96)){
                    var n = 48;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*96); j<result.length; j++){
                document.getElementsByClassName("contentbody")[96].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*97)){
                document.getElementsByClassName("contentbody")[97].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*98)){
                    var n = 49;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*98); j<result.length; j++){
                document.getElementsByClassName("contentbody")[98].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*99)){
                document.getElementsByClassName("contentbody")[99].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*100)){
                    var n = 50;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*100); j<result.length; j++){
                document.getElementsByClassName("contentbody")[100].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*101)){
                document.getElementsByClassName("contentbody")[101].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*102)){
                    var n = 51;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*102); j<result.length; j++){
                document.getElementsByClassName("contentbody")[102].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*103)){
                document.getElementsByClassName("contentbody")[103].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*104)){
                    var n = 52;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*104); j<result.length; j++){
                document.getElementsByClassName("contentbody")[104].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*105)){
                document.getElementsByClassName("contentbody")[105].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*106)){
                    var n = 53;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*106); j<result.length; j++){
                document.getElementsByClassName("contentbody")[106].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*107)){
                document.getElementsByClassName("contentbody")[107].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*108)){
                    var n = 54;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*108); j<result.length; j++){
                document.getElementsByClassName("contentbody")[108].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*109)){
                document.getElementsByClassName("contentbody")[109].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*110)){
                    var n = 55;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*110); j<result.length; j++){
                document.getElementsByClassName("contentbody")[110].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*111)){
                document.getElementsByClassName("contentbody")[111].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*112)){
                    var n = 56;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*112); j<result.length; j++){
                document.getElementsByClassName("contentbody")[112].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*113)){
                document.getElementsByClassName("contentbody")[113].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*114)){
                    var n = 57;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*114); j<result.length; j++){
                document.getElementsByClassName("contentbody")[114].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*115)){
                document.getElementsByClassName("contentbody")[115].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*116)){
                    var n = 58;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*116); j<result.length; j++){
                document.getElementsByClassName("contentbody")[116].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*117)){
                document.getElementsByClassName("contentbody")[117].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*118)){
                    var n = 59;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*118); j<result.length; j++){
                document.getElementsByClassName("contentbody")[118].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*119)){
                document.getElementsByClassName("contentbody")[119].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*120)){
                    var n = 60;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*120); j<result.length; j++){
                document.getElementsByClassName("contentbody")[120].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*121)){
                document.getElementsByClassName("contentbody")[121].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*122)){
                    var n = 61;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*122); j<result.length; j++){
                document.getElementsByClassName("contentbody")[122].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*123)){
                document.getElementsByClassName("contentbody")[123].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*124)){
                    var n = 62;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*124); j<result.length; j++){
                document.getElementsByClassName("contentbody")[124].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*125)){
                document.getElementsByClassName("contentbody")[125].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*126)){
                    var n = 63;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*126); j<result.length; j++){
                document.getElementsByClassName("contentbody")[126].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*127)){
                document.getElementsByClassName("contentbody")[127].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*128)){
                    var n = 64;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*128); j<result.length; j++){
                document.getElementsByClassName("contentbody")[128].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*129)){
                document.getElementsByClassName("contentbody")[129].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*130)){
                    var n = 65;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*130); j<result.length; j++){
                document.getElementsByClassName("contentbody")[130].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*131)){
                document.getElementsByClassName("contentbody")[131].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*132)){
                    var n = 66;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*132); j<result.length; j++){
                document.getElementsByClassName("contentbody")[132].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*133)){
                document.getElementsByClassName("contentbody")[133].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*134)){
                    var n = 67;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*134); j<result.length; j++){
                document.getElementsByClassName("contentbody")[134].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*135)){
                document.getElementsByClassName("contentbody")[135].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*136)){
                    var n = 68;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*136); j<result.length; j++){
                document.getElementsByClassName("contentbody")[136].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*137)){
                document.getElementsByClassName("contentbody")[137].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*138)){
                    var n = 69;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*138); j<result.length; j++){
                document.getElementsByClassName("contentbody")[138].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*139)){
                document.getElementsByClassName("contentbody")[139].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*140)){
                    var n = 70;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*140); j<result.length; j++){
                document.getElementsByClassName("contentbody")[140].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*141)){
                document.getElementsByClassName("contentbody")[141].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*142)){
                    var n = 71;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*142); j<result.length; j++){
                document.getElementsByClassName("contentbody")[142].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*143)){
                document.getElementsByClassName("contentbody")[143].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*144)){
                    var n = 72;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*144); j<result.length; j++){
                document.getElementsByClassName("contentbody")[144].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*145)){
                document.getElementsByClassName("contentbody")[145].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*146)){
                    var n = 73;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*146); j<result.length; j++){
                document.getElementsByClassName("contentbody")[146].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*147)){
                document.getElementsByClassName("contentbody")[147].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*148)){
                    var n = 74;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*148); j<result.length; j++){
                document.getElementsByClassName("contentbody")[148].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*149)){
                document.getElementsByClassName("contentbody")[149].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*150)){
                    var n = 75;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*150); j<result.length; j++){
                document.getElementsByClassName("contentbody")[150].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*151)){
                document.getElementsByClassName("contentbody")[151].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*152)){
                    var n = 76;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*152); j<result.length; j++){
                document.getElementsByClassName("contentbody")[152].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*153)){
                document.getElementsByClassName("contentbody")[153].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*154)){
                    var n = 77;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*154); j<result.length; j++){
                document.getElementsByClassName("contentbody")[154].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*155)){
                document.getElementsByClassName("contentbody")[155].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*156)){
                    var n = 78;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*156); j<result.length; j++){
                document.getElementsByClassName("contentbody")[156].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*157)){
                document.getElementsByClassName("contentbody")[157].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*158)){
                    var n = 79;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*158); j<result.length; j++){
                document.getElementsByClassName("contentbody")[158].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*159)){
                document.getElementsByClassName("contentbody")[159].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*160)){
                    var n = 80;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*160); j<result.length; j++){
                document.getElementsByClassName("contentbody")[160].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*161)){
                document.getElementsByClassName("contentbody")[161].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*162)){
                    var n = 81;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*162); j<result.length; j++){
                document.getElementsByClassName("contentbody")[162].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*163)){
                document.getElementsByClassName("contentbody")[163].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*164)){
                    var n = 82;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*164); j<result.length; j++){
                document.getElementsByClassName("contentbody")[164].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*165)){
                document.getElementsByClassName("contentbody")[165].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*166)){
                    var n = 83;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*166); j<result.length; j++){
                document.getElementsByClassName("contentbody")[166].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*167)){
                document.getElementsByClassName("contentbody")[167].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*168)){
                    var n = 84;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*168); j<result.length; j++){
                document.getElementsByClassName("contentbody")[168].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*169)){
                document.getElementsByClassName("contentbody")[169].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*170)){
                    var n = 85;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*170); j<result.length; j++){
                document.getElementsByClassName("contentbody")[170].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*171)){
                document.getElementsByClassName("contentbody")[171].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*172)){
                    var n = 86;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*172); j<result.length; j++){
                document.getElementsByClassName("contentbody")[172].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*173)){
                document.getElementsByClassName("contentbody")[173].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*174)){
                    var n = 87;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*174); j<result.length; j++){
                document.getElementsByClassName("contentbody")[174].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*175)){
                document.getElementsByClassName("contentbody")[175].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*176)){
                    var n = 88;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*176); j<result.length; j++){
                document.getElementsByClassName("contentbody")[176].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*177)){
                document.getElementsByClassName("contentbody")[177].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*178)){
                    var n = 89;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*178); j<result.length; j++){
                document.getElementsByClassName("contentbody")[178].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*179)){
                document.getElementsByClassName("contentbody")[179].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*180)){
                    var n = 90;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*180); j<result.length; j++){
                document.getElementsByClassName("contentbody")[180].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*181)){
                document.getElementsByClassName("contentbody")[181].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*182)){
                    var n = 91;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*182); j<result.length; j++){
                document.getElementsByClassName("contentbody")[182].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*183)){
                document.getElementsByClassName("contentbody")[183].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*184)){
                    var n = 92;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*184); j<result.length; j++){
                document.getElementsByClassName("contentbody")[184].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*185)){
                document.getElementsByClassName("contentbody")[185].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*186)){
                    var n = 93;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*186); j<result.length; j++){
                document.getElementsByClassName("contentbody")[186].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*187)){
                document.getElementsByClassName("contentbody")[187].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*188)){
                    var n = 94;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*188); j<result.length; j++){
                document.getElementsByClassName("contentbody")[188].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*189)){
                document.getElementsByClassName("contentbody")[189].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*190)){
                    var n = 95;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*190); j<result.length; j++){
                document.getElementsByClassName("contentbody")[190].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*191)){
                document.getElementsByClassName("contentbody")[191].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*192)){
                    var n = 96;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*192); j<result.length; j++){
                document.getElementsByClassName("contentbody")[192].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*193)){
                document.getElementsByClassName("contentbody")[193].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*194)){
                    var n = 97;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*194); j<result.length; j++){
                document.getElementsByClassName("contentbody")[194].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*195)){
                document.getElementsByClassName("contentbody")[195].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*196)){
                    var n = 98;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*196); j<result.length; j++){
                document.getElementsByClassName("contentbody")[196].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*197)){
                document.getElementsByClassName("contentbody")[197].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*198)){
                    var n = 99;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*198); j<result.length; j++){
                document.getElementsByClassName("contentbody")[198].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*199)){
                document.getElementsByClassName("contentbody")[199].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*200)){
                    var n = 100;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*200); j<result.length; j++){
                document.getElementsByClassName("contentbody")[200].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*201)){
                document.getElementsByClassName("contentbody")[201].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*202)){
                    var n = 101;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*202); j<result.length; j++){
                document.getElementsByClassName("contentbody")[202].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*203)){
                document.getElementsByClassName("contentbody")[203].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*204)){
                    var n = 102;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*204); j<result.length; j++){
                document.getElementsByClassName("contentbody")[204].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*205)){
                document.getElementsByClassName("contentbody")[205].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*206)){
                    var n = 103;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*206); j<result.length; j++){
                document.getElementsByClassName("contentbody")[206].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*207)){
                document.getElementsByClassName("contentbody")[207].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*208)){
                    var n = 104;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*208); j<result.length; j++){
                document.getElementsByClassName("contentbody")[208].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*209)){
                document.getElementsByClassName("contentbody")[209].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*210)){
                    var n = 105;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*210); j<result.length; j++){
                document.getElementsByClassName("contentbody")[210].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*211)){
                document.getElementsByClassName("contentbody")[211].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*212)){
                    var n = 106;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*212); j<result.length; j++){
                document.getElementsByClassName("contentbody")[212].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*213)){
                document.getElementsByClassName("contentbody")[213].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*214)){
                    var n = 107;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*214); j<result.length; j++){
                document.getElementsByClassName("contentbody")[214].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*215)){
                document.getElementsByClassName("contentbody")[215].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*216)){
                    var n = 108;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*216); j<result.length; j++){
                document.getElementsByClassName("contentbody")[216].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*217)){
                document.getElementsByClassName("contentbody")[217].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*218)){
                    var n = 109;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*218); j<result.length; j++){
                document.getElementsByClassName("contentbody")[218].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*219)){
                document.getElementsByClassName("contentbody")[219].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*220)){
                    var n = 110;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*220); j<result.length; j++){
                document.getElementsByClassName("contentbody")[220].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*221)){
                document.getElementsByClassName("contentbody")[221].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*222)){
                    var n = 111;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*222); j<result.length; j++){
                document.getElementsByClassName("contentbody")[222].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*223)){
                document.getElementsByClassName("contentbody")[223].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*224)){
                    var n = 112;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*224); j<result.length; j++){
                document.getElementsByClassName("contentbody")[224].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*225)){
                document.getElementsByClassName("contentbody")[225].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*226)){
                    var n = 113;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*226); j<result.length; j++){
                document.getElementsByClassName("contentbody")[226].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*227)){
                document.getElementsByClassName("contentbody")[227].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*228)){
                    var n = 114;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*228); j<result.length; j++){
                document.getElementsByClassName("contentbody")[228].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*229)){
                document.getElementsByClassName("contentbody")[229].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*230)){
                    var n = 115;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*230); j<result.length; j++){
                document.getElementsByClassName("contentbody")[230].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*231)){
                document.getElementsByClassName("contentbody")[231].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*232)){
                    var n = 116;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*232); j<result.length; j++){
                document.getElementsByClassName("contentbody")[232].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*233)){
                document.getElementsByClassName("contentbody")[233].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*234)){
                    var n = 117;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*234); j<result.length; j++){
                document.getElementsByClassName("contentbody")[234].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*235)){
                document.getElementsByClassName("contentbody")[235].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*236)){
                    var n = 118;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*236); j<result.length; j++){
                document.getElementsByClassName("contentbody")[236].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*237)){
                document.getElementsByClassName("contentbody")[237].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*238)){
                    var n = 119;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*238); j<result.length; j++){
                document.getElementsByClassName("contentbody")[238].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*239)){
                document.getElementsByClassName("contentbody")[239].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*240)){
                    var n = 120;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*240); j<result.length; j++){
                document.getElementsByClassName("contentbody")[240].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*241)){
                document.getElementsByClassName("contentbody")[241].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*242)){
                    var n = 121;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*242); j<result.length; j++){
                document.getElementsByClassName("contentbody")[242].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*243)){
                document.getElementsByClassName("contentbody")[243].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*244)){
                    var n = 122;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*244); j<result.length; j++){
                document.getElementsByClassName("contentbody")[244].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*245)){
                document.getElementsByClassName("contentbody")[245].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*246)){
                    var n = 123;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*246); j<result.length; j++){
                document.getElementsByClassName("contentbody")[246].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*247)){
                document.getElementsByClassName("contentbody")[247].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*248)){
                    var n = 124;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*248); j<result.length; j++){
                document.getElementsByClassName("contentbody")[248].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*249)){
                document.getElementsByClassName("contentbody")[249].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*250)){
                    var n = 125;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*250); j<result.length; j++){
                document.getElementsByClassName("contentbody")[250].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*251)){
                document.getElementsByClassName("contentbody")[251].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*252)){
                    var n = 126;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*252); j<result.length; j++){
                document.getElementsByClassName("contentbody")[252].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*253)){
                document.getElementsByClassName("contentbody")[253].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*254)){
                    var n = 127;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*254); j<result.length; j++){
                document.getElementsByClassName("contentbody")[254].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*255)){
                document.getElementsByClassName("contentbody")[255].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*256)){
                    var n = 128;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*256); j<result.length; j++){
                document.getElementsByClassName("contentbody")[256].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*257)){
                document.getElementsByClassName("contentbody")[257].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*258)){
                    var n = 129;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*258); j<result.length; j++){
                document.getElementsByClassName("contentbody")[258].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*259)){
                document.getElementsByClassName("contentbody")[259].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*260)){
                    var n = 130;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*260); j<result.length; j++){
                document.getElementsByClassName("contentbody")[260].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*261)){
                document.getElementsByClassName("contentbody")[261].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*262)){
                    var n = 131;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*262); j<result.length; j++){
                document.getElementsByClassName("contentbody")[262].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*263)){
                document.getElementsByClassName("contentbody")[263].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*264)){
                    var n = 132;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*264); j<result.length; j++){
                document.getElementsByClassName("contentbody")[264].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*265)){
                document.getElementsByClassName("contentbody")[265].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*266)){
                    var n = 133;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*266); j<result.length; j++){
                document.getElementsByClassName("contentbody")[266].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*267)){
                document.getElementsByClassName("contentbody")[267].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*268)){
                    var n = 134;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*268); j<result.length; j++){
                document.getElementsByClassName("contentbody")[268].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*269)){
                document.getElementsByClassName("contentbody")[269].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*270)){
                    var n = 135;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*270); j<result.length; j++){
                document.getElementsByClassName("contentbody")[270].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*271)){
                document.getElementsByClassName("contentbody")[271].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*272)){
                    var n = 136;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*272); j<result.length; j++){
                document.getElementsByClassName("contentbody")[272].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*273)){
                document.getElementsByClassName("contentbody")[273].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*274)){
                    var n = 137;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*274); j<result.length; j++){
                document.getElementsByClassName("contentbody")[274].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*275)){
                document.getElementsByClassName("contentbody")[275].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*276)){
                    var n = 138;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*276); j<result.length; j++){
                document.getElementsByClassName("contentbody")[276].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*277)){
                document.getElementsByClassName("contentbody")[277].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*278)){
                    var n = 139;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*278); j<result.length; j++){
                document.getElementsByClassName("contentbody")[278].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*279)){
                document.getElementsByClassName("contentbody")[279].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*280)){
                    var n = 140;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*280); j<result.length; j++){
                document.getElementsByClassName("contentbody")[280].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*281)){
                document.getElementsByClassName("contentbody")[281].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*282)){
                    var n = 141;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*282); j<result.length; j++){
                document.getElementsByClassName("contentbody")[282].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*283)){
                document.getElementsByClassName("contentbody")[283].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*284)){
                    var n = 142;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*284); j<result.length; j++){
                document.getElementsByClassName("contentbody")[284].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*285)){
                document.getElementsByClassName("contentbody")[285].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*286)){
                    var n = 143;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*286); j<result.length; j++){
                document.getElementsByClassName("contentbody")[286].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*287)){
                document.getElementsByClassName("contentbody")[287].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*288)){
                    var n = 144;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*288); j<result.length; j++){
                document.getElementsByClassName("contentbody")[288].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*289)){
                document.getElementsByClassName("contentbody")[289].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*290)){
                    var n = 145;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*290); j<result.length; j++){
                document.getElementsByClassName("contentbody")[290].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*291)){
                document.getElementsByClassName("contentbody")[291].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*292)){
                    var n = 146;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*292); j<result.length; j++){
                document.getElementsByClassName("contentbody")[292].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*293)){
                document.getElementsByClassName("contentbody")[293].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*294)){
                    var n = 147;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*294); j<result.length; j++){
                document.getElementsByClassName("contentbody")[294].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*295)){
                document.getElementsByClassName("contentbody")[295].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*296)){
                    var n = 148;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*296); j<result.length; j++){
                document.getElementsByClassName("contentbody")[296].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*297)){
                document.getElementsByClassName("contentbody")[297].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*298)){
                    var n = 149;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*298); j<result.length; j++){
                document.getElementsByClassName("contentbody")[298].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*299)){
                document.getElementsByClassName("contentbody")[299].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*300)){
                    var n = 150;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*300); j<result.length; j++){
                document.getElementsByClassName("contentbody")[300].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*301)){
                document.getElementsByClassName("contentbody")[301].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*302)){
                    var n = 151;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*302); j<result.length; j++){
                document.getElementsByClassName("contentbody")[302].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*303)){
                document.getElementsByClassName("contentbody")[303].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*304)){
                    var n = 152;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*304); j<result.length; j++){
                document.getElementsByClassName("contentbody")[304].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*305)){
                document.getElementsByClassName("contentbody")[305].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*306)){
                    var n = 153;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*306); j<result.length; j++){
                document.getElementsByClassName("contentbody")[306].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*307)){
                document.getElementsByClassName("contentbody")[307].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*308)){
                    var n = 154;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*308); j<result.length; j++){
                document.getElementsByClassName("contentbody")[308].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*309)){
                document.getElementsByClassName("contentbody")[309].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*310)){
                    var n = 155;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*310); j<result.length; j++){
                document.getElementsByClassName("contentbody")[310].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*311)){
                document.getElementsByClassName("contentbody")[311].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*312)){
                    var n = 156;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*312); j<result.length; j++){
                document.getElementsByClassName("contentbody")[312].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*313)){
                document.getElementsByClassName("contentbody")[313].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*314)){
                    var n = 157;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*314); j<result.length; j++){
                document.getElementsByClassName("contentbody")[314].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*315)){
                document.getElementsByClassName("contentbody")[315].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*316)){
                    var n = 158;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*316); j<result.length; j++){
                document.getElementsByClassName("contentbody")[316].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*317)){
                document.getElementsByClassName("contentbody")[317].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*318)){
                    var n = 159;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*318); j<result.length; j++){
                document.getElementsByClassName("contentbody")[318].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*319)){
                document.getElementsByClassName("contentbody")[319].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*320)){
                    var n = 160;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*320); j<result.length; j++){
                document.getElementsByClassName("contentbody")[320].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*321)){
                document.getElementsByClassName("contentbody")[321].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*322)){
                    var n = 161;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*322); j<result.length; j++){
                document.getElementsByClassName("contentbody")[322].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*323)){
                document.getElementsByClassName("contentbody")[323].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*324)){
                    var n = 162;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*324); j<result.length; j++){
                document.getElementsByClassName("contentbody")[324].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*325)){
                document.getElementsByClassName("contentbody")[325].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*326)){
                    var n = 163;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*326); j<result.length; j++){
                document.getElementsByClassName("contentbody")[326].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*327)){
                document.getElementsByClassName("contentbody")[327].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*328)){
                    var n = 164;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*328); j<result.length; j++){
                document.getElementsByClassName("contentbody")[328].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*329)){
                document.getElementsByClassName("contentbody")[329].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*330)){
                    var n = 165;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*330); j<result.length; j++){
                document.getElementsByClassName("contentbody")[330].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*331)){
                document.getElementsByClassName("contentbody")[331].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*332)){
                    var n = 166;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*332); j<result.length; j++){
                document.getElementsByClassName("contentbody")[332].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*333)){
                document.getElementsByClassName("contentbody")[333].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*334)){
                    var n = 167;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
            for(j=(m*334); j<result.length; j++){
                document.getElementsByClassName("contentbody")[334].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                if(j>=(m*335)){
                document.getElementsByClassName("contentbody")[335].innerHTML += "<div class='bodycontent'>\
                    <div class='bodynum'>"+k+"</div>\
                    <div class='bodyword'>"+result[j]["단어"]+"</div>\
                    <div class='bodytrans'>"+ result[j]["해석"] +"</div>\
                </div>";
                }
                if(j>=(m*336)){
                    var n = 168;
                    
                    document.getElementById('copy_type').innerHTML += copy;
                    document.getElementsByClassName('topname')[n].innerText = name;
                    break;
                }
                k++;
            }
	    }
    </script> -->
</body>
</html>