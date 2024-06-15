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
<title>게시글 상세</title>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .post_view_wrap {
        margin: 20px auto;
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
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .meta-left {
        display: flex;
        align-items: center;
    }
    .meta-left .memberimage {
        width: 70px;
        height: 50px;
        margin-right: 10px;
    }
    .meta-left .details {
        display: flex;
        flex-direction: column;
    }
    .meta-right {
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .posttotalgo a {
        margin-top: 20px;
        margin-left: 545px;
        background-color: #ffffff;
        color: #5c667b;
        border: 1px solid #ddd;
        font-size: 13.5px;
        width: 120px;
        text-align: center;
        padding: 5px 10px;
        border-radius: 5px;
        text-decoration: none;
        display: inline-block;
    }

</style>
<script type="text/javascript">

</script>
</head>
<body>

<div class="posttotalgo">
    <a href="${pageContext.request.contextPath}/community/homeposttotal"><span><i class="bi bi-chevron-left"></i>전체 게시글</span></a>
</div>
<div class="post_view_wrap">
    <!-- 게시글 상단 -->
    <div>
        <h2>${dto.com_title}</h2>
    </div>
    <!-- 게시글 메타 정보 -->
    <div class="meta">
        <div class="meta-left">
            <img class="memberimage" src="/communityimage/nam.png" alt="User Image">
            <div class="details">
                <span>닉네임: ${userNickname }</span>
                <span>작성시간: <fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd HH:mm" /></span>
            </div>
        </div>
        <div class="meta-right">
            <span><i class="bi bi-hand-thumbs-up"></i>&nbsp;${dto.com_likes}</span>
            <span><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
        </div>
    </div>
    <!-- 게시글 내용 -->
    <div class="content" style="margin-top: 40px; height: 500px;">
        <%-- <p>${dto.com_content}</p> --%>
        <c:out value="${dto.com_content}" escapeXml="false"/>
    </div>
    <!-- 게시글 이미지 -->
    <c:if test="${not empty dto.com_photo && dto.com_photo != 'no'}">
        <div class="images">
            <img src="${pageContext.request.contextPath}/communityimage/${dto.com_photo}" class="img-fluid">
        </div>
    </c:if>
</div>

</body>
</html>
