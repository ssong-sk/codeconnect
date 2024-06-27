<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    /* 최상단 카테고리 nav */
    .nav {
        margin-top: 50px;
        margin-left: 150px;
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
        white-space: pre-wrap; /* 유지하기 위해 */
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
</head>
<body>
<nav class="nav">
    <ul>
        <a class="nav-link ${fn:contains(pageContext.request.requestURI, '/customer/noticelist') ? 'active' : ''}" href="${root}/customer/noticelist">공지사항</a>
        <a class="nav-link ${fn:contains(pageContext.request.requestURI, '/customer/eventlist') ? 'active' : ''}" href="${root}/customer/eventlist">이벤트</a>
        <a class="nav-link ${fn:contains(pageContext.request.requestURI, '/customer/inquirylist') ? 'active' : ''}" href="${root}/customer/inquirylist">1:1문의</a>
    </ul>
</nav>
<div class="container">
    <div class="detail-title">
        ${dto.cus_title}
    </div>
    <div class="detail-info">
        <span>등록일 : <fmt:formatDate value="${dto.cus_writetime}" pattern="yyyy-MM-dd"/></span>
    </div>
    <div class="detail-content">
        ${dto.cus_content}
        <c:if test="${not empty dto.cus_photo}">
            <img src="${pageContext.request.contextPath}/customerimage/${dto.cus_photo}" alt="첨부 이미지" />
        </c:if>
    </div>
    <div class="footer">
        <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/customer/noticelist'">목록</button>
    </div>
</div>
</body>
</html>