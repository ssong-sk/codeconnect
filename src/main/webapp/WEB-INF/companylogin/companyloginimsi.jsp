<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<title>기업 로그인 임시화면 : 메인 로그인 버튼 나오기 전까지 땜빵용</title>
</head>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<body>
  <ul class="menu">
    <!-- 로그인한 사람만 회원정보 볼 수 있음 -->
    <c:if test="${sessionScope.c_loginok != null}">
      <li>
        <button class="btn btn-info">
          <a href="${root}/company/myinfo" class="text-white text-decoration-none">기업 회원정보</a>
        </button>
      </li>
    </c:if>

    <!-- 로그인 안한 사람만 회원가입 볼 수 있음 -->
    <c:if test="${sessionScope.loginok == null && sessionScope.c_loginok == null}">
      <li>
        <button class="btn btn-primary">
          <a href="${root}/member/form" class="text-white text-decoration-none">회원가입</a>
        </button>
      </li>
      <li>
        <button class="btn btn-secondary">
          <a href="${root}/company/form" class="text-white text-decoration-none">기업 회원가입</a>
        </button>
      </li>
    </c:if>
  </ul>
</body>
</html>
