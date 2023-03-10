<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/admin/main.css" media="screen"/>
    <title>팝빌 SDK SpringMVC Example.</title>
</head>
<body>
<form action="sendSMS.mdo">
<div id="content">
    <p class="heading1">팝빌 문자메시지 API SDK SpringMVC Example.</p>
    <br/>
    <fieldset class="fieldset1">
        <legend>발신번호 관리</legend>
        <ul>
            <li><a href="checkSenderNumber.mdo">checkSenderNumber</a> - 발신번호 등록여부 확인</li>
            <li><a href="getSenderNumberMgtURL.mdo">getSenderNumberMgtURL</a> - 발신번호 관리 팝업 URL</li>
            <li><a href="getSenderNumberList.mdo">getSenderNumberList</a> - 발신번호 목록 확인</li>
        </ul>
        
    </fieldset>
    <fieldset class="fieldset1">
        <legend>문자 전송</legend>
        <ul>
        <c:forEach items="${carrotList}" var="carrotList" >
        <input type="hidden" name="carrot_seq" value="${carrotList.carrot_seq}">
        </c:forEach>
            <li><input type="submit" value="sendSMS"></li>
            
            <li><a href="sendSMS_Multi.mdo">sendSMS</a> - 단문 전송 [대량]</li>
            <li><a href="sendLMS.mdo">sendLMS</a> - 장문 전송</li>
            <li><a href="sendLMS_Multi.mdo">sendLMS</a> - 장문 전송 [대량]</li>
            <li><a href="sendMMS.mdo">sendMMS</a> - 포토 전송</li>
            <li><a href="sendMMS_Multi.mdo">sendMMS</a> - 포토 전송 [대량]</li>
            <li><a href="sendXMS.mdo">sendXMS</a> - 단문/장문 자동인식 전송</li>
            <li><a href="sendXMS_Multi.mdo">sendXMS</a> - 단문/장문 자동인식 전송 [대량]</li>
            <li><a href="cancelReserve.mdo">cancelReserve</a> - 예약전송 취소</li>
            <li><a href="cancelReserveRN.mdo">cancelReserveRN</a> - 예약전송 취소 (요청번호 할당)</li>
            <li><a href="cancelReservebyRCV.mdo">cancelReservebyRCV</a> - 예약전송 취소 (접수번호, 수신번호)</li>
            <li><a href="cancelReserveRNbyRCV.mdo">cancelReserveRNbyRCV</a> - 예약전송 취소 (요청번호, 수신번호)</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>정보확인</legend>
        <ul>
            <li><a href="getMessages.mdo">getMessages</a> - 전송내역 확인</li>
            <li><a href="getMessagesRN.mdo">getMessagesRN</a> - 전송내역 확인 (요청번호 할당)</li>
            <li><a href="search.mdo">search</a> - 전송내역 목록 조회</li>
            <li><a href="getSentListURL.mdo">getSentListURL</a> - 문자 전송내역 팝업 URL</li>
            <li><a href="autoDenyList.mdo">getAutoDenyList</a> - 080 수신거부 목록 확인</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>포인트 관리</legend>
        <ul>
            <li><a href="BaseService/getBalance">getBalance</a> - 연동회원 잔여포인트 확인</li>
            <li><a href="BaseService/getUseHistory">getUseHistory</a> - 연동회원 포인트 사용내역</li>
            <li><a href="BaseService/getPaymentHistory">getPaymentHistory</a> - 연동회원 포인트 결제내역</li>
            <li><a href="BaseService/getRefundHistory">getRefundHistory</a> - 연동회원 포인트 환불신청내역</li>
            <li><a href="BaseService/refund">refund</a> - 연동회원 포인트 환불 신청</li>
            <li><a href="BaseService/paymentRequest">paymentRequest</a> - 연동회원 무통장 입금신청</li>
            <li><a href="BaseService/getSettleResult">getSettleResult</a> - 연동회원 무통장 입금신청정보 확인</li>
            <li><a href="BaseService/getChargeURL">getChargeURL</a> - 연동회원 포인트충전 URL</li>
            <li><a href="BaseService/getPaymentURL">getPaymentURL</a> - 연동회원 포인트 결제내역 URL</li>
            <li><a href="BaseService/getUseHistoryURL">getUseHistoryURL</a> - 연동회원 포인트 사용내역 URL</li>
            <li><a href="BaseService/getPartnerBalance">getPartnerBalance</a> - 파트너 잔여포인트 확인</li>
            <li><a href="BaseService/getPartnerURL">getPartnerURL</a> - 파트너 포인트충전 URL</li>
            <li><a href="getUnitCost">getUnitCost</a> - 전송단가 확인</li>
            <li><a href="getChargeInfo">getChargeInfo</a> - 과금정보 확인</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>회원정보</legend>
        <ul>
            <li><a href="BaseService/checkIsMember">checkIsMember</a> - 연동회원 가입여부 확인</li>
            <li><a href="BaseService/checkID">checkID</a> - 아이디 중복 확인</li>
            <li><a href="BaseService/joinMember">joinMember</a> - 연동회원 신규가입</li>
            <li><a href="BaseService/getAccessURL">getAccessURL</a> - 팝빌 로그인 URL</li>
            <li><a href="BaseService/registContact">registContact</a> - 담당자 등록</li>
            <li><a href="BaseService/getContactInfo">getContactInfo</a> - 담당자 정보 확인</li>
            <li><a href="BaseService/listContact">listContact</a> - 담당자 목록 확인</li>
            <li><a href="BaseService/updateContact">updateContact</a> - 담당자 정보 수정</li>
            <li><a href="BaseService/getCorpInfo">getCorpInfo</a> - 회사정보 확인</li>
            <li><a href="BaseService/updateCorpInfo">updateCorpInfo</a> - 회사정보 수정</li>
        </ul>
    </fieldset>
</div>
</form>
</body>
</html>