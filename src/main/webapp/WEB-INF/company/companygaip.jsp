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

<title>CODECONNECT - 기업 회원가입</title>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #ffffff;
}

.signup-form {
	margin: 50px auto;
	width: 400px;
	padding: 20px;
	border-radius: 10px;
	background-color: #f5f5f5;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.signup-form h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #007bff;
}

.form-group {
	margin-bottom: 15px;
}

.btn-info {
	width: 100%;
}
</style>

<script type="text/javascript">
  $(function(){
	  
	//중복체크 버튼클릭시 아이디 체크
	$("#btnidcheck").click(function(){
		var c_id = $("#c_id").val();
		alert(c_id);
		
		$.ajax({
			type: "get",
			dataType: "json",
			url: "idcheck",
			data: {"c_id": c_id},
			success: function(res){
				if(res.count == 0){
					$("span.idsuccess").text("ok");
				} else {
					$("span.idsuccess").text("fail");
					$("#c_id").val("");
				}
			}
		});
	});
	
	//아이디 입력시 idsuccess값 지우기
	$("#c_id").keydown(function(){
		$("span.idsuccess").text("");
	});
	
	//2번째 비밀번호 입력시 체크
	$("#pass2").keyup(function(){
		var p1 = $("#c_pass").val();
		var p2 = $(this).val();
		
		if(p1 == p2)
			$("span.passsuccess").text("ok");
		else
			$("span.passsuccess").text("fail");
	});
	
	// 폼 제출 시 사업자 등록 번호 확인
	$("form").submit(function(event) {
		var reginum = $("#c_reginum").val();
		var reginumPattern = /^\d{3}-\d{2}-\d{5}$/;
		if (!reginumPattern.test(reginum)) {
			alert("사업자 등록 번호가 올바른 형식이 아닙니다. 예시: 123-45-67890");
			event.preventDefault(); // 폼 제출 막기
		}
	});
  });
</script>

</head>
<body>

	<div class="signup-form">
		<h2>기업 회원가입</h2>
		<form action="gaip" method="post">
			<div class="form-group">
				<label for="c_id">아이디 (기업 대표 이메일주소)</label> 
				<input type="email" class="form-control" id="c_id" name="c_id" placeholder="아이디" required="required"> 
				<button type="button" class="btn btn-danger btn-sm" id="btnidcheck">중복체크</button>
				<span class="idsuccess" style="width: 60px; color: green;"></span>
			</div>
			<div class="form-group">
				<label for="c_pass">패스워드</label> 
				<input type="password" class="form-control" id="c_pass" name="c_pass" required="required" placeholder="패스워드"> 
				<input type="password" id="pass2" placeholder="비밀번호확인" class="form-control" required="required">
				<span class="passsuccess" style="width: 60px; color: green;"></span>
			</div>
			<div class="form-group">
				<label for="c_name">기업명</label> 
				<input type="text" class="form-control" id="c_name" name="c_name" required="required" placeholder="기업명">
			</div>
			<div class="form-group">
				<label for="c_reginum">사업자 등록 번호[예시 : 123-45-67890]</label> 
				<input type="text" class="form-control" id="c_reginum" name="c_reginum" required="required" placeholder="사업자 등록 번호">
			</div>
			<div class="form-group">
				<label for="c_local">대표 지역</label> 
				<select class="form-control" id="c_local" name="c_local" required="required">
					<option value="">대표 지역 선택</option>
					<option value="서울">서울</option>
					<option value="경기">경기</option>
					<option value="인천">인천</option>
					<option value="부산">부산</option>
					<option value="대구">대구</option>
					<option value="광주">광주</option>
					<option value="대전">대전</option>
					<option value="울산">울산</option>
					<option value="세종">세종</option>
					<option value="강원">강원</option>
					<option value="충북">충북</option>
					<option value="충남">충남</option>
					<option value="전북">전북</option>
					<option value="전남">전남</option>
					<option value="경북">경북</option>
					<option value="경남">경남</option>
					<option value="제주">제주</option>
				</select>
			</div>
			<div class="form-group">
				<label for="c_category">산업군</label> 
				<select class="form-control" id="c_category" name="c_category" required="required">
					<option value="">산업군 선택</option>
					<option value="IT">IT</option>
					<option value="제조">제조</option>
					<option value="건설">건설</option>
					<option value="서비스">서비스</option>
					<option value="금융">금융</option>
					<option value="교육">교육</option>
					<option value="의료">의료</option>
					<option value="기타">기타</option>
				</select>
			</div>
			<div class="form-group">
				<label for="c_phone">대표전화</label> 
				<input type="text" class="form-control" id="c_phone" name="c_phone" required="required" placeholder="02-XXX-XXXX">
			</div>
			
			<div class="form-group">
				<label for="c_peoplesu">직원 수</label> 
				<select class="form-control" id="c_peoplesu" name="c_peoplesu" required="required">
					<option value="">직원 수 선택</option>
					<option value="1-10">1-10</option>
					<option value="11-50">11-50</option>
					<option value="51-100">51-100</option>
					<option value="101-500">101-500</option>
					<option value="501-1000">501-1000</option>
					<option value="1001+">1001+</option>
				</select>
			</div>
			<button type="submit" class="btn btn-info">회원가입</button>
		</form>
	</div>

</body>
</html>
