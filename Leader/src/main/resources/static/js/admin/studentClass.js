/**
 * 
 */


function addClass(){
	if(document.studentClass.id.value==""){
	alert("학생을 선택해주세요")
	return false;
	}
	var url = "addClassForm.mdo?id=" + document.studentClass.id.value;
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "studentClass", opt);	
	
}
function deleteClass(){
if(document.studentClass.id.value==""){
	alert("학생을 선택해주세요")
	return false;
	}
	var url = "deleteClassForm.mdo?id=" + document.studentClass.id.value;
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "studentClass", opt);	
	
}
function addStudentClass(){
	var Chk = false;
	var arrName = document.getElementsByName('name');
	for(var i=0;i<arrName.length;i++){
	if(arrName[i].checked == true){
    	Chk = true;
        break;
    }
}
 
if(!Chk){
    alert("클래스를 체크해주세요.");
    return false;
}else if(confirm("클래스를 추가하시겠습니까?")){
		document.addStudentClassGO.action = "addClass.mdo";
		document.addStudentClassGO.submit();
	}
}

function deleteStudentClass(){
	var Chk = false;
	var arrName = document.getElementsByName('name');
	for(var i=0;i<arrName.length;i++){
	if(arrName[i].checked == true){
    	Chk = true;
        break;
    }
}
 
if(!Chk){
    alert("클래스를 체크해주세요.");
    return false;
}else if(confirm("클래스를 삭제하시겠습니까?")){
		document.deleteStudentClassGO.action = "deleteClass.mdo";
		document.deleteStudentClassGO.submit();
	}
}