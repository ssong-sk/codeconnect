<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>이번 주 인기글</title>
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
        border-bottom: 2px solid blue;
    }
    .post_list_wrap {
        margin: 50px auto;
        max-width: 800px;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
        background-color: #fff;
    }
    .post_list_wrap h2 {
        margin-bottom: 20px;
    }
    .post_list_wrap .post_item {
        margin-bottom: 20px;
    }
    .container { 
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 20px;
        max-width: 1200px;
        margin: 50px auto;
    }
    .container h4 {
        display: inline-block;
        color: black;
    }
    .linkgo {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }
    .inpbox.line.filter {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .filter-box {
        border: 1px solid #d7dce5;
        padding: 10px;
        border-radius: 5px;
    }
    .list_qna {
        max-width: 1200px;
        margin: 30px auto;
    }
    .qna-list {
        list-style: none;
        padding: 0;
    }
    .qna-list li {
        padding: 20px 0;
        border-bottom: 1px solid #eaeaea;
    }
    .qna-item {
        display: flex;
        justify-content: space-between;
    }
    .qna-title {
        text-decoration: none;
        color: #000;
        font-size: 18px;
        font-weight: bold;
    }
    .qna-description {
        margin: 10px 0 0 0;
        color: #555;
    }
    .qna-meta {
        text-align: right;
        color: #999;
    }
    .qna-meta span {
        display: block;
    }
    .hot-label {
        color: #ff7f50;
        font-weight: bold;
    }
    .writebtn {
        background-color: #2D65F2;
    }
    .post_list a {
        text-decoration: none;
        color: #373f57;
        display: block;
        line-height: 40px;
    }
    .content_text {
        overflow: hidden; /* 내용이 넘칠 경우 숨기기 */
        text-overflow: ellipsis; /* 넘치는 내용 줄임표 처리 */
        white-space: nowrap; /* 줄바꿈 없이 한 줄로 처리 */
    }
    .label hot {
    	color: #4876ef;
    	background-color: #eff5ff;
    	display: inline-block;
	    margin: 2px 16px 0 0;
	    padding: 0 7px;
	    min-width: 50px;
	    height: 24px;
	    border-radius: 4px;
	    font-size: 13px;
	    line-height: 24px;
	    text-align: center;
	    vertical-align: top;
    }
</style>
<script type="text/javascript">
    $(document).ready(function(){
        // content 말줄임표 처리
        $('.content_text').each(function(){
            var maxLength = 96;
            var text = $(this).text();
            if (text.length > maxLength) {
                var cut = text.substring(0, maxLength) + '...';
                $(this).text(cut);
            }
        });
    });
</script>
</head>

<body>
<nav class="nav">
    <ul>
        <a class="nav-link" href="${root}/community/homelist">홈</a>
        <a class="nav-link" href="${root}/community/interviewlist">현직자 인터뷰</a>
    </ul>
</nav>
<div style="max-width: 1200px; margin: 0 auto;">
    <div class="container2">
        <div class="linkgo" style="width: 100%;">
            <div>
                <h2><b>이번 주 인기글</b></h2>
                <span style="display: block; margin-top: 10px; color: #5c667b;">지난 7일동안 조회수가 가장 높았던 인기글 20개입니다.</span>
            </div>
            <img src="/communityimage/communitytwo.png" style="height: 250px;">
        </div>
    </div>
</div>
<div class="container d-flex justify-content-end" style="margin-top: -12px;">
    <div class="d-flex search">
        <input class="form-control me-2" type="search" placeholder="다른 사람들은 어떤 이야기를 할까?" aria-label="Search" style="width: 350px;">
        <button type="button" class="btn btn-outline-primary">
            <span class="blind">검색</span>
        </button>
    </div>
</div>

<div class="list_qna" style="max-width: 1200px; margin: 70px auto;">
    <ul class="qna-list">
	    <c:choose>
	        <c:when test="${not empty popularPosts}">
	            <c:forEach var="dto" items="${popularPosts}">
	                <c:if test="${dto.com_post_type == 'home'}">
	                    <li style="border-top: 1px solid #eaeaea;">
	                        <div class="qna-item">
	                            <div class="post_list">
	                                <a href="${root}/community/homedetail?com_num=${dto.com_num}">
	                                    <span class="hot" style="color: blue; font-weight: bold; font-size: 18px;">HOT</span>
	                                    <span>&nbsp;&nbsp;<b style="font-size: 20px;">${dto.com_title}</b></span><br>
	                                    <span class="content_text">${dto.com_content}</span>
	                                    <div>
	                                        &nbsp;<span><i class="bi bi-hand-thumbs-up"></i>&nbsp;${dto.com_likes}</span>&nbsp;&nbsp;&nbsp;
	                                        <span><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>&nbsp;&nbsp;
	                                        <span><i class="bi bi-eye"></i>&nbsp;${dto.com_readcount}</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                                        <br>
	                                        <span>'${dto.com_nickname}'님&nbsp;&nbsp;<fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd HH:mm" />&nbsp;작성</span>
	                                    </div>
	                                </a>
	                            </div>
	                        </div>
	                    </li>
	                </c:if>
	            </c:forEach>
	        </c:when>
	        <c:otherwise>
	            <li style="border-top: 1px solid #eaeaea;">
	                <div class="qna-item">
	                    이번 주 인기 글이 없습니다.
	                </div>
	            </li>
	        </c:otherwise>
	    </c:choose>
	</ul>
</div>
</body>
</html>