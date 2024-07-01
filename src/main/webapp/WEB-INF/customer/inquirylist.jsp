<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>1:1문의</title>
<style type="text/css">
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    
    /* 최상단 카테고리 nav */
    .nav {
        margin-top: 5px;
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
    .top-section {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 80%;
        margin: 50px auto -30px auto; /* 아래쪽 간격을 10px로 줄임 */
        gap: 870px;
    }

    /* 테이블 스타일 */
    table {
        width: 80%;
        margin: 50px auto;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    td.center {
        text-align: center;
    }
    /* 페이징 스타일 */
    .pagination {
        display: flex;
        justify-content: center;
        margin-top: 40px;
        margin-bottom: 50px;
    }

    .pagination a {
        padding: 10px 15px;
        margin: 0 5px;
        color: gray;
        text-decoration: none;
        transition: background-color 0.3s;
        border-radius: 5px;
        border: none;
    }

    .pagination a:hover {
        background-color: #e9ecef;
    }

    .pagination a.active {
        border: 1px solid #dee2e6;
        background-color: white;
        color: blue;
        pointer-events: none;
        box-shadow: none;
    }
</style>
<script type="text/javascript">
	$(document).ready(function() {
	    var currentUrl = window.location.pathname;
	    if (currentUrl.includes('/customer/noticelist')) {
	        $('#noticeLink').addClass('active');
	    } else if (currentUrl.includes('/customer/eventlist')) {
	        $('#eventLink').addClass('active');
	    } else if (currentUrl.includes('/customer/inquirylist')) {
	        $('#inquiryLink').addClass('active');
	    }
	});
</script>
</head>
<body>
<div style="max-width: 1000px; margin-top: 70px; margin-left: 260px; width: 80%;">
	<h4 style="color: gray; font-weight: bold;">고객센터</h4>
</div>
<nav class="nav">
    <ul>
        <li><a class="nav-link" id="noticeLink" href="${pageContext.request.contextPath}/customer/noticelist">공지사항</a></li>
        <li><a class="nav-link" id="eventLink" href="${pageContext.request.contextPath}/customer/eventlist">이벤트</a></li>
        <li><a class="nav-link" id="inquiryLink" href="${pageContext.request.contextPath}/customer/inquirylist">1:1문의</a></li>
    </ul>
</nav>

<!-- 관리자(manager) 로그인시에만 글쓰기 버튼 보이게 & span,button 간격 조정-->
<div class="top-section">
    <span>총 &nbsp;${totalCount}&nbsp;건</span>
    <c:if test="${sessionScope.myid == 'hyoyoung'}">
        <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/customer/inquiryform'">글쓰기</button>
    </c:if>
    <c:if test="${sessionScope.myid != 'hyoyoung'}">
        <button type="button" class="btn btn-outline-primary" style="visibility: hidden;">글쓰기</button>
    </c:if>

	
</div>



<div class="pagination">
    <c:if test="${startPage > 1}">
        <a href="?pageNum=${startPage - 1}" class="page-link"><i class="bi bi-chevron-left"></i>이전</a>
    </c:if>
    <c:forEach begin="${startPage}" end="${endPage}" var="i">
        <a href="?pageNum=${i}" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
    </c:forEach>
    <c:if test="${endPage < totalPage}">
        <a href="?pageNum=${endPage + 1}" class="page-link">다음<i class="bi bi-chevron-right"></i></a>
    </c:if>
</div>
</body>
</html>
