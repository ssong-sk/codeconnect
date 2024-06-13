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
<title>게시글 작성</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f8f9fa;
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .form-container {
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        max-width: 800px;
        width: 100%;
        margin: 50px auto;
    }
    .form-container h2 {
        margin-bottom: 20px;
    }
    .form-container select, 
    .form-container input[type="text"], 
    .form-container textarea {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ced4da;
        font-size: 14px;
    }
    .form-container input[type="file"] {
        margin-top: 10px;
    }
    .form-container button {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #28a745;
        color: #fff;
        font-size: 16px;
    }
    .form-container button:hover {
        background-color: #218838;
    }
    @media (max-width: 768px) {
        .form-container {
            padding: 20px;
        }
    }
    .custom-file-upload {
        display: inline-block;
        padding: 6px 12px;
        cursor: pointer;
        border: 1px solid #ced4da;
        border-radius: 5px;
        background-color: #f8f9fa;
        color: #495057;
        font-size: 14px;
    }
    #upload {
        display: none;
    }
    
</style>
<script type="text/javascript">
	$(document).ready(function(){
	    $('#upload').change(function(){
	    	var fileName = $(this).val().split('\\').pop();
            if (fileName) {
                $('#file-status').text(fileName);
            } else {
                $('#file-status').text('이미지 첨부 없음');
            }
	    });
	});
</script>
</head>
<body>
<div class="form-container">
    <h2>게시글 작성</h2>
    <form action="${pageContext.request.contextPath}/community/homeinsert" method="post" enctype="multipart/form-data">
        <div>
            <label for="nickname">닉네임</label>
            <input type="text" id="nickname" name="com_nickname" value="${sessionScope.userNickname}" readonly>
        </div>
        <div>
            <label for="category">카테고리</label>
            <select id="category" name="com_category" required>
                <option value="신입">신입</option>
                <option value="취준">취준</option>
                <option value="자소서">자소서</option>
                <option value="면접">면접</option>
                <option value="Q&A">Q&A</option>
            </select>
        </div>
        <div>
            <label for="title">제목</label>
            <input type="text" id="title" name="com_title" required placeholder="제목을 입력해주세요">
        </div>
        <div>
            <label for="content">내용</label>
            <textarea id="content" name="com_content" style="height: 360px;" required placeholder="내용을 입력해주세요"></textarea>
        </div>
        <div style="margin-top: -10px;">
            <label for="upload" class="custom-file-upload"><i class="bi bi-images"></i> 이미지 첨부</label>
            <input type="file" id="upload" name="upload" multiple>&nbsp;
            <span id="file-status" style="font-size: 14px;">이미지 첨부 없음</span>
        </div>
        <div style="margin-top: 25px;">
            <button type="submit">게시글 등록</button>
        </div>
    </form>
</div>
</body>
</html>
