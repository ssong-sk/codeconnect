<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>전체 게시글</title>
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
    
    /* 주제별 커뮤니티 상단 */
    ul.list_category {
    	display: flex;
    	gap: 42px;
    	padding: 0;
    	justify-content: center;
    	flex-wrap: wrap;
    }
    
    ul.list_category li {
    	text-align: center;
    	border: 1px solid #d7dce5;
        border-radius: 10px;
        height: 60px;
        width: 160px;
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
    
    /* 실시간 전체글 라인 */
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
	
	/* 게시글 list 부분 */
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
	
</style>
</head>
<body>
<nav class="nav">
    <ul>
        <a class="nav-link" href="${root }/community/homelist">홈</a>
        <a class="nav-link" href="${root }/community/interviewlist">현직자 인터뷰</a>
    </ul>
</nav>
<div style="max-width: 1200px; margin: 0px auto;">
    <div class="container2">
        <div class="linkgo" style="width: 100%;">
            <div>
                <h2><b>게시글 전체 </b> 방</h2>
                <span style="display: block; margin-top: 10px; color: #5c667b;">현재까지 등록된 전체 게시글입니다.</span>
            </div>
            <img src="/communityimage/communitytwo.png" style="height: 250px;">
        </div>
        <div class="category" style="margin-top: -13px;">
            <ul class="list_category js-category">
                <li><a href="${root}/community/hometotalpost">전체글</a></li>
                <li><a href="#">신입</a></li>
                <li><a href="#">취준</a></li>
                <li><a href="#">자소서</a></li>
                <li><a href="#">면접</a></li>
                <li><a href="#">Q&A</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="commutitle" style="max-width: 1200px; margin: 50px auto;">
    <div class="container">
        <div class="linkgo d-flex justify-content-between" style="width: 100%;">
            <a href="${root}/community/hometotalpost">
                <h4>
                    <span>전체 <b>${totalCount}</b>건</span>
                </h4>
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
    <div class="inpbox line filter d-flex justify-content-between align-items-center" style="margin-top: -20px;">
        <div class="filter-box">
            <span class="chk">
                <input type="checkbox" id="popular" class="btn_sort" value="popular">
                <label class="lbl" for="popular">인기순</label>
            </span>
            <span class="chk">
                <input type="checkbox" id="new" class="btn_sort" value="new" checked="checked">
                <label class="lbl" for="new">최신순</label>
            </span>
            <span class="chk">
                <input type="checkbox" id="maxlike" class="btn_sort" value="maxlike">
                <label class="lbl" for="maxlike">공감 많은 순</label>
            </span>
            <span class="chk">
                <input type="checkbox" id="maxcomment" class="btn_sort" value="maxcomment">
                <label class="lbl" for="maxcomment">댓글 많은 순</label>
            </span>
        </div>
        <button type="button" class="btn btn-primary writebtn" style="width: 200px;">게시글 작성</button>
    </div>
</div>
<div class="list_qna" style="max-width: 1200px; margin: 30px auto;">
    <ul class="qna-list">
        <li style="border-top: 1px solid #eaeaea;">
            <div class="qna-item">
                <div>
                	<a href="">
	                    <span class="hot-label">HOT</span>&nbsp;
	                    <h4>${dto.com_title }</h4>
	                    <span>${dto.com_content }</span>
	                    <div>
		                    <span>${dto.com_likes }</span>
	                    	<span>${dto.com_commentcount }</span>
	                    	<span>${dto.com.readcount }</span>
                    	</div>
                    </a>
                </div>
            </div>
        </li>
        <li>
            <div class="qna-item">
                <div>
                    <a href="#" class="qna-title">간호사 대상 설문조사 부탁드립니다. (커피쿠폰 증정)</a>
                    <p class="qna-description">안녕하세요! 안살환자들을 위한 크루, 크루와상(Crew Wasang)입니다...</p>
                </div>
                <div class="qna-meta">
                    <span>sBHBtYPjq8zY1A3 님이 오늘 작성</span>
                    <span>공감 1 댓글 2 조회 1</span>
                </div>
            </div>
        </li>
        <li>
            <div class="qna-item">
                <div>
                    <a href="#" class="qna-title">이직 고민ㅠㅠ</a>
                    <p class="qna-description">직종을 바꿨는데 현실이랑 너무 달라서 힘들다.. 전 직종으로 다시 돌아가고 싶어요...</p>
                </div>
                <div class="qna-meta">
                    <span>JFSJGRWwZBpDqMPwJb 오늘 작성</span>
                    <span>공감 3 댓글 2 조회 4</span>
                </div>
            </div>
        </li>
        <li>
            <div class="qna-item">
                <div>
                    <a href="#" class="qna-title">통상임금 계산 아시는 분 계실까요?</a>
                    <p class="qna-description">제가 다니던 회사 기본급이 1712000원 입니다...</p>
                </div>
                <div class="qna-meta">
                    <span>DbwbX9mHwjecJ2tdJt 오늘 작성</span>
                    <span>공감 0 댓글 3 조회 3</span>
                </div>
            </div>
        </li>
        <li>
            <div class="qna-item">
                <div>
                    <a href="#" class="qna-title">알려주세요</a>
                    <p class="qna-description">면접보고 자리에 대한 합격통보 받고 문자보도 받은...</p>
                </div>
                <div class="qna-meta">
                    <span>ZTRBJ9dWTdWTozoJzt 오늘 작성</span>
                    <span>공감 2 댓글 2 조회 2</span>
                </div>
            </div>
        </li>
    </ul>
</div>














<%-- <div class="post_list_wrap" style="margin-top: 100px;">
    <h2>전체 게시글</h2>
    <ul>
        <c:forEach var="dto" items="${list}">
            <li class="post_item">
                <a href="${pageContext.request.contextPath}/community/homedetail?com_num=${dto.com_num}">${dto.com_title}</a>
            </li>
        </c:forEach>
    </ul>
</div>

<div class="post_list_wrap">
    <h2>취준 게시글</h2>
    <ul>
        <c:forEach var="dto" items="${list}">
            <c:if test="${dto.com_category == '취준'}">
                <li class="post_item">
                    <a href="${pageContext.request.contextPath}/community/homedetail?com_num=${dto.com_num}">${dto.com_title}</a>
                </li>
            </c:if>
        </c:forEach>
    </ul>
</div>

<div class="post_list_wrap">
    <h2>신입 게시글</h2>
    <ul>
        <c:forEach var="dto" items="${list}">
            <c:if test="${dto.com_category == '신입'}">
                <li class="post_item">
                    <a href="${pageContext.request.contextPath}/community/homedetail?com_num=${dto.com_num}">${dto.com_title}</a>
                </li>
            </c:if>
        </c:forEach>
    </ul>
</div> --%>
</body>
</html>
