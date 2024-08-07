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
<title>현직자 인터뷰</title>
<style type="text/css">
    body {
        font-family: 'IBM Plex Sans KR';
    }

    .nav ul {
    list-style-type: none;
    display: flex;
    gap: 20px;
    padding: 0;
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
	}
	
	.nav ul .active {
	    color: #0D6CF9;
	}
    .container {
        max-width: 1060px;
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
        font-size: 16px;
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
    .wrap_category_type ul li a.active {
        color: #0D6CF9;
        font-weight: bold;
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
        width: 100%;
    }
    .interview-item {
        flex: 1 1 calc(33.333% - 20px);
        border: 1px solid #eaeaea;
        padding: 20px;
        border-radius: 5px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        min-height: 300px; /* 높이 일정하게 유지 */
        max-width: 340px;
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
        margin-top: auto; /* details 부분을 아래로 고정 */
    }
    .input-group {
        margin-top: 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 100%;
    }
    .details {
        display: flex;
        justify-content: space-between;
        position: relative;
    }
    .details div:last-child {
        display: flex;
        align-items: center;
    }
    .iphoto {
        width: 100px;
        height: 100px;
        position: absolute;
        bottom: 15px;
        right: 40px;
    }
    .iphoto img {
        width: 100%;
        height: 100%;
        border-radius: 50%;
        object-fit: cover;
    }
    .details_list {
        margin-left: 20px;
    }
    .pagination {
    display: flex;
    justify-content: center;
    margin-top: 100px;
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
	    left: 20%;
	    transform: translate(-50%, -50%);
	    color: white;
	    font-weight: bold;
	    text-align: center;
	} 
</style>
<script type="text/javascript">
	$(document).ready(function() {
	    var currentUrl = window.location.pathname;
	    if (currentUrl.includes('/community/homelist')) {
	        $('#homeLink').addClass('active');
	    } else if (currentUrl.includes('/community/interviewlist')) {
	        $('#interviewLink').addClass('active');
	    }
	});
</script>
</head>
<body>

<div class="container" style="margin-top: 50px; width: 1060px; padding: 0px;">
<div class="image-container">
            <img alt="" src="../image/community.PNG" style="width: 1060px; border-radius: 10px;">
            <h4 class="centered-text">다양한 정보를 공유하는 커뮤니티 공간</h4>
</div>
<nav class="nav">
    <ul>
        <li><a class="nav-link" href="${root}/community/homelist" id="homeLink">소셜</a></li>
        <li><a class="nav-link" href="${root}/community/interviewlist" id="interviewLink">현직자 인터뷰</a></li>
    </ul>
</nav>
    <div class="wrap_category_type" style="margin-top: 30px;">
        <ul class="list_category">
		    <li><a href="${root}/community/interviewlist?category=전체" class="${category == '전체' ? 'active' : ''}">전체</a></li>
		    <li><a href="${root}/community/interviewlist?category=서버/백엔드 개발자" class="${category == '서버/백엔드 개발자' ? 'active' : ''}">서버/백엔드 개발자 (${categoryCountMap['서버/백엔드 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=프론트엔드 개발자" class="${category == '프론트엔드 개발자' ? 'active' : ''}">프론트엔드 개발자 (${categoryCountMap['프론트엔드 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=웹 풀스택 개발자" class="${category == '웹 풀스택 개발자' ? 'active' : ''}">웹 풀스택 개발자 (${categoryCountMap['웹 풀스택 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=안드로이드 개발자" class="${category == '안드로이드 개발자' ? 'active' : ''}">안드로이드 개발자 (${categoryCountMap['안드로이드 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=IOS 개발자" class="${category == 'IOS 개발자' ? 'active' : ''}">IOS 개발자 (${categoryCountMap['IOS 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=크로스플랫폼 앱 개발자" class="${category == '크로스플랫폼 앱 개발자' ? 'active' : ''}">크로스플랫폼 앱 개발자 (${categoryCountMap['크로스플랫폼 앱 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=게임 클라이언트 개발자" class="${category == '게임 클라이언트 개발자' ? 'active' : ''}">게임 클라이언트 개발자 (${categoryCountMap['게임 클라이언트 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=게임 서버 개발자" class="${category == '게임 서버 개발자' ? 'active' : ''}">게임 서버 개발자 (${categoryCountMap['게임 서버 개발자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=DBA" class="${category == 'DBA' ? 'active' : ''}">DBA (${categoryCountMap['DBA']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=빅데이터 엔지니어" class="${category == '빅데이터 엔지니어' ? 'active' : ''}">빅데이터 엔지니어 (${categoryCountMap['빅데이터 엔지니어']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=인공지능/머신러닝" class="${category == '인공지능/머신러닝' ? 'active' : ''}">인공지능/머신러닝 (${categoryCountMap['인공지능/머신러닝']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=devops/시스템 엔지니어" class="${category == 'devops/시스템 엔지니어' ? 'active' : ''}">devops/시스템 엔지니어 (${categoryCountMap['devops/시스템 엔지니어']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=정보보안 담당자" class="${category == '정보보안 담당자' ? 'active' : ''}">정보보안 담당자 (${categoryCountMap['정보보안 담당자']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=QA 엔지니어" class="${category == 'QA 엔지니어' ? 'active' : ''}">QA 엔지니어 (${categoryCountMap['QA 엔지니어']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=개발 PM" class="${category == '개발 PM' ? 'active' : ''}">개발 PM (${categoryCountMap['개발 PM']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=HW/임베디드" class="${category == 'HW/임베디드' ? 'active' : ''}">HW/임베디드 (${categoryCountMap['HW/임베디드']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=SW/솔루션" class="${category == 'SW/솔루션' ? 'active' : ''}">SW/솔루션 (${categoryCountMap['SW/솔루션']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=웹퍼블리셔" class="${category == '웹퍼블리셔' ? 'active' : ''}">웹퍼블리셔 (${categoryCountMap['웹퍼블리셔']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=VR/AR/3D" class="${category == 'VR/AR/3D' ? 'active' : ''}">VR/AR/3D (${categoryCountMap['VR/AR/3D']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=블록체인" class="${category == '블록체인' ? 'active' : ''}">블록체인 (${categoryCountMap['블록체인']})</a></li>
		    <li><a href="${root}/community/interviewlist?category=기술지원" class="${category == '기술지원' ? 'active' : ''}">기술지원 (${categoryCountMap['기술지원']})</a></li>
		</ul>
    </div>
    <div class="input-group" style="margin-top: 50px; display: flex; justify-content: space-between;">
        <div style="font-size: 20px;">
            <b>총 <span>${totalCount}</span>건</b>
        </div>
    </div>
    
    <div class="interview-list">
        <c:forEach var="dto" items="${list}" varStatus="status">
            <c:if test="${dto.com_post_type == 'interview'}">
                <c:if test="${status.index < 9}">
                    <a href="interviewdetail?com_num=${dto.com_num}" class="interview-item" style="text-decoration: none; color: inherit;">
                        <b style="color: #0D6CF9; margin-left: 15px;">${dto.com_category}</b>
                        <br><br>
                        <h5 style="margin-left: 15px; margin-top: -15px; font-size: 19px;">${dto.com_title}</h5>
                        <div class="details" style="margin-bottom: 20px;">
                            <div class="details_list">
                                <p>${dto.com_companyname}</p>
                                <p>${dto.com_name}</p>
                                <div>
                                    <p><fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd"/></p>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p><i class="bi bi-eye"></i>&nbsp;&nbsp;${dto.com_readcount}</p>
                                </div>
                            </div>
                            <div class="iphoto" style="margin-right: -20px; margin-bottom: -25px;">
                                <img alt="" src="<c:url value='../communityimage/${dto.com_photo}'/>">
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:if>
        </c:forEach>
    </div>

    <div class="writebtn" style="margin-top: 20px;">
        <c:if test="${sessionScope.loginok!=null}">
            <button type="button" class="btn btn-outline-primary" style="float: right;"
            onclick="location.href='interviewform'">글쓰기</button>
        </c:if>
    </div>

	<div class="pagination">
	    <c:if test="${startPage > 1}">
	        <a href="?category=${category}&pageNum=${startPage - 1}" class="page-link"><i class="bi bi-chevron-left"></i>이전</a>
	    </c:if>
	    <c:forEach begin="${startPage}" end="${endPage}" var="i">
	        <a href="?category=${category}&pageNum=${i}" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
	    </c:forEach>
	    <c:if test="${endPage < totalPage}">
	        <a href="?category=${category}&pageNum=${endPage + 1}" class="page-link">다음<i class="bi bi-chevron-right"></i></a>
	    </c:if>
	</div>
</div>
</body>
</html>
