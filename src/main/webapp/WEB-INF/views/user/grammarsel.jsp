<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.admin.vo.GrammarVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<style>
img{
	width:100%;
	vertical-align:middle;
}
.bodyarea{
	width:100%;
	position:relative;
}
.contentarea1{
	position: absolute;
    top: 9%;
    left: 4%;
    height: 40%;
    width: 44%;
}
.contentbox1{
	height: 100%;
    width: 100%;
    resize: none;
    font-size:1.6783vw;
    border: 0;
    word-break: break-all;
}
.contentbox2{
	height: 100%;
    width: 100%;
    resize: none;
    font-size:1.6783vw;
    border: 0;
    word-break: break-all;
}
.categoryarea1{
	position: absolute;
    left: 37.5%;
    top: 6%;
}
.categorybox{
	width: 10.8392vw;
	border: 0;
	font-size:1.1189vw;
    color:#F3B3A1;
}
.viewmorearea1{
	position: absolute;
    display: grid;
    left: 52%;
    top: 33.5%;
    height: 15%;
    width: 44%;
    grid-template-rows: auto 1fr auto 1fr;
}
.viewmorebox{
    border: 0;
    font-size: 1.6783vw;
    word-break: break-all;
}
.contentarea2{
	position: absolute;
    top: 55.4%;
    left: 4%;
    height: 40%;
    width: 44%;
}
.categoryarea2{
	position: absolute;
    left: 37.5%;
    top: 52.4%;
}
.wordlistarea2{
    display: grid;
	position: absolute;
    top: 54.6%;
    left: 52%;
    width: 43.5%;
    height: 11.7%;
}
.viewmorearea2{
	position: absolute;
    display: grid;
    left: 52%;
    top: 79.9%;
    height: 15%;
    width: 44%;
    grid-template-rows: auto 1fr auto 1fr;
}
.wordlistarea1{
    position: absolute;
    top: 8.2%;
    left: 52%;
    width: 43.5%;
    height: 11.7%;
    display:grid;
    grid-template-columns:1fr 1fr 2.2% 1fr 1fr;
}
.wordlistarea2{
    position: absolute;
    top: 54.6%;
    left: 52%;
    width: 43.5%;
    height: 11.7%;
    display:grid;
    grid-template-columns:1fr 1fr 2.2% 1fr 1fr;
}
.wordlist1-1{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.trans1-1{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.wordlist1-2{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.trans1-2{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.wordlist2-1{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.trans2-1{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.wordlist2-2{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.trans2-2{
	display:grid;
    grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
    height:16.35vw !important;
}
.word{
    text-align: center;
    line-height: 2.5694vw;
    color : #F3B3A1;
    border-bottom:1px solid #F3B3A1;
    font-size:1.3889vw;
}
.goog-trans-section{
	height:100%;
}
.goog-trans{background:#f0f0f0}
.goog-trans-control{float:left;height:40px}
.goog-trans-control a{display:inline-block;padding:0 10px;height:40px;line-height:40px;background:#383838;color:#fff;text-align:center;text-decoration:none}
.goog-trans-info{float:left;margin:0 0 0 10px;height:40px;line-height:40px;color:#686868}
.goog-trans:after{display:block;visibility:hidden;clear:both;content:''}
</style>
</head>
<body>
	<table style="display:none;" id="dataTable">
		<c:forEach var="list2" items="${showword}" varStatus="status">
			<tr>
				<td><c:out value="${list2.word_name}" /></td>
			</tr>
		</c:forEach>
	</table>
	<c:forEach var="list" items="${showgrammar}" varStatus="status">
		<c:if test="${list.grammar_content2 == ''}">
			<div class="bodyarea">
				<img class="mainheaderimg2" alt="img2" src="img/user/grammar2.png">
				<div class="contentarea1">
					<textarea class="contentbox1" readonly>  ${list.grammar_content1}</textarea>
				</div>
				<div class="categoryarea1">
					<input type="text" class="categorybox" value="${list.grammar_category1}" readonly>
				</div>
				<div class="wordlistarea1">
					<div class="wordlist1-1">
					</div>
					<div class="translist1-1">
						<div id="google_sectional_element" style="display:none"></div>
						<div class="goog-trans-section" style="height:100% !important;">
						    <div class="goog-trans" style="display:none">
						        <div class="goog-trans-control"></div>
						    </div>
						    <div id="google_translate_element_area" class="trans1-1"></div>
						</div>
					</div>
					<div></div>
					<div class="wordlist1-2">
					</div>
					<div class="translist1-2">
					<div id="google_sectional_element" style="display:none"></div>
						<div class="goog-trans-section">
						    <div class="goog-trans" style="display:none">
						        <div class="goog-trans-control"></div>
						    </div>
						    <div id="google_translate_element_area" class="trans1-2"></div>
						</div>
					</div>
				</div>
				<div class="viewmorearea1">
					<div class="viewmorebox">${list.grammar_viewmoretext1}</div>
					<div></div>
					<div class="viewmorebox">${list.grammar_viewmoretext2}</div>
					<div></div>
				</div>
			</div>
		</c:if>
		<c:if test="${list.grammar_content1 == '' and list.grammar_content2 == ''}">
		</c:if>
		<c:if test="${list.grammar_content2 != ''}">
			<div class="bodyarea">
				<img class="mainheaderimg1" alt="img1" src="img/user/grammar1.png">
				<div class="contentarea1">
					<textarea class="contentbox1" readonly>  ${list.grammar_content1}</textarea>
				</div>
				<div class="categoryarea1">
					<input type="text" class="categorybox" value="${list.grammar_category1}" readonly>
				</div>
				<div class="wordlistarea1">
					<div class="wordlist1-1">
					</div>
					<div class="translist1-1">
						<div id="google_sectional_element" style="display:none"></div>
						<div class="goog-trans-section">
						    <div class="goog-trans" style="display:none">
						        <div class="goog-trans-control"></div>
						    </div>
						    <div id="google_translate_element_area" class="trans1-1"></div>
						</div>
					</div>
					<div></div>
					<div class="wordlist1-2">
					</div>
					<div class="translist1-2">
						<div id="google_sectional_element" style="display:none"></div>
						<div class="goog-trans-section">
						    <div class="goog-trans" style="display:none">
						        <div class="goog-trans-control"></div>
						    </div>
						    <div id="google_translate_element_area" class="trans1-2"></div>
						</div>
					</div>
				</div>
				<div class="viewmorearea1">
					<div class="viewmorebox">${list.grammar_viewmoretext1}</div>
					<div></div>
					<div class="viewmorebox">${list.grammar_viewmoretext2}</div>
					<div></div>
				</div>
				<div class="contentarea2">
					<textarea class="contentbox2" readonly>  ${list.grammar_content2}</textarea>
				</div>
				<div class="categoryarea2">
					<input type="text" class="categorybox" value="${list.grammar_category2}" readonly>
				</div>
				<div class="wordlistarea2">
					<div class="wordlist2-1">
					</div>
					<div class="translist2-1">
						<div id="google_sectional_element" style="display:none"></div>
						<div class="goog-trans-section">
						    <div class="goog-trans" style="display:none">
						        <div class="goog-trans-control"></div>
						    </div>
						    <div id="google_translate_element_area" class="trans2-1"></div>
						</div>
					</div>
					<div></div>
					<div class="wordlist2-2">
					</div>
					<div class="translist2-2">
						<div id="google_sectional_element" style="display:none"></div>
						<div class="goog-trans-section">
						    <div class="goog-trans" style="display:none">
						        <div class="goog-trans-control"></div>
						    </div>
						    <div id="google_translate_element_area" class="trans2-2"></div>
						</div>
					</div>
				</div>
				<div class="viewmorearea2">
					<div class="viewmorebox">${list.grammar_viewmoretext3}</div>
					<div></div>
					<div class="viewmorebox">${list.grammar_viewmoretext4}</div>
					<div></div>
				</div>
			</div>
		</c:if>
	</c:forEach>
	<script src="//translate.google.com/translate_a/element.js?cb=googleSectionalElementInit&ug=section&hl=ko"></script>
	<script>
    function googleSectionalElementInit() {
        new google.translate.SectionalElement({
            sectionalNodeClassName: 'goog-trans-section',
            controlNodeClassName: 'goog-trans-control',
            background: '#78E7FF'
        }, 'google_sectional_element');
    }
	google_initialized = false;

    function google_auto_translate()
    {
        if(google_initialized)
        {	
        	for(var n = 0; n < $('.goog-trans-section').length; n++){
                jQuery('a.goog-te-gadget-link')[n].click();
        	}
        }
        else if( jQuery('a.goog-te-gadget-link').length )
        {
            google_initialized = true;
            setTimeout(google_auto_translate, 500);
        }
        else{
            setTimeout(google_auto_translate, 100);
        }
    }

    jQuery(document).ready(function(){
        setTimeout(google_auto_translate, 1000);
    });
	var table = document.getElementById('dataTable');//데이터를 추출할 DOM의 <table> 요소
    var result = [];
    for ( var i = 1; i < table.rows.length; i++ ) {//<tr> 숫자만큼 반복
        var str = document.getElementsByTagName('td')[i-1].childNodes[0].nodeValue;
        result.push(str);//위에서 만들어진 객체를 반환할 배열의 원소로 설정
    }
    for(var k = 0; k < $('.contentbox1').length; k++){
    	const mainvalue1 = document.getElementsByClassName("contentbox1")[k];
    	const maintext1 = mainvalue1.value;
    	const lowertext1 = maintext1.toLowerCase();
    	const reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\"“”0-9]/gi;
    	const resulttext1 = lowertext1.replace(reg, "");
    	const words1 = resulttext1.split(/ |\n/);
    	const setword1 = new Set(words1);
    	const uniquewords1 = [...setword1];
    	const filterwords1 = uniquewords1.filter(function(item) {
    		return item !== null && item !== undefined && item !== '';
    	});
    	let intersection1 = result.filter(x => filterwords1.includes(x));
    	var wordresult1=[];
    	for(var l = 0; l < 12; l++){
    		if(intersection1.length == 0){
    			break;
    		}
    		const randomnum1 = Math.floor(Math.random() * intersection1.length);
    		wordresult1.push(intersection1[randomnum1]);
        	intersection1.splice(randomnum1,1);
    	}
    	console.log(wordresult1);
    	const half1 = Math.ceil(wordresult1.length / 2);    

    	const worddivide1 = wordresult1.splice(0, half1);
    	const worddivide2 = wordresult1.splice(-half1);
    	for(var m = 0; m < 6; m++){
    		var wordhtml1='';
    		var wordhtml2='';
    		if(worddivide1[m] != undefined){
            	wordhtml1 += '<div class="word">';
            	wordhtml1 += worddivide1[m];
            	wordhtml1 += '</div>';
    		}
    		if(worddivide1[m] == undefined){
            	wordhtml1 += '<div class="word">';
            	wordhtml1 += '</div>';
    		}
    		if(worddivide2[m] != undefined){
            	wordhtml2 += '<div class="word">';
            	wordhtml2 += worddivide2[m];
            	wordhtml2 += '</div>';
    		}
    		if(worddivide2[m] == undefined){
            	wordhtml2 += '<div class="word">';
            	wordhtml2 += '</div>';
    		}
        	document.getElementsByClassName("wordlist1-1")[k].innerHTML += wordhtml1;
        	document.getElementsByClassName("trans1-1")[k].innerHTML += wordhtml1;
        	document.getElementsByClassName("wordlist1-2")[k].innerHTML += wordhtml2;
        	document.getElementsByClassName("trans1-2")[k].innerHTML += wordhtml2;
    	}
    }
    for(var o = 0; o < $('.contentbox2').length; o++){
    	const mainvalue2 = document.getElementsByClassName("contentbox2")[o];
    	const maintext2 = mainvalue2.value;
    	const lowertext2 = maintext2.toLowerCase();
    	const reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\"“”0-9]/gi;
    	const resulttext2 = lowertext2.replace(reg, "");
    	const words2 = resulttext2.split(/ |\n/);
    	const setword2 = new Set(words2);
    	const uniquewords2 = [...setword2];
    	const filterwords2 = uniquewords2.filter(function(item) {
    		return item !== null && item !== undefined && item !== '';
    	});
    	let intersection2 = result.filter(x => filterwords2.includes(x));
    	var wordresult2=[];
    	for(var p = 0; p < 12; p++){
    		if(intersection2.length == 0){
    			break;
    		}
    		const randomnum2 = Math.floor(Math.random() * intersection2.length);
    		wordresult2.push(intersection2[randomnum2]);
        	intersection2.splice(randomnum2,1);
    	}
    	const half2 = Math.ceil(wordresult2.length / 2);    

    	const worddivide3 = wordresult2.splice(0, half2);
    	const worddivide4 = wordresult2.splice(-half2);
    	for(var m = 0; m < 6; m++){
    		var wordhtml3='';
    		var wordhtml4='';
    		if(worddivide3[m] != undefined){
            	wordhtml3 += '<div class="word">';
            	wordhtml3 += worddivide3[m];
            	wordhtml3 += '</div>';
    		}
    		if(worddivide3[m] == undefined){
            	wordhtml3 += '<div class="word">';
            	wordhtml3 += '</div>';
    		}
    		if(worddivide4[m] != undefined){
            	wordhtml4 += '<div class="word">';
            	wordhtml4 += worddivide4[m];
            	wordhtml4 += '</div>';
    		}
    		if(worddivide4[m] == undefined){
            	wordhtml4 += '<div class="word">';
            	wordhtml4 += '</div>';
    		}
        	document.getElementsByClassName("wordlist2-1")[o].innerHTML += wordhtml3;
        	document.getElementsByClassName("trans2-1")[o].innerHTML += wordhtml3;
        	document.getElementsByClassName("wordlist2-2")[o].innerHTML += wordhtml4;
        	document.getElementsByClassName("trans2-2")[o].innerHTML += wordhtml4;
    	}
    }
	</script>
</body>
</html>