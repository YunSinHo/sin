/**
 * 
 */

//단어 클래스
function addClass(){
	if(document.studentClass.id.value==""){
	alert("학생을 선택해주세요")
	return false;
	}
	var url = "addWordClassForm.mdo?id=" + document.studentClass.id.value;
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "studentClass", opt);	
	
}
function deleteClass(){
if(document.studentClass.id.value==""){
	alert("학생을 선택해주세요")
	return false;
	}
	var url = "deleteWordClassForm.mdo?id=" + document.studentClass.id.value;
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
		document.addStudentClassGO.action = "addWordClass.mdo";
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
		document.deleteStudentClassGO.action = "deleteWordClass.mdo";
		document.deleteStudentClassGO.submit();
	}
}
//클래스
function addClass2(){
	if(document.studentClass.id.value==""){
	alert("학생을 선택해주세요")
	return false;
	}
	var url = "addClassForm.mdo?id=" + document.studentClass.id.value;
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "studentClass", opt);	
	
}
function deleteClass2(){
if(document.studentClass.id.value==""){
	alert("학생을 선택해주세요")
	return false;
	}
	var url = "deleteClassForm.mdo?id=" + document.studentClass.id.value;
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "studentClass", opt);	
	
}
function addStudentClass2(){
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

function deleteStudentClass2(){
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

//부서 관리
function addDept(){
	if(document.teacherList1.id.value==""){
	alert("강사를 선택해주세요")
	return false;
	}
	var url = "addDeptForm.mdo?id=" + document.teacherList1.id.value;
	var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=550, scrollbars=yes";
	window.open(url, "addDeptForm", opt);	
	
}
function addTeacherDept(){
	var Chk = false;
	var arrName = document.getElementsByName('name');
	for(var i=0;i<arrName.length;i++){
	if(arrName[i].checked == true){
    	Chk = true;
        break;
    }
}
 
if(!Chk){
    alert("부서를 체크해주세요.");
    return false;
}else if(confirm("부서를 변경하시겠습니까?")){
		document.addTeacherDeptGO.action = "addDept.mdo";
		document.addTeacherDeptGO.submit();
	}
}
