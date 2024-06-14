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
<style>
    .post_view_wrap {
        margin: 50px auto;
        max-width: 800px;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
        background-color: #fff;
    }
    .post_view_wrap h2 {
        margin-bottom: 20px;
    }
    .post_view_wrap .content {
        margin-bottom: 20px;
    }
    .post_view_wrap .meta {
        color: #666;
        font-size: 14px;
    }
    .post_view_wrap .meta span {
        margin-right: 10px;
    }
</style>
</head>
<body>

<div style="margin: 50px 100px;">
	<a href="${pageContext.request.contextPath}/community/homeposttotal"><span>전체 게시글</span></a>
</div>
<div class="post_view_wrap">
    <!-- 게시글 상단 -->
    <div>
        <h2>${dto.com_title}</h2>
    </div>
    <!-- 게시글 메타 정보 -->
    <div class="meta">
        <span>작성자: ${dto.com_nickname}</span>
        <span>카테고리: ${dto.com_category}</span>
        <span>작성일: <fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd HH:mm" /></span>
        <span>조회수: ${dto.com_readcount}</span>
    </div>
    <!-- 게시글 내용 -->
    <div class="content">
        <p>${dto.com_content}</p>
    </div>
    <!-- 게시글 이미지 -->
    <c:if test="${not empty dto.com_photo}">
        <div class="images">
            <img src="${pageContext.request.contextPath}/communityimage/${dto.com_photo}" alt="게시글 이미지" class="img-fluid">
        </div>
    </c:if>
</div>

</body>
</html>