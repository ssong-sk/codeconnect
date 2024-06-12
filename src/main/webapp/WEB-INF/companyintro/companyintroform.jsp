<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업 소개</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
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
    </style>
</head>
<body>
    <div class="container">
        <h1>기업 소개</h1>
        <div class="mb-3">
            <label for="대표이미지" class="form-label">대표 이미지</label>
            <div id="대표이미지" class="image-upload-box">
                <i class="bi bi-plus-circle" style="font-size: 24px;"></i>
                <p>1080 x 790 이상<br>1장 필수 / 2장 이상 권장</p>
            </div>
        </div>
        <div class="mb-3">
            <label for="로고이미지" class="form-label">로고 이미지</label>
            <div id="로고이미지" class="image-upload-box">
                <i class="bi bi-plus-circle" style="font-size: 24px;"></i>
                <p>정방형 300 x 300 이상<br>로고는 정중앙에 배치 필요</p>
            </div>
        </div>
        <div class="mb-3">
            <label for="회사이름" class="form-label">회사이름</label>
            <input type="text" class="form-control" id="회사이름" placeholder="회사이름을 입력하세요">
        </div>
        <div class="mb-3">
            <label for="회사소개" class="form-label">회사/서비스 소개</label>
            <textarea class="form-control" id="회사소개" rows="5" placeholder="회사 및 서비스를 300자 내외로 입력하세요"></textarea>
        </div>
        <div class="mb-3">
            <label for="회사사이트주소" class="form-label">회사사이트 주소</label>
            <input type="email" class="form-control" id="회사사이트주소" placeholder="AAA@aaa.com" disabled>
        </div>
        <button type="button" class="btn btn-delete">삭제</button>
        <button type="button" class="btn btn-back" onclick="history.back()">뒤로가기</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
