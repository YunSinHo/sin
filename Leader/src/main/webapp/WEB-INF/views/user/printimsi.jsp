<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link href="/css/user/printimsi.css" rel="stylesheet" />
<title>Document</title>
</head>
<body>
	<div id="google_sectional_element" style="display:none"></div>
	<header>
		<div class="logo">로고</div>
		<div class="name">
			${print_view.pi_name }
		</div>
		<div class="source">
			${print_view.pi_source }
		</div>
	</header>
	<div class="main">
		<div class="selectdifficulty">
			영단어 난이도 선택&nbsp;&nbsp;:&nbsp;
			<select name="difficulty">
    			<option value="">난이도 선택</option>
    			<option value="초등학교">초등학교</option>
    			<option value="중학교">중학교</option>
    			<option value="고등학교">고등학교</option>
    			<option value="수능">수능</option>
			</select>
			<button type="button" class="difficultybtn">선택</button>
		</div>
		<div class="maintext" style="white-space:pre-wrap;" id="maintext">
		</div>
		<div class="word">
			<div class="en_word">
				<div class="ew_title">영단어</div>
				<div class="ew_contents" id="enwords"></div>
			</div>
			
			<div class="ko_word">
				<div class="kw_title">
					<div>해석</div>
					<div class="goog-trans-control" style="display:none"></div>
				</div>
				<div class="kw_contents" id="kwwords"></div>
			</div>
		</div>
	</div>
	<div class="grammer">
		<div class="gm_title">문법 및 주요 구문</div>
		<div class="gm_contents" id="select_text"></div>
		<div class="ko_word" style="border:0px;">
			<div class="goog-trans-control" style="display:none"></div>
			<div class="gm_transcontents" id="gm_trans"></div>
		</div>
	</div>
	<div class="composition">
		<div class="cp_title">영작문</div>
		<div class="cp_functions"><button type="button" onClick="randombtn()" class="btn btn-primary btn-sm randomcontents">랜덤 작문 생성</button>&nbsp;&nbsp; 정답 확인<input type="checkbox" id="answercheck"></div>
		<div class="ko_word" style="border:0px;">
			<div class="goog-trans-control" style="display:none"></div>
			<div class="cp_contents" id="random_senten"></div>
		</div>
		<div class="cp_transcontents" id="cp_trans"></div>
	</div>
	<footer> 저작권 정보 </footer>
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
	<script src="//translate.google.com/translate_a/element.js?cb=googleSectionalElementInit&ug=section&hl=ko"></script>
	<script type="text/javascript">
	const maintext = `${print_view.pi_text }`;
	const lowertext = maintext.toLowerCase();
	const reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\"“”0-9]/gi;
	const resulttext = lowertext.replace(reg, "");
	const words = resulttext.split(/ |\n/);
	const sentence = maintext.replace(/\n/gi,"");
	const resultsentence = sentence.split(".");
	const setword = new Set(words);
	const uniquewords = [...setword];
	const filterwords = uniquewords.filter(function(item) {
		return item !== null && item !== undefined && item !== '';
	});
	let finalsentence = resultsentence[0].split(" ");
	let i=0;
	let j=0;
	let k=0;
	let text = "";
	let sentences = "";
	let Elementsenten = "";
	filterwords.sort();
	while(resultsentence[j]){
		sentences += "<font id=\"resultsentence" + j + "\" onclick=\"selectsentence(this.id)\">" + resultsentence[j] + "</font>" + "<br>" + "<br>";
		j++;
	};
	while(filterwords[i]){
		text += filterwords[i] + "<br>" + "<hr>";
		i++;
	};
	while(finalsentence[k]){
		Elementsenten += "<span>" + finalsentence[k] + "</span>" + "&nbsp;";
		k++;
	}
	document.getElementById("maintext").innerHTML = sentences;
	document.getElementById("enwords").innerHTML = text;
	document.getElementById("kwwords").innerHTML = text;
	let select_senten = resultsentence[0];
	document.getElementById("select_text").innerHTML = Elementsenten;
	document.getElementById("gm_trans").innerHTML = select_senten;
	function selectsentence(clicked_id){
		let l=0;
		let finalElementsenten = "";
		let select_sentence = document.getElementById(clicked_id).innerText;
		let dividesenten = select_sentence.split(" ");
		while(dividesenten[l]){
			finalElementsenten += "<span>" + dividesenten[l] + "</span>"  + "&nbsp;";
			l++;
		}
		document.getElementById("select_text").innerHTML = finalElementsenten;
		document.getElementById("gm_trans").innerHTML = select_sentence;
		jQuery('a.goog-te-gadget-link')[1].click();
		jQuery('a.goog-te-gadget-link')[1].click();
	}
	function changebackground(clicked_id){
		document.getElementById(clicked_id).className = 'gm_emphasis';
	}
	let randomselect = Math.floor(Math.random() * (j));
	let randomsenten = resultsentence[randomselect];
	document.getElementById("random_senten").innerHTML = randomsenten;
	document.getElementById("cp_trans").innerHTML = randomsenten;
	function randombtn(){
		let randombutton = Math.floor(Math.random() * (j));
		let random_select_senten = resultsentence[randombutton];
		document.getElementById("random_senten").innerHTML = random_select_senten;
		document.getElementById("cp_trans").innerHTML = random_select_senten;
		jQuery('a.goog-te-gadget-link')[2].click();
		jQuery('a.goog-te-gadget-link')[2].click();
	}
	function googleSectionalElementInit() {
        new google.translate.SectionalElement({
            sectionalNodeClassName: 'ko_word',
            controlNodeClassName: 'goog-trans-control',
            background: '#000000'
        }, 'google_sectional_element');
    }
	google_initialized = false;
    function google_auto_translate(){
        if(google_initialized){
            jQuery('a.goog-te-gadget-link')[0].click();
            jQuery('a.goog-te-gadget-link')[1].click();
            jQuery('a.goog-te-gadget-link')[2].click();
        } else if( jQuery('a.goog-te-gadget-link').length ) {
            google_initialized = true;
            setTimeout(google_auto_translate, 10);
        } else{
            setTimeout(google_auto_translate, 100);
        }
    }
    jQuery(document).ready(function(){
        setTimeout(google_auto_translate, 1000);
    });
    $(document).ready(function(){
    	$("span").click(function(){
    		  $(this).toggleClass("gm_emphasis");
    	});
        $("#answercheck").change(function(){
            if($("#answercheck").is(":checked")){
            	document.getElementById("cp_trans").style.display = "block";
            }else{
            	document.getElementById("cp_trans").style.display = "none";
            }
        });
    });
	</script>
</body>
</html>