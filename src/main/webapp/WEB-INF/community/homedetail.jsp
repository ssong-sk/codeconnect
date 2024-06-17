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
    .post_view_wrap .title {
    	color: #666;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .title_left {
    	display: flex;
        align-items: center;
    }
    .title_right {
    	display: flex;
        align-items: center;
        gap: 10px;
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
        margin-top: 30px;
        min-height: 200px;
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
        width: 45px;
        height: 45px;
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
    .totalpostgo a {
        margin-top: 20px;
        margin-left: 555px;
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
    .post_emoticom {
        text-align: center;
        margin-top: 20px;
    }
    .post_emoticom button {
        background: none;
        border: none;
        cursor: pointer;
        display: inline-block;
        text-align: center;
    }
    .post_emoticom button img {
    	margin-top: 20px;
        width: 30px;
        height: 30px;
    }
    .post_emoticom button span {
        display: block;
        margin-top: 10px;
        font-size: 10px;
    }
    .homelistgo a {
    	margin-top: 5px;
        margin-left: 1271px;
        background-color: #ffffff;
        color: #5c667b;
        border: 1px solid #ddd;
        font-size: 13.5px;
        width: 80px;
        text-align: center;
        padding: 5px 10px;
        border-radius: 5px;
        text-decoration: none;
        display: inline-block;
    }

</style>
<script type="text/javascript">
	//좋아요 수 증가 ajax
	$(document).ready(function() {
	    $('#like_button').click(function() {
	        const com_num = ${dto.com_num};
	
	        $.ajax({
	            url: "${pageContext.request.contextPath}/community/updateLike",
	            type: "POST",
	            data: { com_num: com_num },
	            success: function() {
	                location.reload();
	            }
	        });
	    });
	});
</script>
</head>
<body>

<div class="totalpostgo">
    <a href="${pageContext.request.contextPath}/community/hometotalpost"><span><i class="bi bi-chevron-left"></i>전체 게시글</span></a>
</div>
<div class="post_view_wrap" style="margin-top: 15px;">
    <!-- 게시글 상단 -->
    <div class="title" style="margin-top: 15px;">
    	<div class="title_left">
        	<h5><b>${dto.com_title}</b></h5>
        </div>
        <div class="title_right">
        	<button type="button" class="btn btn-outline-primary btn-sm"
        	onclick="location.href='homeupdateform?com_num=${dto.com_num}&com_photo=${dto.com_photo}'">수정</button>
        	<button type="button" class="btn btn-outline-secondary btn-sm"
        	onclick="location.href='delete?com_num=${dto.com_num}'">삭제</button>
        </div>
    </div>
    <!-- 게시글 메타 정보 -->
    <div class="meta" style="margin-top: 30px;">
        <div class="meta-left">
            <img class="memberimage" src="/communityimage/no_image.png" alt="User Image">
            <div class="details">
                <span>${userNickname }</span>
                <span><fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd HH:mm" /></span>
            </div>
        </div>
        <div class="meta-right">
        	<input type="hidden" id="readcount" name="com_readcount" value="">
            <span><i class="bi bi-hand-thumbs-up"></i>&nbsp;${dto.com_likes}</span>
            <span><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
        </div>
    </div>
    <!-- 게시글 내용 -->
    <div class="content">
        <%-- <p>${dto.com_content}</p> --%>
        <c:out value="${dto.com_content}" escapeXml="false"/>
    </div>
    <!-- 게시글 이미지 -->
    <c:if test="${not empty dto.com_photo && dto.com_photo != 'no'}">
        <div class="images">
            <img src="${pageContext.request.contextPath}/communityimage/${dto.com_photo}" class="img-fluid">
        </div>
    </c:if>
    <div class="post_emoticom" style="margin-bottom: 20px;">
        <button id="like_button">
            <img src="/communityimage/likeimg4.png" alt="좋아요">
            <span>이 글이 좋아요</span>
            <span style="margin-top: 5px;">${dto.com_likes}</span>
        </button>
    </div>
</div>
<div class="homelistgo">
	<a href="${pageContext.request.contextPath}/community/homelist"><span>목록<i class="bi bi-chevron-right"></i></span></a>
</div>
</body>
</html>
