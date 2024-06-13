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
<title>Insert title here</title>
<style type="text/css">
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .nav {
        margin-top: 50px;
        margin-left: 150px;
    }
    .nav ul {
        list-style-type: none;
        display: flex;
        gap: 20px;
        padding: 0;
        justify-content: center;
        margin-top: 40px;
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
        border-bottom: 2px solid blue;
    }
    .container {
        max-width: 1200px;
        margin: 0 auto;
    }
    .wrap_category_type {
        padding: 30px;
        border: 1px solid #eaeaea;
        border-top: 2px solid #a0a0a0; /* 상단 테두리를 더 짙게 설정 */
        margin-top: 30px;
    }
    .wrap_category_type ul {
        list-style-type: none;
        font-size: 17px;
        padding-left: 0;
        display: flex;
        flex-wrap: wrap;
    }
    .wrap_category_type ul li {
    	width: 20%; /* 5열로 정렬 */
        margin-bottom: 10px;
        text-align: left; /* 왼쪽 정렬 */
    }
    .wrap_category_type ul li a {
        text-decoration: none;
        color: black;
    }
    .input-group {
        margin-top: 30px;
        width: 350px;
    }
    .interview-list {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        margin-top: 30px;
    }
    .interview-item {
        flex: 0 1 calc(33.333% - 20px);
        border: 1px solid #eaeaea;
        padding: 20px;
        border-radius: 5px;
    }
    .interview-item img {
        width: 100%;
        height: auto;
        border-radius: 50%;
    }
    .interview-item h5 {
        margin-top: 10px;
    }
    .interview-item .details {
        color: gray;
        font-size: 14px;
    }
</style>
</head>
<body>
<nav class="nav">
	<ul>
		<a class="nav-link" href="${root }/community/list">홈</a>
	    <a class="nav-link" href="${root }/community/interviewlist">현직자 인터뷰</a>
	</ul>
</nav>
<div class="container" style="margin-top: 50px;">
    <h3>현직자 인터뷰</h3>
    <div class="wrap_category_type" style="margin-top: 30px;">
        <ul class="list_category">
            <li><a href="#">전체</a></li>
            <li><a href="#">서버/백엔드 개발자</a></li>
            <li><a href="#">프론트엔드 개발자</a></li>
            <li><a href="#">웹 풀스택 개발자</a></li>
            <li><a href="#">안드로이드 개발자</a></li>
            <li><a href="#">IOS 개발자</a></li>
            <li><a href="#">게임 클라이언트 개발자</a></li>
            <li><a href="#">DBA</a></li>
            <li><a href="#">빅데이터 엔지니어</a></li>
            <li><a href="#">인공지능/머신러닝</a></li>
            <li><a href="#">devops/시스템 엔지니어</a></li>
            <li><a href="#">정보보안 담당자</a></li>
            <li><a href="#">QA 엔지니어</a></li>
            <li><a href="#">개발 PM</a></li>
            <li><a href="#">HW/임베디드</a></li>
            <li><a href="#">SW/솔루션</a></li>
            <li><a href="#">VR/AR/3D</a></li>
            <li><a href="#">기술지원</a></li>
        </ul>
    </div>
    <div class="input-group" style="margin-top: 30px; margin-left: 825px;">
        <input type="text" class="form-control" placeholder="직무 또는 기업명을 입력하세요">
        <button class="btn btn-primary" type="button">검색</button>
    </div>
    <div class="interview-list">
        <c:forEach var="interview" items="${interviewList}">
		    <div class="interview-item">
		        <img src="${interview.com_photo}" alt="${interview.com_nickname}">
		        <h5>${interview.com_user_id}</h5>
		        <div class="details">
		            <p>${interview.com_title}</p>
		            <p>${interview.com_category}</p>
		        </div>
		        <p>${interview.com_content}</p>
		        <p>${interview.com_writetime}</p>
		        <p>조회수: ${interview.com_readcount}</p>
		    </div>
		</c:forEach>
    </div>
    <nav aria-label="Page navigation example" style="margin-top: 20px;">
        <ul class="pagination justify-content-center">
            <c:if test="${startPage>1}">
                <li class="page-item">
                    <a class="page-link" href="list?currentPage=${startPage-1}">이전</a>
                </li>
            </c:if>
            <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
                <c:if test="${currentPage == pageNum}">
                    <li class="page-item active">
                        <a class="page-link" href="#">${pageNum}</a>
                    </li>
                </c:if>
                <c:if test="${currentPage != pageNum}">
                    <li class="page-item">
                        <a class="page-link" href="list?currentPage=${pageNum}">${pageNum}</a>
                    </li>
                </c:if>
            </c:forEach>
            <c:if test="${endPage < totalPage}">
                <li class="page-item">
                    <a class="page-link" href="list?currentPage=${endPage+1}">다음</a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
</body>
</html>