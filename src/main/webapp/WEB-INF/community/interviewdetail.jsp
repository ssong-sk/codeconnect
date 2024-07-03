<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Interview Detail</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
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
    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        text-align: center;
    }
    .custom-img {
        width: 500px;
        height: 220px;
        object-fit: cover;
        border: none;
        border-radius: 10px;
    }
    .detail {
        margin-bottom: 15px;
        text-align: left;
    }
    .btns {
        display: flex;
        justify-content: flex-end; /* 버튼을 오른쪽으로 정렬 */
        gap: 10px;
        margin-top: 30px;
    }
    .content-row {
        display: flex;
        justify-content: center;
        align-items: flex-start;
        gap: 30px;
    }
    .content {
        text-align: center;
    }
</style>
<script>
    function deleteInterview(comNum) {
        if (confirm("정말 삭제하시겠습니까?")) {
            location.href = "${pageContext.request.contextPath}/community/interviewdelete?com_num=" + comNum;
        }
    }
</script>
</head>
<body>
<nav class="nav">
    <ul>
        <a class="nav-link" href="${root}/community/homelist">홈</a>
        <a class="nav-link" href="${root}/community/interviewlist">현직자 인터뷰</a>
    </ul>
</nav>
<div class="container">
    <div class="content-row" style="margin-top: 80px;">
        <div>
        	<!--  
            <c:if test="${dto.com_main_photo ne 'no'}">
                <img src="<c:url value='/communityimage/${dto.com_main_photo}'/>" alt="Interview Image" class="custom-img">
            </c:if>
            <c:if test="${dto.com_main_photo eq 'no'}">
                <p>이미지가 없습니다.</p>
            </c:if>
            -->
            <c:if test="${dto.com_main_photo ne 'no'}">
			    <img src="<c:url value='/communityimage/${dto.com_main_photo}'/>" alt="Interview Image" class="custom-img">
			</c:if>
			<c:if test="${dto.com_main_photo eq 'no'}">
			    <img src="<c:url value='/path/to/default/image.png'/>" alt="No Image" class="custom-img">
			</c:if>

        </div>
        <div style="margin-top: 10px;">
            <div class="detail">
                <p>🏢&nbsp;<b>${dto.com_companyname}</b></p>
            </div>
            <div class="detail">
                <h4><b>${dto.com_title}</b></h4>
            </div><br>
            <div class="detail" style="margin-top: 30px;">
                <p>${dto.com_name}</p>
            </div>
            <div class="detail" style="display: flex; align-items: center;">
                <span style="margin-right: 10px;"><fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd"/></span>
                <span><i class="bi bi-eye"></i>&nbsp;${dto.com_readcount }</span>
            </div>
        </div>
    </div>
    <div class="content" style="margin-top: 150px; margin-bottom: 60px;">
        <p>${dto.com_content}</p>
    </div>
    <div class="btns">
        <!-- 로그인한 회원만 글쓰기 가능 -->
        <c:if test="${sessionScope.loginok != null}">
            <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/community/interviewform'">글쓰기</button>
        </c:if>
        <!-- 해당 글을 작성한 회원만 수정, 삭제 가능 -->
        <c:if test="${sessionScope.myid == dto.com_user_id}">
            <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/community/interviewupdateform?com_num=${dto.com_num}'">수정</button>
            <button type="button" class="btn btn-outline-primary" onclick="deleteInterview(${dto.com_num})">삭제</button>
        </c:if>
        <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/community/interviewlist'">목록</button>
    </div>
</div>
</body>
</html>
