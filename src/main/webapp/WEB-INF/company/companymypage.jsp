<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>기업 마이페이지</title>

<style>
    body {
        font-family: 'Noto Sans KR', sans-serif;
    }
    .container {
        display: flex;
    }
    .sidebar {
        width: 250px;
        border: 1px solid #E0E0E0;
        padding: 20px;
        margin-top: 20px;
        margin-bottom: 20px;
        background-color: #fff;
        border-radius: 10px; /* 둥글게 처리 */
    }
    .sidebar h5 {
        text-align: center;
        font-weight: bold;
        margin-bottom: 20px;
    }
    .sidebar .btn {
        width: 100%;
        margin-bottom: 10px;
        background-color: #f0f4ff;
        color: #007bff;
        border: 1px solid #d0e2ff;
        border-radius: 5px;
        font-weight: bold;
        padding: 10px;
        text-align: left;
        transition: background-color 0.3s, color 0.3s; /* transition for smooth color change */
    }
    .sidebar .btn:hover {
        background-color: #007bff; /* 진한 파란색 배경 */
        color: #fff; /* 흰색 글자 */
    }
    .sidebar .menu-section {
        margin-top: 20px;
    }
    .sidebar .menu-item {
        padding: 10px 0;
        cursor: pointer;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #000; /* 기본 검은색 */
    }
    .sidebar .menu-item:hover {
        color: #007bff; /* 마우스 커서를 올렸을 때 파란색 */
    }
    .sidebar .menu-item + .menu-item {
        border-top: none;
    }
    .menu-divider {
        border-top: 1px solid #E0E0E0;
        margin: 10px 0;
    }

    .main-content {
        flex-grow: 1;
        padding: 20px;
    }
</style>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <h5>코드커넥트 채용 솔루션</h5>

        <button class="btn" onclick="location.href='/hire/hirewrite'">+  공고 등록하기</button>
        <button class="btn">🔍 인재풀 탐색하기</button>
        <div class="menu-divider"></div>
        <div class="menu-item">전체 지원자 관리</div>
        <div class="menu-item">
            <span>채용공고 관리</span>
            <span>+</span>
        </div>
        <div class="menu-item">제안 보낸 인재풀 관리</div>
        <div class="menu-divider"></div>
        <div class="menu-item" onclick="location.href='companyupdate'">기업 정보 수정</div>
        <div class="menu-item" onclick="location.href='intromain'">기업 소개 하기</div>
        <div class="menu-item" onclick="location.href='showimsi'">내 기업 소개 페이지로 이동</div>
        <div class="menu-item" onclick="location.href='#'">계정 관리</div>
    </div>
    <div class="main-content">
        기업 마이페이지 입니다.
        <b>${sessionScope.c_myid}님 로그인중</b><br><br><br>
        <button type="button" class="btn btn-danger" style="width: 100px;" onclick="location.href='logoutprocess'">로그아웃</button>
    </div>
</div>
</body>
</html>
