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
</head>
<body>
<nav class="nav">
    <ul>
        <a class="nav-link ${fn:contains(pageContext.request.requestURI, '/customer/noticelist') ? 'active' : ''}" href="${root}/customer/noticelist">공지사항</a>
        <a class="nav-link ${fn:contains(pageContext.request.requestURI, '/customer/eventlist') ? 'active' : ''}" href="${root}/customer/eventlist">이벤트</a>
        <a class="nav-link ${fn:contains(pageContext.request.requestURI, '/customer/inquirylist') ? 'active' : ''}" href="${root}/customer/inquirylist">1:1문의</a>
    </ul>
</nav>

<div class="top-section">
    <b>총 ${totalCount}건</b>
    <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/customer/noticeform'">글쓰기</button>
</div>
<div class="" style="max-width: 1000px; margin: 50px auto; width: 80%;">
    <table class="table table-group-divider">
         <c:forEach var="notice" items="${list}">
             <tr class="">
                 <td class="center" width="70" style="color: #6387FD;">${notice.cus_category}</td>
                 <td width="500">
                    <a href="${root}/customer/notice/${notice.cus_num}" style="text-decoration: none; color: black;">
                        ${notice.cus_title}
                    </a>
                </td>
                 <td class="center" width="120"><fmt:formatDate value="${notice.cus_writetime}" pattern="yyyy.MM.dd" /></td>
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
</body>
</html>
