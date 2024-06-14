<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>

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
		<div style="font-size: 20px;">기업 소개글 작성</div>
		<form action="insertintro" method="post" enctype="multipart/form-data">
			<input type="hidden" name="c_num" id="c_num" value="${cdto.c_num}">

			<hr>
			<div class="mb-3">
				<label for="ci_image" class="form-label">대표 이미지</label>
				<div id="ci_image" class="image-upload-box">
					<i class="bi bi-plus-circle" style="font-size: 24px;"></i>
					<p>
						1080 x 790 이상<br>1장 필수
					</p>
					<input type="file" class="form-control" name="ci_image_upload"
						id="ci_image_upload" style="width: 200px;" multiple="multiple">
				</div>
			</div>
			<div class="mb-3">
				<label for="ci_logo" class="form-label">로고 이미지</label>
				<div id="ci_logo" class="image-upload-box">
					<i class="bi bi-plus-circle" style="font-size: 24px;"></i>
					<p>
						정방형 300 x 300 이상<br>로고는 정중앙에 배치 필요
					</p>
					<input type="file" name="ci_logo_upload" id="ci_logo_upload"
						class="form-control" style="width: 200px;" multiple="multiple">
				</div>
			</div>
			<div class="mb-3">
				<label for="c_name" class="form-label">기업명</label> <input
					type="text" class="form-control" id="c_name" name="c_name"
					value="${cdto.c_name }" disabled>
			</div>
			<div class="mb-3">
				<label for="ci_soge" class="form-label">기업/서비스 소개</label>
				<textarea class="form-control" id="ci_soge" name="ci_soge" rows="5"
					placeholder="기업 및 기업 서비스를 300자 내외로 입력하세요"></textarea>
			</div>
			<div class="mb-3">
				<label for="ci_link" class="form-label">기업사이트 주소</label> <input
					type="text" class="form-control" id="ci_link" name="ci_link">
			</div>
			<button type="submit" class="btn btn-delete">저장</button>
			<button type="button" class="btn btn-back" onclick="history.back()">뒤로가기</button>

		</form>
	</div>




</body>
</html>
