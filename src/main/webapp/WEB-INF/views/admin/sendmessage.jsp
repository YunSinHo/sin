<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/admin/sb-admin-2.min.css" rel="stylesheet">
	<link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="css/admin/sendmessage.css" rel="stylesheet">
    <link href="air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- Air datepicker css -->
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    

        

        

                
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-7">
                            <!-- Basic Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">문자 전송 서비스</h4>
                                    <div>날짜 선택 : <input type="text" class="workday" id="datepicker" readonly></div>
                                    <select>
                                        <option value="0">반 선택</option>
                                        <option value="1">Class 1</option>
                                        <option value="2">Class 2</option>
                                        <option value="3">Class 3</option>
                                    </select>
                                    <select onchange="nameValue(this)">
                                        <option value="0">학생 선택</option>
                                        <option value="1">홍길동</option>
                                        <option value="2">손오공</option>
                                        <option value="3">사오정</option>
                                    </select>
                                    <div style="width:20%"></div>
                                </div>
                                <div class="card-body" style="display:grid; grid-template-columns:0.7fr 1.3fr 1fr;">
                                    <div class="selectoptionarea">
                                        <div class="selectoptionheader">수업 태도</div>
                                        <div class="attitude">
                                            <div class="attitudebodyone">
                                                <div class="oneheader">
                                                    집중도 및 이해도
                                                </div>
                                                <select id="attitudesel1" onchange="Change1()">
                                                    <option value="0">집중도/이해도 선택</option>
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                </select>
                                            </div>
                                            <div class="attitudebodytwo">
                                                <div class="twoheader">
                                                    필기 능력
                                                </div>
                                                <select id="attitudesel2" onchange="Change2()">
                                                    <option value="0">필기 능력 선택</option>
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                </select>
                                            </div>
                                            <div class="attitudebodythree">
                                                <div class="threeheader">
                                                    과제 능력
                                                </div>
                                                <select id="attitudesel3" onchange="Change3()">
                                                    <option value="0">과제 능력 선택</option>
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="homeworkresult">
                                            <div class="homeworkresultheader">과제 이행도</div>
                                            <select name="homeworkresultselect" onchange="homeworkresultValue(this)">
                                                <option value="">이행도 선택</option>
                                                <option value="100">100% 완료</option>
                                                <option value="90">90% 완료</option>
                                                <option value="80">80% 완료</option>
                                                <option value="70">70% 완료</option>
                                                <option value="60">60% 완료</option>
                                                <option value="50">50% 완료</option>
                                                <option value="40">40% 완료</option>
                                                <option value="30">30% 완료</option>
                                                <option value="20">20% 완료</option>
                                                <option value="10">10% 완료</option>
                                                <option value="0">0% 완료</option>
                                                <option value="놓고옴">놓고옴(긴장요망)</option>
                                            </select>
                                        </div>
                                        <div class="testresult">
                                            <div class="testresultheader">테스트 결과</div>
                                            <select class="testresultselect" name="testresultselect" onchange="testresultValue(this)">
                                                <option value="">결과 선택</option>
                                                <option value="통과">통과</option>
                                                <option value="미통과">미통과</option>
                                            </select>
                                            <input id="testresultone" onkeyup='testresultone()' type="text" placeholder="맞힌 문제"><input id="testresulttwo" onkeyup='testresulttwo()' type="text" placeholder="총 문제">
                                        </div>
                                    </div>
                                    <div class="optiondetail">
                                        <div class="detailbody">
                                            <div class="detailheader">집중력 및 이해도 세부옵션</div>
                                            <div class="detailbodyoption">
                                                <div class="bodyoptionone">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a1">a1
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b1">b1
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c1">c1
                                                    </div>
                                                </div>
                                                <div class="bodyoptiontwo">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a2">a2
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b2">b2
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c2">c2
                                                    </div>
                                                </div>
                                                <div class="bodyoptionthree">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a3">a3
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b3">b3
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c3">c3
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfour">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a4">a4
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b4">b4
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c4">c4
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfive">
                                                    <div class="understandoptiona">
                                                        <input type="radio" name="understand" value="a5">a5
                                                    </div>
                                                    <div class="understandoptionb">
                                                        <input type="radio" name="understand" value="b5">b5
                                                    </div>
                                                    <div class="understandoptionc">
                                                        <input type="radio" name="understand" value="c5">c5
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detailbody">
                                            <div class="detailheader">필기 능력 세부옵션</div>
                                            <div class="detailbodyoption">
                                                <div class="bodyoptionone">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a1">a1
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b1">b1
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c1">c1
                                                    </div>
                                                </div>
                                                <div class="bodyoptiontwo">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a2">a2
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b2">b2
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c2">c2
                                                    </div>
                                                </div>
                                                <div class="bodyoptionthree">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a3">a3
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b3">b3
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c3">c3
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfour">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a4">a4
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b4">b4
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c4">c4
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfive">
                                                    <div class="notesoptiona">
                                                        <input type="radio" name="notes" value="a5">a5
                                                    </div>
                                                    <div class="notesoptionb">
                                                        <input type="radio" name="notes" value="b5">b5
                                                    </div>
                                                    <div class="notesoptionc">
                                                        <input type="radio" name="notes" value="c5">c5
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detailbody">
                                            <div class="detailheader">과제 능력 세부옵션</div>
                                            <div class="detailbodyoption">
                                                <div class="bodyoptionone">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a1">a1
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b1">b1
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c1">c1
                                                    </div>
                                                </div>
                                                <div class="bodyoptiontwo">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a2">a2
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b2">b2
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c2">c2
                                                    </div>
                                                </div>
                                                <div class="bodyoptionthree">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a3">a3
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b3">b3
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c3">c3
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfour">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a4">a4
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b4">b4
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c4">c4
                                                    </div>
                                                </div>
                                                <div class="bodyoptionfive">
                                                    <div class="worksoptiona">
                                                        <input type="radio" name="works" value="a5">a5
                                                    </div>
                                                    <div class="worksoptionb">
                                                        <input type="radio" name="works" value="b5">b5
                                                    </div>
                                                    <div class="worksoptionc">
                                                        <input type="radio" name="works" value="c5">c5dfas
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sendarea">
                                        <div class="cellphonecover">
                                            <div class="phonedetail">
                                                <div class="speakerdetail">
                                                    <hr class="speaker">
                                                </div>
                                            </div>
                                            <div contenteditable class="phonedisplay" id="messageresult">
                                                <p><span id="messagedate"></span> <span id="mydate"></span> 김지민영어학습보고</p>
                                                <p id="namep"></p>
                                                <p>▶ 수업 태도</p>
                                                <p><span id="understandspan"></span>&nbsp;<span id="notesspan"></span>&nbsp;<span id="worksspan"></span></p>

                                                <p id="homeworkresultp">▶ 과제 이행도 : </p>

                                                <p id="testresultp">▶ 테스트 결과 : </p>
                                                <p>▶ 테스트 득점 : <span id="resultone"></span>개 / <span id="resulttwo"></span>개</p>

                                                <p>▶ 진도 : 단어 3과 시험, unit 7</p>

                                                <p>▶ 다음 과제 : 스마트파닉스 p.67~71 (sh, ch 소리 많이 듣고, 교재의 단어들 많이 따라 읽어오기)</p>
                                            </div>
                                            <div class="sendbuttonarea">
                                                <button type="button" class="sendbutton" onclick="getmessage()">전송</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->



    <!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin/sb-admin-2.min.js"></script>

    <script src="air-datepicker/dist/js/datepicker.js"></script> <!-- Air datepicker js -->
    <script src="air-datepicker/dist/js/i18n/datepicker.ko.js"></script> <!-- 달력 한글 추가를 위해 커스텀 -->
    <script>
        jQuery( function(){
            $('input:radio[name="understand"]').click( function (){
                if ($('input:radio[name="understand"]').is( ":checked")){
                    var understandlistVar = $('input:radio[name="understand"]:checked').val();
                    document.getElementById('understandspan').innerText = understandlistVar;
                }
            })
            $('input:radio[name="notes"]').click( function (){
                if ($('input:radio[name="notes"]').is( ":checked")){
                    var noteslistVar = $('input:radio[name="notes"]:checked').val();
                    document.getElementById('notesspan').innerText = noteslistVar;
                }
            })
            $('input:radio[name="works"]').click( function (){
                if ($('input:radio[name="works"]').is( ":checked")){
                    var workslistVar = $('input:radio[name="works"]:checked').val();
                    document.getElementById('worksspan').innerText = workslistVar;
                }
            })
        });
        const nameValue = (target) => {
            const value = target.value;
            const text =  target.options[target.selectedIndex].text;
            
            document.getElementById('namep').innerHTML = `\${text}`;
        }
        const homeworkresultValue = (target) => {
            const value = target.value;
            const text =  target.options[target.selectedIndex].text;
            
            document.getElementById('homeworkresultp').innerHTML = `▶ 과제 이행도 : \${text}`;
        }
        const testresultValue = (target) => {
            const value = target.value;
            const text =  target.options[target.selectedIndex].text;
  
            document.getElementById('testresultp').innerHTML = `▶ 테스트 결과 : \${text}`;
        }
        $("#datepicker").datepicker({
            language: 'ko',
            dateFormat:'yyyy.mm.dd',
            dayNamesMin:["일","월","화","수","목","금","토"],
            onSelect:function(d){
                //요일 가져오기
                //데이터를 먼저 가져오고 (숫자로 넘어옴)
                var date=new Date($("#datepicker").datepicker({dateFormat:"yyyy.mm.dd"}).val());
                //일요일 0~
                week=new Array("일","월","화","수","목","금","토");
                $("#mydate").text("("+week[date.getDay()]+")");
                $("#messagedate").text(d);
            }
        }); 
        function testresultone()  {
            const name1 = document.getElementById('testresultone').value;
            document.getElementById("resultone").innerText = name1;
        }
        function testresulttwo()  {
            const name2 = document.getElementById('testresulttwo').value;
            document.getElementById("resulttwo").innerText = name2;
        }
        function getmessage(){
            const element = document.getElementById('messageresult');
            alert(element.innerText);
        }
        function Change1() {
            var key1 = attitudesel1.value;
            if(key1==0){
                document.getElementsByClassName("understandoptiona")[0].style.display="none";
                document.getElementsByClassName("understandoptionb")[0].style.display="none";
                document.getElementsByClassName("understandoptionc")[0].style.display="none";
                document.getElementsByClassName("understandoptiona")[1].style.display="none";
                document.getElementsByClassName("understandoptionb")[1].style.display="none";
                document.getElementsByClassName("understandoptionc")[1].style.display="none";
                document.getElementsByClassName("understandoptiona")[2].style.display="none";
                document.getElementsByClassName("understandoptionb")[2].style.display="none";
                document.getElementsByClassName("understandoptionc")[2].style.display="none";
                document.getElementsByClassName("understandoptiona")[3].style.display="none";
                document.getElementsByClassName("understandoptionb")[3].style.display="none";
                document.getElementsByClassName("understandoptionc")[3].style.display="none";
                document.getElementsByClassName("understandoptiona")[4].style.display="none";
                document.getElementsByClassName("understandoptionb")[4].style.display="none";
                document.getElementsByClassName("understandoptionc")[4].style.display="none";
            }
            if(key1==1){
                document.getElementsByClassName("understandoptiona")[0].style.display="block";
                document.getElementsByClassName("understandoptionb")[0].style.display="none";
                document.getElementsByClassName("understandoptionc")[0].style.display="none";
                document.getElementsByClassName("understandoptiona")[1].style.display="block";
                document.getElementsByClassName("understandoptionb")[1].style.display="none";
                document.getElementsByClassName("understandoptionc")[1].style.display="none";
                document.getElementsByClassName("understandoptiona")[2].style.display="block";
                document.getElementsByClassName("understandoptionb")[2].style.display="none";
                document.getElementsByClassName("understandoptionc")[2].style.display="none";
                document.getElementsByClassName("understandoptiona")[3].style.display="block";
                document.getElementsByClassName("understandoptionb")[3].style.display="none";
                document.getElementsByClassName("understandoptionc")[3].style.display="none";
                document.getElementsByClassName("understandoptiona")[4].style.display="block";
                document.getElementsByClassName("understandoptionb")[4].style.display="none";
                document.getElementsByClassName("understandoptionc")[4].style.display="none";
            }
            if(key1==2){
                document.getElementsByClassName("understandoptiona")[0].style.display="none";
                document.getElementsByClassName("understandoptionb")[0].style.display="block";
                document.getElementsByClassName("understandoptionc")[0].style.display="none";
                document.getElementsByClassName("understandoptiona")[1].style.display="none";
                document.getElementsByClassName("understandoptionb")[1].style.display="block";
                document.getElementsByClassName("understandoptionc")[1].style.display="none";
                document.getElementsByClassName("understandoptiona")[2].style.display="none";
                document.getElementsByClassName("understandoptionb")[2].style.display="block";
                document.getElementsByClassName("understandoptionc")[2].style.display="none";
                document.getElementsByClassName("understandoptiona")[3].style.display="none";
                document.getElementsByClassName("understandoptionb")[3].style.display="block";
                document.getElementsByClassName("understandoptionc")[3].style.display="none";
                document.getElementsByClassName("understandoptiona")[4].style.display="none";
                document.getElementsByClassName("understandoptionb")[4].style.display="block";
                document.getElementsByClassName("understandoptionc")[4].style.display="none";
            }
            if(key1==3){
                document.getElementsByClassName("understandoptiona")[0].style.display="none";
                document.getElementsByClassName("understandoptionb")[0].style.display="none";
                document.getElementsByClassName("understandoptionc")[0].style.display="block";
                document.getElementsByClassName("understandoptiona")[1].style.display="none";
                document.getElementsByClassName("understandoptionb")[1].style.display="none";
                document.getElementsByClassName("understandoptionc")[1].style.display="block";
                document.getElementsByClassName("understandoptiona")[2].style.display="none";
                document.getElementsByClassName("understandoptionb")[2].style.display="none";
                document.getElementsByClassName("understandoptionc")[2].style.display="block";
                document.getElementsByClassName("understandoptiona")[3].style.display="none";
                document.getElementsByClassName("understandoptionb")[3].style.display="none";
                document.getElementsByClassName("understandoptionc")[3].style.display="block";
                document.getElementsByClassName("understandoptiona")[4].style.display="none";
                document.getElementsByClassName("understandoptionb")[4].style.display="none";
                document.getElementsByClassName("understandoptionc")[4].style.display="block";
            }
        }
        function Change2() {
            var key2 = attitudesel2.value;
            if(key2==0){
                document.getElementsByClassName("notesoptiona")[0].style.display="none";
                document.getElementsByClassName("notesoptionb")[0].style.display="none";
                document.getElementsByClassName("notesoptionc")[0].style.display="none";
                document.getElementsByClassName("notesoptiona")[1].style.display="none";
                document.getElementsByClassName("notesoptionb")[1].style.display="none";
                document.getElementsByClassName("notesoptionc")[1].style.display="none";
                document.getElementsByClassName("notesoptiona")[2].style.display="none";
                document.getElementsByClassName("notesoptionb")[2].style.display="none";
                document.getElementsByClassName("notesoptionc")[2].style.display="none";
                document.getElementsByClassName("notesoptiona")[3].style.display="none";
                document.getElementsByClassName("notesoptionb")[3].style.display="none";
                document.getElementsByClassName("notesoptionc")[3].style.display="none";
                document.getElementsByClassName("notesoptiona")[4].style.display="none";
                document.getElementsByClassName("notesoptionb")[4].style.display="none";
                document.getElementsByClassName("notesoptionc")[4].style.display="none";
            }
            if(key2==1){
                document.getElementsByClassName("notesoptiona")[0].style.display="block";
                document.getElementsByClassName("notesoptionb")[0].style.display="none";
                document.getElementsByClassName("notesoptionc")[0].style.display="none";
                document.getElementsByClassName("notesoptiona")[1].style.display="block";
                document.getElementsByClassName("notesoptionb")[1].style.display="none";
                document.getElementsByClassName("notesoptionc")[1].style.display="none";
                document.getElementsByClassName("notesoptiona")[2].style.display="block";
                document.getElementsByClassName("notesoptionb")[2].style.display="none";
                document.getElementsByClassName("notesoptionc")[2].style.display="none";
                document.getElementsByClassName("notesoptiona")[3].style.display="block";
                document.getElementsByClassName("notesoptionb")[3].style.display="none";
                document.getElementsByClassName("notesoptionc")[3].style.display="none";
                document.getElementsByClassName("notesoptiona")[4].style.display="block";
                document.getElementsByClassName("notesoptionb")[4].style.display="none";
                document.getElementsByClassName("notesoptionc")[4].style.display="none";
            }
            if(key2==2){
                document.getElementsByClassName("notesoptiona")[0].style.display="none";
                document.getElementsByClassName("notesoptionb")[0].style.display="block";
                document.getElementsByClassName("notesoptionc")[0].style.display="none";
                document.getElementsByClassName("notesoptiona")[1].style.display="none";
                document.getElementsByClassName("notesoptionb")[1].style.display="block";
                document.getElementsByClassName("notesoptionc")[1].style.display="none";
                document.getElementsByClassName("notesoptiona")[2].style.display="none";
                document.getElementsByClassName("notesoptionb")[2].style.display="block";
                document.getElementsByClassName("notesoptionc")[2].style.display="none";
                document.getElementsByClassName("notesoptiona")[3].style.display="none";
                document.getElementsByClassName("notesoptionb")[3].style.display="block";
                document.getElementsByClassName("notesoptionc")[3].style.display="none";
                document.getElementsByClassName("notesoptiona")[4].style.display="none";
                document.getElementsByClassName("notesoptionb")[4].style.display="block";
                document.getElementsByClassName("notesoptionc")[4].style.display="none";
            }
            if(key2==3){
                document.getElementsByClassName("notesoptiona")[0].style.display="none";
                document.getElementsByClassName("notesoptionb")[0].style.display="none";
                document.getElementsByClassName("notesoptionc")[0].style.display="block";
                document.getElementsByClassName("notesoptiona")[1].style.display="none";
                document.getElementsByClassName("notesoptionb")[1].style.display="none";
                document.getElementsByClassName("notesoptionc")[1].style.display="block";
                document.getElementsByClassName("notesoptiona")[2].style.display="none";
                document.getElementsByClassName("notesoptionb")[2].style.display="none";
                document.getElementsByClassName("notesoptionc")[2].style.display="block";
                document.getElementsByClassName("notesoptiona")[3].style.display="none";
                document.getElementsByClassName("notesoptionb")[3].style.display="none";
                document.getElementsByClassName("notesoptionc")[3].style.display="block";
                document.getElementsByClassName("notesoptiona")[4].style.display="none";
                document.getElementsByClassName("notesoptionb")[4].style.display="none";
                document.getElementsByClassName("notesoptionc")[4].style.display="block";
            }
        }
        function Change3() {
            var key3 = attitudesel3.value;
            if(key3==0){
                document.getElementsByClassName("worksoptiona")[0].style.display="none";
                document.getElementsByClassName("worksoptionb")[0].style.display="none";
                document.getElementsByClassName("worksoptionc")[0].style.display="none";
                document.getElementsByClassName("worksoptiona")[1].style.display="none";
                document.getElementsByClassName("worksoptionb")[1].style.display="none";
                document.getElementsByClassName("worksoptionc")[1].style.display="none";
                document.getElementsByClassName("worksoptiona")[2].style.display="none";
                document.getElementsByClassName("worksoptionb")[2].style.display="none";
                document.getElementsByClassName("worksoptionc")[2].style.display="none";
                document.getElementsByClassName("worksoptiona")[3].style.display="none";
                document.getElementsByClassName("worksoptionb")[3].style.display="none";
                document.getElementsByClassName("worksoptionc")[3].style.display="none";
                document.getElementsByClassName("worksoptiona")[4].style.display="none";
                document.getElementsByClassName("worksoptionb")[4].style.display="none";
                document.getElementsByClassName("worksoptionc")[4].style.display="none";
            }
            if(key3==1){
                document.getElementsByClassName("worksoptiona")[0].style.display="block";
                document.getElementsByClassName("worksoptionb")[0].style.display="none";
                document.getElementsByClassName("worksoptionc")[0].style.display="none";
                document.getElementsByClassName("worksoptiona")[1].style.display="block";
                document.getElementsByClassName("worksoptionb")[1].style.display="none";
                document.getElementsByClassName("worksoptionc")[1].style.display="none";
                document.getElementsByClassName("worksoptiona")[2].style.display="block";
                document.getElementsByClassName("worksoptionb")[2].style.display="none";
                document.getElementsByClassName("worksoptionc")[2].style.display="none";
                document.getElementsByClassName("worksoptiona")[3].style.display="block";
                document.getElementsByClassName("worksoptionb")[3].style.display="none";
                document.getElementsByClassName("worksoptionc")[3].style.display="none";
                document.getElementsByClassName("worksoptiona")[4].style.display="block";
                document.getElementsByClassName("worksoptionb")[4].style.display="none";
                document.getElementsByClassName("worksoptionc")[4].style.display="none";
            }
            if(key3==2){
                document.getElementsByClassName("worksoptiona")[0].style.display="none";
                document.getElementsByClassName("worksoptionb")[0].style.display="block";
                document.getElementsByClassName("worksoptionc")[0].style.display="none";
                document.getElementsByClassName("worksoptiona")[1].style.display="none";
                document.getElementsByClassName("worksoptionb")[1].style.display="block";
                document.getElementsByClassName("worksoptionc")[1].style.display="none";
                document.getElementsByClassName("worksoptiona")[2].style.display="none";
                document.getElementsByClassName("worksoptionb")[2].style.display="block";
                document.getElementsByClassName("worksoptionc")[2].style.display="none";
                document.getElementsByClassName("worksoptiona")[3].style.display="none";
                document.getElementsByClassName("worksoptionb")[3].style.display="block";
                document.getElementsByClassName("worksoptionc")[3].style.display="none";
                document.getElementsByClassName("worksoptiona")[4].style.display="none";
                document.getElementsByClassName("worksoptionb")[4].style.display="block";
                document.getElementsByClassName("worksoptionc")[4].style.display="none";
            }
            if(key3==3){
                document.getElementsByClassName("worksoptiona")[0].style.display="none";
                document.getElementsByClassName("worksoptionb")[0].style.display="none";
                document.getElementsByClassName("worksoptionc")[0].style.display="block";
                document.getElementsByClassName("worksoptiona")[1].style.display="none";
                document.getElementsByClassName("worksoptionb")[1].style.display="none";
                document.getElementsByClassName("worksoptionc")[1].style.display="block";
                document.getElementsByClassName("worksoptiona")[2].style.display="none";
                document.getElementsByClassName("worksoptionb")[2].style.display="none";
                document.getElementsByClassName("worksoptionc")[2].style.display="block";
                document.getElementsByClassName("worksoptiona")[3].style.display="none";
                document.getElementsByClassName("worksoptionb")[3].style.display="none";
                document.getElementsByClassName("worksoptionc")[3].style.display="block";
                document.getElementsByClassName("worksoptiona")[4].style.display="none";
                document.getElementsByClassName("worksoptionb")[4].style.display="none";
                document.getElementsByClassName("worksoptionc")[4].style.display="block";
            }
        }
    </script>
</body>

</html>