<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 수정하기</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .form-group {
        margin-bottom: 20px;
    }
    .btn-secondary {
        background-color: #6c757d;
        border: none;
    }
    .btn-secondary:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>
<div class="container" style="max-width: 950px">
    <h2 style="margin-bottom: 25px;">이벤트 수정하기</h2>
    <form action="${pageContext.request.contextPath}/customer/eventupdate" method="post" enctype="multipart/form-data">
        <input type="hidden" name="cus_num" value="${dto.cus_num}">
        <div class="form-group">
            <label for="cus_title">제목</label>
            <input type="text" class="form-control" id="cus_title" name="cus_title" value="${dto.cus_title}" required>
        </div>
        <div class="form-group">
            <label for="cus_content">내용</label>
            <textarea class="form-control" id="cus_content" name="cus_content" rows="5" required>${dto.cus_content}</textarea>
        </div>
        <div class="form-group">
            <label for="cus_target">대상</label>
            <input type="text" class="form-control" id="cus_target" name="cus_target" value="${dto.cus_target}" required>
        </div>
        <div class="form-group">
            <label for="cus_startday">시작일</label>
            <input type="date" class="form-control" id="cus_startday" name="cus_startday" value="${dto.cus_startday}" required>
        </div>
        <div class="form-group">
            <label for="cus_endday">종료일</label>
            <input type="date" class="form-control" id="cus_endday" name="cus_endday" value="${dto.cus_endday}" required>
        </div>
        <div class="form-group">
            <label for="upload">이미지:</label>
            <input type="file" class="form-control-file" id="upload" name="upload">
            <c:if test="${not empty dto.cus_photo}">
                <img src="${pageContext.request.contextPath}/customerimage/${dto.cus_photo}" alt="현재 이미지" style="max-width: 100px; margin-top: 10px;">
            </c:if>
        </div>
        <button type="submit" class="btn btn-primary">수정하기</button>
        <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/customer/eventlist'">목록</button>
    </form>
</div>
</body>
</html>
