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
/*전체 너비에 맞게 수정 */
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f8f9fa;
	margin: 0;
}

.wrapper {
	display: flex;
	justify-content: center;
	padding: 20px 420px;
	
}

.container {
	display: flex;
	width: 1060px; /* 전체 너비를 1060px로 설정 */
}

.sidebar {
	width: 200px; /* 사이드바 너비 조정 */
	height: 460px;
	border: 1px solid #E0E0E0;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	margin-right: 20px;
	flex-shrink: 0;
	overflow-y: auto;
	margin-bottom: 50px;
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
	padding: 10px;
	overflow-y: auto;
	width: calc(100% - 240px); /* 사이드바 너비를 뺀 나머지 공간 */
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
/*여기까지 복붙*/

.form-container {
    max-width: 800px;
    margin: auto;
    background-color: #fff;
    padding: 30px;
    border: 1px solid #E0E0E0;
    border-radius: 10px;
}

.form-container h2 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 22px;
    color: #333;
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

.form-container .btn-outline-primary {
    width: 100%;
    padding: 12px;
    font-size: 16px;
}

.alert {
    display: none;
    font-size: 16px;
    margin-bottom: 20px;
}

.icon {
    font-size: 50px;
    color: #007bff;
    margin-bottom: 20px;
    text-align: center;
}
</style>

<script type="text/javascript">
$(function(){
    $("#passchangebtn").click(function(event){
        event.preventDefault();

        var original_pass = $("#original_pass").val();
        var new_pass = $("#new_pass").val();
        var new_pass2 = $("#new_pass2").val();

        if (new_pass === new_pass2) {
            $.ajax({
                url: 'changepass',
                type: 'POST',
                data: {
                    original_pass: original_pass,
                    new_pass: new_pass
                },
                success: function(response) {
                    if (response.status === 'success') {
                        alert('비밀번호가 변경되었습니다.');
                        window.location.href = '/company/account';
                    } else {
                        alert(response.message);
                    }
                }
            });
        } else {
            alert("새 비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
        }
    });
});
</script>
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="sidebar">
                <h5>기업 채용 솔루션</h5>
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
                <div class="header">
                    <!--<h1>비밀번호 변경</h1>-->
                </div>
                
                <div class="form-container">
                    <div class="icon">
                        <i class="bi bi-key-fill"></i>
                    </div>
                    <h2 style="color: #0d6efd; font-weight: bold;">비밀번호 변경</h2>
                    <p>아래 정보를 입력하여 비밀번호를 변경하세요.</p>
                    <form id="changepassform">
                        <!-- 기존 비밀번호 확인 -->
                        <input type="password" class="form-control mb-3" id="original_pass" name="original_pass" placeholder="기존 비밀번호 확인">
                        
                        <!-- 변경할 비밀번호 입력 -->
                        <input type="password" class="form-control mb-3" id="new_pass" name="new_pass" placeholder="새 비밀번호 입력">
                        
                        <!-- 변경할 비밀번호 재확인 -->
                        <input type="password" class="form-control mb-3" id="new_pass2" name="new_pass2" placeholder="새 비밀번호 확인">
                        
                        <!-- 비밀번호 변경 버튼 -->
                        <button type="submit" class="btn btn-outline-primary" id="passchangebtn">비밀번호 변경</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
