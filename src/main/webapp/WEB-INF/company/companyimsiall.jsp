<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<title>CODECONNECT 기업 관련 임시 통합페이지</title>

</head>



<body>

<h4>CODECONNECT 기업 관련 임시 통합페이지</h4>

<!-- 기업 로그인 안된 상태에서만 회원가입/로그인가능 -->
<c:if test="${sessionScope.c_loginok == null }">
<button class="btn btn-info" onclick="location.href='/company/form'" > 기업회원가입</button>

<button class="btn btn-info" onclick="location.href='/company/imsiloginpage'" > 기업로그인</button>
</c:if>
<br>

	<c:if test="${sessionScope.c_loginok!=null }">
	<br>
			<b>${sessionScope.c_loginname }님이 로그인중</b>
			
			<br>
			<button type="button" class="btn btn-danger"
				onclick="location.href='/company/logoutprocess'" id="btnlogout">기업 로그아웃</button>
		</c:if>



</body>
</html>
