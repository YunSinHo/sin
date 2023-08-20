function loginCheckEnter(){
	if (window.event.keyCode == 13) {
	if(document.loginFrm.id.value==""){
		alert("아이디는 필수입력사항입니다");
		document.loginFrm.id.focus();
		return false;
	}else if(document.loginFrm.password.value==""){
		alert("비밀번호는 필수입력사항입니다");
		document.loginFrm.password.focus();
		return false;
	}else{
	document.loginFrm.action = "loginStudent.do";
		document.loginFrm.submit();
                                    }
			
	}
	}
	function loginCheck(){
	if(document.loginFrm.id.value==""){
		alert("아이디는 필수입력사항입니다");
		document.loginFrm.id.focus();
		return false;
	}else if(document.loginFrm.password.value==""){
		alert("비밀번호는 필수입력사항입니다");
		document.loginFrm.password.focus();
		return false;
	}else{
	document.loginFrm.action = "loginStudent.do";
		document.loginFrm.submit();
                                    }
			
	}
	
//직접 회원가입
function loginCheckTeacher(){
	if(document.loginFrm.id.value==""){
		alert("아이디는 필수입력사항입니다");
		document.loginFrm.id.focus();
		return false;
	}else if(document.loginFrm.password.value==""){
		alert("비밀번호는 필수입력사항입니다");
		document.loginFrm.password.focus();
		return false;
	}
	
	else{
	document.loginFrm.action = "loginTeacher.do";
		document.loginFrm.submit();
                                    }
}	

function loginCheckTeacherEnter(){
	if (window.event.keyCode == 13) {
	if(document.loginFrm.id.value==""){
		alert("아이디는 필수입력사항입니다");
		document.loginFrm.id.focus();
		return false;
	}else if(document.loginFrm.password.value==""){
		alert("비밀번호는 필수입력사항입니다");
		document.loginFrm.password.focus();
		return false;
	}
	
	else{
	document.loginFrm.action = "loginTeacher.do";
		document.loginFrm.submit();
                                    }
}
	}	

function idcheck(){
	if( document.joinStudent.id.value=="" ){
		alert("아이디를 입력하고 중복체크를 진행하세요" );
		documnet.joinStudent.id.focus();
		return;
	}
	document.joinStudent.action = "idCheck.do";
		document.joinStudent.submit();	
}

function idcheckTeacher(){
	if( document.joinTeacher.id.value=="" ){
		alert("아이디를 입력하고 중복체크를 진행하세요" );
		documnet.joinTeacher.id.focus();
		return;
	}
	document.joinTeacher.action = "idCheckTeacher.do";
		document.joinTeacher.submit();	
}
//admin이 회원가입시 체크
function idcheckTeacher2(){
	if( document.joinTeacher.id.value=="" ){
		alert("아이디를 입력하고 중복체크를 진행하세요" );
		documnet.joinTeacher.id.focus();
		return;
	}
	document.joinTeacher.action = "idCheckTeacher2.do";
		document.joinTeacher.submit();	
}
function numberRegExp(e) {
        var number = e.value.replace(/[^0-9]/g, "");
        var phone = "";
 
        if (number.length < 4) {
            return number;
        } else if (number.length < 7) {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3);
        } else if (number.length < 10) {
            phone += number.substr(0, 2);
            phone += "-";
            phone += number.substr(2, 3);
            phone += "-";
            phone += number.substr(5);
        } else if (number.length < 11) {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3, 3);
            phone += "-";
            phone += number.substr(6);
        } else {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3, 4);
            phone += "-";
            phone += number.substr(7, 4);
        }
 
        e.value = phone;
    }

function go_save(){
	var idRegExp = /^[a-zA-z0-9]{4,12}$/;
 if(document.joinStudent.name.value == "") {
	    alert("이름을 입력해 주세요.");	    
	    document.joinStudent.name.focus();
	}
else if (document.joinStudent.id.value == "") {
		alert("아이디를 입력하여 주세요."); 	    
	    document.joinStudent.id.focus();
	}
	else if (!idRegExp.test(document.joinStudent.id.value)) {
		alert("4~12자 영문 대소문자, 숫자만 입력하세요.");	    
	    document.joinStudent.id.focus();
	}
	else if(document.joinStudent.result.value=="" ){
		alert("중복 체크를 해주세요");		
		document.joinStudent.id.focus();
	}
	 else if(document.joinStudent.result.value=="1" ){
		alert("중복된 아이디 입니다");		
		document.joinStudent.id.focus();
	}  else if(document.joinStudent.password.value == "") {
	    alert("비밀번호를 입력해 주세요.");	    
	    document.joinStudent.password.focus();
	} else if(document.joinStudent.password.value != document.joinStudent.passwordCheck.value) {
	    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");	    
	    document.joinStudent.password.focus();
	}
	else if(!idRegExp.test(document.joinStudent.password.value)) {
	    alert("4~12자 영문 대소문자, 숫자만 입력하세요.");	   
	    document.joinStudent.password.focus();
	}
	 else if(document.joinStudent.number.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.joinStudent.number.focus();
	}else if(document.joinStudent.parentnumber.value == "") {
	    alert("부모님 번호를 입력해 주세요.");	   
	    document.joinStudent.parentnumber.focus();
	}else if(document.joinStudent.number.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.joinStudent.phone.focus();
	}else if(document.joinStudent.school.value == "") {
	    alert("학교를 입력해 주세요.");	   
	    document.joinStudent.school.focus();
	}else if(document.joinStudent.grade.value == "") {
	    alert("학년을 입력해주세요.");	   
	    document.joinStudent.grade.focus();
	} else{
		document.joinStudent.action = "joinStudent.do";
	    document.joinStudent.submit();
	}
}
//직접 회원가입
function go_saveTeacher(){
	var idRegExp = /^[a-zA-z0-9]{4,12}$/;
 if(document.joinTeacher.name.value == "") {
	    alert("이름을 입력해 주세요.");	    
	    document.joinTeacher.name.focus();
	}
else if (document.joinTeacher.id.value == "") {
		alert("아이디를 입력하여 주세요."); 	    
	    document.joinTeacher.id.focus();
	}
	else if(document.joinTeacher.result.value=="" ){
		alert("중복 체크를 해주세요");		
		document.joinTeacher.id.focus();
	} else if(document.joinTeacher.result.value=="1" ){
		alert("중복된 아이디 입니다");		
		document.joinTeacher.id.focus();
	}  else if(document.joinTeacher.password.value == "") {
	    alert("비밀번호를 입력해 주세요.");	    
	    document.joinTeacher.password.focus();
	} else if(document.joinTeacher.password.value != document.joinTeacher.passwordCheck.value) {
	    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");	    
	    document.joinTeacher.password.focus();
	}
	else if(!idRegExp.test(document.joinTeacher.password.value)) {
	    alert("4~12자 영문 대소문자, 숫자만 입력하세요.");	   
	    document.joinStudent.password.focus();
	}
	 else if(document.joinTeacher.number.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.joinTeacher.number.focus();
	}else{
		document.joinTeacher.action = "joinTeacher.do";
	    document.joinTeacher.submit();
	}
}
//admin이 회원가입
function go_saveTeacher2(){
	var idRegExp = /^[a-zA-z0-9]{4,12}$/;
 if(document.joinTeacher.name.value == "") {
	    alert("이름을 입력해 주세요.");	    
	    document.joinTeacher.name.focus();
	}
else if (document.joinTeacher.id.value == "") {
		alert("아이디를 입력하여 주세요."); 	    
	    document.joinTeacher.id.focus();
	}
	else if(document.joinTeacher.result.value=="" ){
		alert("중복 체크를 해주세요");		
		document.joinTeacher.id.focus();
	} else if(document.joinTeacher.result.value=="1" ){
		alert("중복된 아이디 입니다");		
		document.joinTeacher.id.focus();
	}  else if(document.joinTeacher.password.value == "") {
	    alert("비밀번호를 입력해 주세요.");	    
	    document.joinTeacher.password.focus();
	} else if(document.joinTeacher.password.value != document.joinTeacher.passwordCheck.value) {
	    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");	    
	    document.joinTeacher.password.focus();
	}
	else if(!idRegExp.test(document.joinTeacher.password.value)) {
	    alert("4~12자 영문 대소문자, 숫자만 입력하세요.");	   
	    document.joinStudent.password.focus();
	}
	 else if(document.joinTeacher.number.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.joinTeacher.number.focus();
	}else{
		document.joinTeacher.action = "joinTeacher.do?access=o";
	    document.joinTeacher.submit();
	}
}




function go_update(){
	if (document.joinStudent.pwd.value == "") {
	    alert("비밀번호를 입력해 주세요.");
	    document.joinStudent.pwd.focus();
	}else if ((document.joinStudent.pwd.value != document.joinStudent.pwdCheck.value)) {
	    alert("비밀번호가 일치하지 않습니다.");
	    document.joinStudent.pwd.focus();
	}else if (document.joinStudent.name.value == "") {
	    alert("이름을 입력해 주세요.");
	    document.joinStudent.name.focus();
	} else if (document.joinStudent.email.value == "") {
	    alert("이메일을 입력해 주세요.");
	    document.joinStudent.email.focus();
	}else if(document.joinStudent.zip.value == "") {
	    alert("주소를 입력해 주세요");	   
	    document.joinStudent.zip.focus();
	}else if(document.joinStudent.phone.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.joinStudent.phone.focus();
	}else if(confirm("수정하시겠습니까?")) {
	    document.joinStudent.action = "memberUpdate";
	    document.joinStudent.submit();
	}
}









function resetPw(){
	if(document.frm.pwd.value==""){
		alert("비밀번호를 입력하세요"); 		
		document.frm.pwd.focus(); 		
		return false;
	}else if(document.frm.pwd.value!=document.frm.pwd_chk.value){
		alert("비밀번호확인이 일치하지 않습니다"); 		
		document.frm.pwd_chk.focus(); 	
		return false;
	}else{
		return true;	
	}
	
}

function withdraw(){
	if (document.joinStudent.pwd.value == "") {
	    alert("비밀번호를 입력해 주세요.");
	    document.joinStudent.pwd.focus();
	}else if ((document.joinStudent.pwd.value != document.joinStudent.pwdCheck.value)) {
	    alert("비밀번호가 일치하지 않습니다.");
	    document.joinStudent.pwd.focus();
	}else if (document.joinStudent.name.value == "") {
	    alert("이름을 입력해 주세요.");
	    document.joinStudent.name.focus();
	} else if (document.joinStudent.email.value == "") {
	    alert("이메일을 입력해 주세요.");
	    document.joinStudent.email.focus();
	}else if(document.joinStudent.zip.value == "") {
	    alert("주소를 입력해 주세요");	   
	    document.joinStudent.zip.focus();
	}else if(document.joinStudent.phone.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.joinStudent.phone.focus();
	}else if(confirm("정말 탈퇴하시겠습니까?")){
		document.joinStudent.action = "deleteMember";
	    document.joinStudent.submit();
	    return true;
	    }else return false;
	}


