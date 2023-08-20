<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <style>
        .dropdownoption{
            position : relative;
            display : inline-block;
        }
        .dropdowncontent{
            display : none;
            position : absolute;
            z-index : 1; /*다른 요소들보다 앞에 배치*/
        }
        .dropdowncontent a{
            display : block;
        }

        .dropdownoption:hover .dropdowncontent {
            display: block;
        }
    </style>
</head>
<body>
    <div class="namearea">
        <input type="text" id="mainname" placeholder="시험 제목">
    </div>
    <button type="button" onclick="savearrangement()">저장하기</button>
    <div class="testarea" id="testarea1" name="multi">
        <div class="testheader" style="display:flex">
            <div class="testtype">
                <select name="" id="sel1">
                    <option value="">유형 선택</option>
                    <option>듣기</option>
                    <option>기초</option>
                    <option>객관식단어</option>
                    <option>주관식단어</option>
                    <option>문법</option>
                    <option>영작</option>
                </select>
            </div>
            <div class="testoption">
                <div class="dropdownoption">
                    <span class="dropbtn">문제 생성</span>
                    <div class="dropdowncontent">
                        <p class="insertchoice">객관식</p>
                        <p class="insertsubjective">주관식</p>
                    </div>
                </div>
                <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">미리보기</button>
                <button type="button" value='deleteDiv' onclick="rowDel(this)">삭제</button>
            </div>
        </div>
        <div class="testbody">
            <div class="top" style="display:flex">
                <div class="headerarea"><textarea id="questionarea1" placeholder="문제 작성"></textarea></div>
                <label for="input-img1">
                    이미지 추가
                </label>
                <input type="file" id="input-img1" style="display: none;"/>
            </div>
            <div class="middle">
                <label for="input-mp3-1">
                    mp3 선택
                </label>
                <input type="file" id="input-mp3-1" style="display: none;"/>
                <button type="button" onclick="inserttext(this)">문제 자동 추출</button>
            </div>
            <div class="bottom">
                <div class="choice" id="choice1">
                    <div class="examarea">
                        <p><span>1.</span><input type="text" name="exam1"></p>
                        <p><span>2.</span><input type="text" name="exam2"></p>
                        <p><span>3.</span><input type="text" name="exam3"></p>
                        <p><span>4.</span><input type="text" name="exam4"></p>
                        <p><span>5.</span><input type="text" name="exam5"></p>
                    </div>
                    <div class="answerarea">
                        <p><span>정답</span><input type="text"></p>
                    </div>
                    <div class="explanationarea">
                        <textarea placeholder="문제를 틀린 학생을 위한 추가 설명"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script>
        function rowDel(obj){
            var div = obj.parentNode.parentNode;
            div.parentNode.remove();
        };
        function inserttext(obj){
            var text = obj.parentNode.parentNode;
            var question = text.children[0].children[0].children[0].value;
            var questionsplit = question.split(/[0-9]/);
            text.children[0].children[0].children[0].value = questionsplit[0];
            text.children[2].children[0].children[0].children[0].children[1].value = questionsplit[1];
            text.children[2].children[0].children[0].children[1].children[1].value = questionsplit[2];
            text.children[2].children[0].children[0].children[2].children[1].value = questionsplit[3];
            text.children[2].children[0].children[0].children[3].children[1].value = questionsplit[4];
            text.children[2].children[0].children[0].children[4].children[1].value = questionsplit[5];
        }
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
        $(document).ready(function() {
            var i=1;
            $(document).on("click",".insertchoice", function(){
                if($('.testarea').length==55){
                    alert('문제의 갯수가 최대입니다');
                }else{
                    i++;
                    var test="";
                    test += "<div class='testarea' id='testarea"+i+"' name='multi'>";
                    test += "<div class='testheader' style='display:flex'>";
                    test += "<div class='testtype'>";
                    test += "<select name='' id='sel"+i+"'>";
                    test += "<option value=''>유형 선택</option>";
                    test += "<option>듣기</option>";
                    test += "<option>기초</option>";
                    test += "<option>객관식단어</option>";
                    test += "<option>주관식단어</option>";
                    test += "<option>문법</option>";
                    test += "<option>영작</option>";
                    test += "</select>";
                    test += "</div>";
                    test += "<div class='testoption'>";
                    test += "<div class='dropdownoption'>";
                    test += "<span class='dropbtn'>문제 생성</span>";
                    test += "<div class='dropdowncontent'>";
                    test += "<p class='insertchoice'>객관식</p>";
                    test += "<p class='insertsubjective'>주관식</p>";
                    test += "</div>";
                    test += "</div>";
                    test += "<button type='button' data-bs-toggle='modal' data-bs-target='#exampleModal'>미리보기</button>";
                    test += "<button type='button' value='deleteDiv' onclick='rowDel(this)'>삭제</button>";
                    test += "</div>";
                    test += "</div>";
                    test += "<div class='testbody'>";
                    test += "<div class='top' style='display:flex'>";
                    test += "<div class='headerarea'><textarea id='questionarea"+i+"' placeholder='문제 작성'></textarea></div>";
                    test += "<label for='input-img"+i+"'>";
                    test += "이미지 추가";
                    test += "</label>";
                    test += "<input type='file' id='input-img"+i+"' style='display: none;'/>";
                    test += "</div>";
                    test += "<div class='middle'>";
                    test += "<label for='input-mp3-"+i+"'>";
                    test += "mp3 선택";
                    test += "</label>";
                    test += "<input type='file' id='input-mp3-"+i+"' style='display: none;'/>";
                    test += "<button type='button' onclick='inserttext(this)'>문제 자동 추출</button>";
                    test += "</div>";
                    test += "<div class='bottom'>";
                    test += "<div class='choice' id=choice"+i+">";
                    test += "<div class='examarea'>";
                    test += "<p><span>1.</span><input type='text' name='exam1'></p>";
                    test += "<p><span>2.</span><input type='text' name='exam2'></p>";
                    test += "<p><span>3.</span><input type='text' name='exam3'></p>";
                    test += "<p><span>4.</span><input type='text' name='exam4'></p>";
                    test += "<p><span>5.</span><input type='text' name='exam5'></p>";
                    test += "</div>";
                    test += "<div class='answerarea'>";
                    test += "<p><span>정답</span><input type='text'></p>";
                    test += "</div>";
                    test += "<div class='explanationarea'>";
                    test += "<textarea placeholder='문제를 틀린 학생을 위한 추가 설명'></textarea>";
                    test += "</div>";
                    test += "</div>";
                    test += "</div>";
                    test += "</div>";
                    test += "</div>";
                    $("body").append(test);
                }
            });
            $(document).on("click",".insertsubjective", function(){
                if($('.testarea').length==55){
                    alert('문제의 갯수가 최대입니다');
                }else{
                    i++;
                    var test="";
                    test += "<div class='testarea' id='testarea"+i+"' name='subjet'>";
                    test += "<div class='testheader' style='display:flex'>";
                    test += "<div class='testtype'>";
                    test += "<select name='' id='sel"+i+"'>";
                    test += "<option value=''>유형 선택</option>";
                    test += "<option>듣기</option>";
                    test += "<option>기초</option>";
                    test += "<option>객관식단어</option>";
                    test += "<option>주관식단어</option>";
                    test += "<option>문법</option>";
                    test += "<option>영작</option>";
                    test += "</select>";
                    test += "</div>";
                    test += "<div class='testoption'>";
                    test += "<div class='dropdownoption'>";
                    test += "<span class='dropbtn'>문제 생성</span>";
                    test += "<div class='dropdowncontent'>";
                    test += "<p class='insertchoice'>객관식</p>";
                    test += "<p class='insertsubjective'>주관식</p>";
                    test += "</div>";
                    test += "</div>";
                    test += "<button type='button' data-bs-toggle='modal' data-bs-target='#exampleModal'>미리보기</button>";
                    test += "<button type='button' value='deleteDiv' onclick='rowDel(this)'>삭제</button>";
                    test += "</div>";
                    test += "</div>";
                    test += "<div class='testbody'>";
                    test += "<div class='top' style='display:flex'>";
                    test += "<div class='headerarea'><textarea id='questionarea"+i+"' placeholder='문제 작성'></textarea></div>";
                    test += "<label for='input-img"+i+"'>";
                    test += "이미지 추가";
                    test += "</label>";
                    test += "<input type='file' id='input-img"+i+"' style='display: none;'/>";
                    test += "</div>";
                    test += "<div class='middle'>";
                    test += "<label for='input-mp3-"+i+"'>mp3 선택</label>";
                	test += "<input type='file' id='input-mp3-"+i+"' style='display: none;'/>";
                    test += "</div>";
                    test += "<div class='bottom'>";
                    test += "<div class='subjective' id='subjective"+i+"'>";
                    test += "<div class='examarea'>";
                    test += "<p><span>대체정답 1.</span><input type='text'></p>";
                    test += "<p><span>대체정답 2.</span><input type='text'></p>";
                    test += "<p><span>대체정답 3.</span><input type='text'></p>";
                    test += "<p><span>대체정답 4.</span><input type='text'></p>";
                    test += "</div>";
                    test += "<div class='answerarea'>";
                    test += "<p><span>정답</span><input type='text'></p>";
                    test += "</div>";
                    test += "<div class='explanationarea'>";
                    test += "<textarea placeholder='문제를 틀린 학생을 위한 추가 설명'></textarea>";
                    test += "</div>";
                    test += "</div>";
                    test += "</div>";
                    test += "</div>";
                    test += "</div>";
                    $("body").append(test);
                }
            });
        });
        function savearrangement(){
        	var multiplearrValues=new Array();
        	var subjetarrValues=new Array();
        	for(var j=1;j<56;j++){
        		if($('#testarea'+j).attr('name')=="multi"){
        			var multi = "객관식";
        			var sel = document.getElementById("sel"+j);
            		var val = sel.options[sel.selectedIndex].value;
            		var question = document.getElementById("questionarea"+j).value;
            		var img = document.getElementById("input-img"+j).value;
                	var mp3 = document.getElementById("input-mp3-"+j).value;
                	var exam1 = document.getElementById('choice'+j).children[0].children[0].children[1].value;
                	var exam2 = document.getElementById('choice'+j).children[0].children[1].children[1].value;
                	var exam3 = document.getElementById('choice'+j).children[0].children[2].children[1].value;
                	var exam4 = document.getElementById('choice'+j).children[0].children[3].children[1].value;
                	var exam5 = document.getElementById('choice'+j).children[0].children[4].children[1].value;
                	var answer = document.getElementById('choice'+j).children[1].children[0].children[1].value;
                	var explanation = document.getElementById('choice'+j).children[2].children[0].value;
                	var dummy1 = "";
                	var dummy2 = "";
                	var dummy3 = "";
                	var dummy4 = "";
                	for(var k=1;k<=16;k++){
                		if(k==1){
                			multiplearrValues.push(multi);
                		}if(k==2){
                			multiplearrValues.push(val);
                		}if(k==3){
                			multiplearrValues.push(question);
                		}if(k==4){
                			multiplearrValues.push(img);
                		}if(k==5){
                			multiplearrValues.push(mp3);
                		}if(k==6){
                			multiplearrValues.push(exam1);
                		}if(k==7){
                			multiplearrValues.push(exam2);
                		}if(k==8){
                			multiplearrValues.push(exam3);
                		}if(k==9){
                			multiplearrValues.push(exam4);
                		}if(k==10){
                			multiplearrValues.push(exam5);
                		}if(k==11){
                			multiplearrValues.push(answer);
                		}if(k==12){
                			multiplearrValues.push(explanation);
                		}if(k==13){
                			multiplearrValues.push(dummy1);
                		}if(k==14){
                			multiplearrValues.push(dummy2);
                		}if(k==15){
                			multiplearrValues.push(dummy3);
                		}if(k==16){
                			multiplearrValues.push(dummy4);
                		}
                	}
        		}
        		if($('#testarea'+j).attr('name')=="subjet"){
        			var subjet = "주관식";
        			var sel = document.getElementById("sel"+j+"");
            		var val = sel.options[sel.selectedIndex].value;
            		var question = document.getElementById("questionarea"+j).value;
            		var img = document.getElementById("input-img"+j).value;
                	var mp3 = document.getElementById("input-mp3-"+j).value;
                	var alternative1 = document.getElementById('subjective'+j).children[0].children[0].children[1].value;
                	var alternative2 = document.getElementById('subjective'+j).children[0].children[1].children[1].value;
                	var alternative3 = document.getElementById('subjective'+j).children[0].children[2].children[1].value;
                	var alternative4 = document.getElementById('subjective'+j).children[0].children[3].children[1].value;
                	var answer = document.getElementById('subjective'+j).children[1].children[0].children[1].value;
                	var explanation = document.getElementById('subjective'+j).children[2].children[0].value;
                	var dummy5 = "";
                	var dummy6 = "";
                	var dummy7 = "";
                	var dummy8 = "";
                	var dummy9 = "";
                	for(var k=0;k<=15;k++){
                		if(k==0){
                			subjetarrValues.push(subjet);
                		}if(k==1){
                			subjetarrValues.push(val);
                		}if(k==2){
                			subjetarrValues.push(question);
                		}if(k==3){
                			subjetarrValues.push(img);
                		}if(k==4){
                			subjetarrValues.push(mp3);
                		}if(k==5){
                			subjetarrValues.push(alternative1);
                		}if(k==6){
                			subjetarrValues.push(alternative2);
                		}if(k==7){
                			subjetarrValues.push(alternative3);
                		}if(k==8){
                			subjetarrValues.push(alternative4);
                		}if(k==9){
                			subjetarrValues.push(answer);
                		}if(k==10){
                			subjetarrValues.push(explanation);
                		}if(k==11){
                			subjetarrValues.push(dummy5);
                		}if(k==12){
                			subjetarrValues.push(dummy6);
                		}if(k==13){
                			subjetarrValues.push(dummy7);
                		}if(k==14){
                			subjetarrValues.push(dummy8);
                		}if(k==15){
                			subjetarrValues.push(dummy9);
                		}
                	}
        		}
        	}
    		const mainname=document.getElementById("mainname").value;
    		for(m=0;m<multiplearrValues.length;m+=17){
    			multiplearrValues.splice(m,0,mainname)
			}
    		for(n=0;n<subjetarrValues.length;n+=17){
    			subjetarrValues.splice(n,0,mainname)
			}
    		var resultmulti=multiplearrValues.division(17);
			var resultsubjet=subjetarrValues.division(17);
			const arrangement_name = "arrangement_name";
			const arrangement_type1 = "arrangement_type1";
			const arrangement_type2 = "arrangement_type2";
			const arrangement_header = "arrangement_header";
			const arrangement_answer = "arrangement_answer";
			const arrangement_explanation = "arrangement_explanation";
			const arrangement_exam1 = "arrangement_exam1";
			const arrangement_exam2 = "arrangement_exam2";
			const arrangement_exam3 = "arrangement_exam3";
			const arrangement_exam4 = "arrangement_exam4";
			const arrangement_exam5 = "arrangement_exam5";
			const arrangement_alternative1 = "arrangement_alternative1";
			const arrangement_alternative2 = "arrangement_alternative2";
			const arrangement_alternative3 = "arrangement_alternative3";
			const arrangement_alternative4 = "arrangement_alternative4";
			const arrangement_img_path = "arrangement_img_path";
			const arrangement_mp3_path = "arrangement_mp3_path";
			for(var k=0;k<resultmulti.length;k++){
				resultmulti[k] = {[arrangement_name]:resultmulti[k][0],[arrangement_type1]:resultmulti[k][1],[arrangement_type2]:resultmulti[k][2],[arrangement_header]:resultmulti[k][3],[arrangement_img_path]:resultmulti[k][4],[arrangement_mp3_path]:resultmulti[k][5],[arrangement_exam1]:resultmulti[k][6],[arrangement_exam2]:resultmulti[k][7],[arrangement_exam3]:resultmulti[k][8],[arrangement_exam4]:resultmulti[k][9],[arrangement_exam5]:resultmulti[k][10],[arrangement_answer]:resultmulti[k][11],[arrangement_explanation]:resultmulti[k][12],[arrangement_alternative1]:resultmulti[k][13],[arrangement_alternative2]:resultmulti[k][14],[arrangement_alternative3]:resultmulti[k][15],[arrangement_alternative4]:resultmulti[k][16]};
			}
			for(var l=0;l<resultsubjet.length;l++){
				resultsubjet[l] = {[arrangement_name]:resultsubjet[l][0],[arrangement_type1]:resultsubjet[l][1],[arrangement_type2]:resultsubjet[l][2],[arrangement_header]:resultsubjet[l][3],[arrangement_img_path]:resultsubjet[l][4],[arrangement_mp3_path]:resultsubjet[l][5],[arrangement_alternative1]:resultsubjet[l][6],[arrangement_alternative2]:resultsubjet[l][7],[arrangement_alternative3]:resultsubjet[l][8],[arrangement_alternative4]:resultsubjet[l][9],[arrangement_answer]:resultsubjet[l][10],[arrangement_explanation]:resultsubjet[l][11],[arrangement_exam1]:resultsubjet[l][12],[arrangement_exam2]:resultsubjet[l][13],[arrangement_exam3]:resultsubjet[l][14],[arrangement_exam4]:resultsubjet[l][15],[arrangement_exam5]:resultsubjet[l][16]};
			}
			var resultmarge = [
				...resultmulti,
				...resultsubjet
			];
			var jsonresult = JSON.stringify(resultmarge);
			$.ajax({
				url: 'insertarrangement.do',
		        type: 'post',
		        data: jsonresult,
		        dataType: 'json',
		        contentType: 'application/json',
		        success: function(data) {
		        	alert("success!");
		        }
		    });
        }
    </script>
</body>
</html>