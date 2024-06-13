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
<button onclick="location.href='/company/'" >기업 임시 통합페이지로 가기</button>

<button class="btn btn-info" >공고 등록하기</button>
<button class="btn btn-info" >인재풀 탐색하기</button>
<button class="btn btn-info" >전체 지원자 관리</button>
<button class="btn btn-info" >채용공고 관리</button>
<button class="btn btn-info" >제안보낸 인재풀 관리</button>
<button class="btn btn-info" onclick="location.href='companyupdate'">기업 정보수정</button>

<button class="btn btn-info"  onclick="location.href='introduce'">기업 소개하기</button>

</body>
</html>