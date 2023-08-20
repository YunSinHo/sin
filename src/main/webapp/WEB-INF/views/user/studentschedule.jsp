<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="css/user/studentschedule.css" rel="stylesheet" />
</head>
<body>
    <div class="menubody">

    </div>
    <div class="mainbody">
        <div class="scheduleheader">
            <div class="headermain">
                학습관리표
            </div>
            <div class="nav">
                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                <button class="nav-btn go-today" onclick="goToday()">Today</button>
                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
            </div>
        </div>
        <div class="schedulebody">
            <div class="schedulecalendar">
                <div class="calnedarheader">
                    | 출석현황    
                    <div class="calnedarinfor">
                        <p>보강결석사유 : 직계가족 관혼상제, 병원진단서 첨부 병결, 학교수련회</p>
                        <p>보강일 결석은 강사 추가 배치로 인해 무단결석은 보강수업 및 수강료 이월처리가 안됨</p>
                    </div>
                </div>
                <div class="calendar">
                    <div class="header">
                        <div class="year-month"></div>
                        <div class="monthen"></div>
                    </div>
                    <div class="main">
                        <div class="days">
                            <div class="day">SUN</div>
                            <div class="day">MON</div>
                            <div class="day">TUE</div>
                            <div class="day">WED</div>
                            <div class="day">THU</div>
                            <div class="day">FRI</div>
                            <div class="day">SAT</div>
                        </div>
                        <div class="dates"></div>
                    </div>
                </div>
            </div>
            <div class="magnitudearea">
                <div class="magnitudeheader">
                    | 진도계획표
                    <div class="magnitudeinfor">
                        <p>위의 월간 달력에서 날짜를 클릭하면 해당일의 수업진도를 볼 수 있음</p>
                    </div>
                </div>
            </div>
            <div class="missionarea">
                <div class="missionheader1">
                    | 미 이행 누적 미션
                    <div class="missioninfor">
                        <p>10일안에 미이행 미션을 검사받지 않으면</p>
                        <p>추가등원하여 미션을 완수한다</p>
                    </div>
                </div>
                <div class="missionbody1">
                    <p>- (8.28) 문법 : 천일문 200페이지~230페이지 풀고 채점</p>
                    <p>- (9.2) 어휘 : 그림어원중학보카 23~25강 재시</p>
                </div>
                <div class="missionheader2">
                    | 투데이 미션
                </div>
                <div class="missionbody2">
                    <table class="missiontable">
                        <thead>
                            <tr>
                                <th style="width:15%">영역</th>
                                <th>세부내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>문법</td>
                                <td>hi</td>
                            </tr>
                            <tr>
                                <td>독해</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>어휘</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>듣기</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>영작</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>모의<br>고사</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>영자<br>신문</td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script>
        let date = new Date();

        const renderCalendar = () => {
            const viewYear = date.getFullYear();
            const viewMonth = date.getMonth();
            var monthNames = ["January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"
            ];
            var d = new Date();
            // year-month 채우기
            document.querySelector('.year-month').textContent = `\${viewMonth + 1}`;
            document.querySelector('.monthen').textContent = monthNames[d.getMonth()];

            // 지난 달 마지막 Date, 이번 달 마지막 Date
            const prevLast = new Date(viewYear, viewMonth, 0);
            const thisLast = new Date(viewYear, viewMonth + 1, 0);

            const PLDate = prevLast.getDate();
            const PLDay = prevLast.getDay();

            const TLDate = thisLast.getDate();
            const TLDay = thisLast.getDay();

            // Dates 기본 배열들
            const prevDates = [];
            const thisDates = [...Array(TLDate + 1).keys()].slice(1);
            const nextDates = [];

            // prevDates 계산
            if (PLDay !== 6) {
                for (let i = 0; i < PLDay + 1; i++) {
                    prevDates.unshift(PLDate - i);
                }
            }

            // nextDates 계산
            for (let i = 1; i < 7 - TLDay; i++) {
                nextDates.push(i);
            }

            // Dates 합치기
            const dates = prevDates.concat(thisDates, nextDates);

            // Dates 정리
            const firstDateIndex = dates.indexOf(1);
            const lastDateIndex = dates.lastIndexOf(TLDate);
            dates.forEach((date, i) => {
                const condition = i >= firstDateIndex && i < lastDateIndex + 1
                                    ? 'this'
                                    : 'other';

                dates[i] = `<div class="date" id="datefunc\${date}"><span class="\${condition}">\${date}</span></div>`;
            })

            // Dates 그리기
            document.querySelector('.dates').innerHTML = dates.join('');

            // 오늘 날짜 그리기
            const today = new Date();
            if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
                for (let date of document.querySelectorAll('.this')) {
                    if (+date.innerText === today.getDate()) {
                        date.classList.add('today');

                        break;
                    }
                }
            }
        }
        renderCalendar();


        const prevMonth = () => {
            date.setDate(1);
            date.setMonth(date.getMonth() - 1);
            renderCalendar();
        }

        const nextMonth = () => {
            date.setDate(1);
            date.setMonth(date.getMonth() + 1);
            renderCalendar();
        }

        const goToday = () => {
            date = new Date();
            renderCalendar();
        }
    </script>
</body>
</html>