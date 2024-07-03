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
	height: 460px;
	border: 1px solid #E0E0E0;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	margin-right: 20px;
	flex-shrink: 0;
	overflow-y: auto;
	margin-top: 15px;
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
	padding: 40px;
	overflow-y: auto;
}

.form-container {
	max-width: 600px;
	margin: auto;
	background-color: #fff;
	padding: 40px;
	border: 1px solid #dcdcdc;
	border-radius: 5px;
}

.form-container h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
}

.form-container p {
	text-align: center;
	color: #666;
	font-size: 16px;
	margin-bottom: 20px;
}

.form-container .form-control {
	margin-bottom: 15px;
	height: 50px;
	font-size: 16px;
}

.form-container .btn-secondary {
	width: 100px;
	height: 40px;
	font-size: 16px;
	margin-right: 30px;
}

.form-container .btn-danger {
	width: 100px;
	height: 40px;
	font-size: 16px;
}

.alert {
	display: none;
	font-size: 16px;
	margin-bottom: 20px;
}

.icon {
	font-size: 50px;
	color: #dc3545;
	margin-bottom: 20px;
	text-align: center;
}

.warning-text {
	text-align: center;
	color: #dc3545;
	font-weight: bold;
	font-size: 18px;
	margin-bottom: 20px;
}

</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="sidebar">
                <h5>코드커넥트 채용 솔루션</h5>
                <button class="btn" onclick="location.href='/hire/hirewrite'">+ 공고 등록하기</button>
                <!-- <button class="btn">🔍 인재풀 탐색하기</button>-->
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='jiwon'">전체 지원자 관리</div>
                <div class="menu-item" onclick="location.href='companyhire'">
                    <span>채용공고 관리</span> <span>+</span>
                </div>
                <!-- <div class="menu-item"  onclick="location.href='injae'">제안 보낸 인재풀 관리</div>-->
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='companyupdate'">기업 정보 수정</div>
                <div class="menu-item" onclick="location.href='intromain'">기업 소개 하기</div>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='account'" style="font-weight: bold;">계정 관리</div>
                <div class="menu-item" onclick="location.href='logoutprocess'">로그아웃</div>
            </div>

			<div class="main-content-wrapper">
				<div class="form-container">
					<div class="icon">
						<i class="bi bi-exclamation-triangle-fill"></i>
					</div>
					<h2>정말 탈퇴하시겠어요?</h2>
					<p>탈퇴 버튼 선택 시 계정은 삭제되며 복구되지 않습니다.</p>
					<div class="warning-text">
						<i class="bi bi-lock-fill"></i> 비밀번호를 입력해주세요.
					</div>
					
					<div class="alert alert-danger" role="alert" id="errorAlert">
						비밀번호가 다릅니다.
					</div>

					<form id="deleteForm">
						<input type="password" name="input_pass" id="input_pass" class="form-control" placeholder="비밀번호 확인">
						<div class="d-flex justify-content-center">
							<!-- <button type="button" class="btn btn-secondary" onclick="window.history.back()">취소</button>-->
							<button type="submit" class="btn btn-danger">탈퇴</button>
						</div>
					</form>
				</div>
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
							window.location.href = '/main'; //계정삭제후 바로 메인페이지로 이동
						} else {
							$('#errorAlert').text(response.message).show(); // 에러 메시지 보여주기
						}
					}
				});
			});
		});
	</script>
</body>
</html>
