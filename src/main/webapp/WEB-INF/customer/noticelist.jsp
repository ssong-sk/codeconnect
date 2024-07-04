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
<title>공지사항</title>
<style type="text/css">
.all {
	height: 100%;
}

.center {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	max-width: 1060px;
	margin-bottom: 100px;	
}

#wrap {
	margin-top: 45px; /* 헤더 들어갈 부분 */
	font-family: IBM Plex Sans KR;
}

body {
    font-family: 'IBM Plex Sans KR', sans-serif;
}

/* 최상단 카테고리 nav */
.nav ul {
    list-style-type: none;
    display: flex;
    gap: 50px;
    justify-content: flex-start;
    margin-top: 40px;
}
.nav ul a {
    display: block;
    color: gray;
    text-decoration: none;
    font-weight: 700;
    font-size: 17px;
    line-height: 32px;
    padding: 0px;
}

.nav ul .active {
    color: #0D6CF9;
}

.nav ul a:hover {
    color: #0D6CF9;
}

.top-section {
    margin-top: 40px;
}

/* 테이블 스타일 */
table {
    width: 80%;
    margin: 30px auto;
    border-collapse: collapse;
    border-top: 2px solid #000;
}

th, td {
    padding: 15px;
    text-align: left;
}

td.center {
    text-align: center;
}

tr:not(:first-child) td {
    border-top: 1px solid #ddd;
}

th {
    border-bottom: 2px solid #000;
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
    border: 1px solid #0D6CF9;
    background-color: white;
    color: #0D6CF9;
    pointer-events: none;
    box-shadow: none;
}

/* 이미지 */
.image-container {
    position: relative;
    display: inline-block;
}

.centered-text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: black;
    font-weight: bold;
    text-align: center;
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
<div class="all">
	<div id="wrap">
		<div class="center">
			<div class="image-container">
				<img alt="" src="../image/customerimg.jpg" style="width: 1060px; border-radius: 10px;">
				<h4 class="centered-text">코드커넥트 고객센터입니다.</h4>
			</div>
			<nav class="nav">
			    <ul>
			        <li><a class="nav-link" id="noticeLink" href="noticelist">공지사항</a></li>
			        <li><a class="nav-link" id="eventLink" href="eventlist">이벤트</a></li>
			        <li><a class="nav-link" id="inquiryLink" href="inquirylist">1:1문의</a></li>
			    </ul>
			</nav>
			
			<!-- 관리자(manager) 로그인시에만 글쓰기 버튼 보이게 & span,button 간격 조정-->
			<div class="top-section">
			        <span>총 &nbsp;${totalCount}&nbsp;건</span>
			        <c:if test="${sessionScope.myid == 'manager'}">
			            <button type="button" class="btn btn-outline-primary" onclick="location.href='noticeform'">글쓰기</button>
			        </c:if>
			        <c:if test="${sessionScope.myid != 'manager'}">
			            <button type="button" class="btn btn-outline-primary" style="visibility: hidden;">글쓰기</button>
			        </c:if>
			    
			</div>
			<div>
			    <table class="table" style="font-size: 15px; border-top: 2px solid #E2E2E2; border-bottom: 2px solid #E2E2E2">
			         <c:forEach var="notice" items="${list}">
			             <tr style="height: 60px;">
			                 <td class="center" style="color: #0D6CF9; font-weight: bold; vertical-align: middle; width: 70px;">${notice.cus_category}</td>
			                 <td style="vertical-align: middle; width: 300px;">
			                    <a href="noticedetail/${notice.cus_num}" style="text-decoration: none; color: black;">
			                        ${notice.cus_title}
			                    </a>
			                </td>
			                 <td class="center" style="vertical-align: middle; color: gray; width: 120px;"><fmt:formatDate value="${notice.cus_writetime}" pattern="yyyy.MM.dd" /></td>
			             </tr>
			         </c:forEach>
			    </table>
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
		</div>
	</div>
</div>
</body>
</html>
