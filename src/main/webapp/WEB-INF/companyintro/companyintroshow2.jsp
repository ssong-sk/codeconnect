<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
        padding: 20px;
        background-color: #f0f0f0;
    }
    .company-info {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .header-img {
        width: 100%;
        border-radius: 8px;
    }
    .company-header {
        display: flex;
        align-items: center;
        margin-top: 20px;
    }
    .company-logo {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        margin-right: 10px;
    }
    .company-header .company-name {
        font-family: 'Black Han Sans', sans-serif;
        font-size: 24px;
        margin: 0;
    }
    .company-header .company-info-extra {
        color: grey;
        font-size: 14px;
    }
    .company-description {
        margin-top: 20px;
        font-size: 16px;
        color: #333333;
    }
    .company-details {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .company-details h2 {
        font-size: 20px;
        margin-bottom: 20px;
    }
    .company-details table {
        width: 100%;
        border-collapse: collapse;
    }
    .company-details th, .company-details td {
        text-align: left;
        padding: 10px;
    }
    .company-details th {
        width: 30%;
        font-weight: bold;
    }
    .company-details tr:not(:last-child) {
        border-bottom: 1px solid #ddd;
    }
</style>
<title>Company Profile</title>
</head>
<body>
<div class="company-info">
    <img src="your-header-image-url.png" alt="Header Image" class="header-img">
    <div class="company-header">
        <img src="your-logo-url.png" alt="Company Logo" class="company-logo">
        <div>
            <h1 class="company-name">웨이커</h1>
            <p class="company-info-extra">IT, 컨텐츠 - 서울 강남구 - 5년차 (2020)</p>
        </div>
    </div>
    <p class="company-description">
        동시 데이터 환경을 기술을 개선하고 있는 웨이커입니다. 웨이커는 NLP 모델을 기반으로 동시 데이터를 분석하고 가공하여 온전한 데이터를 정확하고 빠르게, 고객에게 적합한 동시 데이터 환경을 제공하고 있습니다. 이에 다음과 같이 그 성과를 인정받아 왔습니다. - 2024 CES 혁신상 수상 - ...
    </p>
    <p>[중간에 채용공고 이어가는 화면, 지도, 별점 들어감]</p>
</div>
<div class="company-details">
    <h2>기업 정보</h2>
    <table>
        <tr>
            <th>표준산업분류</th>
            <td>그 외 기타 정보 서비스업</td>
        </tr>
        <tr>
            <th>연혁</th>
            <td>4년 (2020년 설립)</td>
        </tr>
        <tr>
            <th>NTS분류</th>
            <td>그 외 기타 정보 서비스업</td>
        </tr>
        <tr>
            <th>매출</th>
            <td>3년 6,454만원</td>
        </tr>
        <tr>
            <th>기업형태</th>
            <td>기타 법인</td>
        </tr>
        <tr>
            <th>평균연봉</th>
            <td>5,772만원</td>
        </tr>
        <tr>
            <th>고용보험 사업장 수</th>
            <td>1개</td>
        </tr>
        <tr>
            <th>홈페이지</th>
            <td><a href="#">AAAcompany.co.kr</a></td>
        </tr>
        <tr>
            <th>사원수</th>
            <td>24명</td>
        </tr>
    </table>
</div>
</body>
</html>
