/**
 * 
 */
   function submitTest(){
		if(confirm("제출하시겠습니까?")){
			document.testGugudan.action="testCheck.do";
			document.testGugudan.submit();
}
}