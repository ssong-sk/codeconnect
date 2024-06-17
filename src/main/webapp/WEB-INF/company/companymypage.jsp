<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<title>기업 마이페이지</title>

</head>
<body>

기업 마이페이지 입니다.

<b>${sessionScope.c_myid }님 로그인중</b><br><br><br>
	<button type="button" class="btn btn-danger"
	style="width: 100px;" onclick="location.href='logoutprocess'">로그아웃</button>


<br><br>
<button class="btn btn-info" onclick="location.href='/hire/hirewrite'">공고 등록하기</button><br><br>
<button class="btn btn-info" >인재풀 탐색하기</button><br><br>
<button class="btn btn-info" >전체 지원자 관리</button><br><br>
<button class="btn btn-info" >채용공고 관리</button><br><br>
<button class="btn btn-info" >제안보낸 인재풀 관리</button><br><br>
<button class="btn btn-info" onclick="location.href='companyupdate'">기업 정보수정</button><br><br>
<button class="btn btn-info" onclick="location.href='intromain'">기업 소개하기</button><br><br>
<button type="button" class="btn btn-info" onclick="location.href='showimsi'">내 기업 소개 페이지로 이동</button>

</body>
</html>