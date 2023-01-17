/**
 * 
 */
function insertCarrot(){
	var theForm = document.CarrotVO;
	if (theForm.carrot_number.value == "") {
		alert('부모님 번호를 입력하세요.'); 	
		theForm.subject.focus();	
	} else if (theForm.carrot_date.value == "") {
		alert('날짜를 선택하세요.'); 		
		theForm.carrot_date.focus();
	}else if (theForm.carrot_class.value == "") {
		alert('반을 입력하세요.'); 		
		theForm.carrot_class.focus();
	} else if (theForm.carrot_name.value == "") {
		alert('이름을 입력하세요.'); 		
		theForm.carrot_name.focus();
	} else if (theForm.carrot_books.value == "") {
		alert('책 제목을 입력하세요.'); 		
		theForm.carrot_books.focus();
	} else if (theForm.carrot_memorization.value == "") {
		alert('단어테스트를 선택하세요.'); 		
		theForm.carrot_memorization.focus();
	} else if (theForm.carrot_report.value == "") {
		alert('독후감을 선택하세요.'); 		
		theForm.carrot_report.focus();
	} else if (theForm.carrot_read.value == "") {
		alert('눈으로 읽기를 선택하세요.'); 		
		theForm.carrot_read.focus();
	} else if (theForm.carrot_trans.value == "") {
		alert('요약문 영작을 선택하세요.'); 		
		theForm.carrot_trans.focus();
	} else if (theForm.carrot_solving.value == "") {
		alert('관련 문제 풀기를 선택하세요.'); 		
		theForm.carrot_solving.focus();
	}else if (theForm.carrot_listen.value == "") {
		alert('기억에 남는 문장을 입력하세요.'); 		
		theForm.carrot_listen.focus();
	} else if (theForm.carrot_getting.value == "대분류 우선 선택") {
		alert('주요습득구문을 선택하세요.'); 		
		theForm.carrot_getting.focus();
	} else if (theForm.carrot_showdown.value == "") {
		alert('기문암기발표를 입력하세요.');		
		theForm.carrot_showdown.focus();
	} else if (theForm.carrot_speech.value == "") {
		alert('정독쓰기 및 말하기를 선택하세요.'); 		
		theForm.carrot_speech.focus();
	} else if (theForm.carrot_perfection.value == "") {
		alert('지난주 딕테이션 숙제완성도를 선택하세요.'); 		
		theForm.carrot_perfection.focus();
	} else if (theForm.carrot_result.value == "") {
		alert('총평을 입력하세요.'); 		
		theForm.carrot_result.focus();
	}     else{
		theForm.setAttribute('method','post');
		theForm.action = "insertcarrot.mdo";
		theForm.submit();
		}
}