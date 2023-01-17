<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>학습성향검사</title>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="/css/user/tendencytest.css" rel="stylesheet">
</head>
<body>
	<div class="menubody">
		
    </div>
    <div class="mainbody">
        <div id="printarea">
        	<img src="/img/user/학습성향검사지_(개발자)001.png" style="width:100%;">
	        <div class="tendencytestheader">
				<div class="smallname">
					누구나 영재가 되는
				</div>
				<div class="headerlogo">
					<img alt="img1" src="/img/user/tendencytestlogo1.png">
				</div>
				<div class="bigname">
					학습성향검사
				</div>
			</div>
			<div class="tendencytestbody">
				<div class="explanationarea">
					<div class="explanationlogo">
						<img class="explanationlogoimg" alt="img2" src="/img/user/tendencytestlogo2.png">
					</div>
					<div class="explanation">
						<p>본 성향검사는 엘리트 학습자의 다양한 학습법을 검사자가 어느정도 체득화하고 있는지를 확인합니다.</p>
						<p>또한, 그동안 접하지 않은 우수한 학습법도 공유하여 엘리트 학습컨디션의 틀을 잡아주는데 목적이 있습니다.</p>
						<p>성실하게 설문에 응답해주셔야 정확한 결과물을 얻을 수 있으니 집중해주시기 바랍니다.</p>
						<p>(검사지 작성시간 : 초등 10분 / 중고등 5분)</p>
					</div>
				</div>
				<div class="stuinforinsertarea">
					<div class="infornameheader">
						이름
					</div>
					<div style="border-right:3px solid gray;">
						<input type="text" class="infornamebody" id="tendency_name">
					</div>
					<div class="inforschoolheader">
						학교/학년
					</div>
					<div class="inforschoolbody">
						<div class="insertzone">
							<input type="text"  class="insertschool" id="tendency_school">
							/
							<input type="text"  class="insertgrade" id="tendency_grade">
						</div>
					</div>
					<div class="inforphoneheader">
						본인연락처
					</div>
					<div class="inforphonebody">
						<div class="insertzone">
							<input type="text" class="insertphone" id="tendency_phone1">
							-
							<input type="text" class="insertphone" id="tendency_phone2">
							-
							<input type="text" class="insertphone" id="tendency_phone3">
						</div>
					</div>
					<div class="inforparentphoneheader">
						부모님연락처
					</div>
					<div class="inforparentphonebody">
						<div class="insertzone">
							<input type="text" class="insertphone" id="tendency_parentphone1">
							-
							<input type="text" class="insertphone" id="tendency_parentphone2">
							-
							<input type="text" class="insertphone" id="tendency_parentphone3">
						</div>
					</div>
				</div>
				<table class="tendencytable">
					<thead>
						<tr>
							<th style="width:5%;">번호</th>
							<th style="width:72%;">설문내용</th>
							<th style="font-size:14px; font-weight:normal;">
								<p style="font-size:12px;">매우그렇지않다"(1)부터 "매우그렇다"(10)까지</p>
								<p>막대그래프에 체크하세요</p>
								<div class="selbox">
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">1</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">2</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">3</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">4</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">5</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">6</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">7</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">8</span>
									<span style="width:10%; height:100%; border-right:2px solid gray; padding:5px;">9</span>
									<span style="width:10%; height:100%; padding:5px;">10</span>
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>01</td>
							<td>복잡한 일이 생기면 다른 사람에게 먼저 물어보기 보다는 스스로 고민한다</td>
							<td><input type="range" id="range1" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>02</td>
							<td>할 일이 많으면 우선순위를 정하고 정해진 대로 하는 편이다</td>
							<td><input type="range" id="range2" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>03</td>
							<td>자신의 약점은 숨기지 않고 겉으로 드러났을 때는 보완하려고 애쓴다</td>
							<td><input type="range" id="range3" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>04</td>
							<td>잘 못하는 것도 반복적으로 연습하면 좋아진다</td>
							<td><input type="range" id="range4" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>05</td>
							<td>말하는 것보다 글 쓰는 것을 더 좋아한다</td>
							<td><input type="range" id="range5" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>06</td>
							<td>사소한 것이라도 될 수 있는 한 기록으로 남겨둔다</td>
							<td><input type="range" id="range6" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>07</td>
							<td>미리 공부시간을 정해두고 그 시간에 공부하면 더 집중이 잘된다</td>
							<td><input type="range" id="range7" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>08</td>
							<td>학습도구(포스트잇)를 자주 사용한다</td>
							<td><input type="range" id="range8" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>09</td>
							<td>공부할 때 필기도구(형광펜, 색볼펜 등)를 자주 사용한다</td>
							<td><input type="range" id="range9" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>10</td>
							<td>사소한 약속이라도 지켜야 한다</td>
							<td><input type="range" id="range10" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>11</td>
							<td>이치를 따지는 사람의 말보다 감동을 주는 사람의 말을 더 잘 듣는다</td>
							<td><input type="range" id="range11" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>12</td>
							<td>공부머리가 좋지 않다고 생각한다</td>
							<td><input type="range" id="range12" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>13</td>
							<td>창의적이고 도전적이라는 말을 자주 듣는다</td>
							<td><input type="range" id="range13" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>14</td>
							<td>문제가 생기면 원인을 먼저 찾고 여러가지 해결 방법을 고민한다</td>
							<td><input type="range" id="range14" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>15</td>
							<td>목표가 한 번 정해지면 반드시 이루려고 노력한다</td>
							<td><input type="range" id="range15" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>16</td>
							<td>사소하나 일이라도 할 때는 최선을 다한다</td>
							<td><input type="range" id="range16" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>17</td>
							<td>산만하다는 말을 듣기도 한다</td>
							<td><input type="range" id="range17" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>18</td>
							<td>평상시 학습할 때 스스로 문제내고 답하는 경향이 있다</td>
							<td><input type="range" id="range18" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>19</td>
							<td>할 일이 마무리 되지 않으면 잠을 잘 못잔다</td>
							<td><input type="range" id="range19" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>20</td>
							<td>요약정리를 잘하고 말 할 때에도 핵심을 잘 전달한다</td>
							<td><input type="range" id="range20" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>21</td>
							<td>시험결과가 나오면 개선할 부분을 반드시 파악한다</td>
							<td><input type="range" id="range21" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>22</td>
							<td>화가 날 때나 기분이 좋지 않을 때 공부가 잘 안된다</td>
							<td><input type="range" id="range22" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>23</td>
							<td>누군가에게 고마운 일이 생기면 항상 마음속에서 감사하고 꼭 그 은혜를 갚는다</td>
							<td><input type="range" id="range23" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>24</td>
							<td>속상한 일이 생기면 몸이 아프다</td>
							<td><input type="range" id="range24" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>25</td>
							<td>공부하다 너무 어려운 내용이 나오면 다른 것을 한다</td>
							<td><input type="range" id="range25" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>26</td>
							<td>자발적이지 않으면 공부의욕이 전 생기지 않는다</td>
							<td><input type="range" id="range26" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>27</td>
							<td>경쟁상대가 있어야 공부할 맛이 난다</td>
							<td><input type="range" id="range27" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>28</td>
							<td>평소 욕심이 많다는 말을 많이 듣는다</td>
							<td><input type="range" id="range28" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>29</td>
							<td>몸이 아프거나 신체 컨디션이 좋지 않으면 공부가 전혀 안된다</td>
							<td><input type="range" id="range29" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>30</td>
							<td>문제를 해결할 때 방해되는 요소를 먼저 찾는다</td>
							<td><input type="range" id="range30" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>31</td>
							<td>같은 공부라도 게임처럼 하면 더 잘 된다</td>
							<td><input type="range" id="range31" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>32</td>
							<td>공부하다 처음 나오는 내용이면 멘탈붕괴가 일어난다</td>
							<td><input type="range" id="range32" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>33</td>
							<td>자투리 시간을 잘 활용한다</td>
							<td><input type="range" id="range33" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>34</td>
							<td>게임을 많이 좋아한다</td>
							<td><input type="range" id="range34" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>35</td>
							<td>손으로 쓰면 잘 외워진다</td>
							<td><input type="range" id="range35" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>36</td>
							<td>아나운서, 쇼호스트, 유투버 등 방송분야에서 일하고 싶다</td>
							<td><input type="range" id="range36" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>37</td>
							<td>반복하는 과정이 지루하지 않고 속도가 붙으면 오히려 재미있다</td>
							<td><input type="range" id="range37" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>38</td>
							<td>목소리가 남보다 크다</td>
							<td><input type="range" id="range38" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>39</td>
							<td>움직이지 않고 오랜시간 공부할 때보다 이동하면서 잠깐씩 공부한 것이 더 기억에 잘 남는다</td>
							<td><input type="range" id="range39" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>40</td>
							<td>머리써서 고민하는 것보다 반복해서 암기하는 것이 더 좋다</td>
							<td><input type="range" id="range40" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>41</td>
							<td>단순하게 반복하는 것은 선호하지 않는다</td>
							<td><input type="range" id="range41" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>42</td>
							<td>책임이 따르더라도 권한이 있는 것이 더 좋다</td>
							<td><input type="range" id="range42" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>43</td>
							<td>무슨 일을 할 때 시간을 정해놓고 한다</td>
							<td><input type="range" id="range43" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>44</td>
							<td>뉴스를 보고 시사적인 부분을 알게 되었을 때 똑똑한 느낌이 든다</td>
							<td><input type="range" id="range44" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>45</td>
							<td>혼자 알고 있는 것보다 남 앞에서 발표하는 것이 더 많이 알고 있는 것이라고 생각한다</td>
							<td><input type="range" id="range45" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>46</td>
							<td>하나를 배우면 다른 연관된 것도 자꾸 생각난다</td>
							<td><input type="range" id="range46" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>47</td>
							<td>책을 읽을 때는 명언이나 좋은 글귀를 반드시 적어둔다</td>
							<td><input type="range" id="range47" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>48</td>
							<td>아는 것과 모르는 것을 정확히 파악한다</td>
							<td><input type="range" id="range48" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>49</td>
							<td>시험을 보면 항상 오답분석을 한다</td>
							<td><input type="range" id="range49" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>50</td>
							<td>나의 약점을 분석해서 보완하면 더 나아질 수 있다고 생각한다</td>
							<td><input type="range" id="range50" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>51</td>
							<td>원하는 것을 한번에 이룰 수는 없으니 꾸준히 노력해야 한다고 생각한다</td>
							<td><input type="range" id="range51" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>52</td>
							<td>학교에서 주는 수행평가 절대 소홀하지 않는다</td>
							<td><input type="range" id="range52" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>53</td>
							<td>주제가 하나 생기면 연관되는 다른 것들도 자꾸 떠오른다</td>
							<td><input type="range" id="range53" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>54</td>
							<td>궁금증이 생기면 해결하기 전에는 다른 것에 집중할 수 없다</td>
							<td><input type="range" id="range54" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>55</td>
							<td>문제를 풀 때 출제자의 의도를 분석하면서 해결한다</td>
							<td><input type="range" id="range55" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>56</td>
							<td>여행을 가거나 놀이동산을 갈 때 스케줄 표를 짜고 이동한다</td>
							<td><input type="range" id="range56" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>57</td>
							<td>자기표현력이 좋다는 말을 많이 듣는다</td>
							<td><input type="range" id="range57" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>58</td>
							<td>배운 내용을 복습할 때 설명하면 머릿속에 많이 남는다</td>
							<td><input type="range" id="range58" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>59</td>
							<td>많은 활동을 하면서 학습하는 것이 가만히 책상 앞에서 공부하는 것보다 남는 것이 많다</td>
							<td><input type="range" id="range59" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>60</td>
							<td>질문을 자주 하는 편이며 정답을 찾지 못하면 답답하다</td>
							<td><input type="range" id="range60" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>61</td>
							<td>할일을 정해두고 활동한다</td>
							<td><input type="range" id="range61" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>62</td>
							<td>필기할 때 나만의 필기 노하우가 있다</td>
							<td><input type="range" id="range62" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>63</td>
							<td>시험지를 버리지 않고 모아둔다</td>
							<td><input type="range" id="range63" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>64</td>
							<td>종이보다는 미디어(PC화면, 핸드폰)를 이용하는 것이 효과가 좋다</td>
							<td><input type="range" id="range64" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>65</td>
							<td>다른 사람이 힘들어하는 것을 보면 웬지 돕고 싶은 마음이 든다</td>
							<td><input type="range" id="range65" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>66</td>
							<td>주변에서 나의 단점을 이야기하면 그 것으로 고치려고 애쓴다</td>
							<td><input type="range" id="range66" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>67</td>
							<td>오답노트 및 노트관리를 잘 하는 편이다</td>
							<td><input type="range" id="range67" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>68</td>
							<td>책을 통해서보다 활동을 통해서 더 많은 것을 배운다</td>
							<td><input type="range" id="range68" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>69</td>
							<td>사람들과 대화 할 때 핵심을 잘 집어낸다</td>
							<td><input type="range" id="range69" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>70</td>
							<td>주어진 시간이 얼마 없을 때 공부가 잘 된다</td>
							<td><input type="range" id="range70" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>71</td>
							<td>하나를 적더라도 예쁘게 적어 잘 보관한다</td>
							<td><input type="range" id="range71" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>72</td>
							<td>필기를 잘 한다는 소리를 많이 듣는다</td>
							<td><input type="range" id="range72" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>73</td>
							<td>친구 때문에 속상한 적이 성적이 안 나와서 속상한적 보다 많다</td>
							<td><input type="range" id="range73" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>74</td>
							<td>가족을 생각하며 공부를 열심히 한 적이 많다</td>
							<td><input type="range" id="range74" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>75</td>
							<td>사랑하는 사람때문에 하기 싫은 일도 많이 한다</td>
							<td><input type="range" id="range75" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>76</td>
							<td>1년 다이어리를 끝까지 작성한 적이 있다</td>
							<td><input type="range" id="range76" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>77</td>
							<td>중요하다고 하는 과목보다 내가 좋아하는 과목 성적이 더 잘 나온다</td>
							<td><input type="range" id="range77" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>78</td>
							<td>나보다 못하던 친구가 갑자기 성적이 좋아지면 화가 난다</td>
							<td><input type="range" id="range78" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>79</td>
							<td>인생의 롤 모델이 있다</td>
							<td><input type="range" id="range79" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>80</td>
							<td>주변상황보다 나만의 바이오리듬에 따라 학습효과가 달라진다</td>
							<td><input type="range" id="range80" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>81</td>
							<td>신경에 거슬리는 일이 있으면 집중이 어렵다</td>
							<td><input type="range" id="range81" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>82</td>
							<td>빙고게임을 자주 했다</td>
							<td><input type="range" id="range82" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>83</td>
							<td>모르는 게 있는데 해결할 수 없을 때 일단 다른 것을 먼저한다</td>
							<td><input type="range" id="range83" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>84</td>
							<td>선생님한테 칭찬도장을 받으면 기분이 좋다</td>
							<td><input type="range" id="range84" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>85</td>
							<td>시간이 촉박할 때 순서를 정하고 진행하는 편이다</td>
							<td><input type="range" id="range85" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>86</td>
							<td>틀린문제에 X 표를하는 것을 좋아하지 않는다</td>
							<td><input type="range" id="range86" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>87</td>
							<td>나의 성과물이 눈으로 보여지는 것을 좋아한다</td>
							<td><input type="range" id="range87" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>88</td>
							<td>중요한 대화가 있을 때 녹음을 많이 한다</td>
							<td><input type="range" id="range88" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>89</td>
							<td>처음에는 이해가 안 돼도 여러 번 보다 보면 나도 모르게 이해가 된다</td>
							<td><input type="range" id="range89" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>90</td>
							<td>남들 앞에 나서서 이야기하는 것을 좋아한다</td>
							<td><input type="range" id="range90" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>91</td>
							<td>움직임이 많아서 다소 산만하다는 얘기를 듣는다</td>
							<td><input type="range" id="range91" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>92</td>
							<td>단어를 암기할 때 쓰면서 암기한다</td>
							<td><input type="range" id="range92" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>93</td>
							<td>어려운 문제를 해결하면 기분이 좋다</td>
							<td><input type="range" id="range93" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>94</td>
							<td>회사에 다니면 힘든 일이 많아도 CEO가 되고 싶다</td>
							<td><input type="range" id="range94" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>95</td>
							<td>내가 한 일을 기록하고 체크하는 것을 좋아한다</td>
							<td><input type="range" id="range95" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>96</td>
							<td>어렸을 때 신문을 스크랩한 포트폴리오 만드는 것을 좋아했다</td>
							<td><input type="range" id="range96" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>97</td>
							<td>수업시간에 질문이 다른 학생보다 많다</td>
							<td><input type="range" id="range97" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>98</td>
							<td>보통 대화하면 말이 길어지는 경향이 있다</td>
							<td><input type="range" id="range98" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>99</td>
							<td>독서를 습관화하고 있다</td>
							<td><input type="range" id="range99" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>100</td>
							<td>질문거리가 생기면 정리해두고 반드시 해결한다</td>
							<td><input type="range" id="range100" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>101</td>
							<td>필기를 잘한다고 선생님들한테 칭찬받는다</td>
							<td><input type="range" id="range101" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>102</td>
							<td>잘못된 것이 있다면 정확한 진단을 받고 수정해야 한다</td>
							<td><input type="range" id="range102" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>103</td>
							<td>목표가 있으면 공부하는 원동력이 된다고 생각한다</td>
							<td><input type="range" id="range103" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>104</td>
							<td>친구들과 함께 공부하거나 과제하는 것을 좋아한다</td>
							<td><input type="range" id="range104" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>105</td>
							<td>궁금한 것이 있으면 인터넷이나 대중미디어를 많이 찾아본다</td>
							<td><input type="range" id="range105" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>106</td>
							<td>생각이 다른 사람보다 많은 편이다</td>
							<td><input type="range" id="range106" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>107</td>
							<td>상대방이 말 할때 의도가 무엇인지 정확하게 파악한다</td>
							<td><input type="range" id="range107" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>108</td>
							<td>시간안에 맡은 일을 끝내는 편이다</td>
							<td><input type="range" id="range108" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>109</td>
							<td>문제를 해결하기 위해서 토론과 발표를 선호한다</td>
							<td><input type="range" id="range109" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>110</td>
							<td>자기표현력과 설명능력이 뛰어나다</td>
							<td><input type="range" id="range110" min="1" max="10" value="1"></td>
						</tr>
						<tr>
							<td>111</td>
							<td>활동기록을 늘 남겨두고 관리한다</td>
							<td><input type="range" id="range111" min="1" max="10" value="1"></td>
						</tr>
					</tbody>
				</table>
				<div class="finish">
					<button class="finishbtn">제출하기</button>
				</div>
			</div>
		</div>
    </div>
    <script>
    	$(document).ready(function(){
    		$('.finishbtn').click(function(){
    			var name = $("#tendency_name").val();
    			var school = $("#tendency_school").val();
    			var grade = $("#tendency_grade").val();
    			var phone1 = $("#tendency_phone1").val();
        		var phone2 = $("#tendency_phone2").val();
            	var phone3 = $("#tendency_phone3").val();
        		var parentphone1 = $("#tendency_parentphone1").val();
                var parentphone2 = $("#tendency_parentphone2").val();
                var parentphone3 =$("#tendency_parentphone3").val();
                var a1 = parseFloat((parseFloat($('#range1').val()) + parseFloat($('#range18').val()) + parseFloat($('#range60').val()))/3*10);
    			var a2 = parseFloat((parseFloat($('#range1').val()) + parseFloat($('#range19').val()) + parseFloat($('#range61').val()))/3*10); 
    			var a3 = parseFloat((parseFloat($('#range1').val()) + parseFloat($('#range20').val()) + parseFloat($('#range62').val()))/3*10);
    			var a4 = parseFloat((parseFloat($('#range1').val()) + parseFloat($('#range21').val()) + parseFloat($('#range63').val()))/3*10);
    			var a5 = parseFloat((parseFloat($('#range1').val()) + parseFloat($('#range20').val()) + parseFloat($('#range64').val()))/3*10);
    			var a6 = parseFloat((parseFloat($('#range2').val()) + parseFloat($('#range20').val()) + parseFloat($('#range65').val()))/3*10);
    			var a7 = parseFloat((parseFloat($('#range3').val()) + parseFloat($('#range20').val()) + parseFloat($('#range66').val()))/3*10);
    			var a8 = parseFloat((parseFloat($('#range4').val()) + parseFloat($('#range20').val()) + parseFloat($('#range67').val()))/3*10);
    			var a9 = parseFloat((parseFloat($('#range5').val()) + parseFloat($('#range20').val()) + parseFloat($('#range68').val()))/3*10);
    			var a10 = parseFloat((parseFloat($('#range6').val()) + parseFloat($('#range20').val()) + parseFloat($('#range69').val()))/3*10);
    			var a11 = parseFloat((parseFloat($('#range7').val()) + parseFloat($('#range20').val()) + parseFloat($('#range70').val()))/3*10);
    			var a12 = parseFloat((parseFloat($('#range8').val()) + parseFloat($('#range20').val()) + parseFloat($('#range71').val()))/3*10);
    			var a13 = parseFloat((parseFloat($('#range9').val()) + parseFloat($('#range20').val()) + parseFloat($('#range72').val()))/3*10);
    			var h1 = parseFloat((parseFloat($('#range10').val()) + parseFloat($('#range22').val()) + parseFloat($('#range73').val()))/3*10);
    			var h2 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range23').val()) + parseFloat($('#range74').val()))/3*10);
    			var h3 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range24').val()) + parseFloat($('#range75').val()))/3*10);
    			var h4 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range25').val()) + parseFloat($('#range76').val()))/3*10);
    			var h5 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range26').val()) + parseFloat($('#range77').val()))/3*10);
    			var h6 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range27').val()) + parseFloat($('#range78').val()))/3*10);
    			var h7 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range28').val()) + parseFloat($('#range79').val()))/3*10);
    			var h8 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range29').val()) + parseFloat($('#range80').val()))/3*10);
    			var h9 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range30').val()) + parseFloat($('#range81').val()))/3*10);
    			var h10 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range31').val()) + parseFloat($('#range82').val()))/3*10);
    			var h11 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range32').val()) + parseFloat($('#range83').val()))/3*10);
    			var h12 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range32').val()) + parseFloat($('#range84').val()))/3*10);
    			var h13 = parseFloat((parseFloat($('#range10').val()) + parseFloat($('#range33').val()) + parseFloat($('#range85').val()))/3*10);
    			var h14 = parseFloat((parseFloat($('#range11').val()) + parseFloat($('#range34').val()) + parseFloat($('#range86').val()))/3*10);
    			var r1 = parseFloat((parseFloat($('#range12').val()) + parseFloat($('#range35').val()) + parseFloat($('#range87').val()))/3*10);
    			var r2 = parseFloat((parseFloat($('#range12').val()) + parseFloat($('#range36').val()) + parseFloat($('#range88').val()))/3*10);
    			var r3 = parseFloat((parseFloat($('#range12').val()) + parseFloat($('#range37').val()) + parseFloat($('#range89').val()))/3*10);
    			var r4 = parseFloat((parseFloat($('#range12').val()) + parseFloat($('#range38').val()) + parseFloat($('#range90').val()))/3*10);
    			var r5 = parseFloat((parseFloat($('#range12').val()) + parseFloat($('#range39').val()) + parseFloat($('#range91').val()))/3*10);
    			var r6 = parseFloat((parseFloat($('#range12').val()) + parseFloat($('#range40').val()) + parseFloat($('#range92').val()))/3*10);
    			var e1 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range41').val()) + parseFloat($('#range93').val()))/3*10);
    			var e2 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range42').val()) + parseFloat($('#range94').val()))/3*10);
    			var e3 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range43').val()) + parseFloat($('#range95').val()))/3*10);
    			var e4 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range44').val()) + parseFloat($('#range96').val()))/3*10);
    			var e5 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range45').val()) + parseFloat($('#range97').val()))/3*10);
    			var e6 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range46').val()) + parseFloat($('#range98').val()))/3*10);
    			var e7 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range47').val()) + parseFloat($('#range99').val()))/3*10);
    			var e8 = parseFloat((parseFloat($('#range13').val()) + parseFloat($('#range48').val()) + parseFloat($('#range100').val()))/3*10);
    			var e9 = parseFloat((parseFloat($('#range14').val()) + parseFloat($('#range48').val()) + parseFloat($('#range101').val()))/3*10);
    			var e10 = parseFloat((parseFloat($('#range14').val()) + parseFloat($('#range50').val()) + parseFloat($('#range102').val()))/3*10);
    			var e11 = parseFloat((parseFloat($('#range15').val()) + parseFloat($('#range51').val()) + parseFloat($('#range103').val()))/3*10);
    			var e12 = parseFloat((parseFloat($('#range16').val()) + parseFloat($('#range52').val()) + parseFloat($('#range104').val()))/3*10);
    			var e13 = parseFloat((parseFloat($('#range17').val()) + parseFloat($('#range53').val()) + parseFloat($('#range105').val()))/3*10);
    			var e14 = parseFloat((parseFloat($('#range17').val()) + parseFloat($('#range54').val()) + parseFloat($('#range106').val()))/3*10);
    			var e15 = parseFloat((parseFloat($('#range14').val()) + parseFloat($('#range55').val()) + parseFloat($('#range107').val()))/3*10);
    			var e16 = parseFloat((parseFloat($('#range15').val()) + parseFloat($('#range56').val()) + parseFloat($('#range108').val()))/3*10);
    			var e17 = parseFloat((parseFloat($('#range16').val()) + parseFloat($('#range57').val()) + parseFloat($('#range109').val()))/3*10);
    			var e18 = parseFloat((parseFloat($('#range14').val()) + parseFloat($('#range58').val()) + parseFloat($('#range110').val()))/3*10);
    			var e19 = parseFloat((parseFloat($('#range17').val()) + parseFloat($('#range59').val()) + parseFloat($('#range111').val()))/3*10);
    			let today = new Date();
    			let year = today.getFullYear();
    			let month = today.getMonth()+1;
    			let date = today.getDate();
    			var insertdate = (year+'.'+month+'.'+date);
    			if(name==""||school==""||grade==""||phone1==""||phone2==""||phone3==""||parentphone1==""||parentphone2==""||parentphone3==""){
    				alert("입력 값이 부족합니다");
    			}else{
    				$.ajax({
        				url : "inserttendency.do",
        				type : "post",
        				data : {
        					tendency_name : name,
        					tendency_school : school,
        					tendency_grade : grade,
        					tendency_phone1 : phone1,
        					tendency_phone2 : phone2,
        					tendency_phone3 : phone3,
        					tendency_parentphone1 : parentphone1,
        					tendency_parentphone2 : parentphone2,
        					tendency_parentphone3 : parentphone3,
        					tendency_date : insertdate,
        					tendency_a1 : a1,
        					tendency_a2 : a2,
        					tendency_a3 : a3,
        					tendency_a4 : a4,
        					tendency_a5 : a5,
        					tendency_a6 : a6,
        					tendency_a7 : a7,
        					tendency_a8 : a8,
        					tendency_a9 : a9,
        					tendency_a10 : a10,
        					tendency_a11 : a11,
        					tendency_a12 : a12,
        					tendency_a13 : a13,
        					tendency_h1 : h1,
        					tendency_h2 : h2,
        					tendency_h3 : h3,
        					tendency_h4 : h4,
        					tendency_h5 : h5,
        					tendency_h6 : h6,
        					tendency_h7 : h7,
        					tendency_h8 : h8,
        					tendency_h9 : h9,
        					tendency_h10 : h10,
        					tendency_h11 : h11,
        					tendency_h12 : h12,
        					tendency_h13 : h13,
        					tendency_h14 : h14,
        					tendency_r1 : r1,
        					tendency_r2 : r2,
        					tendency_r3 : r3,
        					tendency_r4 : r4,
        					tendency_r5 : r5,
        					tendency_r6 : r6,
        					tendency_e1 : e1,
        					tendency_e2 : e2,
        					tendency_e3 : e3,
        					tendency_e4 : e4,
        					tendency_e5 : e5,
        					tendency_e6 : e6,
        					tendency_e7 : e7,
        					tendency_e8 : e8,
        					tendency_e9 : e9,
        					tendency_e10 : e10,
        					tendency_e11 : e11,
        					tendency_e12 : e12,
        					tendency_e13 : e13,
        					tendency_e14 : e14,
        					tendency_e15 : e15,
        					tendency_e16 : e16,
        					tendency_e17 : e17,
        					tendency_e18 : e18,
        					tendency_e19 : e19
        				},
        				success : function(data) {
        					alert("success!");
        					window.location.href = "tendencyboard.do";
        			     },
        				error : function() {
        					alert("error");
        				}
        			});
    			}
    		});
    	});
    </script>
</body>
</html>