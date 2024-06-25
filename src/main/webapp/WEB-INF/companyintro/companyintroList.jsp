<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>기업 리스트</title>

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

.btn-outline-primary {
	width: 100px;
}

#ci_image_upload, #ci_logo_upload {
	display: none;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="sidebar">
				<h5 onclick="location.href='main'">코드커넥트 채용 솔루션</h5>
				<button class="btn" onclick="location.href='/hire/hirewrite'">+
					공고 등록하기</button>
				<button class="btn" onclick="location.href='injae'">🔍 인재풀
					탐색하기</button>
				<div class="menu-divider"></div>
				<div class="menu-item" onclick="location.href='jiwon'">전체 지원자
					관리</div>
				<div class="menu-item" onclick="location.href='companyhire'">
					<span>채용공고 관리</span> <span>+</span>
				</div>
				<div class="menu-item">제안 보낸 인재풀 관리</div>
				<div class="menu-divider"></div>
				<div class="menu-item" onclick="location.href='companyupdate'">기업
					정보 수정</div>
				<div class="menu-item" onclick="location.href='intromain'"
					style="font-weight: bold;">기업 소개 하기</div>
				<div class="menu-item" onclick="location.href='showimsi'">내 기업
					소개 페이지로 이동</div>
				<div class="menu-item" onclick="location.href='account'">계정 관리</div>
			</div>

			<div class="main-content-wrapper">

				<div class="header">
					<h1>기업 소개 리스트</h1>
				</div>
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr>
							
								<th>기업명</th>
								<th>자세히보기</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="a" items="${list}">
								<tr>
									<td>${a.c_name}</td>
								
									<td>
										<button type="button" class="btn btn-outline-info"
											onclick="location.href='/company/showimsiCom?c_num=${a.c_num}'">자세히보기</button>
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
