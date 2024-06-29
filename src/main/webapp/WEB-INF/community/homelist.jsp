<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    .linkgo {
        display: flex;
        text-decoration: none;
        font-size: 25px;
        align-items: center;
    }
    .container { 
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 20px;
        max-width: 1200px;
        margin: 50px auto;
    }
    .container h2 {
        display: inline-block;
        color: black;
    }
    .wrap_title {
        display: flex;
        justify-content: space-between;
    }
    .hot {
        color: blue;
    }
    .list_story a {
        text-decoration: none;
        color: black;
    }
    .wrap_title a {
        text-decoration: none;
        color: black;
        font-size: 20px;
    }
    .list_story li {
        list-style-type: none;
        font-size: 18px;
        padding-bottom: 30px;
    }
    .list_story ul a {
        padding-bottom: 30px;
    }
    .list_story .item {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .list_story .details {
        display: flex;
        gap: 10px;
    }
    .list_story .title_link {
        flex: 1;
        text-align: left;
        margin-left: -30px;
    }
    .list_story .comment {
        text-align: right;
        white-space: nowrap;
        margin-right: 6px;
    }
    .container2 {
        max-width: 1200px;
        margin: 60px auto;
        width: 100%;
        padding: 0 15px;
    }
    ul.list_category {
        display: flex;
        gap: 15px;
        padding: 0;
        justify-content: center;
        flex-wrap: wrap;
    }
    ul.list_category li {
        text-align: center;
        border: 1px solid #d7dce5;
        border-radius: 10px;
        height: 65px;
        width: 180px;
        display: flex;
        justify-content: center;
        align-items: center;
        list-style: none;
    }
    .list_category a {
        text-decoration: none;
        color: #373f57;
        display: block;
        line-height: 40px;
        font-size: 18px;
    }
    .community_list {
        margin-top: 50px;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: space-between;
    }
    .section_inner {
        border: 1px solid #eaedf4;
        border-radius: 15px;
        margin: 40px 0;
        padding: 20px;
    }
    .list_story .title_link {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
</style>
<script type="text/javascript">
    $(document).ready(function(){
        $('.title_link').each(function(){
            var maxLength = 40;
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
        <a class="nav-link" href="${root }/community/homelist">홈</a>
        <a class="nav-link" href="${root }/community/interviewlist">현직자 인터뷰</a>
    </ul>
</nav>
<div class="commutitle" style="max-width: 1200px; margin: 50px auto;">
    <div class="container">
        <div class="linkgo d-flex justify-content-between" style="width: 100%;">
            <a href="${root}/community/hometotalpost">
                <h2>
                    <b>실시간 전체글 ${totalCount}개<i class="bi bi-chevron-right"></i></b>
                </h2>
            </a>
            <div class="d-flex search">
                <input class="form-control me-2" type="search" placeholder="다른 사람들은 어떤 이야기를 할까?" aria-label="Search"
                style="width: 350px;">
                <button type="button" class="btn btn-outline-primary">
                    <span class="blind">검색</span>
                </button>
            </div>
        </div>
    </div>
    <div class="section_inner">
	    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-bottom: 20px;">
	        <a href="${root}/community/homepopularlist" style="margin-top: 25px;">
	            <b class="hot">HOT</b> &nbsp;<b>이번주 전체 인기글 🔥</b>
	        </a>
	        <a href="${root}/community/homepopularlist" style="font-size: 20px; color: gray;">
	        더보기<i class="bi bi-chevron-right"></i>&nbsp;&nbsp;</a>
	    </div>
	    <ul class="list_story">
	        <c:choose>
	            <c:when test="${not empty popularPosts}">
	                <c:forEach var="dto" items="${popularPosts}">
	                    <c:if test="${dto.com_post_type == 'home'}">
	                        <li class="item">
	                            <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}">${dto.com_title}</a>
	                            <div class="details" style="color: gray; font-size: 23px;">
	                                <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
	                                <span class="views"><i class="bi bi-eye"></i>&nbsp;${dto.com_readcount}</span>&nbsp;
	                            </div>
	                        </li>
	                    </c:if>
	                </c:forEach>
	            </c:when>
	            <c:otherwise>
	                <li class="item">
	                    이번 주 인기 글이 없습니다.
	                </li>
	            </c:otherwise>
	        </c:choose>
	    </ul>
	</div>


</div>

<div style="max-width: 1200px; margin: 60px auto;">
    <div class="container2">
        <div class="linkgo d-flex justify-content-between" style="width: 100%;">
            <h2><b>주제별 커뮤니티</b></h2>
        </div>
        <div class="category" style="margin-top: 50px;">
            <ul class="list_category js-category">
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("전체글", "UTF-8") %>">전체글</a></li>
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("신입", "UTF-8") %>">신입</a></li>
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("취준", "UTF-8") %>">취준</a></li>
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("자소서", "UTF-8") %>">자소서</a></li>
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("면접", "UTF-8") %>">면접</a></li>
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("Q&A", "UTF-8") %>">Q&A</a></li>
            </ul>
            <div class="community_list">
                <div class="section_inner" style="width: 48%;">
                    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-top: 10px;">
                        <a class="title" href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("전체글", "UTF-8") %>"><b>전체글</b></a>
                        <a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("전체글", "UTF-8") %>" style="font-size: 1.1em;">더보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <ul class="list_story" style="margin-top: 20px;">
                        <c:forEach var="dto" items="${list}" begin="0" end="3">
                            <c:if test="${dto.com_post_type == 'home'}">
                                <li class="item d-flex justify-content-between align-items-center">
                                    <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}" style="margin-left: 1px; margin-top: 5px;">${dto.com_title}</a>
                                    <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="section_inner" style="width: 48%;">
                    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-top: 10px;">
                        <a class="title" href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("신입", "UTF-8") %>"><b>신입</b></a>
                        <a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("신입", "UTF-8") %>" style="font-size: 1.1em;">더보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <ul class="list_story" style="margin-top: 20px;">
                        <c:forEach var="dto" items="${newcomerList}" begin="0" end="3">
                            <c:if test="${dto.com_post_type == 'home'}">
                                <li class="item d-flex justify-content-between align-items-center">
                                    <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}" style="margin-left: 1px; margin-top: 5px;">${dto.com_title}</a>
                                    <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="section_inner" style="width: 48%;">
                    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-top: 10px;">
                        <a class="title" href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("취준", "UTF-8") %>"><b>취준</b></a>
                        <a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("취준", "UTF-8") %>" style="font-size: 1.1em;">더보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <ul class="list_story" style="margin-top: 20px;">
                        <c:forEach var="dto" items="${prepareList}" begin="0" end="3">
                            <c:if test="${dto.com_post_type == 'home'}">
                                <li class="item d-flex justify-content-between align-items-center">
                                    <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}" style="margin-left: 1px; margin-top: 5px;">${dto.com_title}</a>
                                    <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="section_inner" style="width: 48%;">
                    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-top: 10px;">
                        <a class="title" href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("자소서", "UTF-8") %>"><b>자소서</b></a>
                        <a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("자소서", "UTF-8") %>" style="font-size: 1.1em;">더보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <ul class="list_story" style="margin-top: 20px;">
                        <c:forEach var="dto" items="${letterList}" begin="0" end="3">
                            <c:if test="${dto.com_post_type == 'home'}">
                                <li class="item d-flex justify-content-between align-items-center">
                                    <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}" style="margin-left: 1px; margin-top: 5px;">${dto.com_title}</a>
                                    <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="section_inner" style="width: 48%;">
                    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-top: 10px;">
                        <a class="title" href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("면접", "UTF-8") %>"><b>면접</b></a>
                        <a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("면접", "UTF-8") %>" style="font-size: 1.1em;">더보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <ul class="list_story" style="margin-top: 20px;">
                        <c:forEach var="dto" items="${interviewList}" begin="0" end="3">
                            <c:if test="${dto.com_post_type == 'home'}">
                                <li class="item d-flex justify-content-between align-items-center">
                                    <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}" style="margin-left: 1px; margin-top: 5px;">${dto.com_title}</a>
                                    <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="section_inner" style="width: 48%;">
                    <div class="wrap_title d-flex justify-content-between align-items-center" style="margin-top: 10px;">
                        <a class="title" href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("Q&A", "UTF-8") %>"><b>Q&A</b></a>
                        <a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("Q&A", "UTF-8") %>" style="font-size: 1.1em;">더보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <ul class="list_story" style="margin-top: 20px;">
                        <c:forEach var="dto" items="${qaList}" begin="0" end="3">
                            <c:if test="${dto.com_post_type == 'home'}">
                                <li class="item d-flex justify-content-between align-items-center">
                                    <a class="title_link" href="${root}/community/homedetail?com_num=${dto.com_num}" style="margin-left: 1px; margin-top: 5px;">${dto.com_title}</a>
                                    <span class="comment"><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div>
                <c:if test="${sessionScope.loginok!=null }">
                    <button type="button" class="btn btn-outline-primary" style="margin-left: 1100px;"
                    onclick="location.href='${pageContext.request.contextPath}/community/homeform'">글쓰기</button>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
