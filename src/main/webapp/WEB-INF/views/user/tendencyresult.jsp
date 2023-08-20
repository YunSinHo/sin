<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ld.user.vo.TendencyVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학습성향결과</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="css/user/tendencyresult.css?after" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<body>
	<div class="menubody"></div>
	<div class="mainbody">
		<div class="tendencyresultbody">
			<div class="imgarea">
				<input type="hidden" id="a1" value="${tendencyresult.tendency_a1 }">
		        <input type="hidden" id="a2" value="${tendencyresult.tendency_a2 }">
		        <input type="hidden" id="a3" value="${tendencyresult.tendency_a3 }">
		        <input type="hidden" id="a4" value="${tendencyresult.tendency_a4 }">
		        <input type="hidden" id="a5" value="${tendencyresult.tendency_a5 }">
		        <input type="hidden" id="a6" value="${tendencyresult.tendency_a6 }">
		        <input type="hidden" id="a7" value="${tendencyresult.tendency_a7 }">
		        <input type="hidden" id="a8" value="${tendencyresult.tendency_a8 }">
		        <input type="hidden" id="a9" value="${tendencyresult.tendency_a9 }">
		        <input type="hidden" id="a10" value="${tendencyresult.tendency_a10 }">
		        <input type="hidden" id="a11" value="${tendencyresult.tendency_a11 }">
		        <input type="hidden" id="a12" value="${tendencyresult.tendency_a12 }">
		        <input type="hidden" id="a13" value="${tendencyresult.tendency_a13 }">
		        <input type="hidden" id="h1" value="${tendencyresult.tendency_h1 }">
		        <input type="hidden" id="h2" value="${tendencyresult.tendency_h2 }">
		        <input type="hidden" id="h3" value="${tendencyresult.tendency_h3 }">
		        <input type="hidden" id="h4" value="${tendencyresult.tendency_h4 }">
		        <input type="hidden" id="h5" value="${tendencyresult.tendency_h5 }">
		        <input type="hidden" id="h6" value="${tendencyresult.tendency_h6 }">
		        <input type="hidden" id="h7" value="${tendencyresult.tendency_h7 }">
		        <input type="hidden" id="h8" value="${tendencyresult.tendency_h8 }">
		        <input type="hidden" id="h9" value="${tendencyresult.tendency_h9 }">
		        <input type="hidden" id="h10" value="${tendencyresult.tendency_h10 }">
		        <input type="hidden" id="h11" value="${tendencyresult.tendency_h11 }">
		        <input type="hidden" id="h12" value="${tendencyresult.tendency_h12 }">
		        <input type="hidden" id="h13" value="${tendencyresult.tendency_h13 }">
		        <input type="hidden" id="h14" value="${tendencyresult.tendency_h14 }">
		        <input type="hidden" id="r1" value="${tendencyresult.tendency_r1 }">
		        <input type="hidden" id="r2" value="${tendencyresult.tendency_r2 }">
		        <input type="hidden" id="r3" value="${tendencyresult.tendency_r3 }">
		        <input type="hidden" id="r4" value="${tendencyresult.tendency_r4 }">
		        <input type="hidden" id="r5" value="${tendencyresult.tendency_r5 }">
		        <input type="hidden" id="r6" value="${tendencyresult.tendency_r6 }">
		        <input type="hidden" id="e1" value="${tendencyresult.tendency_e1 }">
		        <input type="hidden" id="e2" value="${tendencyresult.tendency_e2 }">
		        <input type="hidden" id="e3" value="${tendencyresult.tendency_e3 }">
		        <input type="hidden" id="e4" value="${tendencyresult.tendency_e4 }">
		        <input type="hidden" id="e5" value="${tendencyresult.tendency_e5 }">
		        <input type="hidden" id="e6" value="${tendencyresult.tendency_e6 }">
		        <input type="hidden" id="e7" value="${tendencyresult.tendency_e7 }">
		        <input type="hidden" id="e8" value="${tendencyresult.tendency_e8 }">
		        <input type="hidden" id="e9" value="${tendencyresult.tendency_e9 }">
		        <input type="hidden" id="e10" value="${tendencyresult.tendency_e10 }">
		        <input type="hidden" id="e11" value="${tendencyresult.tendency_e11 }">
		        <input type="hidden" id="e12" value="${tendencyresult.tendency_e12 }">
		        <input type="hidden" id="e13" value="${tendencyresult.tendency_e13 }">
		        <input type="hidden" id="e14" value="${tendencyresult.tendency_e14 }">
		        <input type="hidden" id="e15" value="${tendencyresult.tendency_e15 }">
		        <input type="hidden" id="e16" value="${tendencyresult.tendency_e16 }">
		        <input type="hidden" id="e17" value="${tendencyresult.tendency_e17 }">
		        <input type="hidden" id="e18" value="${tendencyresult.tendency_e18 }">
		        <input type="hidden" id="e19" value="${tendencyresult.tendency_e19 }">
				<img class="mainheaderimg1" alt="img1" src="img/user/001.png">
				<img class="mainheaderimg2" alt="img2" src="img/user/002.png">
				<div class="inforarea">
					<div class="name area1">
						<div class="nameheader">검사자</div>
						<div class="namebody">${tendencyresult.tendency_name }</div>
					</div>
					<div class="day area2">
						<div class="dayheader">검사일자</div>
						<div class="daybody">${tendencyresult.tendency_date }</div>
					</div>
					<div class="category area1">
						<div class="categoryheader">유형</div>
						<div class="categorybody"><span id="tendencyresultbest1"></span></div>
					</div>
				</div>
				<div class="img3area">
					<div class="img-area">
						<img class="mainheaderimg3" alt="img3" src="img/user/성향검사지 앞 (개발)-003.png">
					</div>				
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
				</div>
				<div class="img4area">
					<div class="img-area">
						<img class="mainheaderimg4" alt="img4" src="img/user/적성테스트결과img004.png">
					</div>
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
					<div class="resultimg" id="resultimg">
						
					</div>
					<div class="resultname">
						<span id="tendencyresultbest2"></span>  ${tendencyresult.tendency_name }
					</div>
					<div class="alertarea">
						<div class="traffic">
							<div class="light" id="light1"></div>
							<div class="light" id="light2"></div>
							<div class="light" id="light3"></div>
						</div>
						<div class="traffic">
							<div class="light" id="light4"></div>
							<div class="light" id="light5"></div>
							<div class="light" id="light6"></div>
						</div>
						<div class="traffic">
							<div class="light" id="light7"></div>
							<div class="light" id="light8"></div>
							<div class="light" id="light9"></div>
						</div>
						<div class="traffic">
							<div class="light" id="light10"></div>
							<div class="light" id="light11"></div>
							<div class="light" id="light12"></div>
						</div>
					</div>
					<div class="alertresult">
						<div class="alerttext"><span id="traffictext1" style="color:#D813AF"></span></div>
						<div class="alerttext"><span id="traffictext2" style="color:#479847"></span></div>
						<div class="alerttext"><span id="traffictext3" style="color:#FFAB65"></span></div>
						<div class="alerttext"><span id="traffictext4" style="color:#2F5FFF"></span></div>
					</div>
					<div class="resultbody">
						<span style="color:#043EFF">${tendencyresult.tendency_name }</span> <span id="resultlongtext"></span>
					</div>
				</div>
				<div class="img5area">
					<div class="img-area">
						<img class="mainheaderimg5" alt="img5" src="img/user/적성테스트결과img005.png">
					</div>
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
					<div>
						<canvas id="myresultChart"></canvas>
					</div>
					<div class="chartsummary">
						${tendencyresult.tendency_name } 검사자는 창의능력, 분석능력, 습관능력, 감정능력 중 <span id="resultcharttext1"></span>이 가장 뛰어난 학습자로서 <span id="resultcharttext2"></span>에 대한 보완이 진행되면 진일보한 학습태도 및 성적을 거두게 될 것입니다.
					</div>
					<div class="studykitarea" id="shoppingarea1">
						<p style="margin-bottom:15px;"><span id="upperkit1"></span> . <span id="upperkit2"></span></p>
						<p><span id="lowerkit1"></span> . <span id="lowerkit2"></span></p>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
						    <div class="modal-content">
						      	<div class="modal-header">
						        	<h5 class="modal-title" id="exampleModalLabel">구매페이지로 이동</h5>
						        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      	</div>
						      	<div class="modal-body">
						        	해당 페이지는 준비중입니다.
						      	</div>
						      	<div class="modal-footer">
						        	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						    	</div>
						    </div>
						</div>
					</div>
				</div>
				<div class="img6area">
					<div class="img-area">
						<img class="mainheaderimg6" alt="img6" src="img/user/적성테스트결과img006.png">
					</div>
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
					<div class="uppertendency">
						<div class="tendencystatus"><span id="besttendency1"></span></div>
						<div class="tendencybox">세부항목별 평가표</div>
					</div>
					<div>
						<canvas id="myupperChart"></canvas>
					</div>
				</div>
				<div class="img7area">
					<div class="img-area">
						<img class="mainheaderimg7" alt="img7" src="img/user/적성테스트결과img007.png">
					</div>
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
					<div class="uppercase1">
						<div class="casetopleft">
							<div class="casenamearea1">
								<div class="casenameleft">
									<span id="besttendency2"></span>
								</div>
								<div class="casenameright" id="bestmain">
									추 천 학 습 법
								</div>
							</div>
							<div class="casebodyarea1">
								<div class="casebodyhead1">
									<span id="bestlearningmethod1"></span>
								</div>
								<div class="casebody">
									<span id="bestlearningmethod2"></span>
								</div>
							</div>
							<div class="casekitsarea1">
								<div class="casekitheader">
									효과적인 학습을 위한 study kits
								</div>
								<div class="casekitbody">
									<span id="bestlearningmethod3"></span>
								</div>
							</div>
						</div>
						<div class="caseimgarea" id="upperimg1">
							
						</div>
					</div>
					<div class="uppercase2">
						<div class="casebottomleft">
							<div class="casebodyarea2">
								<div class="casebodyhead2">
									<span id="bestlearningmethod4"></span>
								</div>
								<div class="casebody">
									<span id="bestlearningmethod5"></span>
								</div>
							</div>
							<div class="casekitsarea2">
								<div class="casekitheader">
									효과적인 학습을 위한 study kits
								</div>
								<div class="casekitbody">
									<span id="bestlearningmethod6"></span>
								</div>
							</div>
						</div>
						<div class="caseimgarea" id="upperimg2">
							
						</div>
					</div>
				</div>
				<div class="img8area">
					<div class="img-area">
						<img class="mainheaderimg6" alt="img8" src="img/user/적성테스트결과img006.png">
					</div>
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
					<div class="lowertendency">
						<div class="tendencystatus2"><span id="worsttendency1"></span></div>
						<div class="tendencybox2">세부항목별 평가표</div>
					</div>
					<div>
						<canvas id="mylowerChart"></canvas>
					</div>
				</div>
				<div class="img9area">
					<div class="img-area">
						<img class="mainheaderimg7" alt="img9" src="img/user/적성테스트결과img007.png">
					</div>
					<div class="nameinfor">${tendencyresult.tendency_name }</div>
					<div class="lowercase1">
						<div class="casetopleft">
							<div class="casenamearea1">
								<div class="casenameleft">
									<span id="worsttendency2"></span>
								</div>
								<div class="casenameright" id="worstmain">
									추 천 학 습 법
								</div>
							</div>
							<div class="casebodyarea1">
								<div class="casebodyhead1">
									<span id="worstlearningmethod1"></span>
								</div>
								<div class="casebody">
									<span id="worstlearningmethod2"></span>
								</div>
							</div>
							<div class="casekitsarea1">
								<div class="casekitheader">
									효과적인 학습을 위한 study kits
								</div>
								<div class="casekitbody">
									<span id="worstlearningmethod3"></span>
								</div>
							</div>
						</div>
						<div class="caseimgarea" id="lowerimg1">
							
						</div>
					</div>
					<div class="lowercase2">
						<div class="casebottomleft">
							<div class="casebodyarea2">
								<div class="casebodyhead2">
									<span id="worstlearningmethod4"></span>
								</div>
								<div class="casebody">
									<span id="worstlearningmethod5"></span>
								</div>
							</div>
							<div class="casekitsarea2">
								<div class="casekitheader">
									효과적인 학습을 위한 study kits
								</div>
								<div class="casekitbody">
									<span id="worstlearningmethod6"></span>
								</div>
							</div>
						</div>
						<div class="caseimgarea" id="lowerimg2">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
	const a1 = document.getElementById("a1").value;
	const a2 = document.getElementById("a2").value;
	const a3 = document.getElementById("a3").value;
	const a4 = document.getElementById("a4").value;
	const a5 = document.getElementById("a5").value;
	const a6 = document.getElementById("a6").value;
	const a7 = document.getElementById("a7").value;
	const a8 = document.getElementById("a8").value;
	const a9 = document.getElementById("a9").value;
	const a10 = document.getElementById("a10").value;
	const a11 = document.getElementById("a11").value;
	const a12 = document.getElementById("a12").value;
	const a13 = document.getElementById("a13").value;
	const h1 = document.getElementById("h1").value;
	const h2 = document.getElementById("h2").value;
	const h3 = document.getElementById("h3").value;
	const h4 = document.getElementById("h4").value;
	const h5 = document.getElementById("h5").value;
	const h6 = document.getElementById("h6").value;
	const h7 = document.getElementById("h7").value;
	const h8 = document.getElementById("h8").value;
	const h9 = document.getElementById("h9").value;
	const h10 = document.getElementById("h10").value;
	const h11 = document.getElementById("h11").value;
	const h12 = document.getElementById("h12").value;
	const h13 = document.getElementById("h13").value;
	const h14 = document.getElementById("h14").value;
	const r1 = document.getElementById("r1").value;
	const r2 = document.getElementById("r2").value;
	const r3 = document.getElementById("r3").value;
	const r4 = document.getElementById("r4").value;
	const r5 = document.getElementById("r5").value;
	const r6 = document.getElementById("r6").value;
	const e1 = document.getElementById("e1").value;
	const e2 = document.getElementById("e2").value;
	const e3 = document.getElementById("e3").value;
	const e4 = document.getElementById("e4").value;
	const e5 = document.getElementById("e5").value;
	const e6 = document.getElementById("e6").value;
	const e7 = document.getElementById("e7").value;
	const e8 = document.getElementById("e8").value;
	const e9 = document.getElementById("e9").value;
	const e10 = document.getElementById("e10").value;
	const e11 = document.getElementById("e11").value;
	const e12 = document.getElementById("e12").value;
	const e13 = document.getElementById("e13").value;
	const e14 = document.getElementById("e14").value;
	const e15 = document.getElementById("e15").value;
	const e16 = document.getElementById("e16").value;
	const e17 = document.getElementById("e17").value;
	const e18 = document.getElementById("e18").value;
	const e19 = document.getElementById("e19").value;
	const aresult = (parseFloat(parseFloat(a1)+parseFloat(a2)+parseFloat(a3)+parseFloat(a4)+parseFloat(a5)+parseFloat(a6)+parseFloat(a7)+parseFloat(a8)+parseFloat(a9)+parseFloat(a10)+parseFloat(a11)+parseFloat(a12)+parseFloat(a13))/13).toFixed(1);
	const hresult = (parseFloat(parseFloat(h1)+parseFloat(h2)+parseFloat(h3)+parseFloat(h4)+parseFloat(h5)+parseFloat(h6)+parseFloat(h7)+parseFloat(h8)+parseFloat(h9)+parseFloat(h10)+parseFloat(h11)+parseFloat(h12)+parseFloat(h13)+parseFloat(h14))/14).toFixed(1);
	const rresult = (parseFloat(parseFloat(r1)+parseFloat(r2)+parseFloat(r3)+parseFloat(r4)+parseFloat(r5)+parseFloat(r6))/6).toFixed(1);
	const eresult = (parseFloat(parseFloat(e1)+parseFloat(e2)+parseFloat(e3)+parseFloat(e4)+parseFloat(e5)+parseFloat(e6)+parseFloat(e7)+parseFloat(e8)+parseFloat(e9)+parseFloat(e10)+parseFloat(e11)+parseFloat(e12)+parseFloat(e13)+parseFloat(e14)+parseFloat(e15)+parseFloat(e16)+parseFloat(e17)+parseFloat(e18)+parseFloat(e19))/19).toFixed(1);
	if(aresult<=40){
		document.getElementById("light1").style.backgroundColor="red";
		document.getElementById("light2").style.backgroundColor="red";
		document.getElementById("light3").style.backgroundColor="red";
		document.getElementById("traffictext1").innerText="심각";
	}else if(aresult<=50){
		document.getElementById("light1").style.backgroundColor="white";
		document.getElementById("light2").style.backgroundColor="red";
		document.getElementById("light3").style.backgroundColor="red";
		document.getElementById("traffictext1").innerText="경고";
	}else if(aresult<=60){
		document.getElementById("light1").style.backgroundColor="white";
		document.getElementById("light2").style.backgroundColor="white";
		document.getElementById("light3").style.backgroundColor="red";
		document.getElementById("traffictext1").innerText="주의";
	}else if(aresult<=70){
		document.getElementById("light1").style.backgroundColor="white";
		document.getElementById("light2").style.backgroundColor="white";
		document.getElementById("light3").style.backgroundColor="green";
		document.getElementById("traffictext1").innerText="양호";
	}else if(aresult<=80){
		document.getElementById("light1").style.backgroundColor="white";
		document.getElementById("light2").style.backgroundColor="green";
		document.getElementById("light3").style.backgroundColor="green";
		document.getElementById("traffictext1").innerText="안정";
	}else{
		document.getElementById("light1").style.backgroundColor="green";
		document.getElementById("light2").style.backgroundColor="green";
		document.getElementById("light3").style.backgroundColor="green";
		document.getElementById("traffictext1").innerText="우수";
	};
	if(hresult<=40){
	    document.getElementById("light4").style.backgroundColor="red";
	    document.getElementById("light5").style.backgroundColor="red";
	    document.getElementById("light6").style.backgroundColor="red";
	    document.getElementById("traffictext2").innerText="심각";
	}else if(hresult<=50){
	    document.getElementById("light4").style.backgroundColor="white";
	    document.getElementById("light5").style.backgroundColor="red";
	    document.getElementById("light6").style.backgroundColor="red";
	    document.getElementById("traffictext2").innerText="경고";
	}else if(hresult<=60){
	    document.getElementById("light4").style.backgroundColor="white";
	    document.getElementById("light5").style.backgroundColor="white";
	    document.getElementById("light6").style.backgroundColor="red";
	    document.getElementById("traffictext2").innerText="주의";
	}else if(hresult<=70){
	    document.getElementById("light4").style.backgroundColor="white";
	    document.getElementById("light5").style.backgroundColor="white";
	    document.getElementById("light6").style.backgroundColor="green";
	    document.getElementById("traffictext2").innerText="양호";
	}else if(hresult<=80){
	    document.getElementById("light4").style.backgroundColor="white";
	    document.getElementById("light5").style.backgroundColor="green";
	    document.getElementById("light6").style.backgroundColor="green";
	    document.getElementById("traffictext2").innerText="안정";
	}else{
	    document.getElementById("light4").style.backgroundColor="green";
	    document.getElementById("light5").style.backgroundColor="green";
	    document.getElementById("light6").style.backgroundColor="green";
	    document.getElementById("traffictext2").innerText="우수";
	};
	if(rresult<=40){
	    document.getElementById("light7").style.backgroundColor="red";
	    document.getElementById("light8").style.backgroundColor="red";
	    document.getElementById("light9").style.backgroundColor="red";
	    document.getElementById("traffictext3").innerText="심각";
	}else if(rresult<=50){
	    document.getElementById("light7").style.backgroundColor="white";
	    document.getElementById("light8").style.backgroundColor="red";
	    document.getElementById("light9").style.backgroundColor="red";
	    document.getElementById("traffictext3").innerText="경고";
	}else if(rresult<=60){
	    document.getElementById("light7").style.backgroundColor="white";
	    document.getElementById("light8").style.backgroundColor="white";
	    document.getElementById("light9").style.backgroundColor="red";
	    document.getElementById("traffictext3").innerText="주의";
	}else if(rresult<=70){
	    document.getElementById("light7").style.backgroundColor="white";
	    document.getElementById("light8").style.backgroundColor="white";
	    document.getElementById("light9").style.backgroundColor="green";
	    document.getElementById("traffictext3").innerText="양호";
	}else if(rresult<=80){
	    document.getElementById("light7").style.backgroundColor="white";
	    document.getElementById("light8").style.backgroundColor="green";
	    document.getElementById("light9").style.backgroundColor="green";
	    document.getElementById("traffictext3").innerText="안정";
	}else{
	    document.getElementById("light7").style.backgroundColor="green";
	    document.getElementById("light8").style.backgroundColor="green";
	    document.getElementById("light9").style.backgroundColor="green";
	    document.getElementById("traffictext3").innerText="우수";
	};
	if(eresult<=40){
	    document.getElementById("light10").style.backgroundColor="red";
	    document.getElementById("light11").style.backgroundColor="red";
	    document.getElementById("light12").style.backgroundColor="red";
	    document.getElementById("traffictext4").innerText="심각";
	}else if(eresult<=50){
	    document.getElementById("light10").style.backgroundColor="white";
	    document.getElementById("light11").style.backgroundColor="red";
	    document.getElementById("light12").style.backgroundColor="red";
	    document.getElementById("traffictext4").innerText="경고";
	}else if(eresult<=60){
	    document.getElementById("light10").style.backgroundColor="white";
	    document.getElementById("light11").style.backgroundColor="white";
	    document.getElementById("light12").style.backgroundColor="red";
	    document.getElementById("traffictext4").innerText="주의";
	}else if(eresult<=70){
	    document.getElementById("light10").style.backgroundColor="white";
	    document.getElementById("light11").style.backgroundColor="white";
	    document.getElementById("light12").style.backgroundColor="green";
	    document.getElementById("traffictext4").innerText="양호";
	}else if(eresult<=80){
	    document.getElementById("light10").style.backgroundColor="white";
	    document.getElementById("light11").style.backgroundColor="green";
	    document.getElementById("light12").style.backgroundColor="green";
	    document.getElementById("traffictext4").innerText="안정";
	}else{
	    document.getElementById("light10").style.backgroundColor="green";
	    document.getElementById("light11").style.backgroundColor="green";
	    document.getElementById("light12").style.backgroundColor="green";
	    document.getElementById("traffictext4").innerText="우수";
	};
	const resultmax = Math.max(aresult,hresult,rresult,eresult);
	const resultmin = Math.min(aresult,hresult,rresult,eresult);
	let aarr = [a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13];
	let harr = [h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14];
	let rarr = [r1,r2,r3,r4,r5,r6]; 
	let earr = [e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19];
	const aset = new Set(aarr);
	const uniquea = [...aset];
	const hset = new Set(harr);
	const uniqueh = [...hset];
	const rset = new Set(rarr);
	const uniquer = [...rset];
	const eset = new Set(earr);
	const uniquee = [...eset];
	uniquea.sort(function(a, b)  {
		  return b - a;
	});
	uniqueh.sort(function(a, b)  {
		  return b - a;
	});
	uniquer.sort(function(a, b)  {
		  return b - a;
	});
	uniquee.sort(function(a, b)  {
		  return b - a;
	});
	const amax = Math.max(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13);
	const hmax = Math.max(h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14);
	const rmax = Math.max(r1,r2,r3,r4,r5,r6);
	const emax = Math.max(e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19);
	const data1 = {
		labels: [
		    '분석능력',
		    '감정능력',
		    '습관능력',
		    '창의능력'
		],
		datasets: [{
		    label: 'My First Dataset',
		    data: [aresult, hresult, rresult, eresult],
		    backgroundColor: [
		      'rgb(255, 99, 132, 0.5)',
		      'rgb(75, 192, 192, 0.5)',
		      'rgb(255, 205, 86, 0.5)',
		      'rgb(54, 162, 235, 0.5)'
		    ]
		}]
	};
	const config1 = {
		type: 'polarArea',
		data: data1,
		options: {
			scales:{
				r:{
        			max:100,
        			pointLabels: {
        				display: true,
        	          	centerPointLabels: true,
        	          	font: {
        	            	size: 32
        	          	}
        			}
				}
			},
			plugins: {
            	legend: {
            		display: false
            	}
        	}
		}
	};
	const myChart1 = new Chart(
		document.getElementById('myresultChart'),
		config1
	);
	if(resultmax==aresult){
	    let resultlongtext=document.getElementById("resultlongtext").innerText="검사자는 학습의 4가지 영역 중 분석 능력이 뛰어난 학습자입니다. 어렸을 때부터 이런 성향이 강한 학습자는 현상에 대한 관찰력이 뛰어나며 주변인의 말이나 행동도 전후 관계를 따져 묻기 때문에 간혹 “말대꾸를 많이 한다”, “한 마디도 안 진다”라는 이야기를 듣습니다. 본인이 어떤 명령에 이해가 안 가면 행동으로 바로 옮기지 못하는 성격이라 학습을 함에 있어서도 이해가 안 가면 주어진 학습량을 완성하는 데 무리가 있습니다. 그래서 부모님이나 선생님의 지도 방법이 매우 중요한 유형입니다. 문제 푸는 속도가 느리거나 암기하는 속도가 더디다고 해서 공부를 못하는 학생이 절대 아니며 이해하는 과정에서 스스로 논리를 재구성하는 유형이라는 점 명심해야 합니다. 원리를 이해하려고 노력하는 과정 속에 공부 근력도 생기고 창의성도 생기기 때문에 ‘공부 속도가 늦다’라는 표현으로 학습의 동기를 낮춰서는 절대 안 됩니다. 또한, 학생들에게 정확한 원리를 설명하지 않고 “그냥 외워.”라든가 “많이 풀어야 늘지.”라는 등의 명령을 하면서 학습량을 늘려 체득화시키려는 선생님들이 있는데 분석 능력이 뛰어난 학습자에게는 이런 선생님의 태도가 독이 될 수 있으니 학습자의 성향을 고려하여 지도해야 합니다. 일단, 원리를 정확히 이해시켜주고 그다음 학습량을 늘려서 체득화시키는 것이 이상적이며 학습 속도가 늦어 불안한 학습자에게 “늦어도 상관없다. 정확히 이해하고 넘어가는 것이 더 좋을 수도 있다.”라는 멘트를 하며 격려하는 것도 학습의 큰 동기부여가 될 수 있습니다.";
	    let resultimg=document.getElementById("resultimg").innerHTML='<img class="resultmainimg" alt="resultmainimg" src="img/user/분석적학습자.jpg">';
	    let tendencyresultbest1=document.getElementById("tendencyresultbest1").innerText="분석적학습자";
	    let resultcharttext1=document.getElementById("resultcharttext1").innerText="분석능력";
	    let besttendency1=document.getElementById("besttendency1").innerText="분석능력자";
	    let tendencyresultbest2=document.getElementById("tendencyresultbest2").innerText="분석적학습자";
	    let besttendency2=document.getElementById("besttendency2").innerText="분석능력자";
	    document.getElementById("besttendency2").style.color="#D813AF";
	    document.getElementById("bestmain").style.color="#D813AF";
	    document.getElementById("bestmain").style.borderColor="#D813AF";
	    const data2 = {
	        labels: [
	            'Q&A학습',
	            'To Do List 학습',
	            '리디자인 학습',
	            '시험 결과 분석지 활용',
	            '미디어 학습',
	            '봉사일동 일지세트',
	            '약점 과목 집중 학습',
	            '오답통 학습',
	            '체험 및 진로활동 일지',
	            '키워드 학습',
	            '타임리밋 학습',
	            '포스트잇 학습',
	            '필기왕 학습'
	        ],
	        datasets: [{
	            label: '분석능력',
	            data: [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13],
	            fill: true,
	            backgroundColor: 'rgba(219, 244, 253, 0.4)',
	            borderColor: '#4DC9F6',
	            pointBackgroundColor: '#4DC9F6',
	            pointBorderColor: '#fff',
	            pointHoverBackgroundColor: '#fff',
	            pointHoverBorderColor: '#4DC9F6'
	        }]
	    };
	    const config2 = {
	        type: 'radar',
	        data: data2,
	        options: {
	        	scales:{
	        		r:{
	        			min:0,
	        			max:100,
	        			beginAtZero:true,
	        			pointLabels:{
					        font: {
					        	size: 22
					        }
						}
	        		}
	        	},
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart2 = new Chart(
	        document.getElementById('myupperChart'),
	        config2
	    );
	    if(amax==a1){
	        document.getElementById("bestlearningmethod1").innerText="Q&A 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>주입식 교육에 익숙한 학습자를 위한 사고력 확장 학습 관리법이다. 학습 한 내용에 대해 스스로 문제를 출제함으로써 학습 내용의 중요 부분을 정리하는 능력도 기르고 수업의 참여도도 높이는 효과를 볼 수 있다. Q&A 노트를 시험 기간에 잘 활용하면 공부 시간이 단축될 수 있다.<br><br><p>★진행 순서★</p><p>1.  Q&A 노트를 활용한다.</p><p>2. 해당 범위는 과목과 페이지 쪽수를 적는다.</p><p>3. 주관식과 객관식 문제를 혼용하여 고민하며 문제를 만든다.</p><p>4. 답변은 최대한 자세히 적는다.</p><p>* 드리몽의 스터디보드는 Question 질문란을 수시로 활용하여 질문의 습관을 만들어간다.</p><br><p>★주의사항★</p><p>문제에 대한 고찰 능력과 사고력 확장을 위해서는 주관식 형태보다는 선택지를 포함한 객관식 형태로 출제하면 좋다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="Q&A 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga01.png'>";
	        document.getElementById("upperkit1").innerText="Q&A 노트";
	    }else if(amax==a2){
	        document.getElementById("bestlearningmethod1").innerText="To Do list 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>완료한 미션들은 지우고 다음 날 해야 할 미션은 새로 적는다. 진행 중인 미션은 ‘진행 중 미션’ 란에, 완성되지 않은 미션은 ‘지연된 미션’ 란에 적음으로써 일정에 맞는 업무 우선 순위 배치 능력이 자연스럽게 생긴다. 매일 취침 전에 학습에 대한 내용을 정리하므로 효과적인 학습 관리 뿐만 아니라 체계적인 스케줄 관리도 가능하다.<br><br><p>★진행 순서★</p><p>1.  ‘드리미의 미션보드’를 활용한다.</p><p>2. ‘Today Mission’ 란에 어제 적었던 미션 중 완료한 것은 지우고 새로 해야 할 미션을 적는다.</p><p>3. ‘Delayed Mission’ 란에 연기된 미션을 적는다.</p><p>4. ‘Ongoing Mission’ 란에 계속 진행 중인 미션을 적는다.</p><p>5. ‘To Do List’ 보드를 활용해 할 일을 매일 관리하는 습관을 들인다.</p><br><p>★주의사항★</p><p>학습뿐만 아니라 전반적인 생활 관리가 가능하므로 될 수 있는 한 학습, 비학습의 모든 미션을 기입해야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="To Do list 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga02.png'>";
	        document.getElementById("upperkit1").innerText="To Do list 노트";
	    }else if(amax==a3){
	        document.getElementById("bestlearningmethod1").innerText="리디자인 정리 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>필기 습관이 잡히지 않고 요약정리하는 능력도 부족한 학습자를 위한 학습 관리법이다. 수업 시간에 듣는 내용 모두를 필기하고 주요 내용을 다시 정리하는 방식으로 코넬노트의 장점을 활용하였다. 이 학습법은 재정리하는 과정 속에서 개념이해가 완벽해지는 효과가 있다.<br><br><p>★진행 순서★</p><p>1.  수업 시간에 선생님이 말씀하시는 내용은 하나도 놓치지 않고 빠른 속도로 필기한다.</p><p>2. 주요 내용을 다시 정리하면서 필기를 알아볼 수 없거나 이해가 안되는 부분은 체크해둔다.</p><p>3. 알아볼 수 없는 필기나 이해되지 않는 부분을 질문한다.</p><p>4. 리디자인 노트의 요약 부분은 자주 반복해서 본다.</p><br><p>★주의사항★</p><p>적은 내용이 없으면 재정리할 내용도 없으므로 수업 시간에 집중하여 최대한 많은 양의 정보를 적는다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="리디자인 정리 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga03.png'>";
	        document.getElementById("upperkit1").innerText="리디자인 정리 노트";
	    }else if(amax==a4){
	        document.getElementById("bestlearningmethod1").innerText="시험 결과 분석지 활용 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>시험 결과 분석지 활용은 시험 문제의 오답을 지속적으로 관리하는 학습 관리법이다. 반복적인 실수에 대해 학습자 스스로가 경각심을 갖고 자신 의 허점을 보완할 수 있다.<br><br><p>★진행 순서★</p><p>1.  각 과목 분석지에 번호당 출제 유형과 틀린 이유를 적는다.</p><p>2. ‘틀린 이유’ 란에 [개념 이해 부족, 문제 이해 부족, 실수, 시간 부족, 착각, 졸음] 중에 하나를 적는다.</p><p>3. ‘범위’ 란에 시험 출처를 적는다.</p><br><p>★주의사항★</p><p>정답 해설지를 꼼꼼히 보며 틀린 이유에 대해 자세히 검토하지 않으면 효과가 떨어진다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="매직 모의고사 분석지";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga04.png'>";
	        document.getElementById("upperkit1").innerText="매직 모의고사 분석지";
	    }else if(amax==a5){
	        document.getElementById("bestlearningmethod1").innerText="미디어 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>교과보다는  비교과에  더  많이  활용되며  학업  성적이  우수한  개방적 학습자와 절충적 학습자가 주로 사용하고 있다. 세부특기 활동, N. I. E. 교육, 동아리 활동, R&E 활동 등에서 활용도가 높고 특목영재고와 명문대 진학 시 포트폴리오 활용에도 탁월한 결과를 보여준다.<br><br><p>★진행 순서★</p><p>1.  미디어 학습 노트에 한 가지 주제를 정해서 ‘주제’ 란에 적는다.</p><p>2. 사용하는 교구 및 미디어의 종류와 출처를 적는다.</p><p>3. 교구 사용법 및 미디어의 핵심 내용을 정리한다.</p><br><p>★주의사항★</p><p>장기적으로는 생활기록부 관리에 큰 도움이 되므로 분실의 위험이 없도록 포트폴리오로 만들어 철저히 보관한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="미디어 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga05.png'>";
	        document.getElementById("upperkit1").innerText="미디어 학습 노트";
	    }else if(amax==a6){
	        document.getElementById("bestlearningmethod1").innerText="봉사활동 일지세트";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>봉사활동 기획 단계부터 활동 사후 보고서 작성까지 일련의 논스톱 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="봉사활동 일지 세트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga06.png'>";
	        document.getElementById("upperkit1").innerText="봉사활동 일지 세트";
	    }else if(amax==a7){
	        document.getElementById("bestlearningmethod1").innerText="약점 과목 집중 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 약점이라고 생각했던 과목을 매일 동일한 시간대에 요약정리함으로써 기피 과목에 대한 친숙함을 쌓아가는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 매일 동일한 시간대에 약점 과목에 대한 반복적인 학습을 진행한다.</p><p>2. 정리 내용은 너무 어렵지 않고 범위가 많지 않아야 한다.</p><p>3. 집중해서 30분이면 해결될 수 있는 학습량이어야 한다.</p><p>예> 취침 30분 전 : 수학의 함수 문제 5개씩 풀기</p><br><p>★주의사항★</p><p>약점 과목에 대한 거부감을 없애고자 하는 학습법이므로 과도한 학습량은 오히려 해가 된다. 반드시 순간 집중하여 해결할 수 있는 학습량인 30분 ~ 1시간 정도로 정한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="약점 과목 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga07.png'>";
	        document.getElementById("upperkit1").innerText="약점 과목 학습 노트";
	    }else if(amax==a8){
	        document.getElementById("bestlearningmethod1").innerText="오답통 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>자주 틀리는 문제는 반복점검하지 않으면 보완할 수 없다. 그러나 대부분의 학생은 오답 노트를 작성하고도 두 번 다시 보지 않는다. 이런 문제점을 개선하고자 오답통 학습법이 개발되었다.<br><br><p>★진행 순서★</p><p>1.  문제를 풀다 틀린 문제가 있으면 주어진 드리몽 페이퍼에 쓰고 1번 오답통에 넣어둔다.</p><p>2. 문득 생각나면 1번 오답통 안에서 드리몽 페이퍼를 꺼내 문제를 푼다.</p><p>3. 정답을 맞추면 2번 오답통으로 이동시킨다.</p><p>4. 같은 방법으로 3번 오답통 → 쓰레기통의 순서대로 이동한다.  </p><p>5. 혹시 오답이 나오면 있던 번호의 통에 그대로 남겨둔다.</p><br><p>★주의사항★</p><p>오답통을 눈에 띄는 장소에 배치한다. 오답통이 눈에 들어오면 문제를 풀어서 3번 오답통 → 쓰레기통으로 이동시킨다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="오답통 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga08.png'>";
	        document.getElementById("upperkit1").innerText="오답통 노트";
	    }else if(amax==a9){
	        document.getElementById("bestlearningmethod1").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>체험 및 진로활동 기획부터 활동 사후 보고서 작성까지 일련의 체계적인 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga09.png'>";
	        document.getElementById("upperkit1").innerText="체험 및 진로활동 일지 세트";
	    }else if(amax==a10){
	        document.getElementById("bestlearningmethod1").innerText="키워드 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>빙고 노트 다음 단계 학습법으로 주로 중, 고등부 내신 기간에 이용하면 효과적이다. 학습의 체계가 잡혀있지 않은 손상된 학습자 및 감각중심 학습자나 정서관련적 학습자를 위한 핵심요약 학습법의 일종이다.<br><br><p>★진행 순서★</p><p>1.  핵심키워드를 왼쪽 줄에 일렬로 적는다.</p><p>2. 키워드만 보고 그 내용을 서술형으로 적는다.</p><p>3. 서술형을 보고 키워드를 맞추는 연습을 한다.</p><p>4. 친구들과 함께 게임형태로 진행하면 학습효과가 높아진다.</p><br><p>★주의사항★</p><p>교재에서 최대한 많은 키워드를 잡아내는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="Keyword 잡기 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga10.png'>";
	        document.getElementById("upperkit1").innerText="Keyword 잡기 노트";
	    }else if(amax==a11){
	        document.getElementById("bestlearningmethod1").innerText="타임리밋 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습 시 긴장감이 떨어지는 학습자를 위해 개발되었다. 평상시에도 시험 기간인 것처럼 긴장감을 유도하여 짧은 기간에 미션을 완수할 수 있도록 돕는 방법이다. 단, 스트레스에 취약한 정서관련적 학습자에게는 맞지 않는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습량과 완성가능 시간을 미리 정하고 이에 맞춰 긴장감을 가지고 학습한다.</p><p>2. 너무 긴 시간을 정하면 긴장감이 떨어질 수 있으니 일주일 이내의 시간을 할당한다.</p><br><p>★주의사항★</p><p>타임리밋 학습법은 단기로 진행하는 것이 바람직하다. 목표지향 학습법과 혼동하지 않도록 주의한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="타임리밋 세트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga11.png'>";
	        document.getElementById("upperkit1").innerText="타임리밋 세트";
	    }else if(amax==a12){
	        document.getElementById("bestlearningmethod1").innerText="포스트잇 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>자기주도학습의 과정을 보여주는 기본단계이다. 포스트잇에 중요한 부분을 수시로 필기하여 학습 역량의 흔적을 남길 수 있다. 포스트잇을 교재에 붙여두고 선생님과의 피드백 시간을 자주 가져야 효과적이다.<br><br><p>★진행 순서★</p><p>1. 수업 시간에 내용이 많아 모두 책에 정리할 수 없는 경우 포스트잇을 사용하여 추가로 필기한다.</p><p>2. 필기한 내용은 반드시 책에 붙여둔다.</p><p>3. 책의 진도가 끝나면 붙여둔 포스트잇만 모두 떼어서 벽면에 붙여두고 수시로 본다.</p><br><p>★주의사항★</p><p>포스트잇에 필기할 때는 키워드 중심으로 제목과 함께 적는다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="포스트잇 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga12.png'>";
	        document.getElementById("upperkit1").innerText="포스트잇 노트";
	    }else if(amax==a13){
	        document.getElementById("bestlearningmethod1").innerText="필기왕 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>선생님이 불러주신 강의 내용을 모두 적는 것이 아니라 본인이 판단하기에 중요한 부분, 이해가 안 되는 부분, 질문할 부분, 추가적인 학습이 필요한 부분으로 구분하여 자신만의 필기를 해야 필기왕이 될 수 있다.<br><br><p>★진행 순서★</p><p>1.  선생님의 수업 내용 중에 중요한 부분은 ☆ 표시 / 질문은 Q 표시를 하면서 처음에는 가볍게 형광펜과 색깔펜만 사용한다. </p><p>2. 선생님의 수업 내용 중 중요한 키워드를 먼저 적어두고 적어둔 키워드를 보고 서술형으로 다시 말해본다.</p><p>3. 좀 더 발전되면 ‘커새로 파란색 학습법 카드’ 시리즈를 활용한다.</p><br><p>★주의사항★</p><p>무엇보다도 필기왕이 되기 위해서는 학습 내용의 중요도를 구분할 수 있을 정도로 선생님의 수업에 초집중한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="필기 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga13.png'>";
	        document.getElementById("upperkit1").innerText="필기 노트";
	    };
	    if(uniquea[1]==a1){
	        document.getElementById("bestlearningmethod4").innerText="Q&A 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>주입식 교육에 익숙한 학습자를 위한 사고력 확장 학습 관리법이다. 학습 한 내용에 대해 스스로 문제를 출제함으로써 학습 내용의 중요 부분을 정리하는 능력도 기르고 수업의 참여도도 높이는 효과를 볼 수 있다. Q&A 노트를 시험 기간에 잘 활용하면 공부 시간이 단축될 수 있다.<br><br><p>★진행 순서★</p><p>1.  Q&A 노트를 활용한다.</p><p>2. 해당 범위는 과목과 페이지 쪽수를 적는다.</p><p>3. 주관식과 객관식 문제를 혼용하여 고민하며 문제를 만든다.</p><p>4. 답변은 최대한 자세히 적는다.</p><p>* 드리몽의 스터디보드는 Question 질문란을 수시로 활용하여 질문의 습관을 만들어간다.</p><br><p>★주의사항★</p><p>문제에 대한 고찰 능력과 사고력 확장을 위해서는 주관식 형태보다는 선택지를 포함한 객관식 형태로 출제하면 좋다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="Q&A 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga01.png'>";
	        document.getElementById("upperkit2").innerText="Q&A 노트";
	    }else if(uniquea[1]==a2){
	        document.getElementById("bestlearningmethod4").innerText="To Do list 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>완료한 미션들은 지우고 다음 날 해야 할 미션은 새로 적는다. 진행 중인 미션은 ‘진행 중 미션’ 란에, 완성되지 않은 미션은 ‘지연된 미션’ 란에 적음으로써 일정에 맞는 업무 우선 순위 배치 능력이 자연스럽게 생긴다. 매일 취침 전에 학습에 대한 내용을 정리하므로 효과적인 학습 관리 뿐만 아니라 체계적인 스케줄 관리도 가능하다.<br><br><p>★진행 순서★</p><p>1.  ‘드리미의 미션보드’를 활용한다.</p><p>2. ‘Today Mission’ 란에 어제 적었던 미션 중 완료한 것은 지우고 새로 해야 할 미션을 적는다.</p><p>3. ‘Delayed Mission’ 란에 연기된 미션을 적는다.</p><p>4. ‘Ongoing Mission’ 란에 계속 진행 중인 미션을 적는다.</p><p>5. ‘To Do List’ 보드를 활용해 할 일을 매일 관리하는 습관을 들인다.</p><br><p>★주의사항★</p><p>학습뿐만 아니라 전반적인 생활 관리가 가능하므로 될 수 있는 한 학습, 비학습의 모든 미션을 기입해야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="To Do list 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga02.png'>";
	        document.getElementById("upperkit2").innerText="To Do list 노트";
	    }else if(uniquea[1]==a3){
	        document.getElementById("bestlearningmethod4").innerText="리디자인 정리 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>필기 습관이 잡히지 않고 요약정리하는 능력도 부족한 학습자를 위한 학습 관리법이다. 수업 시간에 듣는 내용 모두를 필기하고 주요 내용을 다시 정리하는 방식으로 코넬노트의 장점을 활용하였다. 이 학습법은 재정리하는 과정 속에서 개념이해가 완벽해지는 효과가 있다.<br><br><p>★진행 순서★</p><p>1.  수업 시간에 선생님이 말씀하시는 내용은 하나도 놓치지 않고 빠른 속도로 필기한다.</p><p>2. 주요 내용을 다시 정리하면서 필기를 알아볼 수 없거나 이해가 안되는 부분은 체크해둔다.</p><p>3. 알아볼 수 없는 필기나 이해되지 않는 부분을 질문한다.</p><p>4. 리디자인 노트의 요약 부분은 자주 반복해서 본다.</p><br><p>★주의사항★</p><p>적은 내용이 없으면 재정리할 내용도 없으므로 수업 시간에 집중하여 최대한 많은 양의 정보를 적는다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="리디자인 정리 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga03.png'>";
	        document.getElementById("upperkit2").innerText="리디자인 정리 노트";
	    }else if(uniquea[1]==a4){
	        document.getElementById("bestlearningmethod4").innerText="시험 결과 분석지 활용 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>시험 결과 분석지 활용은 시험 문제의 오답을 지속적으로 관리하는 학습 관리법이다. 반복적인 실수에 대해 학습자 스스로가 경각심을 갖고 자신 의 허점을 보완할 수 있다.<br><br><p>★진행 순서★</p><p>1.  각 과목 분석지에 번호당 출제 유형과 틀린 이유를 적는다.</p><p>2. ‘틀린 이유’ 란에 [개념 이해 부족, 문제 이해 부족, 실수, 시간 부족, 착각, 졸음] 중에 하나를 적는다.</p><p>3. ‘범위’ 란에 시험 출처를 적는다.</p><br><p>★주의사항★</p><p>정답 해설지를 꼼꼼히 보며 틀린 이유에 대해 자세히 검토하지 않으면 효과가 떨어진다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="매직 모의고사 분석지";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga04.png'>";
	        document.getElementById("upperkit2").innerText="매직 모의고사 분석지";
	    }else if(uniquea[1]==a5){
	        document.getElementById("bestlearningmethod4").innerText="미디어 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>교과보다는  비교과에  더  많이  활용되며  학업  성적이  우수한  개방적 학습자와 절충적 학습자가 주로 사용하고 있다. 세부특기 활동, N. I. E. 교육, 동아리 활동, R&E 활동 등에서 활용도가 높고 특목영재고와 명문대 진학 시 포트폴리오 활용에도 탁월한 결과를 보여준다.<br><br><p>★진행 순서★</p><p>1.  미디어 학습 노트에 한 가지 주제를 정해서 ‘주제’ 란에 적는다.</p><p>2. 사용하는 교구 및 미디어의 종류와 출처를 적는다.</p><p>3. 교구 사용법 및 미디어의 핵심 내용을 정리한다.</p><br><p>★주의사항★</p><p>장기적으로는 생활기록부 관리에 큰 도움이 되므로 분실의 위험이 없도록 포트폴리오로 만들어 철저히 보관한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="미디어 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga05.png'>";
	        document.getElementById("upperkit2").innerText="미디어 학습 노트";
	    }else if(uniquea[1]==a6){
	        document.getElementById("bestlearningmethod4").innerText="봉사활동 일지세트";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>봉사활동 기획 단계부터 활동 사후 보고서 작성까지 일련의 논스톱 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="봉사활동 일지 세트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga06.png'>";
	        document.getElementById("upperkit2").innerText="봉사활동 일지 세트";
	    }else if(uniquea[1]==a7){
	        document.getElementById("bestlearningmethod4").innerText="약점 과목 집중 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 약점이라고 생각했던 과목을 매일 동일한 시간대에 요약정리함으로써 기피 과목에 대한 친숙함을 쌓아가는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 매일 동일한 시간대에 약점 과목에 대한 반복적인 학습을 진행한다.</p><p>2. 정리 내용은 너무 어렵지 않고 범위가 많지 않아야 한다.</p><p>3. 집중해서 30분이면 해결될 수 있는 학습량이어야 한다.</p><p>예> 취침 30분 전 : 수학의 함수 문제 5개씩 풀기</p><br><p>★주의사항★</p><p>약점 과목에 대한 거부감을 없애고자 하는 학습법이므로 과도한 학습량은 오히려 해가 된다. 반드시 순간 집중하여 해결할 수 있는 학습량인 30분 ~ 1시간 정도로 정한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="약점 과목 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga07.png'>";
	        document.getElementById("upperkit2").innerText="약점 과목 학습 노트";
	    }else if(uniquea[1]==a8){
	        document.getElementById("bestlearningmethod4").innerText="오답통 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>자주 틀리는 문제는 반복점검하지 않으면 보완할 수 없다. 그러나 대부분의 학생은 오답 노트를 작성하고도 두 번 다시 보지 않는다. 이런 문제점을 개선하고자 오답통 학습법이 개발되었다.<br><br><p>★진행 순서★</p><p>1.  문제를 풀다 틀린 문제가 있으면 주어진 드리몽 페이퍼에 쓰고 1번 오답통에 넣어둔다.</p><p>2. 문득 생각나면 1번 오답통 안에서 드리몽 페이퍼를 꺼내 문제를 푼다.</p><p>3. 정답을 맞추면 2번 오답통으로 이동시킨다.</p><p>4. 같은 방법으로 3번 오답통 → 쓰레기통의 순서대로 이동한다.  </p><p>5. 혹시 오답이 나오면 있던 번호의 통에 그대로 남겨둔다.</p><br><p>★주의사항★</p><p>오답통을 눈에 띄는 장소에 배치한다. 오답통이 눈에 들어오면 문제를 풀어서 3번 오답통 → 쓰레기통으로 이동시킨다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="오답통 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga08.png'>";
	        document.getElementById("upperkit2").innerText="오답통 노트";
	    }else if(uniquea[1]==a9){
	        document.getElementById("bestlearningmethod4").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>체험 및 진로활동 기획부터 활동 사후 보고서 작성까지 일련의 체계적인 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga09.png'>";
	        document.getElementById("upperkit2").innerText="체험 및 진로활동 일지세트";
	    }else if(uniquea[1]==a10){
	        document.getElementById("bestlearningmethod4").innerText="키워드 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>빙고 노트 다음 단계 학습법으로 주로 중, 고등부 내신 기간에 이용하면 효과적이다. 학습의 체계가 잡혀있지 않은 손상된 학습자 및 감각중심 학습자나 정서관련적 학습자를 위한 핵심요약 학습법의 일종이다.<br><br><p>★진행 순서★</p><p>1.  핵심키워드를 왼쪽 줄에 일렬로 적는다.</p><p>2. 키워드만 보고 그 내용을 서술형으로 적는다.</p><p>3. 서술형을 보고 키워드를 맞추는 연습을 한다.</p><p>4. 친구들과 함께 게임형태로 진행하면 학습효과가 높아진다.</p><br><p>★주의사항★</p><p>교재에서 최대한 많은 키워드를 잡아내는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="Keyword 잡기 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga10.png'>";
	        document.getElementById("upperkit2").innerText="Keyword 잡기 노트";
	    }else if(uniquea[1]==a11){
	        document.getElementById("bestlearningmethod4").innerText="타임리밋 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습 시 긴장감이 떨어지는 학습자를 위해 개발되었다. 평상시에도 시험 기간인 것처럼 긴장감을 유도하여 짧은 기간에 미션을 완수할 수 있도록 돕는 방법이다. 단, 스트레스에 취약한 정서관련적 학습자에게는 맞지 않는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습량과 완성가능 시간을 미리 정하고 이에 맞춰 긴장감을 가지고 학습한다.</p><p>2. 너무 긴 시간을 정하면 긴장감이 떨어질 수 있으니 일주일 이내의 시간을 할당한다.</p><br><p>★주의사항★</p><p>타임리밋 학습법은 단기로 진행하는 것이 바람직하다. 목표지향 학습법과 혼동하지 않도록 주의한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="타임리밋 세트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga11.png'>";
	        document.getElementById("upperkit2").innerText="타임리밋 세트";
	    }else if(uniquea[1]==a12){
	        document.getElementById("bestlearningmethod4").innerText="포스트잇 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>자기주도학습의 과정을 보여주는 기본단계이다. 포스트잇에 중요한 부분을 수시로 필기하여 학습 역량의 흔적을 남길 수 있다. 포스트잇을 교재에 붙여두고 선생님과의 피드백 시간을 자주 가져야 효과적이다.<br><br><p>★진행 순서★</p><p>1. 수업 시간에 내용이 많아 모두 책에 정리할 수 없는 경우 포스트잇을 사용하여 추가로 필기한다.</p><p>2. 필기한 내용은 반드시 책에 붙여둔다.</p><p>3. 책의 진도가 끝나면 붙여둔 포스트잇만 모두 떼어서 벽면에 붙여두고 수시로 본다.</p><br><p>★주의사항★</p><p>포스트잇에 필기할 때는 키워드 중심으로 제목과 함께 적는다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="포스트잇 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga12.png'>";
	        document.getElementById("upperkit2").innerText="포스트잇 노트";
	    }else if(uniquea[1]==a13){
	        document.getElementById("bestlearningmethod4").innerText="필기왕 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>선생님이 불러주신 강의 내용을 모두 적는 것이 아니라 본인이 판단하기에 중요한 부분, 이해가 안 되는 부분, 질문할 부분, 추가적인 학습이 필요한 부분으로 구분하여 자신만의 필기를 해야 필기왕이 될 수 있다.<br><br><p>★진행 순서★</p><p>1.  선생님의 수업 내용 중에 중요한 부분은 ☆ 표시 / 질문은 Q 표시를 하면서 처음에는 가볍게 형광펜과 색깔펜만 사용한다. </p><p>2. 선생님의 수업 내용 중 중요한 키워드를 먼저 적어두고 적어둔 키워드를 보고 서술형으로 다시 말해본다.</p><p>3. 좀 더 발전되면 ‘커새로 파란색 학습법 카드’ 시리즈를 활용한다.</p><br><p>★주의사항★</p><p>무엇보다도 필기왕이 되기 위해서는 학습 내용의 중요도를 구분할 수 있을 정도로 선생님의 수업에 초집중한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="필기 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga13.png'>";
	        document.getElementById("upperkit2").innerText="필기 노트";
	    };
	    } else if(resultmax==hresult){
	    let resultlongtext=document.getElementById("resultlongtext").innerText="검사자는 학습의 4가지 영역 중 감정능력이 뛰어난 유형으로 학습에 있어서 확실한 보상체계만 따라준다면 공부량에 비해 높은 성적을 받을 수 있습니다.  잘 못하는 부분보다 잘하는 부분을 부각시키고 사람들이 많은 공간에서 칭찬을 해주면 동기부여가 더 잘 되는 유형이라 이점을 참고하면 학습에 큰 도움이 됩니다. 특히, 외부에서 받는 평가에 신경을 많이 쓰기 때문에 사소한 결과물이라도 현장에서 바로 긍정적인 피드백을 해주면 좋습니다.해당 능력이 발달한 학습자가 내적인 동기부여까지 잘 되어 있다면 학습효과는 배가 될 수 있으니 내적 동기부여 훈련도 함께 하는 것을 추천합니다. 효과적인 내적 동기부여 방식은 매일 학습일기를 쓰거나 스스로 칭찬 도장 및 칭찬 스티커 등의 보조 키트를 활용하는 것입니다. 또한, 문제를 풀고 난 후에는 바로 채점을 하고 빨간색 색연필로 정답 부분에 o 표시를 하는 것이 성취감을 가질 수 있어 추천하는 학습방법입니다. 학습을 등한시하는 경우에는 논리적으로 안 하는 이유를 따져 묻는 것보다는 감성에 호소하여 ‘전우애’를 보여주는 것이 효과적입니다. 결국 감정능력이 뛰어난 학습자는 공부하고자 하는 의욕이 마음에서 우러나올 수 있도록 항상 세심한 관심을 가져주는 것이 바람직합니다.";
	    let resultimg=document.getElementById("resultimg").innerHTML='<img class="resultmainimg" alt="resultmainimg" src="img/user/감정적학습자.jpg">';
	    let tendencyresultbest1=document.getElementById("tendencyresultbest1").innerText="감정적학습자";
	    let resultcharttext1=document.getElementById("resultcharttext1").innerText="감정능력";
	    let besttendency1=document.getElementById("besttendency1").innerText="감정능력자";
	    let tendencyresultbest2=document.getElementById("tendencyresultbest2").innerText="감정적학습자";
	    let besttendency2=document.getElementById("besttendency2").innerText="감정능력자";
	    document.getElementById("besttendency2").style.color="#479847";
	    document.getElementById("bestmain").style.color="#479847";
	    document.getElementById("bestmain").style.borderColor="#479847";
	    const data2 = {
	              labels: [
	                '프라미스학습',
	                '감사편지',
	                '감정일기',
	                '덩어리학습',
	                '동기부여학습',
	                '라이벌 분석 학습',
	                '롤모델 학습',
	                '바이오리듬 학습',
	                '방해 요소 제거 학습',
	                '빙고학습',
	                '스킵학습',
	                '스탬프학습',
	                '시간매니저 학습',
	                '요술펜학습'
	              ],
	              datasets: [{
	                label: '감정능력',
	                data: [h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14],
	                fill: true,
	                backgroundColor: 'rgba(219, 244, 253, 0.4)',
	                borderColor: '#4DC9F6',
	                pointBackgroundColor: '#4DC9F6',
	                pointBorderColor: '#fff',
	                pointHoverBackgroundColor: '#fff',
	                pointHoverBorderColor: '#4DC9F6'
	              }]
	            };
	    const config2 = {
	        type: 'radar',
	        data: data2,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart2 = new Chart(
	        document.getElementById('myupperChart'),
	        config2
	    );
	    if(hmax==h1){
	        document.getElementById("bestlearningmethod1").innerText="프라미스 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자 및 구조주의적 학습자에게 적합한 학습법이다. 약속을 지키려고 하는 성향이 강해 이러한 성향을 학습에 이용하면 만족할 만한 결과를 쉽게 얻을 수 있다. 단, 자존감이 떨어진 학습자들은 전혀 미션을 지키지 않기 때문에 학습법이 효과를 거두기 위해서는 학습 자존감을 높이는 것이 급선무이다.<br><br><p>★진행 순서★</p><p>1.  우선순위대로 공부할 과목을 적는다.</p><p>2. 공부 범위는 구체적으로 적는다.</p><p>3. 공부 범위에 학교 수업과 관련된 과제는 반드시 포함한다.</p><p>4. 요점정리 및 질문사항은 별도로 요약한다.</p><p>5. 학습 후에는 이행도를 표시한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="프라미스 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh01.png'>";
	        document.getElementById("upperkit1").innerText="프라미스 노트";
	    }else if(hmax==h2){
	        document.getElementById("bestlearningmethod1").innerText="감사편지";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>삶의 이유, 공부의 이유 등등 자존감이 떨어져 학습의 효과가 떨어질 때, 인생의 허무함을 느끼고 귀차니즘에 빠질 때 주변의 소중한 사람들을 돌아보면서 매사 최선을 다해야 하는 이유를 찾을 수 있다. 학습동기부여의 한 방법으로 학습에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  스스로 동기부여가 안되고 삶의 방향성이 흔들릴 때 편지를 쓸 사람을 찾는다.</p><p>2. 그 사람에게 나는 무엇을 해줄 수 있는지 고민한다.</p><p>3. 열심히 살아갈 이유, 학습의 이유를 편지글 속에 포함시킨다.</p><br><p>★주의사항★</p><p>학습동기부여 방식은 여러 가지가 있으나 이타심이 학습에 미치는 영향을 반영하여 감사편지 방식을 활용하기도 한다. 사랑하는 사람들에게 감사 편지를 쓸 때 그들을 위해 해줄 수 있는 일 중 성적 향상이 포함되는 경우 도 있다. 이때 자존감도 높아지고 학습 효과도 볼 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="감사편지";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh02.png'>";
	        document.getElementById("upperkit1").innerText="감사편지";
	    }else if(hmax==h3){
	        document.getElementById("bestlearningmethod1").innerText="감정일기";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자에게 있어 감정의 기복은 학습의 가장 큰 방해원인으로 최대한 빨리 안정을 찾아야 한다. 오늘 받은 나의 상처나 속상한 감정들을 솔직히 표현하고 원인을 분석하여 대책을 마련하는 것이 학습의 효율성을 높이는 방법이다.<br><br><p>★진행 순서★</p><p>1.  감정날씨에 나의 감정을 적는다.</p><p>2. 감정을 느끼게 된 배경을 적는다.</p><p>3. 감정의 전개 과정을 적는다.</p><p>4. 원인에 대한 대책을 고민해보고, 생각나는 대로 적는다.</p><p>5. 위의 과정 속에서 감정이 자연스럽게 안정된다.</p><br><p>★주의사항★</p><p>솔직한 감정을 적으며 나름대로 원인을 분석하려고 고민해야 한다. 행복 한 날보다 우울하거나 속상한 날에 감정일기를 적는 것이 이상적이다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="감정일기";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh03.png'>";
	        document.getElementById("upperkit1").innerText="감정일기";
	    }else if(hmax==h4){
	        document.getElementById("bestlearningmethod1").innerText="덩어리 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>주요 과목 학습을 습관화하기 위해 학습량을 미리 계획하고 그에 대한 이행을 실천하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  덩어리 다이어리 범위란에 소제목을 적는다.</p><p>2. 구체적인 미션을 상세히 적는다.</p><p>3. 완성도 체크 시 별이 1개 이하인 경우 다음 날에도 동일한 미션을 한다.</p><br><p>★주의사항★</p><p>주요 과목 학습을 습관화하고자 함이니 적은 양이라도 지속적으로 매일 체크할 수 있도록 미션을 정한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="덩어리 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh04.png'>";
	        document.getElementById("upperkit1").innerText="덩어리 다이어리";
	    }else if(hmax==h5){
	        document.getElementById("bestlearningmethod1").innerText="동기부여 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>동기부여 학습은 일일 학습량을 달성하기 위해 하고 싶은 일을 일시적으로 보류하고 인내와 끈기의 훈련을 하는 생활 관리법이자 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  왼쪽 박스 구름 속에는 하고 싶은 것들을 적는다.</p><p>2. 오른쪽 박스 구름 속에는 해야 할 학습 범위를 상세히 적는다.</p><p>3. 오른쪽 박스의 해야 할 학습 범위의 성취도가 80% 가 넘으면 왼쪽 박스 구름 속에 적은 것들을 순차적으로 진행한다.</p><br><p>★주의사항★</p><p>할 일과 하고 싶은 일을 너무 많이 적으면 집중력이 흐트러질 수 있으므로  반드시 2 ~ 3개의 내용만 적는다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="동기부여 학습 일지";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh05.png'>";
	        document.getElementById("upperkit1").innerText="동기부여 학습 일지";
	    }else if(hmax==h6){
	        document.getElementById("bestlearningmethod1").innerText="라이벌 분석 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>평소 동기부여가 잘되지 않는 학습자를 위한 단기 학습 전략으로서 주변에서 쉽게 대상을 찾을 수 있어 활용도가 높다. 자주 학습 자극을 받을 수 있으며 시험 기간에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  라이벌이 가지고 있는 장점을 내가 가지고 있는지에 대한 유사도 체크를 한다.</p><p>2. 라이벌의 장점을 구체적으로 적는다.</p><p>3. 내가 적용할 부분을 자세히 구상한다.</p><p>4. 라이벌의 단점을 구체적으로 정리하면서 나에게도 이런 성향이 있는지 살펴본다.</p><p>5. 3번의 적용할 부분에 대해 차트 아래 부분의 체크박스에 O, △, X 를 표시하고 총점이 80점 이하가 되면 다음 달에도 동일한 차트를 이용한다.</p><br><p>★주의사항★</p><p>라이벌이 인식하지 못하도록 차트를 조심스럽게 관리한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="라이벌 분석 차트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh06.png'>";
	        document.getElementById("upperkit1").innerText="라이벌 분석 차트";
	    }else if(hmax==h7){
	        document.getElementById("bestlearningmethod1").innerText="롤모델 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>롤모델을 선정함으로써 학습적인 면뿐만 아니라 비학습적인 면까지도 구체적인 목표를 세워 성과를 쉽게 확인할 수 있다. 처음부터 무형의 성과를 얻기에는 무리가 있는 직관적 학습자 및 정서중립적 학습자를 위한 효과적인 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  롤모델을 선정하고 선정 이유를 밝힌다.</p><p>2. 학습면과 생활면에 각각 배울 점을 구체적으로 적는다.</p><p>3. 기적의 28일 동안 배울 점을 실천함으로써 구체적인 목표를 달성한다.</p><p>4. O, △, X 를 표시해가면서 이행도를 체크하며 총점이 70점 이하인 경우 다음 달에 이어서 미션을 이행한다.</p><br><p>★주의사항★</p><p>롤모델의 장점이 닮을 만한 장점이어야 하며 구체적인 특징을 잡아내야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="롤모델 플래너";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh07.png'>";
	        document.getElementById("upperkit1").innerText="롤모델 플래너";
	    }else if(hmax==h8){
	        document.getElementById("bestlearningmethod1").innerText="바이오리듬 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>하루 동안의 기록되는 바이오리듬 중 ‘지성’ 의 영역에서 가장 높은 시간대를 찾아 그 시간대만이라도 학습을 유도하는 방식이다. 손상된 학습자를 위한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  바이오리듬 체크 어플리케이션을 통해 지성이 높은 시간대를 찾는다.</p><p>2. 시간대와 학습 분량을 적는다.</p><p>3. 반드시 이행할 수 있는 범위 만큼만 적는다.</p><br><p>★주의사항★</p><p>공부를 등한시하는 학생들에게 단 몇 시간이라도 효율이 높은 시간대를 미리 알려주고 학습 효과를 높이려는 전략이다. 체크된 바이오리듬에서는 최소의 공부 시간만 잡아주므로 시간이 정해지면 반드시 학습을 하여야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="바이오리듬 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh08.png'>";
	        document.getElementById("upperkit1").innerText="바이오리듬 다이어리";
	    }else if(hmax==h9){
	        document.getElementById("bestlearningmethod1").innerText="방해 요소 제거 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습자라면 누구나 학습의 방해를 받는다. 하지만 자기 관리가 뛰어난 학습자는 사전에 계획을 세우고 학습에 방해가 되는 요소는 전략적으로 멀리한다.<br><br><p>★진행 순서★</p><p>1.  학습에 방해되는 요소를 모두 적는다.</p><p>2. 제거 방법을 구체적으로 적고 실천한다.</p><p>3. 얼마나 실천하였는지 기입하고 일정 기간이 지나면 반성의 시간을 갖는다.</p><p>4. 방해 요소를 제거하지 못한 원인을 분석하고 끊임없이 결과를 피드백한다.</p><br><p>★주의사항★</p><p>구체적으로 적어야만 학습의 나쁜 습관도 고칠 수 있고 방해 요소도 제거 할 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="방해 요소 제거 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh09.png'>";
	        document.getElementById("upperkit1").innerText="방해 요소 제거 학습 노트";
	    }else if(hmax==h10){
	        document.getElementById("bestlearningmethod1").innerText="빙고 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>키워드 학습법과 유사하지만 저학년을 대상으로 하는 게임식 학습 관리법이다. 학교 모둠활동 시 적용하면 더욱 좋다.<br><br><p>★진행 순서★</p><p>1. 학습 범위를 정하고 설명란에 설명을 적는다.(빙고판을 비워둔다)</p><p>2. 친구들끼리 서로 돌려가며 빙고판을 채운다.</p><p>3. 출제자가 정답을 써가며 채점한다.</p><p>4. 점수가 제일 낮은 학생이 제일 높은 학생의 소원을 들어준다.</p><br><p>★주의사항★</p><p>시험 직전날 다양한 문제에 적응하기 위해 친구들끼리 문제를 내보고 답해보면 자기점검도 되면서 사고력의 확장도 이룰 수 있다. 문제를 출제 하는 사람의 사고력이 크게 향상되므로 성실하게 임한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="빙고 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh10.png'>";
	        document.getElementById("upperkit1").innerText="빙고 노트";
	    }else if(hmax==h11){
	        document.getElementById("bestlearningmethod1").innerText="스킵 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>완벽주의 학습자를 위한 학습전략으로서 학습 범위가 광범위한 상태에서 더 이상 진전이 없는 단점을 보완하고자 만들어진 학습법이다.<br><br><p>★진행 순서★</p><p>1.  내용이 너무 어렵거나 범위가 많아 예상진도만큼 진행되지 않음을 발견하면 Skip 도장과 보드를 활용한다.</p><p></p><p>2. 교재에 드리몽 Skip 도장을 찍는다.</p><p>3. 스터디보드의 Skip 란을 활용한다. (드리몽의 스터디보드 활용)</p><p>4. 학습 다이어리에 체크해서 이후에 다시 보도록 상세히 적는다.(다이어리 활용)</p><p>5. Skip 표시된 내용만 일주일 후에 정리하고 질문을 만든다.</p><p>6. 검토 과정 중에 암기할 사항이 생기면 드리몽 포스트잇을 사용하여 지속적으로 반복 학습한다. (드리몽 포스트잇 활용)</p><br><p>★주의사항★</p><p>직관주의 학습자가 사용하면 오히려 학습습관이 망가질 수 있으므로 지양한다. 꼼꼼히 학습하지 않은 학습자가 학습 시 어렵다고 생각될 때 무조건 ‘나중에 해야지’ 하고 미루면 문제가 생길 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="드리몽 포스트잇";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh11.png'>";
	        document.getElementById("upperkit1").innerText="드리몽 포스트잇";
	    }else if(hmax==h12){
	        document.getElementById("bestlearningmethod1").innerText="스탬프 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>평소 필기의 습관이 다져지지 않은 학습자를 위해 개발된 학습 방법으로  Skip, 성실왕, 최고왕, ☆ 도장으로 학습 내용 중요도와 학업성취도를 체크하면서 지속적으로 학습 피드백을 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 질문거리나 이해가 부족한 부분이 생기면 Skip 도장을 찍고 복습 시간에 다시 본다.</p><p>2. 학습의 동기부여 차원에서 하루 할당량이 완료되면 최고왕, 성실왕 도장을 찍는다.</p><p>3. ☆ 도장은 성취도란을 채우는데 사용되며 저학년일수록 동기부여 효과가 크다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="드리몽 도장세트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh12.png'>";
	        document.getElementById("upperkit1").innerText="드리몽 도장세트";
	    }else if(hmax==h13){
	        document.getElementById("bestlearningmethod1").innerText="시간 매니저 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>선호도에 따라 학습 과목 및 학습 분량을 불균형하게 계획하고 학습 편식을 하는 학습자를 위해 개발된 관리법이다. 균형 잡힌 식단처럼 균형 잡힌 학습 계획을 세우고 실천하는 연습을 하면 생활 관리에도 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  시간 매니저 노트를 활용해 기피 및 취약 과목 (활동) 은 “(+) 가 필요해”에 정리한다.</p><p>2. 필요 이상으로 학습 시간이 배정된 과목은 “(-) 가 필요해”  에 정리한다.</p><p>3. 진행상황을 보고 + 와 - 를 적절히 조율하여 전과목에서 우수한 성적을 거둘 수 있게 습관화한다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="시간 매니저 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh13.png'>";
	        document.getElementById("upperkit1").innerText="시간 매니저 학습법";
	    }else if(hmax==h14){
	        document.getElementById("bestlearningmethod1").innerText="요술펜 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>문제를 다량으로 푸는 것보다 한 문제를 여러 번 풀어 그 개념을 완벽히 이해하는 것이 더 중요할 때도 있다. 이 때 요술펜을 사용하면 불빛을 비출 때만 답이 보이므로 지우지 않아도 여러 번 다시 풀 수 있으며, 학습에 흥미를 갖도록 하는데에도 효과적이다.<br><br><p>★진행 순서★</p><p>1.  답을 체크할 때 요술펜으로 적는다.</p><p>2. 요술펜으로 표시한 부분에 빛을 비추면 답이 보인다.</p><p>3. 첫 번째 적은 답이 무엇인지 알 수 있으므로 학습자의 최초 허점도 쉽게 체크할 수 있다.</p><br><p>★주의사항★</p><p>요술펜 표시는 물음표 바로 옆에 표시해야 답을 찾는데 시간이 걸리지 않는다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="요술펜 세트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh14.png'>";
	        document.getElementById("upperkit1").innerText="요술펜 세트";
	    };
	    if(uniqueh[1]==h1){
	        document.getElementById("bestlearningmethod4").innerText="프라미스 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자 및 구조주의적 학습자에게 적합한 학습법이다. 약속을 지키려고 하는 성향이 강해 이러한 성향을 학습에 이용하면 만족할 만한 결과를 쉽게 얻을 수 있다. 단, 자존감이 떨어진 학습자들은 전혀 미션을 지키지 않기 때문에 학습법이 효과를 거두기 위해서는 학습 자존감을 높이는 것이 급선무이다.<br><br><p>★진행 순서★</p><p>1.  우선순위대로 공부할 과목을 적는다.</p><p>2. 공부 범위는 구체적으로 적는다.</p><p>3. 공부 범위에 학교 수업과 관련된 과제는 반드시 포함한다.</p><p>4. 요점정리 및 질문사항은 별도로 요약한다.</p><p>5. 학습 후에는 이행도를 표시한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="프라미스 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh01.png'>";
	        document.getElementById("upperkit2").innerText="프라미스 노트";
	    }else if(uniqueh[1]==h2){
	        document.getElementById("bestlearningmethod4").innerText="감사편지";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>삶의 이유, 공부의 이유 등등 자존감이 떨어져 학습의 효과가 떨어질 때, 인생의 허무함을 느끼고 귀차니즘에 빠질 때 주변의 소중한 사람들을 돌아보면서 매사 최선을 다해야 하는 이유를 찾을 수 있다. 학습동기부여의 한 방법으로 학습에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  스스로 동기부여가 안되고 삶의 방향성이 흔들릴 때 편지를 쓸 사람을 찾는다.</p><p>2. 그 사람에게 나는 무엇을 해줄 수 있는지 고민한다.</p><p>3. 열심히 살아갈 이유, 학습의 이유를 편지글 속에 포함시킨다.</p><br><p>★주의사항★</p><p>학습동기부여 방식은 여러 가지가 있으나 이타심이 학습에 미치는 영향을 반영하여 감사편지 방식을 활용하기도 한다. 사랑하는 사람들에게 감사 편지를 쓸 때 그들을 위해 해줄 수 있는 일 중 성적 향상이 포함되는 경우 도 있다. 이때 자존감도 높아지고 학습 효과도 볼 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="감사편지";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh02.png'>";
	        document.getElementById("upperkit2").innerText="감사편지";
	    }else if(uniqueh[1]==h3){
	        document.getElementById("bestlearningmethod4").innerText="감정일기";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자에게 있어 감정의 기복은 학습의 가장 큰 방해원인으로 최대한 빨리 안정을 찾아야 한다. 오늘 받은 나의 상처나 속상한 감정들을 솔직히 표현하고 원인을 분석하여 대책을 마련하는 것이 학습의 효율성을 높이는 방법이다.<br><br><p>★진행 순서★</p><p>1.  감정날씨에 나의 감정을 적는다.</p><p>2. 감정을 느끼게 된 배경을 적는다.</p><p>3. 감정의 전개 과정을 적는다.</p><p>4. 원인에 대한 대책을 고민해보고, 생각나는 대로 적는다.</p><p>5. 위의 과정 속에서 감정이 자연스럽게 안정된다.</p><br><p>★주의사항★</p><p>솔직한 감정을 적으며 나름대로 원인을 분석하려고 고민해야 한다. 행복 한 날보다 우울하거나 속상한 날에 감정일기를 적는 것이 이상적이다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="감정일기";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh03.png'>";
	        document.getElementById("upperkit2").innerText="감정일기";
	    }else if(uniqueh[1]==h4){
	        document.getElementById("bestlearningmethod4").innerText="덩어리 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>주요 과목 학습을 습관화하기 위해 학습량을 미리 계획하고 그에 대한 이행을 실천하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  덩어리 다이어리 범위란에 소제목을 적는다.</p><p>2. 구체적인 미션을 상세히 적는다.</p><p>3. 완성도 체크 시 별이 1개 이하인 경우 다음 날에도 동일한 미션을 한다.</p><br><p>★주의사항★</p><p>주요 과목 학습을 습관화하고자 함이니 적은 양이라도 지속적으로 매일 체크할 수 있도록 미션을 정한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="덩어리 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh04.png'>";
	        document.getElementById("upperkit2").innerText="덩어리 다이어리";
	    }else if(uniqueh[1]==h5){
	        document.getElementById("bestlearningmethod4").innerText="동기부여 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>동기부여 학습은 일일 학습량을 달성하기 위해 하고 싶은 일을 일시적으로 보류하고 인내와 끈기의 훈련을 하는 생활 관리법이자 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  왼쪽 박스 구름 속에는 하고 싶은 것들을 적는다.</p><p>2. 오른쪽 박스 구름 속에는 해야 할 학습 범위를 상세히 적는다.</p><p>3. 오른쪽 박스의 해야 할 학습 범위의 성취도가 80% 가 넘으면 왼쪽 박스 구름 속에 적은 것들을 순차적으로 진행한다.</p><br><p>★주의사항★</p><p>할 일과 하고 싶은 일을 너무 많이 적으면 집중력이 흐트러질 수 있으므로  반드시 2 ~ 3개의 내용만 적는다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="동기부여 학습 일지";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh05.png'>";
	        document.getElementById("upperkit2").innerText="동기부여 학습 일지";
	    }else if(uniqueh[1]==h6){
	        document.getElementById("bestlearningmethod4").innerText="라이벌 분석 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>평소 동기부여가 잘되지 않는 학습자를 위한 단기 학습 전략으로서 주변에서 쉽게 대상을 찾을 수 있어 활용도가 높다. 자주 학습 자극을 받을 수 있으며 시험 기간에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  라이벌이 가지고 있는 장점을 내가 가지고 있는지에 대한 유사도 체크를 한다.</p><p>2. 라이벌의 장점을 구체적으로 적는다.</p><p>3. 내가 적용할 부분을 자세히 구상한다.</p><p>4. 라이벌의 단점을 구체적으로 정리하면서 나에게도 이런 성향이 있는지 살펴본다.</p><p>5. 3번의 적용할 부분에 대해 차트 아래 부분의 체크박스에 O, △, X 를 표시하고 총점이 80점 이하가 되면 다음 달에도 동일한 차트를 이용한다.</p><br><p>★주의사항★</p><p>라이벌이 인식하지 못하도록 차트를 조심스럽게 관리한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="라이벌 분석 차트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh06.png'>";
	        document.getElementById("upperkit2").innerText="라이벌 분석 차트";
	    }else if(uniqueh[1]==h7){
	        document.getElementById("bestlearningmethod4").innerText="롤모델 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>롤모델을 선정함으로써 학습적인 면뿐만 아니라 비학습적인 면까지도 구체적인 목표를 세워 성과를 쉽게 확인할 수 있다. 처음부터 무형의 성과를 얻기에는 무리가 있는 직관적 학습자 및 정서중립적 학습자를 위한 효과적인 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  롤모델을 선정하고 선정 이유를 밝힌다.</p><p>2. 학습면과 생활면에 각각 배울 점을 구체적으로 적는다.</p><p>3. 기적의 28일 동안 배울 점을 실천함으로써 구체적인 목표를 달성한다.</p><p>4. O, △, X 를 표시해가면서 이행도를 체크하며 총점이 70점 이하인 경우 다음 달에 이어서 미션을 이행한다.</p><br><p>★주의사항★</p><p>롤모델의 장점이 닮을 만한 장점이어야 하며 구체적인 특징을 잡아내야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="롤모델 플래너";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh07.png'>";
	        document.getElementById("upperkit2").innerText="롤모델 플래너";
	    }else if(uniqueh[1]==h8){
	        document.getElementById("bestlearningmethod4").innerText="바이오리듬 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>하루 동안의 기록되는 바이오리듬 중 ‘지성’ 의 영역에서 가장 높은 시간대를 찾아 그 시간대만이라도 학습을 유도하는 방식이다. 손상된 학습자를 위한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  바이오리듬 체크 어플리케이션을 통해 지성이 높은 시간대를 찾는다.</p><p>2. 시간대와 학습 분량을 적는다.</p><p>3. 반드시 이행할 수 있는 범위 만큼만 적는다.</p><br><p>★주의사항★</p><p>공부를 등한시하는 학생들에게 단 몇 시간이라도 효율이 높은 시간대를 미리 알려주고 학습 효과를 높이려는 전략이다. 체크된 바이오리듬에서는 최소의 공부 시간만 잡아주므로 시간이 정해지면 반드시 학습을 하여야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="바이오리듬 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh08.png'>";
	        document.getElementById("upperkit2").innerText="바이오리듬 다이어리";
	    }else if(uniqueh[1]==h9){
	        document.getElementById("bestlearningmethod4").innerText="방해 요소 제거 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습자라면 누구나 학습의 방해를 받는다. 하지만 자기 관리가 뛰어난 학습자는 사전에 계획을 세우고 학습에 방해가 되는 요소는 전략적으로 멀리한다.<br><br><p>★진행 순서★</p><p>1.  학습에 방해되는 요소를 모두 적는다.</p><p>2. 제거 방법을 구체적으로 적고 실천한다.</p><p>3. 얼마나 실천하였는지 기입하고 일정 기간이 지나면 반성의 시간을 갖는다.</p><p>4. 방해 요소를 제거하지 못한 원인을 분석하고 끊임없이 결과를 피드백한다.</p><br><p>★주의사항★</p><p>구체적으로 적어야만 학습의 나쁜 습관도 고칠 수 있고 방해 요소도 제거 할 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="방해 요소 제거 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh09.png'>";
	        document.getElementById("upperkit2").innerText="방해 요소 제거 학습 노트";
	    }else if(uniqueh[1]==h10){
	        document.getElementById("bestlearningmethod4").innerText="빙고 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>키워드 학습법과 유사하지만 저학년을 대상으로 하는 게임식 학습 관리법이다. 학교 모둠활동 시 적용하면 더욱 좋다.<br><br><p>★진행 순서★</p><p>1. 학습 범위를 정하고 설명란에 설명을 적는다.(빙고판을 비워둔다)</p><p>2. 친구들끼리 서로 돌려가며 빙고판을 채운다.</p><p>3. 출제자가 정답을 써가며 채점한다.</p><p>4. 점수가 제일 낮은 학생이 제일 높은 학생의 소원을 들어준다.</p><br><p>★주의사항★</p><p>시험 직전날 다양한 문제에 적응하기 위해 친구들끼리 문제를 내보고 답해보면 자기점검도 되면서 사고력의 확장도 이룰 수 있다. 문제를 출제 하는 사람의 사고력이 크게 향상되므로 성실하게 임한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="빙고 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh10.png'>";
	        document.getElementById("upperkit2").innerText="빙고 노트";
	    }else if(uniqueh[1]==h11){
	        document.getElementById("bestlearningmethod4").innerText="스킵 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>완벽주의 학습자를 위한 학습전략으로서 학습 범위가 광범위한 상태에서 더 이상 진전이 없는 단점을 보완하고자 만들어진 학습법이다.<br><br><p>★진행 순서★</p><p>1.  내용이 너무 어렵거나 범위가 많아 예상진도만큼 진행되지 않음을 발견하면 Skip 도장과 보드를 활용한다.</p><p></p><p>2. 교재에 드리몽 Skip 도장을 찍는다.</p><p>3. 스터디보드의 Skip 란을 활용한다. (드리몽의 스터디보드 활용)</p><p>4. 학습 다이어리에 체크해서 이후에 다시 보도록 상세히 적는다.(다이어리 활용)</p><p>5. Skip 표시된 내용만 일주일 후에 정리하고 질문을 만든다.</p><p>6. 검토 과정 중에 암기할 사항이 생기면 드리몽 포스트잇을 사용하여 지속적으로 반복 학습한다. (드리몽 포스트잇 활용)</p><br><p>★주의사항★</p><p>직관주의 학습자가 사용하면 오히려 학습습관이 망가질 수 있으므로 지양한다. 꼼꼼히 학습하지 않은 학습자가 학습 시 어렵다고 생각될 때 무조건 ‘나중에 해야지’ 하고 미루면 문제가 생길 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="드리몽 포스트잇";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh11.png'>";
	        document.getElementById("upperkit2").innerText="드리몽 포스트잇";
	    }else if(uniqueh[1]==h12){
	        document.getElementById("bestlearningmethod4").innerText="스탬프 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>평소 필기의 습관이 다져지지 않은 학습자를 위해 개발된 학습 방법으로  Skip, 성실왕, 최고왕, ☆ 도장으로 학습 내용 중요도와 학업성취도를 체크하면서 지속적으로 학습 피드백을 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 질문거리나 이해가 부족한 부분이 생기면 Skip 도장을 찍고 복습 시간에 다시 본다.</p><p>2. 학습의 동기부여 차원에서 하루 할당량이 완료되면 최고왕, 성실왕 도장을 찍는다.</p><p>3. ☆ 도장은 성취도란을 채우는데 사용되며 저학년일수록 동기부여 효과가 크다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="드리몽 도장세트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh12.png'>";
	        document.getElementById("upperkit2").innerText="드리몽 도장세트";
	    }else if(uniqueh[1]==h13){
	        document.getElementById("bestlearningmethod4").innerText="시간 매니저 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>선호도에 따라 학습 과목 및 학습 분량을 불균형하게 계획하고 학습 편식을 하는 학습자를 위해 개발된 관리법이다. 균형 잡힌 식단처럼 균형 잡힌 학습 계획을 세우고 실천하는 연습을 하면 생활 관리에도 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  시간 매니저 노트를 활용해 기피 및 취약 과목 (활동) 은 “(+) 가 필요해”에 정리한다.</p><p>2. 필요 이상으로 학습 시간이 배정된 과목은 “(-) 가 필요해”  에 정리한다.</p><p>3. 진행상황을 보고 + 와 - 를 적절히 조율하여 전과목에서 우수한 성적을 거둘 수 있게 습관화한다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="시간 매니저 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh13.png'>";
	        document.getElementById("upperkit2").innerText="시간 매니저 학습법";
	    }else if(uniqueh[1]==h14){
	        document.getElementById("bestlearningmethod4").innerText="요술펜 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>문제를 다량으로 푸는 것보다 한 문제를 여러 번 풀어 그 개념을 완벽히 이해하는 것이 더 중요할 때도 있다. 이 때 요술펜을 사용하면 불빛을 비출 때만 답이 보이므로 지우지 않아도 여러 번 다시 풀 수 있으며, 학습에 흥미를 갖도록 하는데에도 효과적이다.<br><br><p>★진행 순서★</p><p>1.  답을 체크할 때 요술펜으로 적는다.</p><p>2. 요술펜으로 표시한 부분에 빛을 비추면 답이 보인다.</p><p>3. 첫 번째 적은 답이 무엇인지 알 수 있으므로 학습자의 최초 허점도 쉽게 체크할 수 있다.</p><br><p>★주의사항★</p><p>요술펜 표시는 물음표 바로 옆에 표시해야 답을 찾는데 시간이 걸리지 않는다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="요술펜 세트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh14.png'>";
	        document.getElementById("upperkit2").innerText="요술펜 세트";
	    };

	    }else if(resultmax==rresult){
	    let resultlongtext=document.getElementById("resultlongtext").innerText="검사자는 학습의 4가지 영역 중 습관 능력이 뛰어난 학습자입니다. 간혹 고지식하다는 이야기를 들을 수는 있지만 안정적인 최상위권 학습자가 되기에 매우 유리한 유형입니다. 단, 바른 학습 습관을 어렸을 때부터 다져줘야 효과를 크게 볼 수 있습니다. 어린 시절 학습과 동떨어진 활동을 많이 하게 되면 학년이 올라갈수록 책상 앞에 오래 앉아있기가 어려운 유형이라 가정에서는 좋은 학습환경을 조성하는 데 신경을 써야 합니다. 자신에게 맞는 효율적인 학습법만 찾고 초등학생 시절부터 바른 공부습관만 생긴다면 고학년이 되어서 우등생이 될 확률이 매우 높습니다. 관건은 어렸을 때부터 바른 공부습관을 갖게 하는 것이 필요한데 아래 주어진 팁 4가지를 과목에 관계없이 적용하면 높은 효과를 보게 됩니다.① 학습 목표량을 정하고 학습하기 (단순히 학습시간을 채우기보다는 일정량을 정하여 속도감과 긴장감을 갖게 하는 것이 좋습니다) ② 학습내용에 대한 재검하기 (개념학습을 한 후에는 요약 내용을 다시 메모하고 문제를 푼 후에는 채점과 오답정리의 과정까지 진행해야 합니다) ③ 주요 내용 반복하기 (개념 요약과 정리한 오답을 주에 1회 반복하는 시간을 가집니다) ④ 공부 자존감 가지기 (자신 있게 발표하면서 자신의 허점을 드러내고 최대한 빨리 보완하는 것이 1% 오답을 줄일 수 있는 방법이므로 틀리는 것에 대한 두려움을 버려야 합니다)";
	    let resultimg=document.getElementById("resultimg").innerHTML='<img class="resultmainimg" alt="resultmainimg" src="img/user/습관적학습자.jpg">';
	    let tendencyresultbest1=document.getElementById("tendencyresultbest1").innerText="습관적학습자";
	    let resultcharttext1=document.getElementById("resultcharttext1").innerText="습관능력";
	    let besttendency1=document.getElementById("besttendency1").innerText="습관능력자";
	    let tendencyresultbest2=document.getElementById("tendencyresultbest2").innerText="습관적학습자";
	    let besttendency2=document.getElementById("besttendency2").innerText="습관능력자";
	    document.getElementById("besttendency2").style.color="#FFAB65";
	    document.getElementById("bestmain").style.color="#FFAB65";
	    document.getElementById("bestmain").style.borderColor="#FFAB65";
	    const data2 = {
	        labels: [
	            '깜지학습',
	            '녹음학습',
	            '무한반복학습',
	            '샤우팅활용',
	            '엑티비티학습',
	            '에빙하우스 보카학습'
	        ],
	        datasets: [{
	            label: '습관능력',
	            data: [r1, r2, r3, r4, r5, r6],
	            fill: true,
	            backgroundColor: 'rgba(219, 244, 253, 0.4)',
	            borderColor: '#4DC9F6',
	            pointBackgroundColor: '#4DC9F6',
	            pointBorderColor: '#fff',
	            pointHoverBackgroundColor: '#fff',
	            pointHoverBorderColor: '#4DC9F6'
	        }]
	    };
	    const config2 = {
	        type: 'radar',
	        data: data2,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart2 = new Chart(
	        document.getElementById('myupperChart'),
	        config2
	    );

	    if(rmax==r1){
	        document.getElementById("bestlearningmethod1").innerText="깜지 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>Input 과정에서 눈으로만 훑는 학습법을 사용한 학습자들이 단순한 깜지 채우기 Output 과정을 통해서도 학습의 효과를 높일 수 있다는 원리에서 착안한 학습법이다. ‘노력 이외에는 공부에 왕도가 없다’ 라는 메시지를 전달하면서 끈기와 성실함을 높이게 된다.<br><br><p>★진행 순서★</p><p>1.  주요 내용의 제목을 ‘깜지칸’ 란에 적는다.</p><p>2. 미리 적어 둔 주요 핵심 내용을 여러 번 반복해서 적는다.</p><p>3. 일주일 후 반드시 상단의 깜지 내용을 다시 한 번 정리하여 단기 기억을 장기 기억으로 전환한다.</p><br><p>★주의사항★</p><p>백지가 꽉 차도록 빽빽하게 적고 입 밖으로 여러 번 소리를 내야 효과를 볼 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="깜지 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr01.png'>";
	        document.getElementById("upperkit1").innerText="깜지 노트";
	    }else if(rmax==r2){
	        document.getElementById("bestlearningmethod1").innerText="녹음 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>당일 학습한 주요 내용을 다시 한 번 학습자의 목소리로 녹음하여 복습하는 습관을 만들고, 그 내용을 재청취함으로써 이해가 부족한 부분과 꼭 암기해야 하는 중요한 부분을 확실히 정리하는 학습 관리법이다. 주로 개방적인 학습자나 감각일반주의 학습자에게 효과적인 학습법이다. 진로분야가 교육계통인 학습자에게 추천하는 방법이다.<br><br><p>★진행 순서★</p><p>1.  당일 배운 내용을 요약정리한다.</p><p>2. 요약정리한 내용 중에 녹음할 내용이 어디인지 표시한다.</p><p>3. 녹음 내용 재청취 시 어색하지 않도록 핵심 내용을 여러 번 반복하여 읽는다. </p><p>4. 주변의 방해가 없는 조용한 곳에서 실제 녹음을 진행한다.</p><p>5. 반드시 녹음 후 재청취할 시간을 가지며 이해도도 표시한다.</p><p>6. 재청취 시 이해도가 1인 경우 담당선생님에게 반드시 질문을 한다.</p><br><p>★주의사항★</p><p>학습한 내용을 눈으로만 보는 학습자에게 매우 효과적인 방법이나 수줍음이 많은 학생들은 초반에 어려움을 호소한다. 어차피 스스로에게 들려 주는 음성이니 부끄러워 말고 습관이 될 때까지 매일 조금씩이라도 실천 하는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="녹음 기록표";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr02.png'>";
	        document.getElementById("upperkit1").innerText="녹음 기록표";
	    }else if(rmax==r3){
	        document.getElementById("bestlearningmethod1").innerText="무한 반복 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>한 번에 암기되지 않는 중요한 공식이나 이론 및 개념정리를 무한 반복 체크 스케줄러에 적어 두었다가 가볍게 반복하면서 자신도 모르게 장기 기억으로 전환하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  스케줄러 상단에 과목과 영역을 적는다.</p><p>2. ‘로테이션 내용 요약’ 란에는 될 수 있는 한 상세히 요약하여 교과서 없이도 충분히 이해할 수 있도록 적는다.</p><p>3. 반복할 때마다 날짜를 기입하고 7번째까지 반복되면 종료한다.</p><br><p>★주의사항★</p><p>로테이션 내용을 상세히 적어야 스케줄러만으로 완벽한 학습을 할 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="무한 반복 체크 스케줄러";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr03.png'>";
	        document.getElementById("upperkit1").innerText="무한 반복 체크 스케줄러";
	    }else if(rmax==r4){
	        document.getElementById("bestlearningmethod1").innerText="샤우팅 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>언어학적 학습자 (시각보다는 청각과 촉각에 의해서 자극을 더 많이 받는 학습자) 에게 적합하다.<br><br><p>★진행 순서★</p><p>1.  옹알거리는 소리가 아니라 실제로 데시벨을 높여 외치듯 학습한다.</p><p>2. 빠르게 학습한다.</p><br><p>★주의사항★</p><p>‘티칭 학습법’ 은 누군가에게 선생님처럼 가르치면서 내용을 터득하는 방식인 반면에 ‘샤우팅 학습법’ 은 단순히 암기할 내용을 크게 외치며 가속화시키는 방법으로서 암기의 속도를 높이고자 사용하는 학습 관리 법이다. 속도가 빠르고 소리가 커야 더욱 효과적이다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="없음";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr14.png'>";
	        document.getElementById("upperkit1").innerText="없음";
	    }else if(rmax==r5){
	        document.getElementById("bestlearningmethod1").innerText="액티비티 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>개방적 학습자와 감각일반주의 학습자를 위한 학습 관리법이다. 주로 한자리에 앉아있는 것보다 움직이면서 학습하는 것을 선호하는 학습자나 지하철 및 버스 안에서 집중을 더 잘하는 학습자에게 적합하지만, 정적인 학습자들의 성향을 적극적으로 바꿔주면서 학습 습관도 개선할 수 있는 좋은 학습법이기도 하다.<br><br><p>★진행 순서★</p><p>1.  차분히 앉아서 책장을 넘기는 것보다 다양한 색깔펜을 이용하여 열정적으로 적는다.</p><p>2. 수업 시간에 자주 손을 들고 질문하며 수시로 발표의 기회를 갖는다.</p><br><p>★주의사항★</p><p>개방적 학습자, 감각일반주의 학습자의 성향이지만 소심하거나 부끄러움 을 많이 타는 학습자인 경우 타고난 학습성향대로 학습 능력을 발휘하기 힘들다. 이 때에는 좀 더 자신감을 가지고 수업에 참여하면 훨씬 수월하게 좋은 성적을 거둘 수 있을 것이다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="없음";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr08.png'>";
	        document.getElementById("upperkit1").innerText="없음";
	    }else if(rmax==r6){
	        document.getElementById("bestlearningmethod1").innerText="에빙하우스 보카학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>영단어와 한글 뜻을 7일 동안 시간차를 두고 반복 학습하는 방식으로서, 무리해서 단어를 외우지 않아도 장기기억으로 전환된다는 ‘에빙하우스 망각곡선’ 이론을 이용한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 단어 자체가 생소하거나 암기가 되지 않는 단어를 첫 번째 칸에 적는다.</p><p>2. 두 번째 ~ 일곱 번째 칸까지 매일 한 번씩 단어와 한글 뜻을 적는다.</p><p>3. 지속적으로 반복 노출한다.</p><br><p>★주의사항★</p><p>하루도 빠지지 않고 지속적으로 적어 놓은 단어에 노출되는 것이 중요 하다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="에빙하우스 보카 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr06.png'>";
	        document.getElementById("upperkit1").innerText="에빙하우스 보카 노트";
	    };
	    if(uniquer[1]==r1){
	        document.getElementById("bestlearningmethod4").innerText="깜지 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>Input 과정에서 눈으로만 훑는 학습법을 사용한 학습자들이 단순한 깜지 채우기 Output 과정을 통해서도 학습의 효과를 높일 수 있다는 원리에서 착안한 학습법이다. ‘노력 이외에는 공부에 왕도가 없다’ 라는 메시지를 전달하면서 끈기와 성실함을 높이게 된다.<br><br><p>★진행 순서★</p><p>1.  주요 내용의 제목을 ‘깜지칸’ 란에 적는다.</p><p>2. 미리 적어 둔 주요 핵심 내용을 여러 번 반복해서 적는다.</p><p>3. 일주일 후 반드시 상단의 깜지 내용을 다시 한 번 정리하여 단기 기억을 장기 기억으로 전환한다.</p><br><p>★주의사항★</p><p>백지가 꽉 차도록 빽빽하게 적고 입 밖으로 여러 번 소리를 내야 효과를 볼 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="깜지 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr01.png'>";
	        document.getElementById("upperkit2").innerText="깜지 노트";
	    }else if(uniquer[1]==r2){
	        document.getElementById("bestlearningmethod4").innerText="녹음 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>당일 학습한 주요 내용을 다시 한 번 학습자의 목소리로 녹음하여 복습하는 습관을 만들고, 그 내용을 재청취함으로써 이해가 부족한 부분과 꼭 암기해야 하는 중요한 부분을 확실히 정리하는 학습 관리법이다. 주로 개방적인 학습자나 감각일반주의 학습자에게 효과적인 학습법이다. 진로분야가 교육계통인 학습자에게 추천하는 방법이다.<br><br><p>★진행 순서★</p><p>1.  당일 배운 내용을 요약정리한다.</p><p>2. 요약정리한 내용 중에 녹음할 내용이 어디인지 표시한다.</p><p>3. 녹음 내용 재청취 시 어색하지 않도록 핵심 내용을 여러 번 반복하여 읽는다. </p><p>4. 주변의 방해가 없는 조용한 곳에서 실제 녹음을 진행한다.</p><p>5. 반드시 녹음 후 재청취할 시간을 가지며 이해도도 표시한다.</p><p>6. 재청취 시 이해도가 1인 경우 담당선생님에게 반드시 질문을 한다.</p><br><p>★주의사항★</p><p>학습한 내용을 눈으로만 보는 학습자에게 매우 효과적인 방법이나 수줍음이 많은 학생들은 초반에 어려움을 호소한다. 어차피 스스로에게 들려 주는 음성이니 부끄러워 말고 습관이 될 때까지 매일 조금씩이라도 실천 하는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="녹음 기록표";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr02.png'>";
	        document.getElementById("upperkit2").innerText="녹음 기록표";
	    }else if(uniquer[1]==r3){
	        document.getElementById("bestlearningmethod4").innerText="무한 반복 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>한 번에 암기되지 않는 중요한 공식이나 이론 및 개념정리를 무한 반복 체크 스케줄러에 적어 두었다가 가볍게 반복하면서 자신도 모르게 장기 기억으로 전환하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  스케줄러 상단에 과목과 영역을 적는다.</p><p>2. ‘로테이션 내용 요약’ 란에는 될 수 있는 한 상세히 요약하여 교과서 없이도 충분히 이해할 수 있도록 적는다.</p><p>3. 반복할 때마다 날짜를 기입하고 7번째까지 반복되면 종료한다.</p><br><p>★주의사항★</p><p>로테이션 내용을 상세히 적어야 스케줄러만으로 완벽한 학습을 할 수 있다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="무한 반복 체크 스케줄러";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr03.png'>";
	        document.getElementById("upperkit2").innerText="무한 반복 체크 스케줄러";
	    }else if(uniquer[1]==r4){
	        document.getElementById("bestlearningmethod4").innerText="샤우팅 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>언어학적 학습자 (시각보다는 청각과 촉각에 의해서 자극을 더 많이 받는 학습자) 에게 적합하다.<br><br><p>★진행 순서★</p><p>1.  옹알거리는 소리가 아니라 실제로 데시벨을 높여 외치듯 학습한다.</p><p>2. 빠르게 학습한다.</p><br><p>★주의사항★</p><p>‘티칭 학습법’ 은 누군가에게 선생님처럼 가르치면서 내용을 터득하는 방식인 반면에 ‘샤우팅 학습법’ 은 단순히 암기할 내용을 크게 외치며 가속화시키는 방법으로서 암기의 속도를 높이고자 사용하는 학습 관리 법이다. 속도가 빠르고 소리가 커야 더욱 효과적이다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="없음";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr14.png'>";
	        document.getElementById("upperkit2").innerText="없음";
	    }else if(uniquer[1]==r5){
	        document.getElementById("bestlearningmethod4").innerText="액티비티 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>개방적 학습자와 감각일반주의 학습자를 위한 학습 관리법이다. 주로 한자리에 앉아있는 것보다 움직이면서 학습하는 것을 선호하는 학습자나 지하철 및 버스 안에서 집중을 더 잘하는 학습자에게 적합하지만, 정적인 학습자들의 성향을 적극적으로 바꿔주면서 학습 습관도 개선할 수 있는 좋은 학습법이기도 하다.<br><br><p>★진행 순서★</p><p>1.  차분히 앉아서 책장을 넘기는 것보다 다양한 색깔펜을 이용하여 열정적으로 적는다.</p><p>2. 수업 시간에 자주 손을 들고 질문하며 수시로 발표의 기회를 갖는다.</p><br><p>★주의사항★</p><p>개방적 학습자, 감각일반주의 학습자의 성향이지만 소심하거나 부끄러움 을 많이 타는 학습자인 경우 타고난 학습성향대로 학습 능력을 발휘하기 힘들다. 이 때에는 좀 더 자신감을 가지고 수업에 참여하면 훨씬 수월하게 좋은 성적을 거둘 수 있을 것이다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="없음";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr08.png'>";
	        document.getElementById("upperkit2").innerText="없음";
	    }else if(uniquer[1]==r6){
	        document.getElementById("bestlearningmethod4").innerText="에빙하우스 보카학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>영단어와 한글 뜻을 7일 동안 시간차를 두고 반복 학습하는 방식으로서, 무리해서 단어를 외우지 않아도 장기기억으로 전환된다는 ‘에빙하우스 망각곡선’ 이론을 이용한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 단어 자체가 생소하거나 암기가 되지 않는 단어를 첫 번째 칸에 적는다.</p><p>2. 두 번째 ~ 일곱 번째 칸까지 매일 한 번씩 단어와 한글 뜻을 적는다.</p><p>3. 지속적으로 반복 노출한다.</p><br><p>★주의사항★</p><p>하루도 빠지지 않고 지속적으로 적어 놓은 단어에 노출되는 것이 중요 하다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="에빙하우스 보카 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr06.png'>";
	        document.getElementById("upperkit2").innerText="에빙하우스 보카 노트";
	    };
	    }else if(resultmax==eresult){
	    let resultlongtext=document.getElementById("resultlongtext").innerText="검사자는 학습의 4가지 영역 중 창의능력이 뛰어난 유형으로 학습에 있어서 단순한 암기보다는 암기 과정을 만들고 내용의 중요도를 A+ 나 ★표시를 하며 학습내용을 재 정리하는 것을 추천합니다. 스스로 예상문제를 만들어 보고 적중률을 파악하는 것도 학습에 큰 도움이 됩니다. 창의능력이 좋으면 100% 일치하게 학습하는 암기능력이 상대적으로 부족할 수 있으므로 노트 정리로 주요 부분은 꼭 기록해두어야만 암기능력과 함께 창의능력도 최대한 활용할 수 있습니다. 또한, 창의적 성향이 강하면 습관능력도 상대적으로 떨어질 수 있으니 바른 학습습관을 갖도록 공부근력을 길러주는 것이 바람직합니다. 공부근력을 강화하려면 지구력 있게 지속적, 반복적으로 학습할 수 있도록 스케줄러를 활용하는 것이 좋습니다. 자기약속을 강화하고 보상체계를 만들어주는 것이 좋습니다. 창의능력이 발달한 유형을 살펴보면 조용한 학습자(정적 학습자)보다는 운동적 학습자 (동적 학습자)가 많고 리더십 능력도 좋으므로 활동이 동반된 학습을 하는 것이 유리합니다. 오랜 시간 정적으로 풀어야 하는 수학 문제도 난이도별 분류를 하여 자신이 주도하고 계획하나 개념노트를 만들고 오답노트를 체계적으로 관리하면 창의능력을 최대한 활용할 수 있습니다. 또한, 역사 및 지구과학, 한문 과목 같은 단순 암기가 80% 이상을 차지하는 과목도 스토리를 만들어 학습하는 것이 재미있게 공부할 수 있고 오래 그 내용을 기억할 수 있어 좋은 성적을 받는 데 도움이 됩니다.";
	    let resultimg=document.getElementById("resultimg").innerHTML='<img class="resultmainimg" alt="resultmainimg" src="img/user/창의적학습자.jpg">';
	    let tendencyresultbest1=document.getElementById("tendencyresultbest1").innerText="창의적학습자";
	    let resultcharttext1=document.getElementById("resultcharttext1").innerText="창의능력";
	    let besttendency1=document.getElementById("besttendency1").innerText="창의능력자";
	    let tendencyresultbest2=document.getElementById("tendencyresultbest2").innerText="창의적학습자";
	    let besttendency2=document.getElementById("besttendency2").innerText="창의능력자";
	    document.getElementById("besttendency2").style.color="#2F5FFF";
	    document.getElementById("bestmain").style.color="#2F5FFF";
	    document.getElementById("bestmain").style.borderColor="#2F5FFF";
	    const data2 = {
	        labels: [
	            '3MIX 학습',
	            'CEO 학습',
	            'D-DAY 학습',
	            'N.I.E 보고서',
	            'PBL집중 학습',
	            '거미줄 학습',
	            '독서일기',
	            '레이더학습',
	            '매직모의고사 오답학습',
	            '메디슨학습',
	            '목표지향학습',
	            '수행평가 대비 학습',
	            '연관검색어 학습',
	            '연상학습',
	            '출제자 분석 학습',
	            '타임테이블 학습',
	            '토론식 학습',
	            '티칭 학습',
	            '포트폴리오 학습'
	        ],
	        datasets: [{
	            label: '창의능력',
	            data: [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19 ],
	            fill: true,
	            backgroundColor: 'rgba(219, 244, 253, 0.4)',
	            borderColor: '#4DC9F6',
	            pointBackgroundColor: '#4DC9F6',
	            pointBorderColor: '#fff',
	            pointHoverBackgroundColor: '#fff',
	            pointHoverBorderColor: '#4DC9F6'
	        }]
	    };
	    const config2 = {
	        type: 'radar',
	        data: data2,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart2 = new Chart(
	        document.getElementById('myupperChart'),
	        config2
	    );
	    if(emax==e1){
	        document.getElementById("bestlearningmethod1").innerText="3MIX 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습한 내용 중에서 핵심 포인트를 찾아 정리해가는 방식으로 분석 → 암기 → 설명의 3단계를 거쳐 완벽하게 개념을 이해하도록 체계화시키는 학습 관리법이다. 학습을 체계화시키지 못한 학습자에게 도움이 되며 절충적 학습자의 학습 습관을 갖도록 돕는다.<br><br><p>★진행 순서★</p><p>1. 분석의 단계에서는 핵심 내용을 자세히 적는다.</p><p>2. 중요한 포인트 부분을 빈칸으로 처리한다.</p><p>3. 빈칸은 다시 빨간색 펜으로 적어넣는다.</p><p>4. 암기 단계에서 ‘레드커튼’ 이라는 빨간색 셀로판지를 사용하여 내용의 암기가 어느 정도 되어 있는지 확인한다.</p><p>5. 가려진 ‘레드커튼’ 을 사용하여 핵심 내용을 가리면서 추가 설명을 진행한다.</p><br><p>★주의사항★</p><p>반드시 분석의 단계에서 중요한 핵심 내용을 빨간색 펜으로 기입하여야 하며 ‘레드커튼’은 분실하지 않도록 주의한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="3MIX 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge01.png'>";
	        document.getElementById("upperkit1").innerText="3MIX 학습 노트";
	    }else if(emax==e2){
	        document.getElementById("bestlearningmethod1").innerText="CEO 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습뿐만 아니라 정서, 관계, 체력 전영역의 관리를 기획하고 검토할 수 있기 때문에 융합적, 자기주도적 인재로 성장하도록 도울 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 이미 주간 일정이 나온 경우 왼쪽 가장자리의 주간 할 일 목록에 적는다.</p><p>2. 월 ~ 토요일까지의 색깔 박스에는 각 분야별 미션을 적어야 하므로 색깔에 주의한다.</p><p>3. 미션은 매일 정리하고 검토해야 한다.</p><p>4. 일요일은 한 주 동안 미완성된 미션을 해결해야 하므로 과제물을 제외하고는 적지 않는다.</p><br><p>★주의사항★</p><p>‘꿈으로 키우는 비전나무 보드’ 와 함께 사용하면 더욱 효과적이다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="CEO 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge02.png'>";
	        document.getElementById("upperkit1").innerText="CEO 다이어리";
	    }else if(emax==e3){
	        document.getElementById("bestlearningmethod1").innerText="D - DAY 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>천하태평 스타일의 학습자에게 자극을 주기 위한 학습법으로 단기 미션을 D - day 카운트 방식으로 진행, 장기적인 학습 플랜보다는 단기적인 학습 플랜을 기획하여 긴장감을 주면서 미션 달성을 습관화하기 위한 학습법이다.<br><br><p>★진행 순서★</p><p>1.  Final Goal 에 시험 과목 및 시험 범위를 적는다.</p><p>2. 남은 기간 D - day 에 세부적으로 할 일을 적는다.</p><br><p>★주의사항★</p><p>D - 2일은 총복습의 시간으로 반드시 공란으로 남겨둔다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="D-day 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge03.png'>";
	        document.getElementById("upperkit1").innerText="D-day 다이어리";
	    }else if(emax==e4){
	        document.getElementById("bestlearningmethod1").innerText="N. I. E. 보고서";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>N. I. E. (NEWS In Education ; 신문을 통한 교육)을 통해 진로 관련 전문 지식뿐만 아니라 사회 각 분야의 새로운 정보도 쉽게 얻어 박학다식해질 수 있다. 사설란 (다양한 견해)을 통해서는 비판적이고 융합적인 사고도 할 수 있다.<br><br><p>★진행 순서★</p><p>1.  관심 있는 신문 기사 원문을 오려 붙인다.</p><p>2. 이해 안 되는 어휘를 모두 정리하고 활용해서 글짓기한다.</p><p>3. 원문을 서론, 본론, 결론으로 나누어 요약한다.</p><p>4. 자신의 생각을 사설란 (다양한 견해)에 논리정연하게 적는다.</p><br><p>★주의사항★</p><p>처음에는 관심 있는 기사를 분석하고, 점차 진로 관련 분야에 대한 전문 지식을 얻을 수 있는 기사나 사회에 대한 비판적인 사고력을 기를 수 있는 기사로 전환하는 것이 효과적이다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="N.I.E. 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge04.png'>";
	        document.getElementById("upperkit1").innerText="N.I.E. 노트";
	    }else if(emax==e5){
	        document.getElementById("bestlearningmethod1").innerText="PBL집중 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>PBL (Problem based learning ; 문제중심학습)은 4차 산업시대 지식의 증가에 효과적으로 대처하고 능동적으로 문제를 해결하면서 기존의 강의식 수업의 한계를 극복하는 학습 관리법이다. 최근 중, 고등학교에서는 교과 전영역에 PBL 방식을 도입하여 학생 스스로가 문제의 단서를 인식하고, 공부할 학습 과제를 설정하며, 습득한 지식과 기술과 태도 등을 문제에 논리적으로 적용하면서 해결하도록 유도하고 있다. 이를 통해 문제해결 능력과 사고력이 증대되고 팀워크를 통한 협동학습능력이 향상될 수 있다. 토론식 수업을 통한 의사소통 기술과 자기주도적 학습 능력 또한 향상될 수 있다.<br><br><p>★진행 순서★</p><p>1.  PBL 평가지 [자기평가] 평가항목에 맞춰 나의 수업태도를 체크한다.</p><p>2. [교사의 피드백] 항목은 담당교사의 입장에서 적는다.</p><p>3. [모둠 구성원 상호평가] 항목에서는 다른 구성원을 평가한다.</p><p>4. [다른 모둠 평가] 항목에는 다른 모둠의 활동을 평가한다.</p><p>5. 데이터를 평균하여 스스로를 점검한다.</p><br><p>★주의사항★</p><p>될 수 있는 한 객관적인 평가를 하도록 노력한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="PBL 평가지";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge05.png'>";
	        document.getElementById("upperkit1").innerText="PBL 평가지";
	    }else if(emax==e6){
	        document.getElementById("bestlearningmethod1").innerText="거미줄 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 사항을 생각나는 대로 거미줄 형태로 그려 표현한다. 주로 시험 범위가 많은 모의고사 대비에 적합하며 융합적 사고력의 최고치를 끌어낼 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습 내용 중 하나의 큰 주제를 선정하여 드리몽 안에 적는다.</p><p>2. 큰 주제와 관련된 핵심키워드를 모두 적는다.</p><p>3. 핵심키워드에 해당되는 세부 설명을 적는다.</p><br><p>★주의사항★</p><p>연상 능력이 뛰어난 학습자에게 유리한 방법으로 연상 훈련이 부족한 학습자는 ‘연상 학습법’ 을 진행한 후 ‘거미줄 학습법’으로 전환하는 것이 바람직하다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="거미줄 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge06.png'>";
	        document.getElementById("upperkit1").innerText="거미줄 학습 노트";
	    }else if(emax==e7){
	        document.getElementById("bestlearningmethod1").innerText="독서일기";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>책 추천 편지 및 독후감을 쓰면서 도서를 분석하는 능력을 기르고 책을 통해서 지식을 완벽하게 습득하는 법을 알게 된다.<br><br><p>★진행 순서★</p><p>1.  주어진 독후활동 기록지의 장르를 선택한다.</p><p>2. 위인전, 설명문, 지식전달문 등 다양한 장르에 맞게 빈칸을 채우며 기록지를 채운다.</p><p>3. 될 수 있는 한 책의 정보를 객관적으로 적는다.</p><p>4. 읽고 난 후의 자신의 변화된 모습 및 성장 부분을 자세히 적는다.</p><br><p>★주의사항★</p><p>독서 후 기록지를 작성하면 객관적 정보가 쉽게 정리됨은 물론 책을 통한 나의 변화도 이끌어낼 수 있다. 이 때 독자로서 가장 중요한 부분은 작가의 의도를 파악하고 사회의 긍정적인 변화를 유도할 수 있는 힘을 기르는 것이다. </p></span>";
	        document.getElementById("bestlearningmethod3").innerText="독서 일지 세트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge07.png'>";
	        document.getElementById("upperkit1").innerText="독서 일지 세트";
	    }else if(emax==e8){
	        document.getElementById("bestlearningmethod1").innerText="레이더 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>레이더 학습 포스트잇을 활용하여 예습을 흥미롭게 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 포스트잇 ‘탐색’ 란에 예습 시 궁금한 점 또는 핵심 소재를 적는다. </p><p>2. 포스트잇 ‘발견’ 란에 예습 시 답변 또는 핵심 소재에 대한 세부 내용을 적는다.</p><br><p>★주의사항★</p><p>포스트잇의 크기가 제한되어 있으므로 핵심 내용만 적는다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="레이더 학습 포스트잇";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge08.png'>";
	        document.getElementById("upperkit1").innerText="레이더 학습 포스트잇";
	    }else if(emax==e9){
	        document.getElementById("bestlearningmethod1").innerText="매직모의고사 오답 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>오답 노트를 체계적으로 관리함으로써 자신의 허점을 지속적으로 보완하고 성적 향상을 목표로 하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 각 과목마다 주어진 오답 노트 양식지를 채우며 지속적으로 관리한다. (샘플 참조)</p><br><p>★주의사항★</p><p>오답 노트를 지속적으로 관리함으로써 유사한 문제에 대한 대처 능력을 키울 수 있으며 응용력도 향상시킬 수 있다. 그러기 위해서는 반드시 오답 노트를 분실하지 않고 학년이 올라가도 관리해야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="매직 모의고사 오답 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge09.png'>";
	        document.getElementById("upperkit1").innerText="매직 모의고사 오답 노트";
	    }else if(emax==e10){
	        document.getElementById("bestlearningmethod1").innerText="메디슨 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>취약한 과목 및 영역에 대해 원인을 분석하고 그에 대한 세밀한 처방을 3회에 걸쳐 실천하는 학습법으로 약점 과목을 공략하는데 적합하다.<br><br><p>★진행 순서★</p><p>1. ‘약점’ 란에 자주 틀리는 영역을 자세히 적는다.</p><p>2. 원인은 [개념 이해 부족 / 암기 부족 / 문제 이해 부족] 3가지로 구분한다.</p><p>3. 처방은 [개념 정리 / 암기 보충 / 유사 문제 5개 풀기] 3가지로 구분한다.</p><p>4. 실천 일자에는 처방된 3가지 방법을 이행한 날짜를 적는다.</p><br><p>★주의사항★</p><p>실수, 시간 부족 등의 다른 원인은 오답 분석표에 정리하므로 ‘메디슨 학습법’ 에서는 ‘기본개념잡기’ 에 주력한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="메디슨 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge10.png'>";
	        document.getElementById("upperkit1").innerText="메디슨 학습 노트";
	    }else if(emax==e11){
	        document.getElementById("bestlearningmethod1").innerText="목표지향 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>장기간의 목표를 정함으로써 먼 미래를 예측하고 목표에 맞는 과정을 미리 계획하고 준비하여 자기주도형 인재가 될 수 있도록 훈련하는 학습 관리법이다. 학습 / 비학습 모두에 활용될 수 있다.<br><br><p>★진행 순서★</p><p>1. 미래의 목표를 정한다.</p><p>2. 기간별로 변화될 나의 모습을 적는다.</p><p>3. 기간별 목표를 구체적으로 적는다.</p><p>4. 정해둔 목표에 맞도록 미션을 적는다.</p><p>5. 책상의 잘 보이는 곳에 붙여두고 지속적으로 비전을 그린다. </p><br><p>★주의사항★</p><p>장기적 목표를 먼저 설정하고 중단기적 목표와 그에 따른 미션을 단계적 으로 적는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="목표지향 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge11.png'>";
	        document.getElementById("upperkit1").innerText="목표지향 다이어리";
	    }else if(emax==e12){
	        document.getElementById("bestlearningmethod1").innerText="수행평가 대비 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>사고력과 창의력 확장의 한계가 있는 결과 중심의 지필평가를 개선하고자 도입된 평가방식으로 학습자가 지식확장을 위해 직접 탐구하고 활동하는 일련의 과정을 교사가 평가함으로써 자기주도적인 학습 역량을 강화할 것을 목적으로 하고 있다. 평상시에도 수행평가 항목을 지속적으로 체크하여 학교생활을 하는 것이 중요하다.<br><br><p>★진행 순서★</p><p>1.  수행평가 채점표의 평가요소 항목에서 지식, 기능, 태도를 구분하고 세부 활동을 살펴본다.</p><p>2. 해당란의 서술형 평가를 기준으로 배점을 계산한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="수행평가 채점표";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge12.png'>";
	        document.getElementById("upperkit1").innerText="수행평가 채점표";
	    }else if(emax==e13){
	        document.getElementById("bestlearningmethod1").innerText="연관검색어 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>주로 교과과정 예습이나 비교과 활동 시 사용하는 학습법이다. 모르는 용어가 등장했을 때 백과사전이나 인터넷 사전을 이용하여 용어를 검색하고 정의를 알아보며 예문도 만들어보는 등 적극적인 자세를 가질 수 있어 호기심이 많은 학습자에게 매우 유리하다.<br><br><p>★진행 순서★</p><p>1.  해당 범위에서 관심있는 검색어를 모두 적는다.</p><p>2. 정의를 상세히 적는다.</p><p>3. 예문은 스스로 만들어본다.</p><br><p>★주의사항★</p><p>학습 노트에 적힌 예문이 바르게 적혔는지 선생님에게 물어보는 것도 학생부를 우수하게 관리하는 좋은 방법이다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="연관검색어 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge13.png'>";
	        document.getElementById("upperkit1").innerText="연관검색어 학습 노트";
	    }else if(emax==e14){
	        document.getElementById("bestlearningmethod1").innerText="연상 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 키워드를 모두 적고 그에 해당되는 세부 설명을 기입하는 방식으로 융합적 사고능력을 향상시킬 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  나무뿌리의 동그라미에서 시작한다.</p><p>2. 큰 주제와 관련된 핵심키워드를 나뭇가지에 적는다.</p><p>3. 키워드에 해당되는 세부 설명은 작은 나뭇가지에 적는다.</p><br><p>★주의사항★</p><p>큰 주제와 관련된 키워드와 세부 사항만 적어야 하며 키워드와 관련된 내용들을 적으려면 거미줄 학습법을 활용해야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="연상 학습 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge14.png'>";
	        document.getElementById("upperkit1").innerText="연상 학습 노트";
	    }else if(emax==e15){
	        document.getElementById("bestlearningmethod1").innerText="출제자 분석 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>모든 시험 문제를 풀 때는 출제자의 의도를 파악하는 것이 중요하다. 공부 시간은 길지만 시험 점수가 좋지 않은 학습자를 위한 학습 전략으로서 평상시 출제자의 의도를 분석하는 훈련을 통해 핵심을 파악하는 능력을 기르는 것이 학습법의 목표이다.<br><br><p>★진행 순서★</p><p>1.  문제를 내고 답을 적는다.</p><p>2. 출제자의 의도를 분석한다.</p><br><p>★주의사항★</p><p>출제자의 의도를 분석하여 학습 시간을 단축하는 학습법으로 선생님 말씀 에 집중하지 않으면 어느 부분이 중요한지 알 수 없으므로 수업 시간에 긴장감을 늦추지 않는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="출제자 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge15.png'>";
	        document.getElementById("upperkit1").innerText="출제자 노트";
	    }else if(emax==e16){
	        document.getElementById("bestlearningmethod1").innerText="타임테이블 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>시간대별로 미션을 적는 방식으로 어느 정도 스케줄러 작성에 익숙한 학습자들이 사용하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학교 수업 및 학원 수업 일정을 미리 적는다.</p><p>2. 남은 시간대에 학습 과목 및 영역을 적는다.</p><p>3. 하루를 마감할 때 완성도를 체크하여 ‘반성’ 란에 아쉬움이 남는 미션을 정리한다.</p><br><p>★주의사항★</p><p>너무 타이트한 계획을 세우면 미션을 완성하지 못할 가능성이 크며 모든 계획이 수포로 돌아갈 수 있으니 약간의 융통성을 두며 다이어리를 관리 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="타임테이블 다이어리";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge16.png'>";
	        document.getElementById("upperkit1").innerText="타임테이블 다이어리";
	    }else if(emax==e17){
	        document.getElementById("bestlearningmethod1").innerText="토론식 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>토론주제를 선정하고 자유롭게 발표하는 학습법이다. 이러한 방법으로 발표력과 사고력, 팀워크를 기를 수 있다. 학습법 중 교과, 비교과를 막론하고 전영역에 활용도가 높다.<br><br><p>★진행 순서★</p><p>1.  토론주제를 정한다.</p><p>2. 참여자와 사회자를 뽑아 역할 분담을 한다.</p><p>3. 주제에 대해 주장하는 바가 다르다면 팀을 나누고 팀원끼리 의견을 사전조율한다.</p><p>4. 의견이 통합되면 대립하는 의견에 따라 논리를 펼친다.</p><p>5. 토론식 학습법 노트에 나의 반성을 포함한 토론의 진행 과정을 상세히 적는다.</p><br><p>★주의사항★</p><p>적극적으로 참여하지 않으면 학습 효과가 떨어지며 토론이 종료된 후에 반드시 진행 과정을 상세히 기록한 토론식 학습법 노트가 있어야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="토론식 학습법 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge17.png'>";
	        document.getElementById("upperkit1").innerText="토론식 학습법 노트";
	    }else if(emax==e18){
	        document.getElementById("bestlearningmethod1").innerText="티칭 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 선생님이라고 생각하고 교사용 가이드를 준비하는 과정에서 학습 성장을 이루게 되는 학습법이다.<br><br><p>★진행 순서★</p><p>1.  티처스 가이드 노트의 요약 내용에는 최대한 많은 내용을 적는다.</p><p>2. 강조 내용은 시험에 나올 것과 동일하게 중요한 부분을 요약하여 적는다.</p><p>3. ‘Q&A’ 란에는 학생들이 질문할 내용에 대한 답변을 준비한다.</p><br><p>★주의사항★</p><p>학습법을 적용하기 전에 학습 내용을 체계화하고 그 내용을 표현하는 연습이므로 내용에 대한 이해가 선행되어야 한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="티처스 가이드 노트";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge18.png'>";
	        document.getElementById("upperkit1").innerText="티처스 가이드 노트";
	    }else if(emax==e19){
	        document.getElementById("bestlearningmethod1").innerText="포트폴리오 관리 학습법";
	        document.getElementById("bestlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>지필평가가 아닌 경우 실제 평가기준이 모호하다. 이런 점을 보완하고자 개발된 포트폴리오 관리 학습은 구체적이고 객관적인 평가를 위해 성과에 대한 자료를 수집하는 방식이다. 포트폴리오는 고입, 대입뿐만 아니라 취업 시에도 활용되고 있으며 수치화할 수 없는 성과에 대한 객관화가 가능하다는 장점을 가지고 있다.<br><br><p>★진행 순서★</p><p>1. 포트폴리오 평가지를 활용하여 관리한다.</p><p>2.‘평가항목에 따라 “관련교과역량” 이 수업활동 중 눈에 띄게 발견되었 는가?’ 를 체크한다.</p><p>3.‘채점기준’은 평가항목이 발견된 경우에만 ○ 표시를 한다.</p><p>4. 태도 및 실천 항목에서 아래 3가지 항목을 구분하여 체크한다.</p><p>① 자주적 학습태도 : 자신감을 가지고 적극적으로 모둠활동 및 참여하는가?</p><p> ② 가치인식 : 수업 내용에 대하여 높은 흥미와 관심을 지속적으로 보이는가?</p><p> ③ 시민의식 : 모둠원에게 경청하고 배려하는 태도를 보이는가?</p><p>5. 특이사항에는 구체적인 내용을 적는다.</p><br><p>★주의사항★</p><p>포트폴리오 양식은 주제 및 활동에 따라 다르므로 목적에 맞게 탄력적 으로 작성하고 관리한다.</p></span>";
	        document.getElementById("bestlearningmethod3").innerText="포트폴리오 평가지";
	        document.getElementById("upperimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge19.png'>";
	        document.getElementById("upperkit1").innerText="포트폴리오 평가지";
	    };

	    if(uniquee[1]==e1){
	        document.getElementById("bestlearningmethod4").innerText="3MIX 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습한 내용 중에서 핵심 포인트를 찾아 정리해가는 방식으로 분석 → 암기 → 설명의 3단계를 거쳐 완벽하게 개념을 이해하도록 체계화시키는 학습 관리법이다. 학습을 체계화시키지 못한 학습자에게 도움이 되며 절충적 학습자의 학습 습관을 갖도록 돕는다.<br><br><p>★진행 순서★</p><p>1. 분석의 단계에서는 핵심 내용을 자세히 적는다.</p><p>2. 중요한 포인트 부분을 빈칸으로 처리한다.</p><p>3. 빈칸은 다시 빨간색 펜으로 적어넣는다.</p><p>4. 암기 단계에서 ‘레드커튼’ 이라는 빨간색 셀로판지를 사용하여 내용의 암기가 어느 정도 되어 있는지 확인한다.</p><p>5. 가려진 ‘레드커튼’ 을 사용하여 핵심 내용을 가리면서 추가 설명을 진행한다.</p><br><p>★주의사항★</p><p>반드시 분석의 단계에서 중요한 핵심 내용을 빨간색 펜으로 기입하여야 하며 ‘레드커튼’은 분실하지 않도록 주의한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="3MIX 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge01.png'>";
	        document.getElementById("upperkit2").innerText="3MIX 학습 노트";
	    }else if(uniquee[1]==e2){
	        document.getElementById("bestlearningmethod4").innerText="CEO 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습뿐만 아니라 정서, 관계, 체력 전영역의 관리를 기획하고 검토할 수 있기 때문에 융합적, 자기주도적 인재로 성장하도록 도울 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 이미 주간 일정이 나온 경우 왼쪽 가장자리의 주간 할 일 목록에 적는다.</p><p>2. 월 ~ 토요일까지의 색깔 박스에는 각 분야별 미션을 적어야 하므로 색깔에 주의한다.</p><p>3. 미션은 매일 정리하고 검토해야 한다.</p><p>4. 일요일은 한 주 동안 미완성된 미션을 해결해야 하므로 과제물을 제외하고는 적지 않는다.</p><br><p>★주의사항★</p><p>‘꿈으로 키우는 비전나무 보드’ 와 함께 사용하면 더욱 효과적이다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="CEO 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge02.png'>";
	        document.getElementById("upperkit2").innerText="CEO 다이어리";
	    }else if(uniquee[1]==e3){
	        document.getElementById("bestlearningmethod4").innerText="D - DAY 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>천하태평 스타일의 학습자에게 자극을 주기 위한 학습법으로 단기 미션을 D - day 카운트 방식으로 진행, 장기적인 학습 플랜보다는 단기적인 학습 플랜을 기획하여 긴장감을 주면서 미션 달성을 습관화하기 위한 학습법이다.<br><br><p>★진행 순서★</p><p>1.  Final Goal 에 시험 과목 및 시험 범위를 적는다.</p><p>2. 남은 기간 D - day 에 세부적으로 할 일을 적는다.</p><br><p>★주의사항★</p><p>D - 2일은 총복습의 시간으로 반드시 공란으로 남겨둔다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="D-day 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge03.png'>";
	        document.getElementById("upperkit2").innerText="D-day 다이어리";
	    }else if(uniquee[1]==e4){
	        document.getElementById("bestlearningmethod4").innerText="N. I. E. 보고서";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>N. I. E. (NEWS In Education ; 신문을 통한 교육)을 통해 진로 관련 전문 지식뿐만 아니라 사회 각 분야의 새로운 정보도 쉽게 얻어 박학다식해질 수 있다. 사설란 (다양한 견해)을 통해서는 비판적이고 융합적인 사고도 할 수 있다.<br><br><p>★진행 순서★</p><p>1.  관심 있는 신문 기사 원문을 오려 붙인다.</p><p>2. 이해 안 되는 어휘를 모두 정리하고 활용해서 글짓기한다.</p><p>3. 원문을 서론, 본론, 결론으로 나누어 요약한다.</p><p>4. 자신의 생각을 사설란 (다양한 견해)에 논리정연하게 적는다.</p><br><p>★주의사항★</p><p>처음에는 관심 있는 기사를 분석하고, 점차 진로 관련 분야에 대한 전문 지식을 얻을 수 있는 기사나 사회에 대한 비판적인 사고력을 기를 수 있는 기사로 전환하는 것이 효과적이다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="N.I.E. 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge04.png'>";
	        document.getElementById("upperkit2").innerText="N.I.E. 노트";
	    }else if(uniquee[1]==e5){
	        document.getElementById("bestlearningmethod4").innerText="PBL집중 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>PBL (Problem based learning ; 문제중심학습)은 4차 산업시대 지식의 증가에 효과적으로 대처하고 능동적으로 문제를 해결하면서 기존의 강의식 수업의 한계를 극복하는 학습 관리법이다. 최근 중, 고등학교에서는 교과 전영역에 PBL 방식을 도입하여 학생 스스로가 문제의 단서를 인식하고, 공부할 학습 과제를 설정하며, 습득한 지식과 기술과 태도 등을 문제에 논리적으로 적용하면서 해결하도록 유도하고 있다. 이를 통해 문제해결 능력과 사고력이 증대되고 팀워크를 통한 협동학습능력이 향상될 수 있다. 토론식 수업을 통한 의사소통 기술과 자기주도적 학습 능력 또한 향상될 수 있다.<br><br><p>★진행 순서★</p><p>1.  PBL 평가지 [자기평가] 평가항목에 맞춰 나의 수업태도를 체크한다.</p><p>2. [교사의 피드백] 항목은 담당교사의 입장에서 적는다.</p><p>3. [모둠 구성원 상호평가] 항목에서는 다른 구성원을 평가한다.</p><p>4. [다른 모둠 평가] 항목에는 다른 모둠의 활동을 평가한다.</p><p>5. 데이터를 평균하여 스스로를 점검한다.</p><br><p>★주의사항★</p><p>될 수 있는 한 객관적인 평가를 하도록 노력한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="PBL 평가지";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge05.png'>";
	        document.getElementById("upperkit2").innerText="PBL 평가지";
	    }else if(uniquee[1]==e6){
	        document.getElementById("bestlearningmethod4").innerText="거미줄 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 사항을 생각나는 대로 거미줄 형태로 그려 표현한다. 주로 시험 범위가 많은 모의고사 대비에 적합하며 융합적 사고력의 최고치를 끌어낼 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습 내용 중 하나의 큰 주제를 선정하여 드리몽 안에 적는다.</p><p>2. 큰 주제와 관련된 핵심키워드를 모두 적는다.</p><p>3. 핵심키워드에 해당되는 세부 설명을 적는다.</p><br><p>★주의사항★</p><p>연상 능력이 뛰어난 학습자에게 유리한 방법으로 연상 훈련이 부족한 학습자는 ‘연상 학습법’ 을 진행한 후 ‘거미줄 학습법’으로 전환하는 것이 바람직하다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="거미줄 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge06.png'>";
	        document.getElementById("upperkit2").innerText="거미줄 학습 노트";
	    }else if(uniquee[1]==e7){
	        document.getElementById("bestlearningmethod4").innerText="독서일기";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>책 추천 편지 및 독후감을 쓰면서 도서를 분석하는 능력을 기르고 책을 통해서 지식을 완벽하게 습득하는 법을 알게 된다.<br><br><p>★진행 순서★</p><p>1.  주어진 독후활동 기록지의 장르를 선택한다.</p><p>2. 위인전, 설명문, 지식전달문 등 다양한 장르에 맞게 빈칸을 채우며 기록지를 채운다.</p><p>3. 될 수 있는 한 책의 정보를 객관적으로 적는다.</p><p>4. 읽고 난 후의 자신의 변화된 모습 및 성장 부분을 자세히 적는다.</p><br><p>★주의사항★</p><p>독서 후 기록지를 작성하면 객관적 정보가 쉽게 정리됨은 물론 책을 통한 나의 변화도 이끌어낼 수 있다. 이 때 독자로서 가장 중요한 부분은 작가의 의도를 파악하고 사회의 긍정적인 변화를 유도할 수 있는 힘을 기르는 것이다. </p></span>";
	        document.getElementById("bestlearningmethod6").innerText="독서 일지 세트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge07.png'>";
	        document.getElementById("upperkit2").innerText="독서 일지 세트";
	    }else if(uniquee[1]==e8){
	        document.getElementById("bestlearningmethod4").innerText="레이더 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>레이더 학습 포스트잇을 활용하여 예습을 흥미롭게 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 포스트잇 ‘탐색’ 란에 예습 시 궁금한 점 또는 핵심 소재를 적는다. </p><p>2. 포스트잇 ‘발견’ 란에 예습 시 답변 또는 핵심 소재에 대한 세부 내용을 적는다.</p><br><p>★주의사항★</p><p>포스트잇의 크기가 제한되어 있으므로 핵심 내용만 적는다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="레이더 학습 포스트잇";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge08.png'>";
	        document.getElementById("upperkit2").innerText="레이더 학습 포스트잇";
	    }else if(uniquee[1]==e9){
	        document.getElementById("bestlearningmethod4").innerText="매직모의고사 오답 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>오답 노트를 체계적으로 관리함으로써 자신의 허점을 지속적으로 보완하고 성적 향상을 목표로 하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 각 과목마다 주어진 오답 노트 양식지를 채우며 지속적으로 관리한다. (샘플 참조)</p><br><p>★주의사항★</p><p>오답 노트를 지속적으로 관리함으로써 유사한 문제에 대한 대처 능력을 키울 수 있으며 응용력도 향상시킬 수 있다. 그러기 위해서는 반드시 오답 노트를 분실하지 않고 학년이 올라가도 관리해야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="매직 모의고사 오답 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge09.png'>";
	        document.getElementById("upperkit2").innerText="매직 모의고사 오답 노트";
	    }else if(uniquee[1]==e10){
	        document.getElementById("bestlearningmethod4").innerText="메디슨 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>취약한 과목 및 영역에 대해 원인을 분석하고 그에 대한 세밀한 처방을 3회에 걸쳐 실천하는 학습법으로 약점 과목을 공략하는데 적합하다.<br><br><p>★진행 순서★</p><p>1. ‘약점’ 란에 자주 틀리는 영역을 자세히 적는다.</p><p>2. 원인은 [개념 이해 부족 / 암기 부족 / 문제 이해 부족] 3가지로 구분한다.</p><p>3. 처방은 [개념 정리 / 암기 보충 / 유사 문제 5개 풀기] 3가지로 구분한다.</p><p>4. 실천 일자에는 처방된 3가지 방법을 이행한 날짜를 적는다.</p><br><p>★주의사항★</p><p>실수, 시간 부족 등의 다른 원인은 오답 분석표에 정리하므로 ‘메디슨 학습법’ 에서는 ‘기본개념잡기’ 에 주력한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="메디슨 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge10.png'>";
	        document.getElementById("upperkit2").innerText="메디슨 학습 노트";
	    }else if(uniquee[1]==e11){
	        document.getElementById("bestlearningmethod4").innerText="목표지향 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>장기간의 목표를 정함으로써 먼 미래를 예측하고 목표에 맞는 과정을 미리 계획하고 준비하여 자기주도형 인재가 될 수 있도록 훈련하는 학습 관리법이다. 학습 / 비학습 모두에 활용될 수 있다.<br><br><p>★진행 순서★</p><p>1. 미래의 목표를 정한다.</p><p>2. 기간별로 변화될 나의 모습을 적는다.</p><p>3. 기간별 목표를 구체적으로 적는다.</p><p>4. 정해둔 목표에 맞도록 미션을 적는다.</p><p>5. 책상의 잘 보이는 곳에 붙여두고 지속적으로 비전을 그린다. </p><br><p>★주의사항★</p><p>장기적 목표를 먼저 설정하고 중단기적 목표와 그에 따른 미션을 단계적 으로 적는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="목표지향 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge11.png'>";
	        document.getElementById("upperkit2").innerText="목표지향 다이어리";
	    }else if(uniquee[1]==e12){
	        document.getElementById("bestlearningmethod4").innerText="수행평가 대비 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>사고력과 창의력 확장의 한계가 있는 결과 중심의 지필평가를 개선하고자 도입된 평가방식으로 학습자가 지식확장을 위해 직접 탐구하고 활동하는 일련의 과정을 교사가 평가함으로써 자기주도적인 학습 역량을 강화할 것을 목적으로 하고 있다. 평상시에도 수행평가 항목을 지속적으로 체크하여 학교생활을 하는 것이 중요하다.<br><br><p>★진행 순서★</p><p>1.  수행평가 채점표의 평가요소 항목에서 지식, 기능, 태도를 구분하고 세부 활동을 살펴본다.</p><p>2. 해당란의 서술형 평가를 기준으로 배점을 계산한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="수행평가 채점표";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge12.png'>";
	        document.getElementById("upperkit2").innerText="수행평가 채점표";
	    }else if(uniquee[1]==e13){
	        document.getElementById("bestlearningmethod4").innerText="연관검색어 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>주로 교과과정 예습이나 비교과 활동 시 사용하는 학습법이다. 모르는 용어가 등장했을 때 백과사전이나 인터넷 사전을 이용하여 용어를 검색하고 정의를 알아보며 예문도 만들어보는 등 적극적인 자세를 가질 수 있어 호기심이 많은 학습자에게 매우 유리하다.<br><br><p>★진행 순서★</p><p>1.  해당 범위에서 관심있는 검색어를 모두 적는다.</p><p>2. 정의를 상세히 적는다.</p><p>3. 예문은 스스로 만들어본다.</p><br><p>★주의사항★</p><p>학습 노트에 적힌 예문이 바르게 적혔는지 선생님에게 물어보는 것도 학생부를 우수하게 관리하는 좋은 방법이다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="연관검색어 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge13.png'>";
	        document.getElementById("upperkit2").innerText="연관검색어 학습 노트";
	    }else if(uniquee[1]==e14){
	        document.getElementById("bestlearningmethod4").innerText="연상 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 키워드를 모두 적고 그에 해당되는 세부 설명을 기입하는 방식으로 융합적 사고능력을 향상시킬 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  나무뿌리의 동그라미에서 시작한다.</p><p>2. 큰 주제와 관련된 핵심키워드를 나뭇가지에 적는다.</p><p>3. 키워드에 해당되는 세부 설명은 작은 나뭇가지에 적는다.</p><br><p>★주의사항★</p><p>큰 주제와 관련된 키워드와 세부 사항만 적어야 하며 키워드와 관련된 내용들을 적으려면 거미줄 학습법을 활용해야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="연상 학습 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge14.png'>";
	        document.getElementById("upperkit2").innerText="연상 학습 노트";
	    }else if(uniquee[1]==e15){
	        document.getElementById("bestlearningmethod4").innerText="출제자 분석 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>모든 시험 문제를 풀 때는 출제자의 의도를 파악하는 것이 중요하다. 공부 시간은 길지만 시험 점수가 좋지 않은 학습자를 위한 학습 전략으로서 평상시 출제자의 의도를 분석하는 훈련을 통해 핵심을 파악하는 능력을 기르는 것이 학습법의 목표이다.<br><br><p>★진행 순서★</p><p>1.  문제를 내고 답을 적는다.</p><p>2. 출제자의 의도를 분석한다.</p><br><p>★주의사항★</p><p>출제자의 의도를 분석하여 학습 시간을 단축하는 학습법으로 선생님 말씀 에 집중하지 않으면 어느 부분이 중요한지 알 수 없으므로 수업 시간에 긴장감을 늦추지 않는 것이 중요하다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="출제자 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge15.png'>";
	        document.getElementById("upperkit2").innerText="출제자 노트";
	    }else if(uniquee[1]==e16){
	        document.getElementById("bestlearningmethod4").innerText="타임테이블 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>시간대별로 미션을 적는 방식으로 어느 정도 스케줄러 작성에 익숙한 학습자들이 사용하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학교 수업 및 학원 수업 일정을 미리 적는다.</p><p>2. 남은 시간대에 학습 과목 및 영역을 적는다.</p><p>3. 하루를 마감할 때 완성도를 체크하여 ‘반성’ 란에 아쉬움이 남는 미션을 정리한다.</p><br><p>★주의사항★</p><p>너무 타이트한 계획을 세우면 미션을 완성하지 못할 가능성이 크며 모든 계획이 수포로 돌아갈 수 있으니 약간의 융통성을 두며 다이어리를 관리 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="타임테이블 다이어리";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge16.png'>";
	        document.getElementById("upperkit2").innerText="타임테이블 다이어리";
	    }else if(uniquee[1]==e17){
	        document.getElementById("bestlearningmethod4").innerText="토론식 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>토론주제를 선정하고 자유롭게 발표하는 학습법이다. 이러한 방법으로 발표력과 사고력, 팀워크를 기를 수 있다. 학습법 중 교과, 비교과를 막론하고 전영역에 활용도가 높다.<br><br><p>★진행 순서★</p><p>1.  토론주제를 정한다.</p><p>2. 참여자와 사회자를 뽑아 역할 분담을 한다.</p><p>3. 주제에 대해 주장하는 바가 다르다면 팀을 나누고 팀원끼리 의견을 사전조율한다.</p><p>4. 의견이 통합되면 대립하는 의견에 따라 논리를 펼친다.</p><p>5. 토론식 학습법 노트에 나의 반성을 포함한 토론의 진행 과정을 상세히 적는다.</p><br><p>★주의사항★</p><p>적극적으로 참여하지 않으면 학습 효과가 떨어지며 토론이 종료된 후에 반드시 진행 과정을 상세히 기록한 토론식 학습법 노트가 있어야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="토론식 학습법 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge17.png'>";
	        document.getElementById("upperkit2").innerText="토론식 학습법 노트";
	    }else if(uniquee[1]==e18){
	        document.getElementById("bestlearningmethod4").innerText="티칭 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 선생님이라고 생각하고 교사용 가이드를 준비하는 과정에서 학습 성장을 이루게 되는 학습법이다.<br><br><p>★진행 순서★</p><p>1.  티처스 가이드 노트의 요약 내용에는 최대한 많은 내용을 적는다.</p><p>2. 강조 내용은 시험에 나올 것과 동일하게 중요한 부분을 요약하여 적는다.</p><p>3. ‘Q&A’ 란에는 학생들이 질문할 내용에 대한 답변을 준비한다.</p><br><p>★주의사항★</p><p>학습법을 적용하기 전에 학습 내용을 체계화하고 그 내용을 표현하는 연습이므로 내용에 대한 이해가 선행되어야 한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="티처스 가이드 노트";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge18.png'>";
	        document.getElementById("upperkit2").innerText="티처스 가이드 노트";
	    }else if(uniquee[1]==e19){
	        document.getElementById("bestlearningmethod4").innerText="포트폴리오 관리 학습법";
	        document.getElementById("bestlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>지필평가가 아닌 경우 실제 평가기준이 모호하다. 이런 점을 보완하고자 개발된 포트폴리오 관리 학습은 구체적이고 객관적인 평가를 위해 성과에 대한 자료를 수집하는 방식이다. 포트폴리오는 고입, 대입뿐만 아니라 취업 시에도 활용되고 있으며 수치화할 수 없는 성과에 대한 객관화가 가능하다는 장점을 가지고 있다.<br><br><p>★진행 순서★</p><p>1. 포트폴리오 평가지를 활용하여 관리한다.</p><p>2.‘평가항목에 따라 “관련교과역량” 이 수업활동 중 눈에 띄게 발견되었 는가?’ 를 체크한다.</p><p>3.‘채점기준’은 평가항목이 발견된 경우에만 ○ 표시를 한다.</p><p>4. 태도 및 실천 항목에서 아래 3가지 항목을 구분하여 체크한다.</p><p>① 자주적 학습태도 : 자신감을 가지고 적극적으로 모둠활동 및 참여하는가?</p><p> ② 가치인식 : 수업 내용에 대하여 높은 흥미와 관심을 지속적으로 보이는가?</p><p> ③ 시민의식 : 모둠원에게 경청하고 배려하는 태도를 보이는가?</p><p>5. 특이사항에는 구체적인 내용을 적는다.</p><br><p>★주의사항★</p><p>포트폴리오 양식은 주제 및 활동에 따라 다르므로 목적에 맞게 탄력적 으로 작성하고 관리한다.</p></span>";
	        document.getElementById("bestlearningmethod6").innerText="포트폴리오 평가지";
	        document.getElementById("upperimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge19.png'>";
	        document.getElementById("upperkit2").innerText="포트폴리오 평가지";
	    };
	    };
	    if(resultmin==aresult){
	    document.getElementById("resultcharttext2").innerText="분석능력";
	    document.getElementById("worsttendency1").innerText="분석능력보완";
	    document.getElementById("worsttendency2").innerText="분석능력보완";
	    document.getElementById("worsttendency2").style.color="#D813AF";
	    document.getElementById("worstmain").style.color="#D813AF";
	    document.getElementById("worstmain").style.borderColor="#D813AF";
	    const data3 = {
	        labels: [
	            'Q&A학습',
	            'To Do List 학습',
	            '리디자인 학습',
	            '시험 결과 분석지 활용',
	            '미디어 학습',
	            '봉사일동 일지세트',
	            '약점 과목 집중 학습',
	            '오답통 학습',
	            '체험 및 진로활동 일지',
	            '키워드 학습',
	            '타임리밋 학습',
	            '포스트잇 학습',
	            '필기왕 학습'
	        ],
	        datasets: [{
	            label: '분석능력',
	            data: [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13],
	            fill: true,
	            backgroundColor: 'rgba(219, 244, 253, 0.4)',
	            borderColor: '#4DC9F6',
	            pointBackgroundColor: '#4DC9F6',
	            pointBorderColor: '#fff',
	            pointHoverBackgroundColor: '#fff',
	            pointHoverBorderColor: '#4DC9F6'
	        }]
	    };
	    const config3 = {
	        type: 'radar',
	        data: data3,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart3 = new Chart(
	        document.getElementById('mylowerChart'),
	        config3
	    );

	    if(amax==a1){
	        document.getElementById("worstlearningmethod1").innerText="Q&A 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>주입식 교육에 익숙한 학습자를 위한 사고력 확장 학습 관리법이다. 학습 한 내용에 대해 스스로 문제를 출제함으로써 학습 내용의 중요 부분을 정리하는 능력도 기르고 수업의 참여도도 높이는 효과를 볼 수 있다. Q&A 노트를 시험 기간에 잘 활용하면 공부 시간이 단축될 수 있다.<br><br><p>★진행 순서★</p><p>1.  Q&A 노트를 활용한다.</p><p>2. 해당 범위는 과목과 페이지 쪽수를 적는다.</p><p>3. 주관식과 객관식 문제를 혼용하여 고민하며 문제를 만든다.</p><p>4. 답변은 최대한 자세히 적는다.</p><p>* 드리몽의 스터디보드는 Question 질문란을 수시로 활용하여 질문의 습관을 만들어간다.</p><br><p>★주의사항★</p><p>문제에 대한 고찰 능력과 사고력 확장을 위해서는 주관식 형태보다는 선택지를 포함한 객관식 형태로 출제하면 좋다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="Q&A 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga01.png'>";
	        document.getElementById("lowerkit1").innerText="Q&A 노트";
	    }else if(amax==a2){
	        document.getElementById("worstlearningmethod1").innerText="To Do list 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>완료한 미션들은 지우고 다음 날 해야 할 미션은 새로 적는다. 진행 중인 미션은 ‘진행 중 미션’ 란에, 완성되지 않은 미션은 ‘지연된 미션’ 란에 적음으로써 일정에 맞는 업무 우선 순위 배치 능력이 자연스럽게 생긴다. 매일 취침 전에 학습에 대한 내용을 정리하므로 효과적인 학습 관리 뿐만 아니라 체계적인 스케줄 관리도 가능하다.<br><br><p>★진행 순서★</p><p>1.  ‘드리미의 미션보드’를 활용한다.</p><p>2. ‘Today Mission’ 란에 어제 적었던 미션 중 완료한 것은 지우고 새로 해야 할 미션을 적는다.</p><p>3. ‘Delayed Mission’ 란에 연기된 미션을 적는다.</p><p>4. ‘Ongoing Mission’ 란에 계속 진행 중인 미션을 적는다.</p><p>5. ‘To Do List’ 보드를 활용해 할 일을 매일 관리하는 습관을 들인다.</p><br><p>★주의사항★</p><p>학습뿐만 아니라 전반적인 생활 관리가 가능하므로 될 수 있는 한 학습, 비학습의 모든 미션을 기입해야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="To Do list 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga02.png'>";
	        document.getElementById("lowerkit1").innerText="To Do list 노트";
	    }else if(amax==a3){
	        document.getElementById("worstlearningmethod1").innerText="리디자인 정리 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>필기 습관이 잡히지 않고 요약정리하는 능력도 부족한 학습자를 위한 학습 관리법이다. 수업 시간에 듣는 내용 모두를 필기하고 주요 내용을 다시 정리하는 방식으로 코넬노트의 장점을 활용하였다. 이 학습법은 재정리하는 과정 속에서 개념이해가 완벽해지는 효과가 있다.<br><br><p>★진행 순서★</p><p>1.  수업 시간에 선생님이 말씀하시는 내용은 하나도 놓치지 않고 빠른 속도로 필기한다.</p><p>2. 주요 내용을 다시 정리하면서 필기를 알아볼 수 없거나 이해가 안되는 부분은 체크해둔다.</p><p>3. 알아볼 수 없는 필기나 이해되지 않는 부분을 질문한다.</p><p>4. 리디자인 노트의 요약 부분은 자주 반복해서 본다.</p><br><p>★주의사항★</p><p>적은 내용이 없으면 재정리할 내용도 없으므로 수업 시간에 집중하여 최대한 많은 양의 정보를 적는다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="리디자인 정리 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga03.png'>";
	        document.getElementById("lowerkit1").innerText="리디자인 정리 노트";
	    }else if(amax==a4){
	        document.getElementById("worstlearningmethod1").innerText="시험 결과 분석지 활용 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>시험 결과 분석지 활용은 시험 문제의 오답을 지속적으로 관리하는 학습 관리법이다. 반복적인 실수에 대해 학습자 스스로가 경각심을 갖고 자신 의 허점을 보완할 수 있다.<br><br><p>★진행 순서★</p><p>1.  각 과목 분석지에 번호당 출제 유형과 틀린 이유를 적는다.</p><p>2. ‘틀린 이유’ 란에 [개념 이해 부족, 문제 이해 부족, 실수, 시간 부족, 착각, 졸음] 중에 하나를 적는다.</p><p>3. ‘범위’ 란에 시험 출처를 적는다.</p><br><p>★주의사항★</p><p>정답 해설지를 꼼꼼히 보며 틀린 이유에 대해 자세히 검토하지 않으면 효과가 떨어진다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="매직 모의고사 분석지";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga04.png'>";
	        document.getElementById("lowerkit1").innerText="매직 모의고사 분석지";
	    }else if(amax==a5){
	        document.getElementById("worstlearningmethod1").innerText="미디어 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>교과보다는  비교과에  더  많이  활용되며  학업  성적이  우수한  개방적 학습자와 절충적 학습자가 주로 사용하고 있다. 세부특기 활동, N. I. E. 교육, 동아리 활동, R&E 활동 등에서 활용도가 높고 특목영재고와 명문대 진학 시 포트폴리오 활용에도 탁월한 결과를 보여준다.<br><br><p>★진행 순서★</p><p>1.  미디어 학습 노트에 한 가지 주제를 정해서 ‘주제’ 란에 적는다.</p><p>2. 사용하는 교구 및 미디어의 종류와 출처를 적는다.</p><p>3. 교구 사용법 및 미디어의 핵심 내용을 정리한다.</p><br><p>★주의사항★</p><p>장기적으로는 생활기록부 관리에 큰 도움이 되므로 분실의 위험이 없도록 포트폴리오로 만들어 철저히 보관한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="미디어 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga05.png'>";
	        document.getElementById("lowerkit1").innerText="미디어 학습 노트";
	    }else if(amax==a6){
	        document.getElementById("worstlearningmethod1").innerText="봉사활동 일지세트";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>봉사활동 기획 단계부터 활동 사후 보고서 작성까지 일련의 논스톱 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="봉사활동 일지 세트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga06.png'>";
	        document.getElementById("lowerkit1").innerText="봉사활동 일지 세트";
	    }else if(amax==a7){
	        document.getElementById("worstlearningmethod1").innerText="약점 과목 집중 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 약점이라고 생각했던 과목을 매일 동일한 시간대에 요약정리함으로써 기피 과목에 대한 친숙함을 쌓아가는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 매일 동일한 시간대에 약점 과목에 대한 반복적인 학습을 진행한다.</p><p>2. 정리 내용은 너무 어렵지 않고 범위가 많지 않아야 한다.</p><p>3. 집중해서 30분이면 해결될 수 있는 학습량이어야 한다.</p><p>예> 취침 30분 전 : 수학의 함수 문제 5개씩 풀기</p><br><p>★주의사항★</p><p>약점 과목에 대한 거부감을 없애고자 하는 학습법이므로 과도한 학습량은 오히려 해가 된다. 반드시 순간 집중하여 해결할 수 있는 학습량인 30분 ~ 1시간 정도로 정한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="약점 과목 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga07.png'>";
	        document.getElementById("lowerkit1").innerText="약점 과목 학습 노트";
	    }else if(amax==a8){
	        document.getElementById("worstlearningmethod1").innerText="오답통 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>자주 틀리는 문제는 반복점검하지 않으면 보완할 수 없다. 그러나 대부분의 학생은 오답 노트를 작성하고도 두 번 다시 보지 않는다. 이런 문제점을 개선하고자 오답통 학습법이 개발되었다.<br><br><p>★진행 순서★</p><p>1.  문제를 풀다 틀린 문제가 있으면 주어진 드리몽 페이퍼에 쓰고 1번 오답통에 넣어둔다.</p><p>2. 문득 생각나면 1번 오답통 안에서 드리몽 페이퍼를 꺼내 문제를 푼다.</p><p>3. 정답을 맞추면 2번 오답통으로 이동시킨다.</p><p>4. 같은 방법으로 3번 오답통 → 쓰레기통의 순서대로 이동한다.  </p><p>5. 혹시 오답이 나오면 있던 번호의 통에 그대로 남겨둔다.</p><br><p>★주의사항★</p><p>오답통을 눈에 띄는 장소에 배치한다. 오답통이 눈에 들어오면 문제를 풀어서 3번 오답통 → 쓰레기통으로 이동시킨다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="오답통 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga08.png'>";
	        document.getElementById("lowerkit1").innerText="오답통 노트";
	    }else if(amax==a9){
	        document.getElementById("worstlearningmethod1").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>체험 및 진로활동 기획부터 활동 사후 보고서 작성까지 일련의 체계적인 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga09.png'>";
	        document.getElementById("lowerkit1").innerText="체험 및 진로활동 일지 세트";
	    }else if(amax==a10){
	        document.getElementById("worstlearningmethod1").innerText="키워드 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>빙고 노트 다음 단계 학습법으로 주로 중, 고등부 내신 기간에 이용하면 효과적이다. 학습의 체계가 잡혀있지 않은 손상된 학습자 및 감각중심 학습자나 정서관련적 학습자를 위한 핵심요약 학습법의 일종이다.<br><br><p>★진행 순서★</p><p>1.  핵심키워드를 왼쪽 줄에 일렬로 적는다.</p><p>2. 키워드만 보고 그 내용을 서술형으로 적는다.</p><p>3. 서술형을 보고 키워드를 맞추는 연습을 한다.</p><p>4. 친구들과 함께 게임형태로 진행하면 학습효과가 높아진다.</p><br><p>★주의사항★</p><p>교재에서 최대한 많은 키워드를 잡아내는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="Keyword 잡기 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga10.png'>";
	        document.getElementById("lowerkit1").innerText="Keyword 잡기 노트";
	    }else if(amax==a11){
	        document.getElementById("worstlearningmethod1").innerText="타임리밋 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습 시 긴장감이 떨어지는 학습자를 위해 개발되었다. 평상시에도 시험 기간인 것처럼 긴장감을 유도하여 짧은 기간에 미션을 완수할 수 있도록 돕는 방법이다. 단, 스트레스에 취약한 정서관련적 학습자에게는 맞지 않는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습량과 완성가능 시간을 미리 정하고 이에 맞춰 긴장감을 가지고 학습한다.</p><p>2. 너무 긴 시간을 정하면 긴장감이 떨어질 수 있으니 일주일 이내의 시간을 할당한다.</p><br><p>★주의사항★</p><p>타임리밋 학습법은 단기로 진행하는 것이 바람직하다. 목표지향 학습법과 혼동하지 않도록 주의한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="타임리밋 세트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga11.png'>";
	        document.getElementById("lowerkit1").innerText="타임리밋 세트";
	    }else if(amax==a12){
	        document.getElementById("worstlearningmethod1").innerText="포스트잇 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>자기주도학습의 과정을 보여주는 기본단계이다. 포스트잇에 중요한 부분을 수시로 필기하여 학습 역량의 흔적을 남길 수 있다. 포스트잇을 교재에 붙여두고 선생님과의 피드백 시간을 자주 가져야 효과적이다.<br><br><p>★진행 순서★</p><p>1. 수업 시간에 내용이 많아 모두 책에 정리할 수 없는 경우 포스트잇을 사용하여 추가로 필기한다.</p><p>2. 필기한 내용은 반드시 책에 붙여둔다.</p><p>3. 책의 진도가 끝나면 붙여둔 포스트잇만 모두 떼어서 벽면에 붙여두고 수시로 본다.</p><br><p>★주의사항★</p><p>포스트잇에 필기할 때는 키워드 중심으로 제목과 함께 적는다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="포스트잇 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga12.png'>";
	        document.getElementById("lowerkit1").innerText="포스트잇 노트";
	    }else if(amax==a13){
	        document.getElementById("worstlearningmethod1").innerText="필기왕 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>선생님이 불러주신 강의 내용을 모두 적는 것이 아니라 본인이 판단하기에 중요한 부분, 이해가 안 되는 부분, 질문할 부분, 추가적인 학습이 필요한 부분으로 구분하여 자신만의 필기를 해야 필기왕이 될 수 있다.<br><br><p>★진행 순서★</p><p>1.  선생님의 수업 내용 중에 중요한 부분은 ☆ 표시 / 질문은 Q 표시를 하면서 처음에는 가볍게 형광펜과 색깔펜만 사용한다. </p><p>2. 선생님의 수업 내용 중 중요한 키워드를 먼저 적어두고 적어둔 키워드를 보고 서술형으로 다시 말해본다.</p><p>3. 좀 더 발전되면 ‘커새로 파란색 학습법 카드’ 시리즈를 활용한다.</p><br><p>★주의사항★</p><p>무엇보다도 필기왕이 되기 위해서는 학습 내용의 중요도를 구분할 수 있을 정도로 선생님의 수업에 초집중한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="필기 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga13.png'>";
	        document.getElementById("lowerkit1").innerText="필기 노트";
	    };
	    if(uniquea[1]==a1){
	        document.getElementById("worstlearningmethod4").innerText="Q&A 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>주입식 교육에 익숙한 학습자를 위한 사고력 확장 학습 관리법이다. 학습 한 내용에 대해 스스로 문제를 출제함으로써 학습 내용의 중요 부분을 정리하는 능력도 기르고 수업의 참여도도 높이는 효과를 볼 수 있다. Q&A 노트를 시험 기간에 잘 활용하면 공부 시간이 단축될 수 있다.<br><br><p>★진행 순서★</p><p>1.  Q&A 노트를 활용한다.</p><p>2. 해당 범위는 과목과 페이지 쪽수를 적는다.</p><p>3. 주관식과 객관식 문제를 혼용하여 고민하며 문제를 만든다.</p><p>4. 답변은 최대한 자세히 적는다.</p><p>* 드리몽의 스터디보드는 Question 질문란을 수시로 활용하여 질문의 습관을 만들어간다.</p><br><p>★주의사항★</p><p>문제에 대한 고찰 능력과 사고력 확장을 위해서는 주관식 형태보다는 선택지를 포함한 객관식 형태로 출제하면 좋다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="Q&A 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga01.png'>";
	        document.getElementById("lowerkit2").innerText="Q&A 노트";
	    }else if(uniquea[1]==a2){
	        document.getElementById("worstlearningmethod4").innerText="To Do list 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>완료한 미션들은 지우고 다음 날 해야 할 미션은 새로 적는다. 진행 중인 미션은 ‘진행 중 미션’ 란에, 완성되지 않은 미션은 ‘지연된 미션’ 란에 적음으로써 일정에 맞는 업무 우선 순위 배치 능력이 자연스럽게 생긴다. 매일 취침 전에 학습에 대한 내용을 정리하므로 효과적인 학습 관리 뿐만 아니라 체계적인 스케줄 관리도 가능하다.<br><br><p>★진행 순서★</p><p>1.  ‘드리미의 미션보드’를 활용한다.</p><p>2. ‘Today Mission’ 란에 어제 적었던 미션 중 완료한 것은 지우고 새로 해야 할 미션을 적는다.</p><p>3. ‘Delayed Mission’ 란에 연기된 미션을 적는다.</p><p>4. ‘Ongoing Mission’ 란에 계속 진행 중인 미션을 적는다.</p><p>5. ‘To Do List’ 보드를 활용해 할 일을 매일 관리하는 습관을 들인다.</p><br><p>★주의사항★</p><p>학습뿐만 아니라 전반적인 생활 관리가 가능하므로 될 수 있는 한 학습, 비학습의 모든 미션을 기입해야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="To Do list 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga02.png'>";
	        document.getElementById("lowerkit2").innerText="To Do list 노트";
	    }else if(uniquea[1]==a3){
	        document.getElementById("worstlearningmethod4").innerText="리디자인 정리 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>필기 습관이 잡히지 않고 요약정리하는 능력도 부족한 학습자를 위한 학습 관리법이다. 수업 시간에 듣는 내용 모두를 필기하고 주요 내용을 다시 정리하는 방식으로 코넬노트의 장점을 활용하였다. 이 학습법은 재정리하는 과정 속에서 개념이해가 완벽해지는 효과가 있다.<br><br><p>★진행 순서★</p><p>1.  수업 시간에 선생님이 말씀하시는 내용은 하나도 놓치지 않고 빠른 속도로 필기한다.</p><p>2. 주요 내용을 다시 정리하면서 필기를 알아볼 수 없거나 이해가 안되는 부분은 체크해둔다.</p><p>3. 알아볼 수 없는 필기나 이해되지 않는 부분을 질문한다.</p><p>4. 리디자인 노트의 요약 부분은 자주 반복해서 본다.</p><br><p>★주의사항★</p><p>적은 내용이 없으면 재정리할 내용도 없으므로 수업 시간에 집중하여 최대한 많은 양의 정보를 적는다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="리디자인 정리 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga03.png'>";
	        document.getElementById("lowerkit2").innerText="리디자인 정리 노트";
	    }else if(uniquea[1]==a4){
	        document.getElementById("worstlearningmethod4").innerText="시험 결과 분석지 활용 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>시험 결과 분석지 활용은 시험 문제의 오답을 지속적으로 관리하는 학습 관리법이다. 반복적인 실수에 대해 학습자 스스로가 경각심을 갖고 자신 의 허점을 보완할 수 있다.<br><br><p>★진행 순서★</p><p>1.  각 과목 분석지에 번호당 출제 유형과 틀린 이유를 적는다.</p><p>2. ‘틀린 이유’ 란에 [개념 이해 부족, 문제 이해 부족, 실수, 시간 부족, 착각, 졸음] 중에 하나를 적는다.</p><p>3. ‘범위’ 란에 시험 출처를 적는다.</p><br><p>★주의사항★</p><p>정답 해설지를 꼼꼼히 보며 틀린 이유에 대해 자세히 검토하지 않으면 효과가 떨어진다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="매직 모의고사 분석지";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga04.png'>";
	        document.getElementById("lowerkit2").innerText="매직 모의고사 분석지";
	    }else if(uniquea[1]==a5){
	        document.getElementById("worstlearningmethod4").innerText="미디어 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>교과보다는  비교과에  더  많이  활용되며  학업  성적이  우수한  개방적 학습자와 절충적 학습자가 주로 사용하고 있다. 세부특기 활동, N. I. E. 교육, 동아리 활동, R&E 활동 등에서 활용도가 높고 특목영재고와 명문대 진학 시 포트폴리오 활용에도 탁월한 결과를 보여준다.<br><br><p>★진행 순서★</p><p>1.  미디어 학습 노트에 한 가지 주제를 정해서 ‘주제’ 란에 적는다.</p><p>2. 사용하는 교구 및 미디어의 종류와 출처를 적는다.</p><p>3. 교구 사용법 및 미디어의 핵심 내용을 정리한다.</p><br><p>★주의사항★</p><p>장기적으로는 생활기록부 관리에 큰 도움이 되므로 분실의 위험이 없도록 포트폴리오로 만들어 철저히 보관한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="미디어 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga05.png'>";
	        document.getElementById("lowerkit2").innerText="미디어 학습 노트";
	    }else if(uniquea[1]==a6){
	        document.getElementById("worstlearningmethod4").innerText="봉사활동 일지세트";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>봉사활동 기획 단계부터 활동 사후 보고서 작성까지 일련의 논스톱 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="봉사활동 일지 세트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga06.png'>";
	        document.getElementById("lowerkit2").innerText="봉사활동 일지 세트";
	    }else if(uniquea[1]==a7){
	        document.getElementById("worstlearningmethod4").innerText="약점 과목 집중 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 약점이라고 생각했던 과목을 매일 동일한 시간대에 요약정리함으로써 기피 과목에 대한 친숙함을 쌓아가는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 매일 동일한 시간대에 약점 과목에 대한 반복적인 학습을 진행한다.</p><p>2. 정리 내용은 너무 어렵지 않고 범위가 많지 않아야 한다.</p><p>3. 집중해서 30분이면 해결될 수 있는 학습량이어야 한다.</p><p>예> 취침 30분 전 : 수학의 함수 문제 5개씩 풀기</p><br><p>★주의사항★</p><p>약점 과목에 대한 거부감을 없애고자 하는 학습법이므로 과도한 학습량은 오히려 해가 된다. 반드시 순간 집중하여 해결할 수 있는 학습량인 30분 ~ 1시간 정도로 정한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="약점 과목 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga07.png'>";
	        document.getElementById("lowerkit2").innerText="약점 과목 학습 노트";
	    }else if(uniquea[1]==a8){
	        document.getElementById("worstlearningmethod4").innerText="오답통 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>자주 틀리는 문제는 반복점검하지 않으면 보완할 수 없다. 그러나 대부분의 학생은 오답 노트를 작성하고도 두 번 다시 보지 않는다. 이런 문제점을 개선하고자 오답통 학습법이 개발되었다.<br><br><p>★진행 순서★</p><p>1.  문제를 풀다 틀린 문제가 있으면 주어진 드리몽 페이퍼에 쓰고 1번 오답통에 넣어둔다.</p><p>2. 문득 생각나면 1번 오답통 안에서 드리몽 페이퍼를 꺼내 문제를 푼다.</p><p>3. 정답을 맞추면 2번 오답통으로 이동시킨다.</p><p>4. 같은 방법으로 3번 오답통 → 쓰레기통의 순서대로 이동한다.  </p><p>5. 혹시 오답이 나오면 있던 번호의 통에 그대로 남겨둔다.</p><br><p>★주의사항★</p><p>오답통을 눈에 띄는 장소에 배치한다. 오답통이 눈에 들어오면 문제를 풀어서 3번 오답통 → 쓰레기통으로 이동시킨다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="오답통 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga08.png'>";
	        document.getElementById("lowerkit2").innerText="오답통 노트";
	    }else if(uniquea[1]==a9){
	        document.getElementById("worstlearningmethod4").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>체험 및 진로활동 기획부터 활동 사후 보고서 작성까지 일련의 체계적인 과정으로 관리한다.<br><br><p>★진행 순서★</p><p>1.  일지 양식 샘플을 참고한다.</p><p>2. 진행 과정 중에 있었던 사건을 중심으로 느끼고 배운 점을 부각시켜 적는다.</p><br><p>★주의사항★</p><p>본인이 참여하여 적극적으로 활동하고 있는 모습을 담은 사진 1장과 주변의 정황을 볼 수 있는 사진 1장을 첨부한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="체험 및 진로활동 일지세트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga09.png'>";
	        document.getElementById("lowerkit2").innerText="체험 및 진로활동 일지세트";
	    }else if(uniquea[1]==a10){
	        document.getElementById("worstlearningmethod4").innerText="키워드 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>빙고 노트 다음 단계 학습법으로 주로 중, 고등부 내신 기간에 이용하면 효과적이다. 학습의 체계가 잡혀있지 않은 손상된 학습자 및 감각중심 학습자나 정서관련적 학습자를 위한 핵심요약 학습법의 일종이다.<br><br><p>★진행 순서★</p><p>1.  핵심키워드를 왼쪽 줄에 일렬로 적는다.</p><p>2. 키워드만 보고 그 내용을 서술형으로 적는다.</p><p>3. 서술형을 보고 키워드를 맞추는 연습을 한다.</p><p>4. 친구들과 함께 게임형태로 진행하면 학습효과가 높아진다.</p><br><p>★주의사항★</p><p>교재에서 최대한 많은 키워드를 잡아내는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="Keyword 잡기 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga10.png'>";
	        document.getElementById("lowerkit2").innerText="Keyword 잡기 노트";
	    }else if(uniquea[1]==a11){
	        document.getElementById("worstlearningmethod4").innerText="타임리밋 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습 시 긴장감이 떨어지는 학습자를 위해 개발되었다. 평상시에도 시험 기간인 것처럼 긴장감을 유도하여 짧은 기간에 미션을 완수할 수 있도록 돕는 방법이다. 단, 스트레스에 취약한 정서관련적 학습자에게는 맞지 않는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습량과 완성가능 시간을 미리 정하고 이에 맞춰 긴장감을 가지고 학습한다.</p><p>2. 너무 긴 시간을 정하면 긴장감이 떨어질 수 있으니 일주일 이내의 시간을 할당한다.</p><br><p>★주의사항★</p><p>타임리밋 학습법은 단기로 진행하는 것이 바람직하다. 목표지향 학습법과 혼동하지 않도록 주의한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="타임리밋 세트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga11.png'>";
	        document.getElementById("lowerkit2").innerText="타임리밋 세트";
	    }else if(uniquea[1]==a12){
	        document.getElementById("worstlearningmethod4").innerText="포스트잇 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>자기주도학습의 과정을 보여주는 기본단계이다. 포스트잇에 중요한 부분을 수시로 필기하여 학습 역량의 흔적을 남길 수 있다. 포스트잇을 교재에 붙여두고 선생님과의 피드백 시간을 자주 가져야 효과적이다.<br><br><p>★진행 순서★</p><p>1. 수업 시간에 내용이 많아 모두 책에 정리할 수 없는 경우 포스트잇을 사용하여 추가로 필기한다.</p><p>2. 필기한 내용은 반드시 책에 붙여둔다.</p><p>3. 책의 진도가 끝나면 붙여둔 포스트잇만 모두 떼어서 벽면에 붙여두고 수시로 본다.</p><br><p>★주의사항★</p><p>포스트잇에 필기할 때는 키워드 중심으로 제목과 함께 적는다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="포스트잇 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga12.png'>";
	        document.getElementById("lowerkit2").innerText="포스트잇 노트";
	    }else if(uniquea[1]==a13){
	        document.getElementById("worstlearningmethod4").innerText="필기왕 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>선생님이 불러주신 강의 내용을 모두 적는 것이 아니라 본인이 판단하기에 중요한 부분, 이해가 안 되는 부분, 질문할 부분, 추가적인 학습이 필요한 부분으로 구분하여 자신만의 필기를 해야 필기왕이 될 수 있다.<br><br><p>★진행 순서★</p><p>1.  선생님의 수업 내용 중에 중요한 부분은 ☆ 표시 / 질문은 Q 표시를 하면서 처음에는 가볍게 형광펜과 색깔펜만 사용한다. </p><p>2. 선생님의 수업 내용 중 중요한 키워드를 먼저 적어두고 적어둔 키워드를 보고 서술형으로 다시 말해본다.</p><p>3. 좀 더 발전되면 ‘커새로 파란색 학습법 카드’ 시리즈를 활용한다.</p><br><p>★주의사항★</p><p>무엇보다도 필기왕이 되기 위해서는 학습 내용의 중요도를 구분할 수 있을 정도로 선생님의 수업에 초집중한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="필기 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imga13.png'>";
	        document.getElementById("lowerkit2").innerText="필기 노트";
	    };

	    } else if(resultmin==hresult){
	    document.getElementById("resultcharttext2").innerText="감정능력";
	    document.getElementById("worsttendency1").innerText="감정능력보완";
	    document.getElementById("worsttendency2").innerText="감정능력보완";
	    document.getElementById("worsttendency2").style.color="#479847";
	    document.getElementById("worstmain").style.color="#479847";
	    document.getElementById("worstmain").style.borderColor="#479847";
	    const data3 = {
	              labels: [
	                '프라미스학습',
	                '감사편지',
	                '감정일기',
	                '덩어리학습',
	                '동기부여학습',
	                '라이벌 분석 학습',
	                '롤모델 학습',
	                '바이오리듬 학습',
	                '방해 요소 제거 학습',
	                '빙고학습',
	                '스킵학습',
	                '스탬프학습',
	                '시간매니저 학습',
	                '요술펜학습'
	              ],
	              datasets: [{
	                label: '감정능력',
	                data: [h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14],
	                fill: true,
	                backgroundColor: 'rgba(219, 244, 253, 0.4)',
	                borderColor: '#4DC9F6',
	                pointBackgroundColor: '#4DC9F6',
	                pointBorderColor: '#fff',
	                pointHoverBackgroundColor: '#fff',
	                pointHoverBorderColor: '#4DC9F6'
	              }]
	            };
	    const config3 = {
	        type: 'radar',
	        data: data3,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart3 = new Chart(
	        document.getElementById('mylowerChart'),
	        config3
	    );
	    if(hmax==h1){
	        document.getElementById("worstlearningmethod1").innerText="프라미스 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자 및 구조주의적 학습자에게 적합한 학습법이다. 약속을 지키려고 하는 성향이 강해 이러한 성향을 학습에 이용하면 만족할 만한 결과를 쉽게 얻을 수 있다. 단, 자존감이 떨어진 학습자들은 전혀 미션을 지키지 않기 때문에 학습법이 효과를 거두기 위해서는 학습 자존감을 높이는 것이 급선무이다.<br><br><p>★진행 순서★</p><p>1.  우선순위대로 공부할 과목을 적는다.</p><p>2. 공부 범위는 구체적으로 적는다.</p><p>3. 공부 범위에 학교 수업과 관련된 과제는 반드시 포함한다.</p><p>4. 요점정리 및 질문사항은 별도로 요약한다.</p><p>5. 학습 후에는 이행도를 표시한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="프라미스 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh01.png'>";
	        document.getElementById("lowerkit1").innerText="프라미스 노트";
	    }else if(hmax==h2){
	        document.getElementById("worstlearningmethod1").innerText="감사편지";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>삶의 이유, 공부의 이유 등등 자존감이 떨어져 학습의 효과가 떨어질 때, 인생의 허무함을 느끼고 귀차니즘에 빠질 때 주변의 소중한 사람들을 돌아보면서 매사 최선을 다해야 하는 이유를 찾을 수 있다. 학습동기부여의 한 방법으로 학습에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  스스로 동기부여가 안되고 삶의 방향성이 흔들릴 때 편지를 쓸 사람을 찾는다.</p><p>2. 그 사람에게 나는 무엇을 해줄 수 있는지 고민한다.</p><p>3. 열심히 살아갈 이유, 학습의 이유를 편지글 속에 포함시킨다.</p><br><p>★주의사항★</p><p>학습동기부여 방식은 여러 가지가 있으나 이타심이 학습에 미치는 영향을 반영하여 감사편지 방식을 활용하기도 한다. 사랑하는 사람들에게 감사 편지를 쓸 때 그들을 위해 해줄 수 있는 일 중 성적 향상이 포함되는 경우 도 있다. 이때 자존감도 높아지고 학습 효과도 볼 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="감사편지";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh02.png'>";
	        document.getElementById("lowerkit1").innerText="감사편지";
	    }else if(hmax==h3){
	        document.getElementById("worstlearningmethod1").innerText="감정일기";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자에게 있어 감정의 기복은 학습의 가장 큰 방해원인으로 최대한 빨리 안정을 찾아야 한다. 오늘 받은 나의 상처나 속상한 감정들을 솔직히 표현하고 원인을 분석하여 대책을 마련하는 것이 학습의 효율성을 높이는 방법이다.<br><br><p>★진행 순서★</p><p>1.  감정날씨에 나의 감정을 적는다.</p><p>2. 감정을 느끼게 된 배경을 적는다.</p><p>3. 감정의 전개 과정을 적는다.</p><p>4. 원인에 대한 대책을 고민해보고, 생각나는 대로 적는다.</p><p>5. 위의 과정 속에서 감정이 자연스럽게 안정된다.</p><br><p>★주의사항★</p><p>솔직한 감정을 적으며 나름대로 원인을 분석하려고 고민해야 한다. 행복 한 날보다 우울하거나 속상한 날에 감정일기를 적는 것이 이상적이다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="감정일기";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh03.png'>";
	        document.getElementById("lowerkit1").innerText="감정일기";
	    }else if(hmax==h4){
	        document.getElementById("worstlearningmethod1").innerText="덩어리 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>주요 과목 학습을 습관화하기 위해 학습량을 미리 계획하고 그에 대한 이행을 실천하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  덩어리 다이어리 범위란에 소제목을 적는다.</p><p>2. 구체적인 미션을 상세히 적는다.</p><p>3. 완성도 체크 시 별이 1개 이하인 경우 다음 날에도 동일한 미션을 한다.</p><br><p>★주의사항★</p><p>주요 과목 학습을 습관화하고자 함이니 적은 양이라도 지속적으로 매일 체크할 수 있도록 미션을 정한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="덩어리 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh04.png'>";
	        document.getElementById("lowerkit1").innerText="덩어리 다이어리";
	    }else if(hmax==h5){
	        document.getElementById("worstlearningmethod1").innerText="동기부여 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>동기부여 학습은 일일 학습량을 달성하기 위해 하고 싶은 일을 일시적으로 보류하고 인내와 끈기의 훈련을 하는 생활 관리법이자 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  왼쪽 박스 구름 속에는 하고 싶은 것들을 적는다.</p><p>2. 오른쪽 박스 구름 속에는 해야 할 학습 범위를 상세히 적는다.</p><p>3. 오른쪽 박스의 해야 할 학습 범위의 성취도가 80% 가 넘으면 왼쪽 박스 구름 속에 적은 것들을 순차적으로 진행한다.</p><br><p>★주의사항★</p><p>할 일과 하고 싶은 일을 너무 많이 적으면 집중력이 흐트러질 수 있으므로  반드시 2 ~ 3개의 내용만 적는다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="동기부여 학습 일지";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh05.png'>";
	        document.getElementById("lowerkit1").innerText="동기부여 학습 일지";
	    }else if(hmax==h6){
	        document.getElementById("worstlearningmethod1").innerText="라이벌 분석 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>평소 동기부여가 잘되지 않는 학습자를 위한 단기 학습 전략으로서 주변에서 쉽게 대상을 찾을 수 있어 활용도가 높다. 자주 학습 자극을 받을 수 있으며 시험 기간에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  라이벌이 가지고 있는 장점을 내가 가지고 있는지에 대한 유사도 체크를 한다.</p><p>2. 라이벌의 장점을 구체적으로 적는다.</p><p>3. 내가 적용할 부분을 자세히 구상한다.</p><p>4. 라이벌의 단점을 구체적으로 정리하면서 나에게도 이런 성향이 있는지 살펴본다.</p><p>5. 3번의 적용할 부분에 대해 차트 아래 부분의 체크박스에 O, △, X 를 표시하고 총점이 80점 이하가 되면 다음 달에도 동일한 차트를 이용한다.</p><br><p>★주의사항★</p><p>라이벌이 인식하지 못하도록 차트를 조심스럽게 관리한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="라이벌 분석 차트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh06.png'>";
	        document.getElementById("lowerkit1").innerText="라이벌 분석 차트";
	    }else if(hmax==h7){
	        document.getElementById("worstlearningmethod1").innerText="롤모델 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>롤모델을 선정함으로써 학습적인 면뿐만 아니라 비학습적인 면까지도 구체적인 목표를 세워 성과를 쉽게 확인할 수 있다. 처음부터 무형의 성과를 얻기에는 무리가 있는 직관적 학습자 및 정서중립적 학습자를 위한 효과적인 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  롤모델을 선정하고 선정 이유를 밝힌다.</p><p>2. 학습면과 생활면에 각각 배울 점을 구체적으로 적는다.</p><p>3. 기적의 28일 동안 배울 점을 실천함으로써 구체적인 목표를 달성한다.</p><p>4. O, △, X 를 표시해가면서 이행도를 체크하며 총점이 70점 이하인 경우 다음 달에 이어서 미션을 이행한다.</p><br><p>★주의사항★</p><p>롤모델의 장점이 닮을 만한 장점이어야 하며 구체적인 특징을 잡아내야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="롤모델 플래너";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh07.png'>";
	        document.getElementById("lowerkit1").innerText="롤모델 플래너";
	    }else if(hmax==h8){
	        document.getElementById("worstlearningmethod1").innerText="바이오리듬 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>하루 동안의 기록되는 바이오리듬 중 ‘지성’ 의 영역에서 가장 높은 시간대를 찾아 그 시간대만이라도 학습을 유도하는 방식이다. 손상된 학습자를 위한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  바이오리듬 체크 어플리케이션을 통해 지성이 높은 시간대를 찾는다.</p><p>2. 시간대와 학습 분량을 적는다.</p><p>3. 반드시 이행할 수 있는 범위 만큼만 적는다.</p><br><p>★주의사항★</p><p>공부를 등한시하는 학생들에게 단 몇 시간이라도 효율이 높은 시간대를 미리 알려주고 학습 효과를 높이려는 전략이다. 체크된 바이오리듬에서는 최소의 공부 시간만 잡아주므로 시간이 정해지면 반드시 학습을 하여야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="바이오리듬 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh08.png'>";
	        document.getElementById("lowerkit1").innerText="바이오리듬 다이어리";
	    }else if(hmax==h9){
	        document.getElementById("worstlearningmethod1").innerText="방해 요소 제거 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습자라면 누구나 학습의 방해를 받는다. 하지만 자기 관리가 뛰어난 학습자는 사전에 계획을 세우고 학습에 방해가 되는 요소는 전략적으로 멀리한다.<br><br><p>★진행 순서★</p><p>1.  학습에 방해되는 요소를 모두 적는다.</p><p>2. 제거 방법을 구체적으로 적고 실천한다.</p><p>3. 얼마나 실천하였는지 기입하고 일정 기간이 지나면 반성의 시간을 갖는다.</p><p>4. 방해 요소를 제거하지 못한 원인을 분석하고 끊임없이 결과를 피드백한다.</p><br><p>★주의사항★</p><p>구체적으로 적어야만 학습의 나쁜 습관도 고칠 수 있고 방해 요소도 제거 할 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="방해 요소 제거 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh09.png'>";
	        document.getElementById("lowerkit1").innerText="방해 요소 제거 학습 노트";
	    }else if(hmax==h10){
	        document.getElementById("worstlearningmethod1").innerText="빙고 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>키워드 학습법과 유사하지만 저학년을 대상으로 하는 게임식 학습 관리법이다. 학교 모둠활동 시 적용하면 더욱 좋다.<br><br><p>★진행 순서★</p><p>1. 학습 범위를 정하고 설명란에 설명을 적는다.(빙고판을 비워둔다)</p><p>2. 친구들끼리 서로 돌려가며 빙고판을 채운다.</p><p>3. 출제자가 정답을 써가며 채점한다.</p><p>4. 점수가 제일 낮은 학생이 제일 높은 학생의 소원을 들어준다.</p><br><p>★주의사항★</p><p>시험 직전날 다양한 문제에 적응하기 위해 친구들끼리 문제를 내보고 답해보면 자기점검도 되면서 사고력의 확장도 이룰 수 있다. 문제를 출제 하는 사람의 사고력이 크게 향상되므로 성실하게 임한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="빙고 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh10.png'>";
	        document.getElementById("lowerkit1").innerText="빙고 노트";
	    }else if(hmax==h11){
	        document.getElementById("worstlearningmethod1").innerText="스킵 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>완벽주의 학습자를 위한 학습전략으로서 학습 범위가 광범위한 상태에서 더 이상 진전이 없는 단점을 보완하고자 만들어진 학습법이다.<br><br><p>★진행 순서★</p><p>1.  내용이 너무 어렵거나 범위가 많아 예상진도만큼 진행되지 않음을 발견하면 Skip 도장과 보드를 활용한다.</p><p></p><p>2. 교재에 드리몽 Skip 도장을 찍는다.</p><p>3. 스터디보드의 Skip 란을 활용한다. (드리몽의 스터디보드 활용)</p><p>4. 학습 다이어리에 체크해서 이후에 다시 보도록 상세히 적는다.(다이어리 활용)</p><p>5. Skip 표시된 내용만 일주일 후에 정리하고 질문을 만든다.</p><p>6. 검토 과정 중에 암기할 사항이 생기면 드리몽 포스트잇을 사용하여 지속적으로 반복 학습한다. (드리몽 포스트잇 활용)</p><br><p>★주의사항★</p><p>직관주의 학습자가 사용하면 오히려 학습습관이 망가질 수 있으므로 지양한다. 꼼꼼히 학습하지 않은 학습자가 학습 시 어렵다고 생각될 때 무조건 ‘나중에 해야지’ 하고 미루면 문제가 생길 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="드리몽 포스트잇";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh11.png'>";
	        document.getElementById("lowerkit1").innerText="드리몽 포스트잇";
	    }else if(hmax==h12){
	        document.getElementById("worstlearningmethod1").innerText="스탬프 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>평소 필기의 습관이 다져지지 않은 학습자를 위해 개발된 학습 방법으로  Skip, 성실왕, 최고왕, ☆ 도장으로 학습 내용 중요도와 학업성취도를 체크하면서 지속적으로 학습 피드백을 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 질문거리나 이해가 부족한 부분이 생기면 Skip 도장을 찍고 복습 시간에 다시 본다.</p><p>2. 학습의 동기부여 차원에서 하루 할당량이 완료되면 최고왕, 성실왕 도장을 찍는다.</p><p>3. ☆ 도장은 성취도란을 채우는데 사용되며 저학년일수록 동기부여 효과가 크다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="드리몽 도장세트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh12.png'>";
	        document.getElementById("lowerkit1").innerText="드리몽 도장세트";
	    }else if(hmax==h13){
	        document.getElementById("worstlearningmethod1").innerText="시간 매니저 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>선호도에 따라 학습 과목 및 학습 분량을 불균형하게 계획하고 학습 편식을 하는 학습자를 위해 개발된 관리법이다. 균형 잡힌 식단처럼 균형 잡힌 학습 계획을 세우고 실천하는 연습을 하면 생활 관리에도 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  시간 매니저 노트를 활용해 기피 및 취약 과목 (활동) 은 “(+) 가 필요해”에 정리한다.</p><p>2. 필요 이상으로 학습 시간이 배정된 과목은 “(-) 가 필요해”  에 정리한다.</p><p>3. 진행상황을 보고 + 와 - 를 적절히 조율하여 전과목에서 우수한 성적을 거둘 수 있게 습관화한다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="시간 매니저 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh13.png'>";
	        document.getElementById("lowerkit1").innerText="시간 매니저 학습법";
	    }else if(hmax==h14){
	        document.getElementById("worstlearningmethod1").innerText="요술펜 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>문제를 다량으로 푸는 것보다 한 문제를 여러 번 풀어 그 개념을 완벽히 이해하는 것이 더 중요할 때도 있다. 이 때 요술펜을 사용하면 불빛을 비출 때만 답이 보이므로 지우지 않아도 여러 번 다시 풀 수 있으며, 학습에 흥미를 갖도록 하는데에도 효과적이다.<br><br><p>★진행 순서★</p><p>1.  답을 체크할 때 요술펜으로 적는다.</p><p>2. 요술펜으로 표시한 부분에 빛을 비추면 답이 보인다.</p><p>3. 첫 번째 적은 답이 무엇인지 알 수 있으므로 학습자의 최초 허점도 쉽게 체크할 수 있다.</p><br><p>★주의사항★</p><p>요술펜 표시는 물음표 바로 옆에 표시해야 답을 찾는데 시간이 걸리지 않는다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="요술펜 세트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh14.png'>";
	        document.getElementById("lowerkit1").innerText="요술펜 세트";
	    };
	    if(uniqueh[1]==h1){
	        document.getElementById("worstlearningmethod4").innerText="프라미스 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자 및 구조주의적 학습자에게 적합한 학습법이다. 약속을 지키려고 하는 성향이 강해 이러한 성향을 학습에 이용하면 만족할 만한 결과를 쉽게 얻을 수 있다. 단, 자존감이 떨어진 학습자들은 전혀 미션을 지키지 않기 때문에 학습법이 효과를 거두기 위해서는 학습 자존감을 높이는 것이 급선무이다.<br><br><p>★진행 순서★</p><p>1.  우선순위대로 공부할 과목을 적는다.</p><p>2. 공부 범위는 구체적으로 적는다.</p><p>3. 공부 범위에 학교 수업과 관련된 과제는 반드시 포함한다.</p><p>4. 요점정리 및 질문사항은 별도로 요약한다.</p><p>5. 학습 후에는 이행도를 표시한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="프라미스 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh01.png'>";
	        document.getElementById("lowerkit2").innerText="프라미스 노트";
	    }else if(uniqueh[1]==h2){
	        document.getElementById("worstlearningmethod4").innerText="감사편지";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>삶의 이유, 공부의 이유 등등 자존감이 떨어져 학습의 효과가 떨어질 때, 인생의 허무함을 느끼고 귀차니즘에 빠질 때 주변의 소중한 사람들을 돌아보면서 매사 최선을 다해야 하는 이유를 찾을 수 있다. 학습동기부여의 한 방법으로 학습에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  스스로 동기부여가 안되고 삶의 방향성이 흔들릴 때 편지를 쓸 사람을 찾는다.</p><p>2. 그 사람에게 나는 무엇을 해줄 수 있는지 고민한다.</p><p>3. 열심히 살아갈 이유, 학습의 이유를 편지글 속에 포함시킨다.</p><br><p>★주의사항★</p><p>학습동기부여 방식은 여러 가지가 있으나 이타심이 학습에 미치는 영향을 반영하여 감사편지 방식을 활용하기도 한다. 사랑하는 사람들에게 감사 편지를 쓸 때 그들을 위해 해줄 수 있는 일 중 성적 향상이 포함되는 경우 도 있다. 이때 자존감도 높아지고 학습 효과도 볼 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="감사편지";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh02.png'>";
	        document.getElementById("lowerkit2").innerText="감사편지";
	    }else if(uniqueh[1]==h3){
	        document.getElementById("worstlearningmethod4").innerText="감정일기";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>정서관련적 학습자에게 있어 감정의 기복은 학습의 가장 큰 방해원인으로 최대한 빨리 안정을 찾아야 한다. 오늘 받은 나의 상처나 속상한 감정들을 솔직히 표현하고 원인을 분석하여 대책을 마련하는 것이 학습의 효율성을 높이는 방법이다.<br><br><p>★진행 순서★</p><p>1.  감정날씨에 나의 감정을 적는다.</p><p>2. 감정을 느끼게 된 배경을 적는다.</p><p>3. 감정의 전개 과정을 적는다.</p><p>4. 원인에 대한 대책을 고민해보고, 생각나는 대로 적는다.</p><p>5. 위의 과정 속에서 감정이 자연스럽게 안정된다.</p><br><p>★주의사항★</p><p>솔직한 감정을 적으며 나름대로 원인을 분석하려고 고민해야 한다. 행복 한 날보다 우울하거나 속상한 날에 감정일기를 적는 것이 이상적이다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="감정일기";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh03.png'>";
	        document.getElementById("lowerkit2").innerText="감정일기";
	    }else if(uniqueh[1]==h4){
	        document.getElementById("worstlearningmethod4").innerText="덩어리 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>주요 과목 학습을 습관화하기 위해 학습량을 미리 계획하고 그에 대한 이행을 실천하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  덩어리 다이어리 범위란에 소제목을 적는다.</p><p>2. 구체적인 미션을 상세히 적는다.</p><p>3. 완성도 체크 시 별이 1개 이하인 경우 다음 날에도 동일한 미션을 한다.</p><br><p>★주의사항★</p><p>주요 과목 학습을 습관화하고자 함이니 적은 양이라도 지속적으로 매일 체크할 수 있도록 미션을 정한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="덩어리 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh04.png'>";
	        document.getElementById("lowerkit2").innerText="덩어리 다이어리";
	    }else if(uniqueh[1]==h5){
	        document.getElementById("worstlearningmethod4").innerText="동기부여 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>동기부여 학습은 일일 학습량을 달성하기 위해 하고 싶은 일을 일시적으로 보류하고 인내와 끈기의 훈련을 하는 생활 관리법이자 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  왼쪽 박스 구름 속에는 하고 싶은 것들을 적는다.</p><p>2. 오른쪽 박스 구름 속에는 해야 할 학습 범위를 상세히 적는다.</p><p>3. 오른쪽 박스의 해야 할 학습 범위의 성취도가 80% 가 넘으면 왼쪽 박스 구름 속에 적은 것들을 순차적으로 진행한다.</p><br><p>★주의사항★</p><p>할 일과 하고 싶은 일을 너무 많이 적으면 집중력이 흐트러질 수 있으므로  반드시 2 ~ 3개의 내용만 적는다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="동기부여 학습 일지";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh05.png'>";
	        document.getElementById("lowerkit2").innerText="동기부여 학습 일지";
	    }else if(uniqueh[1]==h6){
	        document.getElementById("worstlearningmethod4").innerText="라이벌 분석 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>평소 동기부여가 잘되지 않는 학습자를 위한 단기 학습 전략으로서 주변에서 쉽게 대상을 찾을 수 있어 활용도가 높다. 자주 학습 자극을 받을 수 있으며 시험 기간에 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  라이벌이 가지고 있는 장점을 내가 가지고 있는지에 대한 유사도 체크를 한다.</p><p>2. 라이벌의 장점을 구체적으로 적는다.</p><p>3. 내가 적용할 부분을 자세히 구상한다.</p><p>4. 라이벌의 단점을 구체적으로 정리하면서 나에게도 이런 성향이 있는지 살펴본다.</p><p>5. 3번의 적용할 부분에 대해 차트 아래 부분의 체크박스에 O, △, X 를 표시하고 총점이 80점 이하가 되면 다음 달에도 동일한 차트를 이용한다.</p><br><p>★주의사항★</p><p>라이벌이 인식하지 못하도록 차트를 조심스럽게 관리한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="라이벌 분석 차트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh06.png'>";
	        document.getElementById("lowerkit2").innerText="라이벌 분석 차트";
	    }else if(uniqueh[1]==h7){
	        document.getElementById("worstlearningmethod4").innerText="롤모델 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>롤모델을 선정함으로써 학습적인 면뿐만 아니라 비학습적인 면까지도 구체적인 목표를 세워 성과를 쉽게 확인할 수 있다. 처음부터 무형의 성과를 얻기에는 무리가 있는 직관적 학습자 및 정서중립적 학습자를 위한 효과적인 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  롤모델을 선정하고 선정 이유를 밝힌다.</p><p>2. 학습면과 생활면에 각각 배울 점을 구체적으로 적는다.</p><p>3. 기적의 28일 동안 배울 점을 실천함으로써 구체적인 목표를 달성한다.</p><p>4. O, △, X 를 표시해가면서 이행도를 체크하며 총점이 70점 이하인 경우 다음 달에 이어서 미션을 이행한다.</p><br><p>★주의사항★</p><p>롤모델의 장점이 닮을 만한 장점이어야 하며 구체적인 특징을 잡아내야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="롤모델 플래너";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh07.png'>";
	        document.getElementById("lowerkit2").innerText="롤모델 플래너";
	    }else if(uniqueh[1]==h8){
	        document.getElementById("worstlearningmethod4").innerText="바이오리듬 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>하루 동안의 기록되는 바이오리듬 중 ‘지성’ 의 영역에서 가장 높은 시간대를 찾아 그 시간대만이라도 학습을 유도하는 방식이다. 손상된 학습자를 위한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  바이오리듬 체크 어플리케이션을 통해 지성이 높은 시간대를 찾는다.</p><p>2. 시간대와 학습 분량을 적는다.</p><p>3. 반드시 이행할 수 있는 범위 만큼만 적는다.</p><br><p>★주의사항★</p><p>공부를 등한시하는 학생들에게 단 몇 시간이라도 효율이 높은 시간대를 미리 알려주고 학습 효과를 높이려는 전략이다. 체크된 바이오리듬에서는 최소의 공부 시간만 잡아주므로 시간이 정해지면 반드시 학습을 하여야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="바이오리듬 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh08.png'>";
	        document.getElementById("lowerkit2").innerText="바이오리듬 다이어리";
	    }else if(uniqueh[1]==h9){
	        document.getElementById("worstlearningmethod4").innerText="방해 요소 제거 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습자라면 누구나 학습의 방해를 받는다. 하지만 자기 관리가 뛰어난 학습자는 사전에 계획을 세우고 학습에 방해가 되는 요소는 전략적으로 멀리한다.<br><br><p>★진행 순서★</p><p>1.  학습에 방해되는 요소를 모두 적는다.</p><p>2. 제거 방법을 구체적으로 적고 실천한다.</p><p>3. 얼마나 실천하였는지 기입하고 일정 기간이 지나면 반성의 시간을 갖는다.</p><p>4. 방해 요소를 제거하지 못한 원인을 분석하고 끊임없이 결과를 피드백한다.</p><br><p>★주의사항★</p><p>구체적으로 적어야만 학습의 나쁜 습관도 고칠 수 있고 방해 요소도 제거 할 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="방해 요소 제거 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh09.png'>";
	        document.getElementById("lowerkit2").innerText="방해 요소 제거 학습 노트";
	    }else if(uniqueh[1]==h10){
	        document.getElementById("worstlearningmethod4").innerText="빙고 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>키워드 학습법과 유사하지만 저학년을 대상으로 하는 게임식 학습 관리법이다. 학교 모둠활동 시 적용하면 더욱 좋다.<br><br><p>★진행 순서★</p><p>1. 학습 범위를 정하고 설명란에 설명을 적는다.(빙고판을 비워둔다)</p><p>2. 친구들끼리 서로 돌려가며 빙고판을 채운다.</p><p>3. 출제자가 정답을 써가며 채점한다.</p><p>4. 점수가 제일 낮은 학생이 제일 높은 학생의 소원을 들어준다.</p><br><p>★주의사항★</p><p>시험 직전날 다양한 문제에 적응하기 위해 친구들끼리 문제를 내보고 답해보면 자기점검도 되면서 사고력의 확장도 이룰 수 있다. 문제를 출제 하는 사람의 사고력이 크게 향상되므로 성실하게 임한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="빙고 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh10.png'>";
	        document.getElementById("lowerkit2").innerText="빙고 노트";
	    }else if(uniqueh[1]==h11){
	        document.getElementById("worstlearningmethod4").innerText="스킵 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>완벽주의 학습자를 위한 학습전략으로서 학습 범위가 광범위한 상태에서 더 이상 진전이 없는 단점을 보완하고자 만들어진 학습법이다.<br><br><p>★진행 순서★</p><p>1.  내용이 너무 어렵거나 범위가 많아 예상진도만큼 진행되지 않음을 발견하면 Skip 도장과 보드를 활용한다.</p><p></p><p>2. 교재에 드리몽 Skip 도장을 찍는다.</p><p>3. 스터디보드의 Skip 란을 활용한다. (드리몽의 스터디보드 활용)</p><p>4. 학습 다이어리에 체크해서 이후에 다시 보도록 상세히 적는다.(다이어리 활용)</p><p>5. Skip 표시된 내용만 일주일 후에 정리하고 질문을 만든다.</p><p>6. 검토 과정 중에 암기할 사항이 생기면 드리몽 포스트잇을 사용하여 지속적으로 반복 학습한다. (드리몽 포스트잇 활용)</p><br><p>★주의사항★</p><p>직관주의 학습자가 사용하면 오히려 학습습관이 망가질 수 있으므로 지양한다. 꼼꼼히 학습하지 않은 학습자가 학습 시 어렵다고 생각될 때 무조건 ‘나중에 해야지’ 하고 미루면 문제가 생길 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="드리몽 포스트잇";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh11.png'>";
	        document.getElementById("lowerkit2").innerText="드리몽 포스트잇";
	    }else if(uniqueh[1]==h12){
	        document.getElementById("worstlearningmethod4").innerText="스탬프 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>평소 필기의 습관이 다져지지 않은 학습자를 위해 개발된 학습 방법으로  Skip, 성실왕, 최고왕, ☆ 도장으로 학습 내용 중요도와 학업성취도를 체크하면서 지속적으로 학습 피드백을 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 질문거리나 이해가 부족한 부분이 생기면 Skip 도장을 찍고 복습 시간에 다시 본다.</p><p>2. 학습의 동기부여 차원에서 하루 할당량이 완료되면 최고왕, 성실왕 도장을 찍는다.</p><p>3. ☆ 도장은 성취도란을 채우는데 사용되며 저학년일수록 동기부여 효과가 크다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="드리몽 도장세트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh12.png'>";
	        document.getElementById("lowerkit2").innerText="드리몽 도장세트";
	    }else if(uniqueh[1]==h13){
	        document.getElementById("worstlearningmethod4").innerText="시간 매니저 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>선호도에 따라 학습 과목 및 학습 분량을 불균형하게 계획하고 학습 편식을 하는 학습자를 위해 개발된 관리법이다. 균형 잡힌 식단처럼 균형 잡힌 학습 계획을 세우고 실천하는 연습을 하면 생활 관리에도 큰 도움이 된다.<br><br><p>★진행 순서★</p><p>1.  시간 매니저 노트를 활용해 기피 및 취약 과목 (활동) 은 “(+) 가 필요해”에 정리한다.</p><p>2. 필요 이상으로 학습 시간이 배정된 과목은 “(-) 가 필요해”  에 정리한다.</p><p>3. 진행상황을 보고 + 와 - 를 적절히 조율하여 전과목에서 우수한 성적을 거둘 수 있게 습관화한다.</p><br><p>★주의사항★</p><p>필통 속에 드리몽 도장세트를 반드시 가지고 다닌다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="시간 매니저 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh13.png'>";
	        document.getElementById("lowerkit2").innerText="시간 매니저 학습법";
	    }else if(uniqueh[1]==h14){
	        document.getElementById("worstlearningmethod4").innerText="요술펜 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>문제를 다량으로 푸는 것보다 한 문제를 여러 번 풀어 그 개념을 완벽히 이해하는 것이 더 중요할 때도 있다. 이 때 요술펜을 사용하면 불빛을 비출 때만 답이 보이므로 지우지 않아도 여러 번 다시 풀 수 있으며, 학습에 흥미를 갖도록 하는데에도 효과적이다.<br><br><p>★진행 순서★</p><p>1.  답을 체크할 때 요술펜으로 적는다.</p><p>2. 요술펜으로 표시한 부분에 빛을 비추면 답이 보인다.</p><p>3. 첫 번째 적은 답이 무엇인지 알 수 있으므로 학습자의 최초 허점도 쉽게 체크할 수 있다.</p><br><p>★주의사항★</p><p>요술펜 표시는 물음표 바로 옆에 표시해야 답을 찾는데 시간이 걸리지 않는다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="요술펜 세트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgh14.png'>";
	        document.getElementById("lowerkit2").innerText="요술펜 세트";
	    };

	    }else if(resultmin==rresult){
	    document.getElementById("resultcharttext2").innerText="습관능력";
	    document.getElementById("worsttendency1").innerText="습관능력보완";
	    document.getElementById("worsttendency2").innerText="습관능력보완";
	    document.getElementById("worsttendency2").style.color="#FFAB65";
	    document.getElementById("worstmain").style.color="#FFAB65";
	    document.getElementById("worstmain").style.borderColor="#FFAB65";
	    const data3 = {
	        labels: [
	            '깜지학습',
	            '녹음학습',
	            '무한반복학습',
	            '샤우팅활용',
	            '엑티비티학습',
	            '에빙하우스 보카학습'
	        ],
	        datasets: [{
	            label: '습관능력',
	            data: [r1, r2, r3, r4, r5, r6],
	            fill: true,
	            backgroundColor: 'rgba(219, 244, 253, 0.4)',
	            borderColor: '#4DC9F6',
	            pointBackgroundColor: '#4DC9F6',
	            pointBorderColor: '#fff',
	            pointHoverBackgroundColor: '#fff',
	            pointHoverBorderColor: '#4DC9F6'
	        }]
	    };
	    const config3 = {
	        type: 'radar',
	        data: data3,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart3 = new Chart(
	        document.getElementById('mylowerChart'),
	        config3
	    );
	    if(rmax==r1){
	        document.getElementById("worstlearningmethod1").innerText="깜지 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>Input 과정에서 눈으로만 훑는 학습법을 사용한 학습자들이 단순한 깜지 채우기 Output 과정을 통해서도 학습의 효과를 높일 수 있다는 원리에서 착안한 학습법이다. ‘노력 이외에는 공부에 왕도가 없다’ 라는 메시지를 전달하면서 끈기와 성실함을 높이게 된다.<br><br><p>★진행 순서★</p><p>1.  주요 내용의 제목을 ‘깜지칸’ 란에 적는다.</p><p>2. 미리 적어 둔 주요 핵심 내용을 여러 번 반복해서 적는다.</p><p>3. 일주일 후 반드시 상단의 깜지 내용을 다시 한 번 정리하여 단기 기억을 장기 기억으로 전환한다.</p><br><p>★주의사항★</p><p>백지가 꽉 차도록 빽빽하게 적고 입 밖으로 여러 번 소리를 내야 효과를 볼 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="깜지 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr01.png'>";
	        document.getElementById("lowerkit1").innerText="깜지 노트";
	    }else if(rmax==r2){
	        document.getElementById("worstlearningmethod1").innerText="녹음 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>당일 학습한 주요 내용을 다시 한 번 학습자의 목소리로 녹음하여 복습하는 습관을 만들고, 그 내용을 재청취함으로써 이해가 부족한 부분과 꼭 암기해야 하는 중요한 부분을 확실히 정리하는 학습 관리법이다. 주로 개방적인 학습자나 감각일반주의 학습자에게 효과적인 학습법이다. 진로분야가 교육계통인 학습자에게 추천하는 방법이다.<br><br><p>★진행 순서★</p><p>1.  당일 배운 내용을 요약정리한다.</p><p>2. 요약정리한 내용 중에 녹음할 내용이 어디인지 표시한다.</p><p>3. 녹음 내용 재청취 시 어색하지 않도록 핵심 내용을 여러 번 반복하여 읽는다. </p><p>4. 주변의 방해가 없는 조용한 곳에서 실제 녹음을 진행한다.</p><p>5. 반드시 녹음 후 재청취할 시간을 가지며 이해도도 표시한다.</p><p>6. 재청취 시 이해도가 1인 경우 담당선생님에게 반드시 질문을 한다.</p><br><p>★주의사항★</p><p>학습한 내용을 눈으로만 보는 학습자에게 매우 효과적인 방법이나 수줍음이 많은 학생들은 초반에 어려움을 호소한다. 어차피 스스로에게 들려 주는 음성이니 부끄러워 말고 습관이 될 때까지 매일 조금씩이라도 실천 하는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="녹음 기록표";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr02.png'>";
	        document.getElementById("lowerkit1").innerText="녹음 기록표";
	    }else if(rmax==r3){
	        document.getElementById("worstlearningmethod1").innerText="무한 반복 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>한 번에 암기되지 않는 중요한 공식이나 이론 및 개념정리를 무한 반복 체크 스케줄러에 적어 두었다가 가볍게 반복하면서 자신도 모르게 장기 기억으로 전환하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  스케줄러 상단에 과목과 영역을 적는다.</p><p>2. ‘로테이션 내용 요약’ 란에는 될 수 있는 한 상세히 요약하여 교과서 없이도 충분히 이해할 수 있도록 적는다.</p><p>3. 반복할 때마다 날짜를 기입하고 7번째까지 반복되면 종료한다.</p><br><p>★주의사항★</p><p>로테이션 내용을 상세히 적어야 스케줄러만으로 완벽한 학습을 할 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="무한 반복 체크 스케줄러";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr03.png'>";
	        document.getElementById("lowerkit1").innerText="무한 반복 체크 스케줄러";
	    }else if(rmax==r4){
	        document.getElementById("worstlearningmethod1").innerText="샤우팅 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>언어학적 학습자 (시각보다는 청각과 촉각에 의해서 자극을 더 많이 받는 학습자) 에게 적합하다.<br><br><p>★진행 순서★</p><p>1.  옹알거리는 소리가 아니라 실제로 데시벨을 높여 외치듯 학습한다.</p><p>2. 빠르게 학습한다.</p><br><p>★주의사항★</p><p>‘티칭 학습법’ 은 누군가에게 선생님처럼 가르치면서 내용을 터득하는 방식인 반면에 ‘샤우팅 학습법’ 은 단순히 암기할 내용을 크게 외치며 가속화시키는 방법으로서 암기의 속도를 높이고자 사용하는 학습 관리 법이다. 속도가 빠르고 소리가 커야 더욱 효과적이다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="없음";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr04.png'>";
	        document.getElementById("lowerkit1").innerText="없음";
	    }else if(rmax==r5){
	        document.getElementById("worstlearningmethod1").innerText="액티비티 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>개방적 학습자와 감각일반주의 학습자를 위한 학습 관리법이다. 주로 한자리에 앉아있는 것보다 움직이면서 학습하는 것을 선호하는 학습자나 지하철 및 버스 안에서 집중을 더 잘하는 학습자에게 적합하지만, 정적인 학습자들의 성향을 적극적으로 바꿔주면서 학습 습관도 개선할 수 있는 좋은 학습법이기도 하다.<br><br><p>★진행 순서★</p><p>1.  차분히 앉아서 책장을 넘기는 것보다 다양한 색깔펜을 이용하여 열정적으로 적는다.</p><p>2. 수업 시간에 자주 손을 들고 질문하며 수시로 발표의 기회를 갖는다.</p><br><p>★주의사항★</p><p>개방적 학습자, 감각일반주의 학습자의 성향이지만 소심하거나 부끄러움 을 많이 타는 학습자인 경우 타고난 학습성향대로 학습 능력을 발휘하기 힘들다. 이 때에는 좀 더 자신감을 가지고 수업에 참여하면 훨씬 수월하게 좋은 성적을 거둘 수 있을 것이다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="없음";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr05.png'>";
	        document.getElementById("lowerkit1").innerText="없음";
	    }else if(rmax==r6){
	        document.getElementById("worstlearningmethod1").innerText="에빙하우스 보카학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>영단어와 한글 뜻을 7일 동안 시간차를 두고 반복 학습하는 방식으로서, 무리해서 단어를 외우지 않아도 장기기억으로 전환된다는 ‘에빙하우스 망각곡선’ 이론을 이용한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 단어 자체가 생소하거나 암기가 되지 않는 단어를 첫 번째 칸에 적는다.</p><p>2. 두 번째 ~ 일곱 번째 칸까지 매일 한 번씩 단어와 한글 뜻을 적는다.</p><p>3. 지속적으로 반복 노출한다.</p><br><p>★주의사항★</p><p>하루도 빠지지 않고 지속적으로 적어 놓은 단어에 노출되는 것이 중요 하다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="에빙하우스 보카 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr06.png'>";
	        document.getElementById("lowerkit1").innerText="에빙하우스 보카 노트";
	    };
	    if(uniquer[1]==r1){
	        document.getElementById("worstlearningmethod4").innerText="깜지 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>Input 과정에서 눈으로만 훑는 학습법을 사용한 학습자들이 단순한 깜지 채우기 Output 과정을 통해서도 학습의 효과를 높일 수 있다는 원리에서 착안한 학습법이다. ‘노력 이외에는 공부에 왕도가 없다’ 라는 메시지를 전달하면서 끈기와 성실함을 높이게 된다.<br><br><p>★진행 순서★</p><p>1.  주요 내용의 제목을 ‘깜지칸’ 란에 적는다.</p><p>2. 미리 적어 둔 주요 핵심 내용을 여러 번 반복해서 적는다.</p><p>3. 일주일 후 반드시 상단의 깜지 내용을 다시 한 번 정리하여 단기 기억을 장기 기억으로 전환한다.</p><br><p>★주의사항★</p><p>백지가 꽉 차도록 빽빽하게 적고 입 밖으로 여러 번 소리를 내야 효과를 볼 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="깜지 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr01.png'>";
	        document.getElementById("lowerkit2").innerText="깜지 노트";
	    }else if(uniquer[1]==r2){
	        document.getElementById("worstlearningmethod4").innerText="녹음 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>당일 학습한 주요 내용을 다시 한 번 학습자의 목소리로 녹음하여 복습하는 습관을 만들고, 그 내용을 재청취함으로써 이해가 부족한 부분과 꼭 암기해야 하는 중요한 부분을 확실히 정리하는 학습 관리법이다. 주로 개방적인 학습자나 감각일반주의 학습자에게 효과적인 학습법이다. 진로분야가 교육계통인 학습자에게 추천하는 방법이다.<br><br><p>★진행 순서★</p><p>1.  당일 배운 내용을 요약정리한다.</p><p>2. 요약정리한 내용 중에 녹음할 내용이 어디인지 표시한다.</p><p>3. 녹음 내용 재청취 시 어색하지 않도록 핵심 내용을 여러 번 반복하여 읽는다. </p><p>4. 주변의 방해가 없는 조용한 곳에서 실제 녹음을 진행한다.</p><p>5. 반드시 녹음 후 재청취할 시간을 가지며 이해도도 표시한다.</p><p>6. 재청취 시 이해도가 1인 경우 담당선생님에게 반드시 질문을 한다.</p><br><p>★주의사항★</p><p>학습한 내용을 눈으로만 보는 학습자에게 매우 효과적인 방법이나 수줍음이 많은 학생들은 초반에 어려움을 호소한다. 어차피 스스로에게 들려 주는 음성이니 부끄러워 말고 습관이 될 때까지 매일 조금씩이라도 실천 하는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="녹음 기록표";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr02.png'>";
	        document.getElementById("lowerkit2").innerText="녹음 기록표";
	    }else if(uniquer[1]==r3){
	        document.getElementById("worstlearningmethod4").innerText="무한 반복 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>한 번에 암기되지 않는 중요한 공식이나 이론 및 개념정리를 무한 반복 체크 스케줄러에 적어 두었다가 가볍게 반복하면서 자신도 모르게 장기 기억으로 전환하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  스케줄러 상단에 과목과 영역을 적는다.</p><p>2. ‘로테이션 내용 요약’ 란에는 될 수 있는 한 상세히 요약하여 교과서 없이도 충분히 이해할 수 있도록 적는다.</p><p>3. 반복할 때마다 날짜를 기입하고 7번째까지 반복되면 종료한다.</p><br><p>★주의사항★</p><p>로테이션 내용을 상세히 적어야 스케줄러만으로 완벽한 학습을 할 수 있다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="무한 반복 체크 스케줄러";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr03.png'>";
	        document.getElementById("lowerkit2").innerText="무한 반복 체크 스케줄러";
	    }else if(uniquer[1]==r4){
	        document.getElementById("worstlearningmethod4").innerText="샤우팅 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>언어학적 학습자 (시각보다는 청각과 촉각에 의해서 자극을 더 많이 받는 학습자) 에게 적합하다.<br><br><p>★진행 순서★</p><p>1.  옹알거리는 소리가 아니라 실제로 데시벨을 높여 외치듯 학습한다.</p><p>2. 빠르게 학습한다.</p><br><p>★주의사항★</p><p>‘티칭 학습법’ 은 누군가에게 선생님처럼 가르치면서 내용을 터득하는 방식인 반면에 ‘샤우팅 학습법’ 은 단순히 암기할 내용을 크게 외치며 가속화시키는 방법으로서 암기의 속도를 높이고자 사용하는 학습 관리 법이다. 속도가 빠르고 소리가 커야 더욱 효과적이다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="없음";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr04.png'>";
	        document.getElementById("lowerkit2").innerText="없음";
	    }else if(uniquer[1]==r5){
	        document.getElementById("worstlearningmethod4").innerText="액티비티 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>개방적 학습자와 감각일반주의 학습자를 위한 학습 관리법이다. 주로 한자리에 앉아있는 것보다 움직이면서 학습하는 것을 선호하는 학습자나 지하철 및 버스 안에서 집중을 더 잘하는 학습자에게 적합하지만, 정적인 학습자들의 성향을 적극적으로 바꿔주면서 학습 습관도 개선할 수 있는 좋은 학습법이기도 하다.<br><br><p>★진행 순서★</p><p>1.  차분히 앉아서 책장을 넘기는 것보다 다양한 색깔펜을 이용하여 열정적으로 적는다.</p><p>2. 수업 시간에 자주 손을 들고 질문하며 수시로 발표의 기회를 갖는다.</p><br><p>★주의사항★</p><p>개방적 학습자, 감각일반주의 학습자의 성향이지만 소심하거나 부끄러움 을 많이 타는 학습자인 경우 타고난 학습성향대로 학습 능력을 발휘하기 힘들다. 이 때에는 좀 더 자신감을 가지고 수업에 참여하면 훨씬 수월하게 좋은 성적을 거둘 수 있을 것이다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="없음";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr05.png'>";
	        document.getElementById("lowerkit2").innerText="없음";
	    }else if(uniquer[1]==r6){
	        document.getElementById("worstlearningmethod4").innerText="에빙하우스 보카학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>영단어와 한글 뜻을 7일 동안 시간차를 두고 반복 학습하는 방식으로서, 무리해서 단어를 외우지 않아도 장기기억으로 전환된다는 ‘에빙하우스 망각곡선’ 이론을 이용한 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학습 도중 단어 자체가 생소하거나 암기가 되지 않는 단어를 첫 번째 칸에 적는다.</p><p>2. 두 번째 ~ 일곱 번째 칸까지 매일 한 번씩 단어와 한글 뜻을 적는다.</p><p>3. 지속적으로 반복 노출한다.</p><br><p>★주의사항★</p><p>하루도 빠지지 않고 지속적으로 적어 놓은 단어에 노출되는 것이 중요 하다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="에빙하우스 보카 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imgr06.png'>";
	        document.getElementById("lowerkit2").innerText="에빙하우스 보카 노트";
	    };
	    }else if(resultmin==eresult){
	    document.getElementById("resultcharttext2").innerText="창의능력";
	    document.getElementById("worsttendency1").innerText="창의능력보완";
	    document.getElementById("worsttendency2").innerText="창의능력보완";
	    document.getElementById("worsttendency2").style.color="#2F5FFF";
	    document.getElementById("worstmain").style.color="#2F5FFF";
	    document.getElementById("worstmain").style.borderColor="#2F5FFF";
	    const data3 = {
	        labels: [
	            '3MIX 학습',
	            'CEO 학습',
	            'D-DAY 학습',
	            'N.I.E 보고서',
	            'PBL집중 학습',
	            '거미줄 학습',
	            '독서일기',
	            '레이더학습',
	            '매직모의고사 오답학습',
	            '메디슨학습',
	            '목표지향학습',
	            '수행평가 대비 학습',
	            '연관검색어 학습',
	            '연상학습',
	            '출제자 분석 학습',
	            '타임테이블 학습',
	            '토론식 학습',
	            '티칭 학습',
	            '포트폴리오 학습'
	        ],
	        datasets: [{
	            label: '창의능력',
	            data: [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19 ],
	            fill: true,
	            backgroundColor: 'rgba(219, 244, 253, 0.4)',
	            borderColor: '#4DC9F6',
	            pointBackgroundColor: '#4DC9F6',
	            pointBorderColor: '#fff',
	            pointHoverBackgroundColor: '#fff',
	            pointHoverBorderColor: '#4DC9F6'
	        }]
	    };
	    const config3 = {
	        type: 'radar',
	        data: data3,
	        options: {
	            scales:{
	                r:{
	                    min:0,
	                    max:100,
	                    beginAtZero:true,
	                    pointLabels:{
	                        font: {
	                            size: 22
	                        }
	                    }
	                }
	            },
	            elements: {
	                line: {
	                    borderWidth: 3
	                }
	            },
	            plugins: {
	                legend: {
	                    labels: {
	                    // This more specific font property overrides the global property
	                        font: {
	                            size: 32
	                        }
	                    }
	                }
	            }
	        },
	    };
	    const myChart3 = new Chart(
	        document.getElementById('mylowerChart'),
	        config3
	    );
	    if(emax==e1){
	        document.getElementById("worstlearningmethod1").innerText="3MIX 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습한 내용 중에서 핵심 포인트를 찾아 정리해가는 방식으로 분석 → 암기 → 설명의 3단계를 거쳐 완벽하게 개념을 이해하도록 체계화시키는 학습 관리법이다. 학습을 체계화시키지 못한 학습자에게 도움이 되며 절충적 학습자의 학습 습관을 갖도록 돕는다.<br><br><p>★진행 순서★</p><p>1. 분석의 단계에서는 핵심 내용을 자세히 적는다.</p><p>2. 중요한 포인트 부분을 빈칸으로 처리한다.</p><p>3. 빈칸은 다시 빨간색 펜으로 적어넣는다.</p><p>4. 암기 단계에서 ‘레드커튼’ 이라는 빨간색 셀로판지를 사용하여 내용의 암기가 어느 정도 되어 있는지 확인한다.</p><p>5. 가려진 ‘레드커튼’ 을 사용하여 핵심 내용을 가리면서 추가 설명을 진행한다.</p><br><p>★주의사항★</p><p>반드시 분석의 단계에서 중요한 핵심 내용을 빨간색 펜으로 기입하여야 하며 ‘레드커튼’은 분실하지 않도록 주의한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="3MIX 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge01.png'>";
	        document.getElementById("lowerkit1").innerText="3MIX 학습 노트";
	    }else if(emax==e2){
	        document.getElementById("worstlearningmethod1").innerText="CEO 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습뿐만 아니라 정서, 관계, 체력 전영역의 관리를 기획하고 검토할 수 있기 때문에 융합적, 자기주도적 인재로 성장하도록 도울 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 이미 주간 일정이 나온 경우 왼쪽 가장자리의 주간 할 일 목록에 적는다.</p><p>2. 월 ~ 토요일까지의 색깔 박스에는 각 분야별 미션을 적어야 하므로 색깔에 주의한다.</p><p>3. 미션은 매일 정리하고 검토해야 한다.</p><p>4. 일요일은 한 주 동안 미완성된 미션을 해결해야 하므로 과제물을 제외하고는 적지 않는다.</p><br><p>★주의사항★</p><p>‘꿈으로 키우는 비전나무 보드’ 와 함께 사용하면 더욱 효과적이다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="CEO 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge02.png'>";
	        document.getElementById("lowerkit1").innerText="CEO 다이어리";
	    }else if(emax==e3){
	        document.getElementById("worstlearningmethod1").innerText="D - DAY 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>천하태평 스타일의 학습자에게 자극을 주기 위한 학습법으로 단기 미션을 D - day 카운트 방식으로 진행, 장기적인 학습 플랜보다는 단기적인 학습 플랜을 기획하여 긴장감을 주면서 미션 달성을 습관화하기 위한 학습법이다.<br><br><p>★진행 순서★</p><p>1.  Final Goal 에 시험 과목 및 시험 범위를 적는다.</p><p>2. 남은 기간 D - day 에 세부적으로 할 일을 적는다.</p><br><p>★주의사항★</p><p>D - 2일은 총복습의 시간으로 반드시 공란으로 남겨둔다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="D-day 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge03.png'>";
	        document.getElementById("lowerkit1").innerText="D-day 다이어리";
	    }else if(emax==e4){
	        document.getElementById("worstlearningmethod1").innerText="N. I. E. 보고서";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>N. I. E. (NEWS In Education ; 신문을 통한 교육)을 통해 진로 관련 전문 지식뿐만 아니라 사회 각 분야의 새로운 정보도 쉽게 얻어 박학다식해질 수 있다. 사설란 (다양한 견해)을 통해서는 비판적이고 융합적인 사고도 할 수 있다.<br><br><p>★진행 순서★</p><p>1.  관심 있는 신문 기사 원문을 오려 붙인다.</p><p>2. 이해 안 되는 어휘를 모두 정리하고 활용해서 글짓기한다.</p><p>3. 원문을 서론, 본론, 결론으로 나누어 요약한다.</p><p>4. 자신의 생각을 사설란 (다양한 견해)에 논리정연하게 적는다.</p><br><p>★주의사항★</p><p>처음에는 관심 있는 기사를 분석하고, 점차 진로 관련 분야에 대한 전문 지식을 얻을 수 있는 기사나 사회에 대한 비판적인 사고력을 기를 수 있는 기사로 전환하는 것이 효과적이다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="N.I.E. 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge04.png'>";
	        document.getElementById("lowerkit1").innerText="N.I.E. 노트";
	    }else if(emax==e5){
	        document.getElementById("worstlearningmethod1").innerText="PBL집중 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>PBL (Problem based learning ; 문제중심학습)은 4차 산업시대 지식의 증가에 효과적으로 대처하고 능동적으로 문제를 해결하면서 기존의 강의식 수업의 한계를 극복하는 학습 관리법이다. 최근 중, 고등학교에서는 교과 전영역에 PBL 방식을 도입하여 학생 스스로가 문제의 단서를 인식하고, 공부할 학습 과제를 설정하며, 습득한 지식과 기술과 태도 등을 문제에 논리적으로 적용하면서 해결하도록 유도하고 있다. 이를 통해 문제해결 능력과 사고력이 증대되고 팀워크를 통한 협동학습능력이 향상될 수 있다. 토론식 수업을 통한 의사소통 기술과 자기주도적 학습 능력 또한 향상될 수 있다.<br><br><p>★진행 순서★</p><p>1.  PBL 평가지 [자기평가] 평가항목에 맞춰 나의 수업태도를 체크한다.</p><p>2. [교사의 피드백] 항목은 담당교사의 입장에서 적는다.</p><p>3. [모둠 구성원 상호평가] 항목에서는 다른 구성원을 평가한다.</p><p>4. [다른 모둠 평가] 항목에는 다른 모둠의 활동을 평가한다.</p><p>5. 데이터를 평균하여 스스로를 점검한다.</p><br><p>★주의사항★</p><p>될 수 있는 한 객관적인 평가를 하도록 노력한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="PBL 평가지";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge05.png'>";
	        document.getElementById("lowerkit1").innerText="PBL 평가지";
	    }else if(emax==e6){
	        document.getElementById("worstlearningmethod1").innerText="거미줄 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 사항을 생각나는 대로 거미줄 형태로 그려 표현한다. 주로 시험 범위가 많은 모의고사 대비에 적합하며 융합적 사고력의 최고치를 끌어낼 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습 내용 중 하나의 큰 주제를 선정하여 드리몽 안에 적는다.</p><p>2. 큰 주제와 관련된 핵심키워드를 모두 적는다.</p><p>3. 핵심키워드에 해당되는 세부 설명을 적는다.</p><br><p>★주의사항★</p><p>연상 능력이 뛰어난 학습자에게 유리한 방법으로 연상 훈련이 부족한 학습자는 ‘연상 학습법’ 을 진행한 후 ‘거미줄 학습법’으로 전환하는 것이 바람직하다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="거미줄 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge06.png'>";
	        document.getElementById("lowerkit1").innerText="거미줄 학습 노트";
	    }else if(emax==e7){
	        document.getElementById("worstlearningmethod1").innerText="독서일기";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>책 추천 편지 및 독후감을 쓰면서 도서를 분석하는 능력을 기르고 책을 통해서 지식을 완벽하게 습득하는 법을 알게 된다.<br><br><p>★진행 순서★</p><p>1.  주어진 독후활동 기록지의 장르를 선택한다.</p><p>2. 위인전, 설명문, 지식전달문 등 다양한 장르에 맞게 빈칸을 채우며 기록지를 채운다.</p><p>3. 될 수 있는 한 책의 정보를 객관적으로 적는다.</p><p>4. 읽고 난 후의 자신의 변화된 모습 및 성장 부분을 자세히 적는다.</p><br><p>★주의사항★</p><p>독서 후 기록지를 작성하면 객관적 정보가 쉽게 정리됨은 물론 책을 통한 나의 변화도 이끌어낼 수 있다. 이 때 독자로서 가장 중요한 부분은 작가의 의도를 파악하고 사회의 긍정적인 변화를 유도할 수 있는 힘을 기르는 것이다. </p></span>";
	        document.getElementById("worstlearningmethod3").innerText="독서 일지 세트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge07.png'>";
	        document.getElementById("lowerkit1").innerText="독서 일지 세트";
	    }else if(emax==e8){
	        document.getElementById("worstlearningmethod1").innerText="레이더 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>레이더 학습 포스트잇을 활용하여 예습을 흥미롭게 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 포스트잇 ‘탐색’ 란에 예습 시 궁금한 점 또는 핵심 소재를 적는다. </p><p>2. 포스트잇 ‘발견’ 란에 예습 시 답변 또는 핵심 소재에 대한 세부 내용을 적는다.</p><br><p>★주의사항★</p><p>포스트잇의 크기가 제한되어 있으므로 핵심 내용만 적는다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="레이더 학습 포스트잇";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge08.png'>";
	        document.getElementById("lowerkit1").innerText="레이더 학습 포스트잇";
	    }else if(emax==e9){
	        document.getElementById("worstlearningmethod1").innerText="매직모의고사 오답 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>오답 노트를 체계적으로 관리함으로써 자신의 허점을 지속적으로 보완하고 성적 향상을 목표로 하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 각 과목마다 주어진 오답 노트 양식지를 채우며 지속적으로 관리한다. (샘플 참조)</p><br><p>★주의사항★</p><p>오답 노트를 지속적으로 관리함으로써 유사한 문제에 대한 대처 능력을 키울 수 있으며 응용력도 향상시킬 수 있다. 그러기 위해서는 반드시 오답 노트를 분실하지 않고 학년이 올라가도 관리해야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="매직 모의고사 오답 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge09.png'>";
	        document.getElementById("lowerkit1").innerText="매직 모의고사 오답 노트";
	    }else if(emax==e10){
	        document.getElementById("worstlearningmethod1").innerText="메디슨 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>취약한 과목 및 영역에 대해 원인을 분석하고 그에 대한 세밀한 처방을 3회에 걸쳐 실천하는 학습법으로 약점 과목을 공략하는데 적합하다.<br><br><p>★진행 순서★</p><p>1. ‘약점’ 란에 자주 틀리는 영역을 자세히 적는다.</p><p>2. 원인은 [개념 이해 부족 / 암기 부족 / 문제 이해 부족] 3가지로 구분한다.</p><p>3. 처방은 [개념 정리 / 암기 보충 / 유사 문제 5개 풀기] 3가지로 구분한다.</p><p>4. 실천 일자에는 처방된 3가지 방법을 이행한 날짜를 적는다.</p><br><p>★주의사항★</p><p>실수, 시간 부족 등의 다른 원인은 오답 분석표에 정리하므로 ‘메디슨 학습법’ 에서는 ‘기본개념잡기’ 에 주력한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="메디슨 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge10.png'>";
	        document.getElementById("lowerkit1").innerText="메디슨 학습 노트";
	    }else if(emax==e11){
	        document.getElementById("worstlearningmethod1").innerText="목표지향 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>장기간의 목표를 정함으로써 먼 미래를 예측하고 목표에 맞는 과정을 미리 계획하고 준비하여 자기주도형 인재가 될 수 있도록 훈련하는 학습 관리법이다. 학습 / 비학습 모두에 활용될 수 있다.<br><br><p>★진행 순서★</p><p>1. 미래의 목표를 정한다.</p><p>2. 기간별로 변화될 나의 모습을 적는다.</p><p>3. 기간별 목표를 구체적으로 적는다.</p><p>4. 정해둔 목표에 맞도록 미션을 적는다.</p><p>5. 책상의 잘 보이는 곳에 붙여두고 지속적으로 비전을 그린다. </p><br><p>★주의사항★</p><p>장기적 목표를 먼저 설정하고 중단기적 목표와 그에 따른 미션을 단계적 으로 적는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="목표지향 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge11.png'>";
	        document.getElementById("lowerkit1").innerText="목표지향 다이어리";
	    }else if(emax==e12){
	        document.getElementById("worstlearningmethod1").innerText="수행평가 대비 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>사고력과 창의력 확장의 한계가 있는 결과 중심의 지필평가를 개선하고자 도입된 평가방식으로 학습자가 지식확장을 위해 직접 탐구하고 활동하는 일련의 과정을 교사가 평가함으로써 자기주도적인 학습 역량을 강화할 것을 목적으로 하고 있다. 평상시에도 수행평가 항목을 지속적으로 체크하여 학교생활을 하는 것이 중요하다.<br><br><p>★진행 순서★</p><p>1.  수행평가 채점표의 평가요소 항목에서 지식, 기능, 태도를 구분하고 세부 활동을 살펴본다.</p><p>2. 해당란의 서술형 평가를 기준으로 배점을 계산한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="수행평가 채점표";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge12.png'>";
	        document.getElementById("lowerkit1").innerText="수행평가 채점표";
	    }else if(emax==e13){
	        document.getElementById("worstlearningmethod1").innerText="연관검색어 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>주로 교과과정 예습이나 비교과 활동 시 사용하는 학습법이다. 모르는 용어가 등장했을 때 백과사전이나 인터넷 사전을 이용하여 용어를 검색하고 정의를 알아보며 예문도 만들어보는 등 적극적인 자세를 가질 수 있어 호기심이 많은 학습자에게 매우 유리하다.<br><br><p>★진행 순서★</p><p>1.  해당 범위에서 관심있는 검색어를 모두 적는다.</p><p>2. 정의를 상세히 적는다.</p><p>3. 예문은 스스로 만들어본다.</p><br><p>★주의사항★</p><p>학습 노트에 적힌 예문이 바르게 적혔는지 선생님에게 물어보는 것도 학생부를 우수하게 관리하는 좋은 방법이다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="연관검색어 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge13.png'>";
	        document.getElementById("lowerkit1").innerText="연관검색어 학습 노트";
	    }else if(emax==e14){
	        document.getElementById("worstlearningmethod1").innerText="연상 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 키워드를 모두 적고 그에 해당되는 세부 설명을 기입하는 방식으로 융합적 사고능력을 향상시킬 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  나무뿌리의 동그라미에서 시작한다.</p><p>2. 큰 주제와 관련된 핵심키워드를 나뭇가지에 적는다.</p><p>3. 키워드에 해당되는 세부 설명은 작은 나뭇가지에 적는다.</p><br><p>★주의사항★</p><p>큰 주제와 관련된 키워드와 세부 사항만 적어야 하며 키워드와 관련된 내용들을 적으려면 거미줄 학습법을 활용해야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="연상 학습 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge14.png'>";
	        document.getElementById("lowerkit1").innerText="연상 학습 노트";
	    }else if(emax==e15){
	        document.getElementById("worstlearningmethod1").innerText="출제자 분석 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>모든 시험 문제를 풀 때는 출제자의 의도를 파악하는 것이 중요하다. 공부 시간은 길지만 시험 점수가 좋지 않은 학습자를 위한 학습 전략으로서 평상시 출제자의 의도를 분석하는 훈련을 통해 핵심을 파악하는 능력을 기르는 것이 학습법의 목표이다.<br><br><p>★진행 순서★</p><p>1.  문제를 내고 답을 적는다.</p><p>2. 출제자의 의도를 분석한다.</p><br><p>★주의사항★</p><p>출제자의 의도를 분석하여 학습 시간을 단축하는 학습법으로 선생님 말씀 에 집중하지 않으면 어느 부분이 중요한지 알 수 없으므로 수업 시간에 긴장감을 늦추지 않는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="출제자 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge15.png'>";
	        document.getElementById("lowerkit1").innerText="출제자 노트";
	    }else if(emax==e16){
	        document.getElementById("worstlearningmethod1").innerText="타임테이블 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>시간대별로 미션을 적는 방식으로 어느 정도 스케줄러 작성에 익숙한 학습자들이 사용하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학교 수업 및 학원 수업 일정을 미리 적는다.</p><p>2. 남은 시간대에 학습 과목 및 영역을 적는다.</p><p>3. 하루를 마감할 때 완성도를 체크하여 ‘반성’ 란에 아쉬움이 남는 미션을 정리한다.</p><br><p>★주의사항★</p><p>너무 타이트한 계획을 세우면 미션을 완성하지 못할 가능성이 크며 모든 계획이 수포로 돌아갈 수 있으니 약간의 융통성을 두며 다이어리를 관리 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="타임테이블 다이어리";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge16.png'>";
	        document.getElementById("lowerkit1").innerText="타임테이블 다이어리";
	    }else if(emax==e17){
	        document.getElementById("worstlearningmethod1").innerText="토론식 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>토론주제를 선정하고 자유롭게 발표하는 학습법이다. 이러한 방법으로 발표력과 사고력, 팀워크를 기를 수 있다. 학습법 중 교과, 비교과를 막론하고 전영역에 활용도가 높다.<br><br><p>★진행 순서★</p><p>1.  토론주제를 정한다.</p><p>2. 참여자와 사회자를 뽑아 역할 분담을 한다.</p><p>3. 주제에 대해 주장하는 바가 다르다면 팀을 나누고 팀원끼리 의견을 사전조율한다.</p><p>4. 의견이 통합되면 대립하는 의견에 따라 논리를 펼친다.</p><p>5. 토론식 학습법 노트에 나의 반성을 포함한 토론의 진행 과정을 상세히 적는다.</p><br><p>★주의사항★</p><p>적극적으로 참여하지 않으면 학습 효과가 떨어지며 토론이 종료된 후에 반드시 진행 과정을 상세히 기록한 토론식 학습법 노트가 있어야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="토론식 학습법 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge17.png'>";
	        document.getElementById("lowerkit1").innerText="토론식 학습법 노트";
	    }else if(emax==e18){
	        document.getElementById("worstlearningmethod1").innerText="티칭 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 선생님이라고 생각하고 교사용 가이드를 준비하는 과정에서 학습 성장을 이루게 되는 학습법이다.<br><br><p>★진행 순서★</p><p>1.  티처스 가이드 노트의 요약 내용에는 최대한 많은 내용을 적는다.</p><p>2. 강조 내용은 시험에 나올 것과 동일하게 중요한 부분을 요약하여 적는다.</p><p>3. ‘Q&A’ 란에는 학생들이 질문할 내용에 대한 답변을 준비한다.</p><br><p>★주의사항★</p><p>학습법을 적용하기 전에 학습 내용을 체계화하고 그 내용을 표현하는 연습이므로 내용에 대한 이해가 선행되어야 한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="티처스 가이드 노트";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge18.png'>";
	        document.getElementById("lowerkit1").innerText="티처스 가이드 노트";
	    }else if(emax==e19){
	        document.getElementById("worstlearningmethod1").innerText="포트폴리오 관리 학습법";
	        document.getElementById("worstlearningmethod2").innerHTML="<span style='font-size:0.9217vw;'>지필평가가 아닌 경우 실제 평가기준이 모호하다. 이런 점을 보완하고자 개발된 포트폴리오 관리 학습은 구체적이고 객관적인 평가를 위해 성과에 대한 자료를 수집하는 방식이다. 포트폴리오는 고입, 대입뿐만 아니라 취업 시에도 활용되고 있으며 수치화할 수 없는 성과에 대한 객관화가 가능하다는 장점을 가지고 있다.<br><br><p>★진행 순서★</p><p>1. 포트폴리오 평가지를 활용하여 관리한다.</p><p>2.‘평가항목에 따라 “관련교과역량” 이 수업활동 중 눈에 띄게 발견되었 는가?’ 를 체크한다.</p><p>3.‘채점기준’은 평가항목이 발견된 경우에만 ○ 표시를 한다.</p><p>4. 태도 및 실천 항목에서 아래 3가지 항목을 구분하여 체크한다.</p><p>① 자주적 학습태도 : 자신감을 가지고 적극적으로 모둠활동 및 참여하는가?</p><p> ② 가치인식 : 수업 내용에 대하여 높은 흥미와 관심을 지속적으로 보이는가?</p><p> ③ 시민의식 : 모둠원에게 경청하고 배려하는 태도를 보이는가?</p><p>5. 특이사항에는 구체적인 내용을 적는다.</p><br><p>★주의사항★</p><p>포트폴리오 양식은 주제 및 활동에 따라 다르므로 목적에 맞게 탄력적 으로 작성하고 관리한다.</p></span>";
	        document.getElementById("worstlearningmethod3").innerText="포트폴리오 평가지";
	        document.getElementById("lowerimg1").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge19.png'>";
	        document.getElementById("lowerkit1").innerText="포트폴리오 평가지";
	    };

	    if(uniquee[1]==e1){
	        document.getElementById("worstlearningmethod4").innerText="3MIX 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습한 내용 중에서 핵심 포인트를 찾아 정리해가는 방식으로 분석 → 암기 → 설명의 3단계를 거쳐 완벽하게 개념을 이해하도록 체계화시키는 학습 관리법이다. 학습을 체계화시키지 못한 학습자에게 도움이 되며 절충적 학습자의 학습 습관을 갖도록 돕는다.<br><br><p>★진행 순서★</p><p>1. 분석의 단계에서는 핵심 내용을 자세히 적는다.</p><p>2. 중요한 포인트 부분을 빈칸으로 처리한다.</p><p>3. 빈칸은 다시 빨간색 펜으로 적어넣는다.</p><p>4. 암기 단계에서 ‘레드커튼’ 이라는 빨간색 셀로판지를 사용하여 내용의 암기가 어느 정도 되어 있는지 확인한다.</p><p>5. 가려진 ‘레드커튼’ 을 사용하여 핵심 내용을 가리면서 추가 설명을 진행한다.</p><br><p>★주의사항★</p><p>반드시 분석의 단계에서 중요한 핵심 내용을 빨간색 펜으로 기입하여야 하며 ‘레드커튼’은 분실하지 않도록 주의한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="3MIX 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge01.png'>";
	        document.getElementById("lowerkit2").innerText="3MIX 학습 노트";
	    }else if(uniquee[1]==e2){
	        document.getElementById("worstlearningmethod4").innerText="CEO 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습뿐만 아니라 정서, 관계, 체력 전영역의 관리를 기획하고 검토할 수 있기 때문에 융합적, 자기주도적 인재로 성장하도록 도울 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 이미 주간 일정이 나온 경우 왼쪽 가장자리의 주간 할 일 목록에 적는다.</p><p>2. 월 ~ 토요일까지의 색깔 박스에는 각 분야별 미션을 적어야 하므로 색깔에 주의한다.</p><p>3. 미션은 매일 정리하고 검토해야 한다.</p><p>4. 일요일은 한 주 동안 미완성된 미션을 해결해야 하므로 과제물을 제외하고는 적지 않는다.</p><br><p>★주의사항★</p><p>‘꿈으로 키우는 비전나무 보드’ 와 함께 사용하면 더욱 효과적이다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="CEO 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge02.png'>";
	        document.getElementById("lowerkit2").innerText="CEO 다이어리";
	    }else if(uniquee[1]==e3){
	        document.getElementById("worstlearningmethod4").innerText="D - DAY 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>천하태평 스타일의 학습자에게 자극을 주기 위한 학습법으로 단기 미션을 D - day 카운트 방식으로 진행, 장기적인 학습 플랜보다는 단기적인 학습 플랜을 기획하여 긴장감을 주면서 미션 달성을 습관화하기 위한 학습법이다.<br><br><p>★진행 순서★</p><p>1.  Final Goal 에 시험 과목 및 시험 범위를 적는다.</p><p>2. 남은 기간 D - day 에 세부적으로 할 일을 적는다.</p><br><p>★주의사항★</p><p>D - 2일은 총복습의 시간으로 반드시 공란으로 남겨둔다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="D-day 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge03.png'>";
	        document.getElementById("lowerkit2").innerText="D-day 다이어리";
	    }else if(uniquee[1]==e4){
	        document.getElementById("worstlearningmethod4").innerText="N. I. E. 보고서";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>N. I. E. (NEWS In Education ; 신문을 통한 교육)을 통해 진로 관련 전문 지식뿐만 아니라 사회 각 분야의 새로운 정보도 쉽게 얻어 박학다식해질 수 있다. 사설란 (다양한 견해)을 통해서는 비판적이고 융합적인 사고도 할 수 있다.<br><br><p>★진행 순서★</p><p>1.  관심 있는 신문 기사 원문을 오려 붙인다.</p><p>2. 이해 안 되는 어휘를 모두 정리하고 활용해서 글짓기한다.</p><p>3. 원문을 서론, 본론, 결론으로 나누어 요약한다.</p><p>4. 자신의 생각을 사설란 (다양한 견해)에 논리정연하게 적는다.</p><br><p>★주의사항★</p><p>처음에는 관심 있는 기사를 분석하고, 점차 진로 관련 분야에 대한 전문 지식을 얻을 수 있는 기사나 사회에 대한 비판적인 사고력을 기를 수 있는 기사로 전환하는 것이 효과적이다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="N.I.E. 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge04.png'>";
	        document.getElementById("lowerkit2").innerText="N.I.E. 노트";
	    }else if(uniquee[1]==e5){
	        document.getElementById("worstlearningmethod4").innerText="PBL집중 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>PBL (Problem based learning ; 문제중심학습)은 4차 산업시대 지식의 증가에 효과적으로 대처하고 능동적으로 문제를 해결하면서 기존의 강의식 수업의 한계를 극복하는 학습 관리법이다. 최근 중, 고등학교에서는 교과 전영역에 PBL 방식을 도입하여 학생 스스로가 문제의 단서를 인식하고, 공부할 학습 과제를 설정하며, 습득한 지식과 기술과 태도 등을 문제에 논리적으로 적용하면서 해결하도록 유도하고 있다. 이를 통해 문제해결 능력과 사고력이 증대되고 팀워크를 통한 협동학습능력이 향상될 수 있다. 토론식 수업을 통한 의사소통 기술과 자기주도적 학습 능력 또한 향상될 수 있다.<br><br><p>★진행 순서★</p><p>1.  PBL 평가지 [자기평가] 평가항목에 맞춰 나의 수업태도를 체크한다.</p><p>2. [교사의 피드백] 항목은 담당교사의 입장에서 적는다.</p><p>3. [모둠 구성원 상호평가] 항목에서는 다른 구성원을 평가한다.</p><p>4. [다른 모둠 평가] 항목에는 다른 모둠의 활동을 평가한다.</p><p>5. 데이터를 평균하여 스스로를 점검한다.</p><br><p>★주의사항★</p><p>될 수 있는 한 객관적인 평가를 하도록 노력한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="PBL 평가지";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge05.png'>";
	        document.getElementById("lowerkit2").innerText="PBL 평가지";
	    }else if(uniquee[1]==e6){
	        document.getElementById("worstlearningmethod4").innerText="거미줄 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 사항을 생각나는 대로 거미줄 형태로 그려 표현한다. 주로 시험 범위가 많은 모의고사 대비에 적합하며 융합적 사고력의 최고치를 끌어낼 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 학습 내용 중 하나의 큰 주제를 선정하여 드리몽 안에 적는다.</p><p>2. 큰 주제와 관련된 핵심키워드를 모두 적는다.</p><p>3. 핵심키워드에 해당되는 세부 설명을 적는다.</p><br><p>★주의사항★</p><p>연상 능력이 뛰어난 학습자에게 유리한 방법으로 연상 훈련이 부족한 학습자는 ‘연상 학습법’ 을 진행한 후 ‘거미줄 학습법’으로 전환하는 것이 바람직하다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="거미줄 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge06.png'>";
	        document.getElementById("lowerkit2").innerText="거미줄 학습 노트";
	    }else if(uniquee[1]==e7){
	        document.getElementById("worstlearningmethod4").innerText="독서일기";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>책 추천 편지 및 독후감을 쓰면서 도서를 분석하는 능력을 기르고 책을 통해서 지식을 완벽하게 습득하는 법을 알게 된다.<br><br><p>★진행 순서★</p><p>1.  주어진 독후활동 기록지의 장르를 선택한다.</p><p>2. 위인전, 설명문, 지식전달문 등 다양한 장르에 맞게 빈칸을 채우며 기록지를 채운다.</p><p>3. 될 수 있는 한 책의 정보를 객관적으로 적는다.</p><p>4. 읽고 난 후의 자신의 변화된 모습 및 성장 부분을 자세히 적는다.</p><br><p>★주의사항★</p><p>독서 후 기록지를 작성하면 객관적 정보가 쉽게 정리됨은 물론 책을 통한 나의 변화도 이끌어낼 수 있다. 이 때 독자로서 가장 중요한 부분은 작가의 의도를 파악하고 사회의 긍정적인 변화를 유도할 수 있는 힘을 기르는 것이다. </p></span>";
	        document.getElementById("worstlearningmethod6").innerText="독서 일지 세트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge07.png'>";
	        document.getElementById("lowerkit2").innerText="독서 일지 세트";
	    }else if(uniquee[1]==e8){
	        document.getElementById("worstlearningmethod4").innerText="레이더 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>레이더 학습 포스트잇을 활용하여 예습을 흥미롭게 진행하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 포스트잇 ‘탐색’ 란에 예습 시 궁금한 점 또는 핵심 소재를 적는다. </p><p>2. 포스트잇 ‘발견’ 란에 예습 시 답변 또는 핵심 소재에 대한 세부 내용을 적는다.</p><br><p>★주의사항★</p><p>포스트잇의 크기가 제한되어 있으므로 핵심 내용만 적는다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="레이더 학습 포스트잇";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge08.png'>";
	        document.getElementById("lowerkit2").innerText="레이더 학습 포스트잇";
	    }else if(uniquee[1]==e9){
	        document.getElementById("worstlearningmethod4").innerText="매직모의고사 오답 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>오답 노트를 체계적으로 관리함으로써 자신의 허점을 지속적으로 보완하고 성적 향상을 목표로 하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1. 각 과목마다 주어진 오답 노트 양식지를 채우며 지속적으로 관리한다. (샘플 참조)</p><br><p>★주의사항★</p><p>오답 노트를 지속적으로 관리함으로써 유사한 문제에 대한 대처 능력을 키울 수 있으며 응용력도 향상시킬 수 있다. 그러기 위해서는 반드시 오답 노트를 분실하지 않고 학년이 올라가도 관리해야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="매직 모의고사 오답 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge09.png'>";
	        document.getElementById("lowerkit2").innerText="매직 모의고사 오답 노트";
	    }else if(uniquee[1]==e10){
	        document.getElementById("worstlearningmethod4").innerText="메디슨 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>취약한 과목 및 영역에 대해 원인을 분석하고 그에 대한 세밀한 처방을 3회에 걸쳐 실천하는 학습법으로 약점 과목을 공략하는데 적합하다.<br><br><p>★진행 순서★</p><p>1. ‘약점’ 란에 자주 틀리는 영역을 자세히 적는다.</p><p>2. 원인은 [개념 이해 부족 / 암기 부족 / 문제 이해 부족] 3가지로 구분한다.</p><p>3. 처방은 [개념 정리 / 암기 보충 / 유사 문제 5개 풀기] 3가지로 구분한다.</p><p>4. 실천 일자에는 처방된 3가지 방법을 이행한 날짜를 적는다.</p><br><p>★주의사항★</p><p>실수, 시간 부족 등의 다른 원인은 오답 분석표에 정리하므로 ‘메디슨 학습법’ 에서는 ‘기본개념잡기’ 에 주력한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="메디슨 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge10.png'>";
	        document.getElementById("lowerkit2").innerText="메디슨 학습 노트";
	    }else if(uniquee[1]==e11){
	        document.getElementById("worstlearningmethod4").innerText="목표지향 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>장기간의 목표를 정함으로써 먼 미래를 예측하고 목표에 맞는 과정을 미리 계획하고 준비하여 자기주도형 인재가 될 수 있도록 훈련하는 학습 관리법이다. 학습 / 비학습 모두에 활용될 수 있다.<br><br><p>★진행 순서★</p><p>1. 미래의 목표를 정한다.</p><p>2. 기간별로 변화될 나의 모습을 적는다.</p><p>3. 기간별 목표를 구체적으로 적는다.</p><p>4. 정해둔 목표에 맞도록 미션을 적는다.</p><p>5. 책상의 잘 보이는 곳에 붙여두고 지속적으로 비전을 그린다. </p><br><p>★주의사항★</p><p>장기적 목표를 먼저 설정하고 중단기적 목표와 그에 따른 미션을 단계적 으로 적는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="목표지향 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge11.png'>";
	        document.getElementById("lowerkit2").innerText="목표지향 다이어리";
	    }else if(uniquee[1]==e12){
	        document.getElementById("worstlearningmethod4").innerText="수행평가 대비 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>사고력과 창의력 확장의 한계가 있는 결과 중심의 지필평가를 개선하고자 도입된 평가방식으로 학습자가 지식확장을 위해 직접 탐구하고 활동하는 일련의 과정을 교사가 평가함으로써 자기주도적인 학습 역량을 강화할 것을 목적으로 하고 있다. 평상시에도 수행평가 항목을 지속적으로 체크하여 학교생활을 하는 것이 중요하다.<br><br><p>★진행 순서★</p><p>1.  수행평가 채점표의 평가요소 항목에서 지식, 기능, 태도를 구분하고 세부 활동을 살펴본다.</p><p>2. 해당란의 서술형 평가를 기준으로 배점을 계산한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="수행평가 채점표";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge12.png'>";
	        document.getElementById("lowerkit2").innerText="수행평가 채점표";
	    }else if(uniquee[1]==e13){
	        document.getElementById("worstlearningmethod4").innerText="연관검색어 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>주로 교과과정 예습이나 비교과 활동 시 사용하는 학습법이다. 모르는 용어가 등장했을 때 백과사전이나 인터넷 사전을 이용하여 용어를 검색하고 정의를 알아보며 예문도 만들어보는 등 적극적인 자세를 가질 수 있어 호기심이 많은 학습자에게 매우 유리하다.<br><br><p>★진행 순서★</p><p>1.  해당 범위에서 관심있는 검색어를 모두 적는다.</p><p>2. 정의를 상세히 적는다.</p><p>3. 예문은 스스로 만들어본다.</p><br><p>★주의사항★</p><p>학습 노트에 적힌 예문이 바르게 적혔는지 선생님에게 물어보는 것도 학생부를 우수하게 관리하는 좋은 방법이다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="연관검색어 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge13.png'>";
	        document.getElementById("lowerkit2").innerText="연관검색어 학습 노트";
	    }else if(uniquee[1]==e14){
	        document.getElementById("worstlearningmethod4").innerText="연상 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>하나의 주제와 관련된 키워드를 모두 적고 그에 해당되는 세부 설명을 기입하는 방식으로 융합적 사고능력을 향상시킬 수 있는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  나무뿌리의 동그라미에서 시작한다.</p><p>2. 큰 주제와 관련된 핵심키워드를 나뭇가지에 적는다.</p><p>3. 키워드에 해당되는 세부 설명은 작은 나뭇가지에 적는다.</p><br><p>★주의사항★</p><p>큰 주제와 관련된 키워드와 세부 사항만 적어야 하며 키워드와 관련된 내용들을 적으려면 거미줄 학습법을 활용해야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="연상 학습 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge14.png'>";
	        document.getElementById("lowerkit2").innerText="연상 학습 노트";
	    }else if(uniquee[1]==e15){
	        document.getElementById("worstlearningmethod4").innerText="출제자 분석 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>모든 시험 문제를 풀 때는 출제자의 의도를 파악하는 것이 중요하다. 공부 시간은 길지만 시험 점수가 좋지 않은 학습자를 위한 학습 전략으로서 평상시 출제자의 의도를 분석하는 훈련을 통해 핵심을 파악하는 능력을 기르는 것이 학습법의 목표이다.<br><br><p>★진행 순서★</p><p>1.  문제를 내고 답을 적는다.</p><p>2. 출제자의 의도를 분석한다.</p><br><p>★주의사항★</p><p>출제자의 의도를 분석하여 학습 시간을 단축하는 학습법으로 선생님 말씀 에 집중하지 않으면 어느 부분이 중요한지 알 수 없으므로 수업 시간에 긴장감을 늦추지 않는 것이 중요하다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="출제자 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge15.png'>";
	        document.getElementById("lowerkit2").innerText="출제자 노트";
	    }else if(uniquee[1]==e16){
	        document.getElementById("worstlearningmethod4").innerText="타임테이블 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>시간대별로 미션을 적는 방식으로 어느 정도 스케줄러 작성에 익숙한 학습자들이 사용하는 학습 관리법이다.<br><br><p>★진행 순서★</p><p>1.  학교 수업 및 학원 수업 일정을 미리 적는다.</p><p>2. 남은 시간대에 학습 과목 및 영역을 적는다.</p><p>3. 하루를 마감할 때 완성도를 체크하여 ‘반성’ 란에 아쉬움이 남는 미션을 정리한다.</p><br><p>★주의사항★</p><p>너무 타이트한 계획을 세우면 미션을 완성하지 못할 가능성이 크며 모든 계획이 수포로 돌아갈 수 있으니 약간의 융통성을 두며 다이어리를 관리 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="타임테이블 다이어리";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge16.png'>";
	        document.getElementById("lowerkit2").innerText="타임테이블 다이어리";
	    }else if(uniquee[1]==e17){
	        document.getElementById("worstlearningmethod4").innerText="토론식 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>토론주제를 선정하고 자유롭게 발표하는 학습법이다. 이러한 방법으로 발표력과 사고력, 팀워크를 기를 수 있다. 학습법 중 교과, 비교과를 막론하고 전영역에 활용도가 높다.<br><br><p>★진행 순서★</p><p>1.  토론주제를 정한다.</p><p>2. 참여자와 사회자를 뽑아 역할 분담을 한다.</p><p>3. 주제에 대해 주장하는 바가 다르다면 팀을 나누고 팀원끼리 의견을 사전조율한다.</p><p>4. 의견이 통합되면 대립하는 의견에 따라 논리를 펼친다.</p><p>5. 토론식 학습법 노트에 나의 반성을 포함한 토론의 진행 과정을 상세히 적는다.</p><br><p>★주의사항★</p><p>적극적으로 참여하지 않으면 학습 효과가 떨어지며 토론이 종료된 후에 반드시 진행 과정을 상세히 기록한 토론식 학습법 노트가 있어야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="토론식 학습법 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge17.png'>";
	        document.getElementById("lowerkit2").innerText="토론식 학습법 노트";
	    }else if(uniquee[1]==e18){
	        document.getElementById("worstlearningmethod4").innerText="티칭 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>학습자 스스로가 선생님이라고 생각하고 교사용 가이드를 준비하는 과정에서 학습 성장을 이루게 되는 학습법이다.<br><br><p>★진행 순서★</p><p>1.  티처스 가이드 노트의 요약 내용에는 최대한 많은 내용을 적는다.</p><p>2. 강조 내용은 시험에 나올 것과 동일하게 중요한 부분을 요약하여 적는다.</p><p>3. ‘Q&A’ 란에는 학생들이 질문할 내용에 대한 답변을 준비한다.</p><br><p>★주의사항★</p><p>학습법을 적용하기 전에 학습 내용을 체계화하고 그 내용을 표현하는 연습이므로 내용에 대한 이해가 선행되어야 한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="티처스 가이드 노트";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge18.png'>";
	        document.getElementById("lowerkit2").innerText="티처스 가이드 노트";
	    }else if(uniquee[1]==e19){
	        document.getElementById("worstlearningmethod4").innerText="포트폴리오 관리 학습법";
	        document.getElementById("worstlearningmethod5").innerHTML="<span style='font-size:0.9217vw;'>지필평가가 아닌 경우 실제 평가기준이 모호하다. 이런 점을 보완하고자 개발된 포트폴리오 관리 학습은 구체적이고 객관적인 평가를 위해 성과에 대한 자료를 수집하는 방식이다. 포트폴리오는 고입, 대입뿐만 아니라 취업 시에도 활용되고 있으며 수치화할 수 없는 성과에 대한 객관화가 가능하다는 장점을 가지고 있다.<br><br><p>★진행 순서★</p><p>1. 포트폴리오 평가지를 활용하여 관리한다.</p><p>2.‘평가항목에 따라 “관련교과역량” 이 수업활동 중 눈에 띄게 발견되었 는가?’ 를 체크한다.</p><p>3.‘채점기준’은 평가항목이 발견된 경우에만 ○ 표시를 한다.</p><p>4. 태도 및 실천 항목에서 아래 3가지 항목을 구분하여 체크한다.</p><p>① 자주적 학습태도 : 자신감을 가지고 적극적으로 모둠활동 및 참여하는가?</p><p> ② 가치인식 : 수업 내용에 대하여 높은 흥미와 관심을 지속적으로 보이는가?</p><p> ③ 시민의식 : 모둠원에게 경청하고 배려하는 태도를 보이는가?</p><p>5. 특이사항에는 구체적인 내용을 적는다.</p><br><p>★주의사항★</p><p>포트폴리오 양식은 주제 및 활동에 따라 다르므로 목적에 맞게 탄력적 으로 작성하고 관리한다.</p></span>";
	        document.getElementById("worstlearningmethod6").innerText="포트폴리오 평가지";
	        document.getElementById("lowerimg2").innerHTML="<img src='img/user/tendencyimg/적성테스트결과imge19.png'>";
	        document.getElementById("lowerkit2").innerText="포트폴리오 평가지";
	    };
	};
	$(document).ready(function(){
		$('#shoppingarea1').click(function(){
			$("#exampleModal").modal("show");
		});
	})
	</script>
</body>
</html>