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
        height: 540px;
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
        cursor: pointer;
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
    .tabs {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }
    .tabs button {
        flex-grow: 1;
        padding: 10px;
        border: 1px solid #ddd;
        background-color: #fff;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .tabs button:hover {
        background-color: #0d6efd;
        color: #fff;
    }
    .tabs button.active {
        background-color: #f0f4ff; /* Light sky blue */
        color: #007bff;
        border-bottom: 2px solid #0d6efd;
        font-weight: bold;
    }
    .table-responsive {
        margin-top: 20px;
    }
    table {
        table-layout: fixed;
        width: 100%;
    }
    th, td {
        text-overflow: ellipsis;
        overflow: hidden;
    }
    th:nth-child(1), td:nth-child(1) {
        width: 10%;
    }
    th:nth-child(2), td:nth-child(2) {
        width: 25%;
    }
    th:nth-child(3), td:nth-child(3) {
        width: 10%;
    }
    th:nth-child(4), td:nth-child(4) {
        width: 10%;
    }
    th:nth-child(5), td:nth-child(5) {
        width: 20%;
    }
    th:nth-child(6), td:nth-child(6) {
        width: 10%;
    }
    th:nth-child(7), td:nth-child(7) {
        width: 15%;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        function filterTable(tabType) {
            let counter = 1;
            $('tbody tr').each(function() {
                let status = $(this).find('td select').val();
                $(this).show();
                if (tabType === '지원 접수' && status !== '지원 접수') {
                    $(this).hide();
                } else if (tabType === '서류 합격' && status !== '서류 합격') {
                    $(this).hide();
                } else if (tabType === '최종 합격' && status !== '최종 합격') {
                    $(this).hide();
                } else if (tabType === '불합격' && status !== '불합격') {
                    $(this).hide();
                }
                if ($(this).is(':visible')) {
                    $(this).find('td:first').text(counter++);
                }
            });
        }

        $('.tabs button').click(function() {
            $('.tabs button').removeClass('active');
            $(this).addClass('active');
            filterTable($(this).text());
        });

        filterTable('지원 접수');
    });
</script>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <div class="sidebar">
            <h5 onclick="location.href='main'">코드커넥트 채용 솔루션</h5>
            <button class="btn" onclick="location.href='/hire/hirewrite'">+  공고 등록하기</button>
            <button class="btn">🔍 인재풀 탐색하기</button>
            <div class="menu-divider"></div>
            <div class="menu-item" style="font-weight: bold;" onclick="location.href='jiwon'">전체 지원자 관리</div>
            <div class="menu-item" onclick="location.href='companyhire'">
                <span>채용공고 관리</span>
                <span>+</span>
            </div>
            <div class="menu-item" onclick="location.href='injae'">제안 보낸 인재풀 관리</div>
            <div class="menu-divider"></div>
            <div class="menu-item" onclick="location.href='companyupdate'">기업 정보 수정</div>
            <div class="menu-item" onclick="location.href='intromain'">기업 소개 하기</div>
            <div class="menu-item" onclick="location.href='showimsi'">내 기업 소개 페이지로 이동</div>
            <div class="menu-item" onclick="location.href='account'">계정 관리</div>
        </div>
        
        <div class="main-content-wrapper">
            <div class="header">
                <h1>전체 지원자 관리</h1>
                <div class="search-bar">
                    <input type="text" class="form-control" placeholder="공고 검색">
                    <button class="btn btn-primary ms-2"><i class="bi bi-search"></i></button>
                </div>
            </div>
            <div class="tabs">
                <button class="active btn btn-light">지원 접수</button>
                <button class="btn btn-light">서류 합격</button>
                <button class="btn btn-light">최종 합격</button>
                <button class="btn btn-light">불합격</button>
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>공고명</th>
                            <th>지원자</th>
                            <th>이력서</th>
                            <th>지원일자</th>
                            <th>합불여부</th>
                            <th>비고</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="a" items="${slist}">
                            <tr>
                                <td></td>
                                <td>${a.h_title}</td>
                                <td>${a.r_name}</td> <!-- 지원자 이름을 나타내는 필드로 수정 -->
                                <td><a href="#">${a.pe_num}</td>
                                <td>${a.st_write}</td>
                                <td>${a.st_result}</td>
                                <td>
                                    <select>
                                        <option value="지원 접수" ${a.st_result == '지원 접수' ? 'selected' : ''}>지원 접수</option>
                                        <option value="서류 합격" ${a.st_result == '서류 합격' ? 'selected' : ''}>서류 합격</option>
                                        <option value="최종 합격" ${a.st_result == '최종 합격' ? 'selected' : ''}>최종 합격</option>
                                        <option value="불합격" ${a.st_result == '불합격' ? 'selected' : ''}>불합격</option>
                                    </select>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


</body>
</html>
