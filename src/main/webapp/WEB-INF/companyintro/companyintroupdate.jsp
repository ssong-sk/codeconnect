<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업 소개문 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .image-upload-box {
            border: 2px dashed #ddd;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
            cursor: pointer;
        }
        .image-upload-box p {
            margin: 0;
            color: #aaa;
        }
        .form-label {
            font-weight: bold;
        }
        .form-control:disabled {
            background-color: #f8f9fa;
        }
        .btn-delete {
            background-color: #f8d7da;
            color: #721c24;
            border: none;
        }
        .btn-delete:hover {
            background-color: #f5c6cb;
        }
        .btn-back {
            background-color: #d1ecf1;
            color: #0c5460;
            border: none;
        }
        .btn-back:hover {
            background-color: #bee5eb;
        }
        .existing-image, .existing-logo {
            margin-bottom: 10px;
            text-align: center;
        }
        .existing-image img, .existing-logo img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2 class="mb-4">기업 소개글 작성</h2>
        <form action="updateintro" method="post" enctype="multipart/form-data">
            <input type="hidden" name="c_num" id="c_num" value="${dto.c_num}">
            <hr>
            <div class="mb-3">
                <label for="ci_image" class="form-label">대표 이미지</label>
                <div id="ci_image" class="image-upload-box">
                    <i class="bi bi-plus-circle" style="font-size: 24px;"></i>
                    <p>1080 x 790 이상<br>1장 필수</p>
                    <input type="file" class="form-control" name="ci_image_upload" id="ci_image_upload" style="width: 200px;" multiple="multiple">
                    <c:if test="${not empty dto.ci_image}">
                        <div class="existing-image">
                            <p>현재 이미지:</p>
                            <img src="../companyintro_uploads/${dto.ci_image}" alt="현재 이미지">
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="mb-3">
                <label for="ci_logo" class="form-label">로고 이미지</label>
                <div id="ci_logo" class="image-upload-box">
                    <i class="bi bi-plus-circle" style="font-size: 24px;"></i>
                    <p>정방형 300 x 300 이상<br>로고는 정중앙에 배치 필요</p>
                    <input type="file" name="ci_logo_upload" id="ci_logo_upload" class="form-control" style="width: 200px;" multiple="multiple">
                    <c:if test="${not empty dto.ci_logo}">
                        <div class="existing-logo">
                            <p>현재 로고:</p>
                            <img src="../companyintro_uploads/${dto.ci_logo}" alt="현재 로고">
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="mb-3">
                <label for="c_name" class="form-label">기업명</label>
                <input type="text" class="form-control" id="c_name" name="c_name" value="${cdto.c_name}" disabled>
            </div>
            <div class="mb-3">
                <label for="ci_soge" class="form-label">기업/서비스 소개</label>
                <textarea class="form-control" id="ci_soge" name="ci_soge" rows="5" placeholder="기업 및 기업 서비스를 300자 내외로 입력하세요">${dto.ci_soge}</textarea>
            </div>
            <div class="mb-3">
                <label for="ci_link" class="form-label">기업사이트 주소</label>
                <input type="text" class="form-control" id="ci_link" name="ci_link" value="${dto.ci_link}">
            </div>
            <button type="submit" class="btn btn-delete">저장</button>
            <button type="button" class="btn btn-back" onclick="location.href='main'">뒤로가기</button>
        </form>
    </div>
</body>
</html>
