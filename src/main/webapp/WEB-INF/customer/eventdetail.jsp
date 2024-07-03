<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상세보기</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .nav {
        margin-top: 5px;
        margin-left: 270px;
    }
    .nav ul {
        list-style-type: none;
        display: flex;
        gap: 20px;
        padding: 0;
        justify-content: flex-start;
        margin-top: 40px;
        margin-left: 100px;
    }
    .nav ul a {
        display: block;
        color: gray;
        text-decoration: none;
        font-weight: 700;
        font-size: 17px;
        line-height: 32px;
        padding: 0 15px;
    }
    .nav ul .active {
        color: blue;
    }
    .container {
        max-width: 1000px;
        margin: 50px auto;
        padding: 20px;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .detail-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }
    .detail-info {
        margin-bottom: 20px;
        border-bottom: 1px solid #ddd;
        padding-bottom: 10px;
    }
    .detail-info span {
        display: inline-block;
        margin-right: 10px;
    }
    .detail-content {
        margin-bottom: 20px;
        white-space: pre-wrap;
        line-height: 1.6;
    }
    .btn-secondary {
        background-color: #6c757d;
        border: none;
    }
    .btn-secondary:hover {
        background-color: #5a6268;
    }
    .footer {
        text-align: right;
        margin-top: 20px;
    }
</style>
<script type="text/javascript">
	function confirmDelete(url) {
	    if (confirm("정말 삭제하시겠습니까?")) {
	        location.href = url;
	    }
	}
	
	$(document).ready(function() {
	    var currentUrl = window.location.pathname;
	    if (currentUrl.includes('/customer/noticelist') || currentUrl.includes('/customer/noticedetail')) {
	        $('#noticeLink').addClass('active');
	    } else if (currentUrl.includes('/customer/eventlist') || currentUrl.includes('/customer/eventdetail')) {
	        $('#eventLink').addClass('active');
	    } else if (currentUrl.includes('/customer/inquirylist') || currentUrl.includes('/customer/inquirydetail')) {
	        $('#inquiryLink').addClass('active');
	    }
	});
</script>
</head>
<body>
<div style="max-width: 1000px; margin-top: 70px; margin-left: 370px; width: 80%;">
    <h4 style="color: gray; font-weight: bold;">고객센터</h4>
</div>
<nav class="nav">
    <ul>
        <a class="nav-link" id="noticeLink" href="${pageContext.request.contextPath}/customer/noticelist">공지사항</a>
        <a class="nav-link" id="eventLink" href="${pageContext.request.contextPath}/customer/eventlist">이벤트</a>
        <a class="nav-link" id="inquiryLink" href="${root}/customer/inquirylist">1:1문의</a>
    </ul>
</nav>
<div class="container" style=" max-width: 1000px;">
    <div class="detail-title">
        ${dto.cus_title}
    </div>
    <div class="detail-info">
        <span>대상 : ${dto.cus_target}</span><br>
        <span>이벤트 기간 : <fmt:formatDate value="${dto.cus_startday}" pattern="yyyy-MM-dd"/></span>~&nbsp;
        <span><fmt:formatDate value="${dto.cus_endday}" pattern="yyyy-MM-dd"/></span><br>
        <span>등록일 : <fmt:formatDate value="${dto.cus_writetime}" pattern="yyyy-MM-dd"/></span>
    </div>
    <div class="detail-content">
	    ${dto.cus_content}
	    <c:if test="${not empty dto.cus_photo}">
	        <img src="${pageContext.request.contextPath}/customerimage/${dto.cus_photo}" alt="첨부 이미지" style="display: block; max-width: 940px; width: 92%; height: auto; margin: 0 auto;"/>
	    </c:if>
	</div>
    <div class="footer">
        <c:if test="${sessionScope.myid == 'manager'}">
        	<button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/eventform'">글쓰기</button>
            <button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/eventupdateform/${dto.cus_num}'">수정</button>
        	<button type="button" class="btn btn-outline-primary btn-sm" onclick="confirmDelete('${pageContext.request.contextPath}/customer/eventdelete/${dto.cus_num}')">삭제</button>
        </c:if>
        <button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/eventlist'">목록</button>
    </div>
</div>
</body>
</html>
