<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<title>Insert title here</title>
<style type="text/css">
.footerall {
            width: 100%;
            background-color: #fff;
            height: 70px;
            border-top: 1px solid blue;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 10px;
            font-family: IBM Plex Sans KR;
        }

        .footerall div {
            display: flex;
            align-items: center;
            width: 100%;
            justify-content: end;
        }

        .savebtn {
            font-weight: bold;
            font-size: 11pt;
            padding: 9px 20px;
            color: blue;
            border-color: blue;
            background-color: #fff;
            border-radius: 25px;
            	
        }
</style>
</head>
<body>
<div class="footerall">
	<div>
		<input type="checkbox">&nbsp;<span style="font-size: 10pt; color: gray;">코드커넥트 채용사이트를 통한 채용 성공 시 합격자 연봉의 7% 수수료가 발생함을 인지하고 이에 동의 합니다.</span>&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary savebtn">
			공고 등록하기
		</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</div>
</body>
</html>