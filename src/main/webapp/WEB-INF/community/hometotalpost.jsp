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
</style>
</head>
<body>

<div class="post_list_wrap">
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
</div>
</body>
</html>
