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

.account-info {
	display: flex;
	align-items: center;
	padding: 20px;
	border: 1px solid #E0E0E0;
	border-radius: 5px;
	margin-bottom: 20px;
}

.account-info img {
	border-radius: 50%;
	width: 80px;
	height: 80px;
	margin-right: 20px;
}

.account-info div {
	display: flex;
	flex-direction: column;
}

.account-info div p {
	margin: 0;
}

.account-info .btn {
	margin-top: 10px;
}

.options {
	display: flex;
	justify-content: space-between;
	margin-bottom: 20px;
}

.option-card {
	flex: 1;
	height: 260px; 
	border : 1px solid #E0E0E0;
	border-radius: 5px;
	padding: 20px;
	text-align: center;
	cursor: pointer;
	margin-right: 10px;
	transition: border-color 0.3s;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.option-card:last-child {
	margin-right: 0;
}

.option-card:hover {
	border-color: #007bff;
}

.option-card img {
	margin-bottom: 10px;
}

.option-card p {
	margin: 0;
}

.option-card p:first-of-type {
	font-weight: bold;
	margin-bottom: 10px;
}

.btn-outline-danger {
	padding: 10px 20px;
	margin-top: 20px;
	cursor: pointer;
	align-self: flex-end;
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
				<button class="btn">🔍 인재풀 탐색하기</button>
				<div class="menu-divider"></div>
				<div class="menu-item" onclick="location.href='jiwon'">전체 지원자
					관리</div>
				<div class="menu-item" onclick="location.href='companyhire'">
					<span>채용공고 관리</span> <span>+</span>
				</div>
				<div class="menu-item" onclick="location.href='injae'">제안 보낸
					인재풀 관리</div>
				<div class="menu-divider"></div>
				<div class="menu-item" onclick="location.href='companyupdate'">기업
					정보 수정</div>
				<div class="menu-item" onclick="location.href='intromain'">기업
					소개 하기</div>
				<div class="menu-item" onclick="location.href='showimsi'">내 기업
					소개 페이지로 이동</div>
				<div class="menu-item" onclick="location.href='account'"
					style="font-weight: bold;">계정 관리</div>
			</div>

			<div class="main-content-wrapper">
				<h2>계정 탈퇴 폼입니다.</h2>
				<br>
				<p>계정 삭제 후 계정은 복구할 수 없습니다.</p>
				
				<!-- 비밀번호 확인용 input text창 -->
				<form id="deleteForm">
					<input type="password" name="input_pass" id="input_pass" class="form-control" placeholder="비밀번호 확인">
					<button type="submit" class="btn btn-danger">계정 삭제</button>
				</form>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#deleteForm').submit(function(event) {
				event.preventDefault();
				var inputPass = $('#input_pass').val();

				$.ajax({
					url: 'deleteme',
					type: 'GET',
					data: { input_pass: inputPass },
					success: function(response) {
						if (response.status === 'success') {
							alert('계정이 삭제되었습니다.');
							window.location.href = '/main'; // redirect to main page
						} else {
							alert(response.message); // show the error message
						}
					}
				});
			});
		});
	</script>
</body>
</html>
