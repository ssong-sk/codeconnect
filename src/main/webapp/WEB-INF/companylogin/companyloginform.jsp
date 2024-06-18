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
<style>
    body {
        font-family: 'Noto Sans KR', sans-serif;
    }
    .loginform {
        width: 400px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
    }
    .loginform caption {
        font-size: 1.5em;
        margin-bottom: 10px;
        text-align: center;
    }
    .loginform input[type="text"],
    .loginform input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
    }
    .loginform button {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        margin-top: 10px;
    }
    .loginform .options {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-top: 10px;
    }
    .loginform .options input[type="checkbox"] {
        margin-right: 5px;
    }
    .links a {
        text-decoration: none;
        color: black;
        transition: color 0.3s;
    }
    .links a:hover {
        color: blue;
    }
</style>
<title>기업 회원로그인</title>
</head>
<body>

<div class="loginform">
    <form action="loginprocess" method="post">
        <caption><b>기업 회원로그인</b></caption>
        
        <div class="form-group">
            <input type="text" name="c_id" class="form-control"
                required="required" autofocus="autofocus"
                placeholder="아이디"
                value="${sessionScope.c_saveok == null?"":sessionScope.c_myid }">
        </div>
        <div class="form-group">
            <input type="password" name="c_pass" class="form-control"
                required="required"
                placeholder="비밀번호">
        </div>
        
        <div class="options">
            <div>
                <input type="checkbox" name="c_cbsave" ${sessionScope.c_saveok == null? "":"checked" }>
                <label for="c_cbsave">아이디 저장</label>
            </div>
            <button type="submit" class="btn btn-primary">로그인</button>
        </div>
    </form>

    <div class="links" style="text-align: center; margin-top: 10px;">
        <a href="/company/form">기업 회원가입</a> |
        <a href="#">아이디/비밀번호 찾기</a>
    </div>
</div>

</body>
</html>
