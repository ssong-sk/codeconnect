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
<title>Insert title here</title>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .company-header {
        background-image: url('/mnt/data/image.png'); /* 실제 이미지 경로로 변경 */
        background-size: cover;
        background-position: center;
        height: 400px; /* 높이를 조절할 수 있습니다 */
        position: relative;
    }
    .company-logo {
        position: absolute;
        bottom: 10px;
        left: 10px;
        background: white;
        padding: 10px;
        border-radius: 50%;
    }
    .company-info {
        padding: 20px;
    }
    .job-position {
        padding: 20px;
        border-bottom: 1px solid #e0e0e0;
    }
    .map {
        margin: 20px 0;
    }
    .rating {
        margin: 20px 0;
    }
    .company-details {
        padding: 20px;
        background: #f9f9f9;
        border-radius: 10px;
    }
    .rating .bi {
        color: #FFD700;
    }
    .company-info p, .company-details ul {
        margin: 0;
        padding: 0;
        list-style-type: none;
    }
</style>
</head>
<body>
<div class="container">
    <div class="company-header">
        <!-- 배경 이미지를 포함한 헤더 섹션 -->
    </div>
    <div class="company-info">
        <h2>웨이커</h2>
        <p>IT, 인공지능 · 서울 강남구 · 5년차 (2020년)</p>
        <p>당사 인공지능 기반 기술을 적용한 추천 엔진입니다. 여기서는 NLP 모델을 기반으로 한 탐색 엔진과 가상현실 연동 엔진을 운영하고 있으며...</p>
    </div>
    <div class="job-position">
        <h4>채용중인 포지션</h4>
        <div class="row">
            <div class="col-md-3">
                <h5>개발 본부</h5>
                <ul>
                    <li>Front End 개발자(시니어)</li>
                    <li>Infra / DevOps 엔지니어(시니어)</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>개발 본부</h5>
                <ul>
                    <li>Backend 개발자</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>개발 본부</h5>
                <ul>
                    <li>AI NLP 연구원(LLM 최적화)</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="map">
        <h4>위치</h4>
        <img src="path/to/map.png" alt="Map" class="img-fluid"> <!-- 지도 이미지 경로 변경 -->
    </div>
    <div class="rating">
        <h4>전체 리뷰 및 통계</h4>
        <p><strong>3.5</strong> <span class="bi bi-star-fill"></span></p>
        <ul>
            <li>복지 및 혜택: 4.0</li>
            <li>업무와 삶의 균형: 3.0</li>
            <li>사내 문화: 2.5</li>
            <li>경영진: 2.5</li>
        </ul>
    </div>
    <div class="company-details">
        <h4>기업 정보</h4>
        <ul>
            <li>최근 업데이트: 21일 전 (2023년 4월 12일)</li>
            <li>업력: 3년 (2020년 4월 설립)</li>
            <li>NTS 등록: 완료</li>
            <li>매출: 3억 5천만원</li>
            <li>사원수: 12명</li>
            <li>기업신용등급: 577/1000점</li>
            <li>사원 리뷰 수: 1개</li>
            <li>사이트: <a href="http://www.aaa.company.co.kr" target="_blank">www.aaa.company.co.kr</a></li>
            <li>사업장 수: 2사업장</li>
        </ul>
    </div>
</div>
</body>
</html>
