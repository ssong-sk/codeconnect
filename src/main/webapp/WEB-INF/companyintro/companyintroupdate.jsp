<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
    href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
    rel="stylesheet">
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
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

.sidebar .menu-item+.menu-item {
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
    width: 5%;
}

th:nth-child(2), td:nth-child(2) {
    width: 30%;
}

th:nth-child(3), td:nth-child(3) {
    width: 25%;
}

th:nth-child(4), td:nth-child(4) {
    width: 15%;
}

th:nth-child(5), td:nth-child(5) {
    width: 25%;
}

.container-small {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
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

.btn-outline-primary {
    width: 100px;
}

#ci_image_upload, #ci_logo_upload {
    display: none;
}
</style>

<script>
    $(document).ready(function() {
        function filterTable(tabType) {
            let today = new Date().toISOString().split('T')[0];
            let counter = 1;
            $('tbody tr').each(function() {
                let endDate = $(this).find('td:last').text();
                $(this).show();
                if (tabType === '채용중') {
                    if (endDate !== '상시모집' && endDate <= today) {
                        $(this).hide();
                    }
                } else if (tabType === '채용종료') {
                    if (endDate === '상시모집' || endDate > today) {
                        $(this).hide();
                    }
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

        filterTable('공고 전체');

        $('#inputimagebutton').click(function() {
            $('#ci_image_upload').click();
        });

        $('#inputlogobutton').click(function() {
            $('#ci_logo_upload').click();
        });

        $('#ci_image_upload').change(function() {
            var fileName = $(this).val().split('\\').pop();
            $(this).siblings('.file-name').text(fileName);
        });

        $('#ci_logo_upload').change(function() {
            var fileName = $(this).val().split('\\').pop();
            $(this).siblings('.file-name').text(fileName);
        });
    });
</script>
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="sidebar">
                <h5 onclick="location.href='main'">코드커넥트 채용 솔루션</h5>
                <button class="btn" onclick="location.href='/hire/hirewrite'">+ 공고 등록하기</button>
                <button class="btn">🔍 인재풀 탐색하기</button>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='jiwon'">전체 지원자 관리</div>
                <div class="menu-item" onclick="location.href='companyhire'">
                    <span>채용공고 관리</span> <span>+</span>
                </div>
                <div class="menu-item"  onclick="location.href='injae'">제안 보낸 인재풀 관리</div>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='companyupdate'">기업 정보 수정</div>
                <div class="menu-item" onclick="location.href='intromain'" style="font-weight: bold;">기업 소개 하기</div>
                <div class="menu-item" onclick="location.href='showimsi'">내 기업 소개 페이지로 이동</div>
                <div class="menu-item" onclick="location.href='#'">계정 관리</div>
            </div>

            <div class="main-content-wrapper">
                <div class="header">
                    <h1>기업 소개문 수정</h1>
                </div>
                <form action="updateintro" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="c_num" id="c_num" value="${dto.c_num}">
                    <div class="mb-3">
                        <label for="ci_image" class="form-label">대표 이미지</label>
                        <div id="ci_image" class="image-upload-box">
                            <i id="inputimagebutton" class="bi bi-plus-circle" style="font-size: 24px;"></i>
                            <p>1080 x 790 이상<br>1장 필수</p>
                            <input type="file" class="form-control" name="ci_image_upload" id="ci_image_upload" style="width: 200px;" multiple="multiple">
                            <span class="file-name"></span>
                            <c:if test="${not empty dto.ci_image}">
                                <div class="existing-image">
                                    <p>기존 이미지:</p>
                                    <img src="../companyintro_uploads/${dto.ci_image}" alt="현재 이미지" style="height: 200px;">
                                </div>
                            </c:if>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="ci_logo" class="form-label">로고 이미지</label>
                        <div id="ci_logo" class="image-upload-box">
                            <i  id="inputlogobutton" class="bi bi-plus-circle" style="font-size: 24px;"></i>
                            <p>정방형 300 x 300 이상<br>로고는 정중앙에 배치 필요</p>
                            <input type="file" name="ci_logo_upload" id="ci_logo_upload" class="form-control" style="width: 200px;" multiple="multiple">
                            <span class="file-name"></span>
                            <c:if test="${not empty dto.ci_logo}">
                                <div class="existing-logo">
                                    <p>기존 로고:</p>
                                    <img src="../companyintro_uploads/${dto.ci_logo}" alt="현재 로고" style="height: 100px;">
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
                    <button type="submit" class="btn btn-outline-primary">저장</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
