<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>1:1 문의</title>
<style type="text/css">
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }

    /* 최상단 카테고리 nav */
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
    .top-section {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 80%;
        margin: 50px auto -30px auto;
        gap: 870px;
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
<div style="max-width: 1000px; margin-top: 70px; margin-left: 370px; width: 80%;">
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
    <span style="margin-right: 940px;">총 &nbsp;${totalCount}&nbsp;건</span>
    
</div>
<div style="max-width: 1000px; margin: 50px auto; width: 80%;">
    <table class="table" style="font-size: 15px; vertical-align: middle; border-top: 2px solid gray; border-bottom: 2px solid #E2E2E2">
         <tr align="center" style="height: 50px; border-bottom: 2px solid #C0C0C0;">
             <th width="500">제목</th>
             <th width="120">작성일</th>
             <th width="100">답변상태</th>
         </tr>
         <!-- 1:1문의 게시판은 본인이 작성한 글만 보이도록 처리 -->
         <c:if test="${sessionScope.myid != null}">
		    <c:forEach var="inquiry" items="${list}">
		        <c:if test="${sessionScope.myid == 'manager' || inquiry.cus_user_id == sessionScope.myid}">
		            <tr style="height: 55px;">
		                <td width="500" style="vertical-align: middle;">
		                    <a href="${pageContext.request.contextPath}/customer/inquirydetail/${inquiry.cus_num}" style="text-decoration: none; color: black; margin-left: 5px;">
		                        ${inquiry.cus_title}
		                    </a>
		                </td>
		                <td class="center" width="120" style="vertical-align: middle; color: gray;">
		                    <fmt:formatDate value="${inquiry.cus_writetime}" pattern="yyyy.MM.dd" />
		                </td>
		                <td class="center" width="100">
		                    <c:choose>
		                        <c:when test="${not empty inquiry.cus_answer}">
		                            <span style="color: #0000FF;">답변 완료</span>
		                        </c:when>
		                        <c:otherwise>
		                            답변 대기
		                        </c:otherwise>
		                    </c:choose>
		                </td>
		            </tr>
		        </c:if>
		    </c:forEach>
		</c:if>
    </table>
</div>
<div style="margin-left: 1350px; margin-top: -30px;">
	<c:if test="${sessionScope.myid != null}">
        <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/customer/inquiryform'">문의하기</button>
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