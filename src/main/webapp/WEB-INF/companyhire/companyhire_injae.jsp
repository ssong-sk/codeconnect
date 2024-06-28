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
        background-color: #f8f9fa;
        margin: 0;
    }
    .wrapper {
        display: flex;
        justify-content: center;
        padding: 20px 0;
    }
    .container {
        display: flex;
        width: 90%;
        max-width: 1200px;
    }
    .sidebar {
        width: 250px;
        height: 560px;
        border: 1px solid #E0E0E0;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        margin-right: 20px;
        flex-shrink: 0;
        overflow-y: auto;
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
        transition: background-color 0.3s, color 0.3s;
    }
    .sidebar .btn:hover {
        background-color: #007bff;
        color: #fff;
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
        color: #000;
    }
    .sidebar .menu-item:hover {
        color: #007bff;
    }
    .sidebar .menu-item + .menu-item {
        border-top: none;
    }
    .menu-divider {
        border-top: 1px solid #E0E0E0;
        margin: 10px 0;
    }
    .main-content-wrapper {
        display: flex;
        flex-direction: column;
        flex-grow: 1;
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        overflow-y: auto;
    }
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }
    .header h1 {
        font-size: 24px;
    }
    .search-bar {
        display: flex;
        align-items: center;
    }
    .search-bar input {
        margin-left: 10px;
        padding: 5px;
    }
    .table-section {
        display: flex;
        justify-content: space-between;
        gap: 10px;
    }
    .table-column {
        flex: 1;
        border: 1px solid #E0E0E0;
        border-radius: 10px;
        background-color: #fff;
    }
    .table-column h5 {
        text-align: left;
        padding: 10px 10px;
        border-bottom: 1px solid #E0E0E0;
        margin: 0;
        background-color: #f8f9fa;
    }
    .table-wrapper {
        padding: 10px;
    }
    .table-responsive {
        margin-top: 10px;
    }
    .candidate-card {
        display: flex;
        align-items: center;
        justify-content: space-between;
        border: 1px solid #E0E0E0;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 10px;
        background-color: #f8f9fa;
    }
    .candidate-info {
        display: flex;
        align-items: center;
    }
    .candidate-photo {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background-color: #ddd;
        margin-right: 10px;
    }
    .candidate-details {
        display: flex;
        flex-direction: column;
    }
    .candidate-name {
        font-weight: bold;
        margin-bottom: 5px;
    }
    .candidate-position,
    .candidate-status,
    .candidate-date {
        font-size: 0.9em;
        color: #555;
    }
    .candidate-actions {
        display: flex;
        flex-direction: column;
    }
    .action-btn {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 5px 10px;
        margin-bottom: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .action-btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <div class="sidebar">
                <h5>코드커넥트 채용 솔루션</h5>
                <button class="btn" onclick="location.href='/hire/hirewrite'">+ 공고 등록하기</button>
                <button class="btn">🔍 인재풀 탐색하기</button>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='jiwon'">전체 지원자 관리</div>
                <div class="menu-item" onclick="location.href='companyhire'">
                    <span>채용공고 관리</span> <span>+</span>
                </div>
                <div class="menu-item"  onclick="location.href='injae'" style="font-weight: bold;">제안 보낸 인재풀 관리</div>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='companyupdate'">기업 정보 수정</div>
                <div class="menu-item" onclick="location.href='intromain'">기업 소개 하기</div>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='account'">계정 관리</div>
                <div class="menu-item" onclick="location.href='logoutprocess'">로그아웃</div>
            </div>
        
        <div class="main-content-wrapper">
            <div class="header">
                <h1>제안 보낸 인재풀 관리</h1>
                <div class="search-bar">
                    <input type="text" class="form-control" placeholder="지원자 검색">
                    <button class="btn btn-primary ms-2"><i class="bi bi-search"></i></button>
                </div>
            </div>
            
            <div class="table-section">
                <div class="table-column">
                    <h5>제안 인재</h5>
                    <div class="table-wrapper">
                        <div class="table-responsive">
                            <div class="candidate-card">
                                <div class="candidate-info">
                                    <div class="candidate-photo"></div>
                                    <div class="candidate-details">
                                        <div class="candidate-name">이름</div>
                                        <div class="candidate-position">제안한 포지션</div>
                                        <div class="candidate-status">제안 수락 여부</div>
                                        <div class="candidate-date">제안 보낸 날짜</div>
                                    </div>
                                </div>
                                <div class="candidate-actions">
                                    <button class="action-btn">지원서 확인</button>
                                    <button class="action-btn">여기가능함</button>
                                </div>
                            </div>
                            <!-- Repeat for more candidates -->
                            <div class="candidate-card">
                                <div class="candidate-info">
                                    <div class="candidate-photo"></div>
                                    <div class="candidate-details">
                                        <div class="candidate-name">이름</div>
                                        <div class="candidate-position">제안한 포지션</div>
                                        <div class="candidate-status">제안 수락 여부</div>
                                        <div class="candidate-date">제안 보낸 날짜</div>
                                    </div>
                                </div>
                                <div class="candidate-actions">
                                    <button class="action-btn">지원서 확인</button>
                                    <button class="action-btn">아직안정함</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="table-column">
                    <h5>수락 인재</h5>
                    <div class="table-wrapper">
                        <div class="table-responsive">
                            <div class="candidate-card">
                                <div class="candidate-info">
                                    <div class="candidate-photo"></div>
                                    <div class="candidate-details">
                                        <div class="candidate-name">이름</div>
                                        <div class="candidate-position">제안한 포지션</div>
                                        <div class="candidate-status">제안 수락 여부</div>
                                        <div class="candidate-date">제안 보낸 날짜</div>
                                    </div>
                                </div>
                                <div class="candidate-actions">
                                    <button class="action-btn">지원서 확인</button>
                                    <button class="action-btn">아직안정함</button>
                                </div>
                            </div>
                            <!-- Repeat for more candidates -->
                            <div class="candidate-card">
                                <div class="candidate-info">
                                    <div class="candidate-photo"></div>
                                    <div class="candidate-details">
                                        <div class="candidate-name">이름</div>
                                        <div class="candidate-position">제안한 포지션</div>
                                        <div class="candidate-status">제안 수락 여부</div>
                                        <div class="candidate-date">제안 보낸 날짜</div>
                                    </div>
                                </div>
                                <div class="candidate-actions">
                                    <button class="action-btn">지원서 확인</button>
                                    <button class="action-btn">아직안정함</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="table-column">
                    <h5>최종합격</h5>
                    <div class="table-wrapper">
                        <div class="table-responsive">
                            <div class="candidate-card">
                                <div class="candidate-info">
                                    <div class="candidate-photo"></div>
                                    <div class="candidate-details">
                                        <div class="candidate-name">이름</div>
                                        <div class="candidate-position">제안한 포지션</div>
                                        <div class="candidate-status">제안 수락 여부</div>
                                        <div class="candidate-date">제안 보낸 날짜</div>
                                    </div>
                                </div>
                                <div class="candidate-actions">
                                    <button class="action-btn">지원서 확인</button>
                                    <button class="action-btn">아직안정함</button>
                                </div>
                            </div>
                            <!-- Repeat for more candidates -->
                            <div class="candidate-card">
                                <div class="candidate-info">
                                    <div class="candidate-photo"></div>
                                    <div class="candidate-details">
                                        <div class="candidate-name">이름</div>
                                        <div class="candidate-position">제안한 포지션</div>
                                        <div class="candidate-status">제안 수락 여부</div>
                                        <div class="candidate-date">제안 보낸 날짜</div>
                                    </div>
                                </div>
                                <div class="candidate-actions">
                                    <button class="action-btn">지원서 확인</button>
                                    <button class="action-btn">아직안정함</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>

</body>
</html>
