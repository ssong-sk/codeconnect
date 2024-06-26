<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=Noto+Sans+Korean&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Insert title here</title>
<style type="text/css">
/* 중복 */
.all {
   background-color: #f6f6f6;
   height: 100%;
}

.center {
   margin: 0 auto;
   width: 100%;
   height: 100%;
   max-width: 980px;
}

#wrap {
/*    margin-top: 100px; */
   font-family: IBM Plex Sans KR;
}

.top {
   margin-top: 30px;
}

.bottom {
   background-color: white;
   border-radius: 15px;
   margin-top: 25px;
}

.content {
   margin: 25px 80px 50px 80px;
   padding-top: 50px;
}

.content2 {
   margin-top: 60px;
   padding: 15px 13px 15px 13px;;
   border: 1px solid #ccc;
   border-radius: 8px;
}

div.top .backimg {
   width: 40px;
   height: 40px;
   padding-top: 2px;
   cursor: pointer;
}

i.imstar {
   font-size: 10px; /* i 태그의 폰트 사이즈 줄이기 */
   vertical-align: super; /* 위로 올리기 */
   color: red; /* 별 색상 */
}

div.title_div {
   margin-bottom: 10px;
}

span.title {
   font-size: 14pt;
   font-weight: bold;
}

p.info {
   line-height: 1.8em;
   margin-top: 15px;
   color: gray;
   font-weight: 400;
   font-size: 10pt;
}


/* 컨텐츠 시작 */
/* 직무 및 학력*/
.select-wrapper, .select-wrapper2, .select-wrapper3, .select-wrapper4 {
   position: relative;
   width: 266px;
   font-family: IBM Plex Sans KR;
   margin-right: 10px;
}

.selectbox, .selectbox2, .selectbox3, .selectbox4 {
   position: relative;
}

.toggle-btn, .toggle-btn2, .toggle-btn3, .toggle-btn4 {
   width: 100%;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
}

.toggle-btn span, .toggle-btn2 span, .toggle-btn3 span, .toggle-btn4 span {
   pointer-events: none;
   font-weight: bold;
   color: #696969;
   font-family: IBM Plex Sans KR;
}

.toggle-btn span.selected, .toggle-btn2 span.selected, .toggle-btn3 span.selected, .toggle-btn4 span.selected {
   color: black; /* 선택된 경우 검정색 */
}

.selectbox-option, .selectbox-option2, .selectbox-option3, .selectbox-option4 {
   position: absolute;
   top: 100%;
   left: 0;
   width: 100%;
   border: 1px solid #ccc;
   background-color: #fff;
   /*        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); */
   margin-top: 5px;
   z-index: 1;
   list-style-type: none;
   padding: 0;
   border-radius: 10px;
   overflow: hidden;
   max-height: 200px; /* 스크롤바가 나타날 최대 높이 */
   overflow-y: auto; /* 세로 스크롤바 활성화 */
}

.selectbox-option.hide, .selectbox-option2.hide2, .selectbox-option3.hide3, .selectbox-option4.hide4 {
   display: none;   
}

.option-btn, .option-btn2, .option-btn3, .option-btn4 {
   width: 100%;
   padding: 10px;
   border: none;
   background-color: #fff;
   cursor: pointer;
   text-align: left;
   font-family: IBM Plex Sans KR;
}

.option-btn:hover, .option-btn2:hover, .option-btn3:hover, .option-btn4:hover {
   background-color: #EDF2FD;
   width: 780px;
   border-radius: 10px;
   margin-top: 5px;
   margin-left: 5px;
   font-weight: bold;
   font-family: IBM Plex Sans KR;
}

/* 경력 */
.select-career, .select-career3 {
   position: relative;
   width: 70px;
   font-family: IBM Plex Sans KR;
   margin-right: 15px;
}

.selectcareer, .selectcareer3 {
   position: relative;
}

.careertoggle-btn, .careertoggle-btn2 {
   width: 100%;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
}

.careertoggle-btn3, .careertoggle-btn4 {
   width: 100%;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #E0E0E0;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
}

.careertoggle-btn span, .careertoggle-btn2 span, .careertoggle-btn3 span, .careertoggle-btn4 span {
   pointer-events: none;
   font-weight: bold;
   color: #696969;
   font-family: IBM Plex Sans KR;
}

.careertoggle-btn span.selected, .careertoggle-btn2 span.selected {
   color: black; /* 선택된 경우 검정색 */
}

.selectcareer-option, .selectcareer-option2 {
   position: absolute;
   top: 100%;
   left: 0;
   width: 100%;
   border: 1px solid #ccc;
   background-color: #fff;
   margin-top: 5px;
   z-index: 1;
   list-style-type: none;
   padding: 0;
   border-radius: 10px;
   overflow: hidden;
   max-height: 200px; /* 스크롤바가 나타날 최대 높이 */
   overflow-y: auto; /* 세로 스크롤바 활성화 */
}

.selectcareer-option.careerhide, .selectcareer-option2.careerhide2 {
   display: none;
}

.careeroption-btn, .careeroption-btn2 {
   width: 100%;
   padding: 10px;
   border: none;
   background-color: #fff;
   cursor: pointer;
   text-align: left;
   font-family: IBM Plex Sans KR;
}

.careeroption-btn:hover, .careeroption-btn2:hover {
   background-color: #EDF2FD;
   width: 40px;
   border-radius: 10px;
   margin-top: 5px;
   margin-left: 5px;
   font-weight: bold;
   font-family: IBM Plex Sans KR;
}

.select-career2, .select-career4 {
   position: relative;
   width: 70px;
   font-family: IBM Plex Sans KR;
   margin-left: 15px;
}

.selectcareer2, .selectcareer4 {
   position: relative;
}

span.connect {
   margin-top: 10px;
}

.careercheckbox-wrapper {
   display: flex;
   align-items: center;
   margin-left: 20px;
}

.careercheckbox-wrapper input {
   width: 15px;
   height: 15px;
}

.newcomer {
   margin-left: 5px;
}

/* 근무지 */
.daum-postcode-layer {
   display: none;
   position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   width: 400px;
   height: 500px;
   border: 1px solid #ccc;
   box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
   z-index: 1000;
   background-color: #fff;
}

.daum-postcode-overlay {
   display: none;
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.5);
   z-index: 999;
}

.location {
   width: 45px;
   height: 45px;
   border: 2px solid #4876EF;
   background-color: #EDF2FD;
   cursor: pointer;
   justify-content: space-between;
   align-items: center;
   vertical-align: middle;
   border-radius: 10px;
}

.location i {
   font-size: 15px;
   color: #4876EF;
   font-weight: bold;
}

#address1 {
   width: 380px;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
   margin-left: 10px;
   margin-right: 10px;
}

#address2 {
   width: 280px;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
}

/* 혜택 및 복지 */
.textarea{
    margin: 15px 13px 0px 0px;
    width: 100%;
    height: 120px;
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 10px 10px;
    font-weight: bold;
}

/* 기술스택 툴 */
.techselect-wrapper{
   position: relative;
   width: 266px;
   font-family: IBM Plex Sans KR;
   margin-right: 10px;
}

.techselectbox{
   position: relative;
}

.techtoggle-btn{
   width: 100%;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
}

.techtoggle-btn span{
   pointer-events: none;
   font-weight: bold;
   color: #696969;
   font-family: IBM Plex Sans KR;
}

.techtoggle-btn span.selected{
   color: black; /* 선택된 경우 검정색 */
}

.techselectbox-option{
   position: absolute;
   top: 100%;
   left: 0;
   width: 100%;
   border: 1px solid #ccc;
   background-color: #fff;
   /*        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); */
   margin-top: 5px;
   z-index: 1;
   list-style-type: none;
   padding: 0;
   border-radius: 10px;
   overflow: hidden;
   max-height: 200px; /* 스크롤바가 나타날 최대 높이 */
   overflow-y: auto; /* 세로 스크롤바 활성화 */
}

.techselectbox-option.techhide{
   display: none;
}

.techoption-btn{
   width: 100%;
   padding: 10px;
   border: none;
   background-color: #fff;
   cursor: pointer;
   text-align: left;
   font-family: IBM Plex Sans KR;
}

.techoption-btn:hover{
   background-color: #EDF2FD;
   width: 780px;
   border-radius: 10px;
   margin-top: 5px;
   margin-left: 5px;
   font-weight: bold;
   font-family: IBM Plex Sans KR;
}

.techoption-btn.disabled {
    color: #888;
    cursor: not-allowed;
}

.techoption-btn.disabled:hover {
   background-color: #FFF;
	width: 780px;
	border-radius: 0px;
	margin-top: 5px;
	margin-left: 5px;
	font-weight: normal;
	font-family: IBM Plex Sans KR;
}


/* 예상 연봉 */
#salary1, #salary2{
   width: 380px;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   align-items: center;
   border-radius: 10px;
}

span.salary {
   font-size: 13pt;
   font-weight: bold;
}

/* 카테고리 */
.cateselect-wrapper{
   position: relative;
   width: 266px;
   font-family: IBM Plex Sans KR;
   margin-right: 10px;
}

.cateselectbox{
   position: relative;
}

.catetoggle-btn{
   width: 100%;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   justify-content: space-between;
   align-items: center;
   border-radius: 10px;
}

.catetoggle-btn span{
   pointer-events: none;
   font-weight: bold;
   color: #696969;
   font-family: IBM Plex Sans KR;
}

.catetoggle-btn span.selected{
   color: black; /* 선택된 경우 검정색 */
}

.cateselectbox-option{
   position: absolute;
   top: 100%;
   left: 0;
   width: 100%;
   border: 1px solid #ccc;
   background-color: #fff;
   /*        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); */
   margin-top: 5px;
   z-index: 1;
   list-style-type: none;
   padding: 0;
   border-radius: 10px;
   overflow: hidden;
   max-height: 200px; /* 스크롤바가 나타날 최대 높이 */
   overflow-y: auto; /* 세로 스크롤바 활성화 */
}

.cateselectbox-option.catehide{
   display: none;
}

.cateoption-btn{
   width: 100%;
   padding: 10px;
   border: none;
   background-color: #fff;
   cursor: pointer;
   text-align: left;
   font-family: IBM Plex Sans KR;
}

.cateoption-btn:hover{
   background-color: #EDF2FD;
   width: 780px;
   border-radius: 10px;
   margin-top: 5px;
   margin-left: 5px;
   font-weight: bold;
   font-family: IBM Plex Sans KR;
}

.cateoption-btn.disabled {
    color: #888;
    cursor: not-allowed;
}

.cateoption-btn.disabled:hover {
   background-color: #FFF;
	width: 780px;
	border-radius: 0px;
	margin-top: 5px;
	margin-left: 5px;
	font-weight: normal;
	font-family: IBM Plex Sans KR;
}


/* 지원 알림 이메일 */
#email {
   width: 380px;
   padding: 10px;
   border: 1px solid #ccc;
   background-color: #fff;
   cursor: pointer;
   display: flex;
   align-items: center;
   border-radius: 10px;
}

/* 게시 마감일 설정 */
span.radio {
   font-size: 13pt;
   font-weight: bold;
}

input[type="date"] {
   position: relative;
   padding-left: 10px;
   height: 50px;
   line-height: 22px;
   border: 1px solid #a9a9a9;
   border-radius: 10px;
   width: 150px;
   box-sizing: border-box;
   font-family: IBM Plex Sans KR;
   font-weight: bold;
   font-size: 13pt;
}

input[type="date"]::-webkit-calendar-picker-indicator {
   opacity: 0;
   height: 100%;
   width: 100%;
   z-index: 0;
   position: absolute;
   left: 0;
   top: 0;
}

input:disabled {
   background: #F0F0F0;
   opacity: 30%;
}
</style>
</head>
<body>
<form action="insert" method="post">
	<div class="all">
		<div id="wrap">
			<div class="center">
				<div class="d-inline-flex top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<img alt="뒤로가기" class="backimg" src="../hire_img/chevron.png">&nbsp;&nbsp;&nbsp;&nbsp;
					<h2 style="font-weight: bold; font-size: 30px;">채용 공고 등록</h2>
            	</div>
            	<div class="bottom">
            	
            	
				<!-- 컨텐츠 시작 -->
				<div class="content">
				<input type="hidden" name="h_c_num" value="${c_num }" id="h_c_num">
				<input type="hidden" name="h_ci_num" value="${ci_num }" id="h_ci_num">
				<input type="hidden" class="job" value="job" name="h_job">
				<input type="hidden" class="grade" value="grade" name="h_grade">
				<input type="hidden" class="career" value="career" name="h_career">
				<input type="hidden" class="location" value="location" name="h_location">
				<input type="hidden" class="tech" value="tech" name="h_tech">
				<input type="hidden" class="salary" value="salary" name="h_salary">
				<input type="hidden" class="cate" value="cate" name="h_category">
				<input type="hidden" class="deadline" value="deadline" name="h_deadline">
					
				<div class="d-inline-flex" style="float: right;">
					<i class="bi bi-asterisk imstar" style="margin-top: 1px;"></i>&nbsp; : &nbsp; 필수 작성 항목입니다.
				</div>
				<br><br>
				<!-- 직무 -->
				<div class="title_div">
				   <span class="title">직무</span> <span><i class="bi bi-asterisk imstar"></i></span>
				</div>
				<div class="d-inline-flex">
					<!-- 직무선택 1 -->
					<section class="select-wrapper" data-role="selectbox">
						<section class="selectbox">
							<button type="button" class="toggle-btn">
								<span>직무 선택</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
							</button>
							<ul class="selectbox-option hide" >
								<li><button type="button" class="option-btn">서버/백엔드 개발자</button></li>
								<li><button type="button" class="option-btn">프론트엔드 개발자</button></li>
								<li><button type="button" class="option-btn">웹 풀스택 개발자</button></li>
								<li><button type="button" class="option-btn">안드로이드 개발자</button></li>
								<li><button type="button" class="option-btn">IOS 개발자</button></li>
								<li><button type="button" class="option-btn">크로스플랫폼 앱개발자</button></li>
								<li><button type="button" class="option-btn">게임 클라이언트 개발자</button></li>
								<li><button type="button" class="option-btn">게임 서버 개발자</button></li>
								<li><button type="button" class="option-btn">DBA</button></li>
								<li><button type="button" class="option-btn">빅데이터 엔지니어</button></li>
								<li><button type="button" class="option-btn">인공지능/머신러닝</button></li>
								<li><button type="button" class="option-btn">devops/시스템 엔지니어</button></li>
								<li><button type="button" class="option-btn">정보보안 담당자</button></li>
								<li><button type="button" class="option-btn">QA 엔지니어</button></li>
								<li><button type="button" class="option-btn">개발 PM</button></li>
								<li><button type="button" class="option-btn">HW/임베디드</button></li>
								<li><button type="button" class="option-btn">SW/솔루션</button></li>
								<li><button type="button" class="option-btn">웹퍼블리셔</button></li>
								<li><button type="button" class="option-btn">VR/AR/3D</button></li>
								<li><button type="button" class="option-btn">블록체인</button></li>
								<li><button type="button" class="option-btn">기술지원</button></li>
							</ul>
						</section>
					</section>
					<!-- 직무 선택 2 -->
					<section class="select-wrapper2" data-role="selectbox2">
						<section class="selectbox2">
							<button type="button" class="toggle-btn2">
								<span>직무 선택</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
							</button>
							<ul class="selectbox-option2 hide2">
								<li><button type="button" class="option-btn2">서버/백엔드 개발자</button></li>
								<li><button type="button" class="option-btn2">프론트엔드 개발자</button></li>
								<li><button type="button" class="option-btn2">웹 풀스택 개발자</button></li>
								<li><button type="button" class="option-btn2">안드로이드 개발자</button></li>
								<li><button type="button" class="option-btn2">IOS 개발자</button></li>
								<li><button type="button" class="option-btn2">크로스플랫폼 앱개발자</button></li>
								<li><button type="button" class="option-btn2">게임 클라이언트 개발자</button></li>
								<li><button type="button" class="option-btn2">게임 서버 개발자</button></li>
								<li><button type="button" class="option-btn2">DBA</button></li>
								<li><button type="button" class="option-btn2">빅데이터 엔지니어</button></li>
								<li><button type="button" class="option-btn2">인공지능/머신러닝</button></li>
								<li><button type="button" class="option-btn2">devops/시스템 엔지니어</button></li>
								<li><button type="button" class="option-btn2">정보보안 담당자</button></li>
								<li><button type="button" class="option-btn2">QA 엔지니어</button></li>
								<li><button type="button" class="option-btn2">개발 PM</button></li>
								<li><button type="button" class="option-btn2">HW/임베디드</button></li>
								<li><button type="button" class="option-btn2">SW/솔루션</button></li>
								<li><button type="button" class="option-btn2">웹퍼블리셔</button></li>
								<li><button type="button" class="option-btn2">VR/AR/3D</button></li>
								<li><button type="button" class="option-btn2">블록체인</button></li>
								<li><button type="button" class="option-btn2">기술지원</button></li>
							</ul>
						</section>
					</section>
					<section class="select-wrapper3" data-role="selectbox3">
						<section class="selectbox3">
							<button type="button" class="toggle-btn3">
								<span>직무 선택</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
							</button>
							<ul class="selectbox-option3 hide3">
								<li><button type="button" class="option-btn3">서버/백엔드 개발자</button></li>
								<li><button type="button" class="option-btn3">프론트엔드 개발자</button></li>
								<li><button type="button" class="option-btn3">웹 풀스택 개발자</button></li>
								<li><button type="button" class="option-btn3">안드로이드 개발자</button></li>
								<li><button type="button" class="option-btn3">IOS 개발자</button></li>
								<li><button type="button" class="option-btn3">크로스플랫폼 앱개발자</button></li>
								<li><button type="button" class="option-btn3">게임 클라이언트 개발자</button></li>
								<li><button type="button" class="option-btn3">게임 서버 개발자</button></li>
								<li><button type="button" class="option-btn3">DBA</button></li>
								<li><button type="button" class="option-btn3">빅데이터 엔지니어</button></li>
								<li><button type="button" class="option-btn3">인공지능/머신러닝</button></li>
								<li><button type="button" class="option-btn3">devops/시스템 엔지니어</button></li>
								<li><button type="button" class="option-btn3">정보보안 담당자</button></li>
								<li><button type="button" class="option-btn3">QA 엔지니어</button></li>
								<li><button type="button" class="option-btn3">개발 PM</button></li>
								<li><button type="button" class="option-btn3">HW/임베디드</button></li>
								<li><button type="button" class="option-btn3">SW/솔루션</button></li>
								<li><button type="button" class="option-btn3">웹퍼블리셔</button></li>
								<li><button type="button" class="option-btn3">VR/AR/3D</button></li>
								<li><button type="button" class="option-btn3">블록체인</button></li>
								<li><button type="button" class="option-btn3">기술지원</button></li>
							</ul>
						</section>
					</section>
				</div>
				<br><br><br><br>

				<!-- 경력 -->
				<div class="title_div">
				   <span class="title">경력</span>&nbsp;<span><i class="bi bi-asterisk imstar"></i></span>
				</div>
				<p class="info">| 인턴 공고: 등록 불가 | 계약직 공고: 계약 기간 1년 이상 등록 가능</p>
				<div class="d-inline-flex">
					<span class="careerform" style="display: flex; align-items: center;">
						<div class="d-inline-flex careerform">
							<section class="select-career" data-role="selectcareer">
								<section class="selectcareer">
									<button type="button" class="careertoggle-btn">
										<span>년</span> <i class="bi bi-caret-down-fill" style="color: gray;"></i>
									</button>
									<ul class="selectcareer-option careerhide">
										<li><button type="button" class="careeroption-btn">1</button></li>
										<li><button type="button" class="careeroption-btn">2</button></li>
										<li><button type="button" class="careeroption-btn">3</button></li>
										<li><button type="button" class="careeroption-btn">4</button></li>
										<li><button type="button" class="careeroption-btn">5</button></li>
										<li><button type="button" class="careeroption-btn">6</button></li>
										<li><button type="button" class="careeroption-btn">7</button></li>
										<li><button type="button" class="careeroption-btn">8</button></li>
										<li><button type="button" class="careeroption-btn">9</button></li>
										<li><button type="button" class="careeroption-btn">10</button></li>
										<li><button type="button" class="careeroption-btn">11</button></li>
										<li><button type="button" class="careeroption-btn">12</button></li>
										<li><button type="button" class="careeroption-btn">13</button></li>
										<li><button type="button" class="careeroption-btn">14</button></li>
										<li><button type="button" class="careeroption-btn">15</button></li>
										<li><button type="button" class="careeroption-btn">16</button></li>
										<li><button type="button" class="careeroption-btn">17</button></li>
										<li><button type="button" class="careeroption-btn">18</button></li>
										<li><button type="button" class="careeroption-btn">19</button></li>
										<li><button type="button" class="careeroption-btn">20</button></li>
									</ul>
								</section>
							</section>
						<span class="connect">~</span>
                        <section class="select-career2" data-role="selectcareer2">
							<section class="selectcareer2">
								<button type="button" class="careertoggle-btn2">
									<span>년</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
								</button>
									<ul class="selectcareer-option2 careerhide2">
										<li><button type="button" class="careeroption-btn2">1</button></li>
										<li><button type="button" class="careeroption-btn2">2</button></li>
										<li><button type="button" class="careeroption-btn2">3</button></li>
										<li><button type="button" class="careeroption-btn2">4</button></li>
										<li><button type="button" class="careeroption-btn2">5</button></li>
										<li><button type="button" class="careeroption-btn2">6</button></li>
										<li><button type="button" class="careeroption-btn2">7</button></li>
										<li><button type="button" class="careeroption-btn2">8</button></li>
										<li><button type="button" class="careeroption-btn2">9</button></li>
										<li><button type="button" class="careeroption-btn">10</button></li>
										<li><button type="button" class="careeroption-btn">11</button></li>
										<li><button type="button" class="careeroption-btn">12</button></li>
										<li><button type="button" class="careeroption-btn">13</button></li>
										<li><button type="button" class="careeroption-btn">14</button></li>
										<li><button type="button" class="careeroption-btn">15</button></li>
										<li><button type="button" class="careeroption-btn">16</button></li>
										<li><button type="button" class="careeroption-btn">17</button></li>
										<li><button type="button" class="careeroption-btn">18</button></li>
										<li><button type="button" class="careeroption-btn">19</button></li>
										<li><button type="button" class="careeroption-btn">20</button></li>
									</ul>
							</section>
                        </section>
					</div>
				</span>
				<!-- 경력 비활성화 폼 -->
				<span class="careerform2" style="display: none; align-items: center;">
					<div class="d-inline-flex careerform2">
						<section class="select-career3" data-role="selectcareer3">
							<section class="selectcareer3">
								<button type="button" class="careertoggle-btn3">
									<span>년</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
								</button>
							</section>
						</section>
						<span class="connect">~</span>
						<section class="select-career4" data-role="selectcareer4">
							<section class="selectcareer4">
								<button type="button" class="careertoggle-btn4">
									<span>년</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
								</button>
							</section>
						</section>
					</div>                    
				</span> 
				<div class="careercheckbox-wrapper">
					<input type="checkbox" id="newcomer-checkbox"> 
					<span class="newcomer">신입</span>
				</div>
			</div>
			<br><br><br><br>

			<!-- 학력 -->
			<div class="title_div">
			   <span class="title">학력</span> <span><i
			      class="bi bi-asterisk imstar"></i></span>
			</div>
			<section class="select-wrapper4" data-role="selectbox">
			   <section class="selectbox4">
			      <button type="button" class="toggle-btn4" name='h_grade'>
			         <span>학력 선택</span> <i class="bi bi-caret-down-fill"
			            style="color: gray;"></i>
			      </button>
			      <ul class="selectbox-option4 hide4">
					<li><button type="button" class="option-btn4">석사졸업 이상</button></li>
					<li><button type="button" class="option-btn4">대학교졸업(4년) 이상</button></li>
					<li><button type="button" class="option-btn4">대학졸업(2,3년) 이상</button></li>
					<li><button type="button" class="option-btn4">고등학교졸업 이상</button></li>
					<li><button type="button" class="option-btn4">무관</button></li>
			      </ul>
			   </section>
			</section>
            <br><br><br><br>

			<!-- 근무지 -->
			<div class="title_div">
			   <span class="title">근무지</span><span><i class="bi bi-asterisk imstar"></i></span>
			</div>
			<p class="info">근무지 주소 입력 시 공고에 지도가 표시됩니다.</p>
			<div class="d-inline-flex address">
			   <button type="button" class="location">
			      <i class="bi bi-search"></i>
			   </button>
			   <input type="text" id="address1" placeholder="주소" required="required" readonly> 
			   <input type="text" id="address2" placeholder="상세주소" required="required">
			</div>
			<div class="daum-postcode-overlay" id="postcode-overlay"></div>
			<div class="daum-postcode-layer" id="postcode-layer"></div>
			<br><br><br>
			<hr>

			<div class="content2">
				<!-- 공고명 -->
				<div class="title_div">
				   <span class="title">공고명</span>
				   <span><i class="bi bi-asterisk imstar"></i></span>
				   <br>
				   <div><textarea class="textarea" name="h_title" placeholder="직무명만 기재 가능하며 그 외 텍스트는 수정/삭제 후 승인될 수 있습니다." required="required"></textarea></div>
				</div>
                     
				<br><br>
				<!-- 주요업무 -->
				<div class="title_div">
				   <span class="title">주요업무</span>
				   <span><i class="bi bi-asterisk imstar"></i></span>
				   <br>
				   <div><pre style="font-family: IBM Plex Sans KR; overflow-x: hidden; font-size: 12pt;"><textarea required="required" name="h_major" class="textarea" placeholder="내용 작성"></textarea></pre></div>
				</div>
                     
				<br><br>
				<!-- 자격요건 -->
				<div class="title_div">
				   <span class="title">자격요건</span>
				   <span><i class="bi bi-asterisk imstar"></i></span>
				   <br>
				   <div><pre style="font-family: IBM Plex Sans KR; overflow-x: hidden; font-size: 12pt;"><textarea required="required" name="h_require" class="textarea" placeholder="주요업무 및 전형절차를 함께 작성해주세요."></textarea></pre></div>
				</div>
                     
				<br><br>
				<!-- 우대 사항 -->
				<div class="title_div">
				   <span class="title">우대 사항</span>
				   <br>
				   <div><pre style="font-family: IBM Plex Sans KR; overflow-x: hidden; font-size: 12pt;"><textarea name="h_preference" class="textarea" placeholder="내용 작성"></textarea></pre></div>
				</div>
                     
				<br><br>
				<!-- 혜택 및 복지 -->
				<div class="title_div">
				   <span class="title">혜택 및 복지</span>
				   <span><i class="bi bi-asterisk imstar"></i></span>
				   <br>
				   <div><pre style="font-family: IBM Plex Sans KR; overflow-x: hidden; font-size: 12pt;"><textarea required="required" name="h_benefit" class="textarea" placeholder="내용 작성"></textarea></pre></div>
				</div>
                     
				<br><br>
				<!-- 채용절차 및 지원 유의사항 -->
				<div class="title_div">
				   <span class="title">채용절차 및 지원 유의사항</span>
				   <br>
				   <div><pre style="font-family: IBM Plex Sans KR; overflow-x: hidden; font-size: 12pt;"><textarea name="h_process" class="textarea" placeholder="내용 작성"></textarea></pre></div>
				</div>
                     
				<br><br>
				<!-- 기술 스택ㆍ툴 -->
				<div class="title_div">
				   <span class="title">기술 스택ㆍ툴</span>
				</div>
				<p class="info">
				- 선택한 직무에서 사용중인 기술 스택, 업무 툴 등을 등록해주세요. (다중 선택 가능)<br>
				</p>
				<div class="title_div">
				<section class="techselect-wrapper" data-role="techselectbox">
					<section class="techselectbox">
				                    <button type="button" class="techtoggle-btn">
				                       <span>기술 스택ㆍ툴</span><i class="bi bi-caret-down-fill" style="color: gray;"></i>
				                    </button>
				                    <ul class="techselectbox-option techhide">
				                     <li><button type="button" class="techoption-btn">Java</button></li>
							<li><button type="button" class="techoption-btn">Spring Boot</button></li>
							<li><button type="button" class="techoption-btn">Node.js</button></li>
							<li><button type="button" class="techoption-btn">Python</button></li>
							<li><button type="button" class="techoption-btn">Django</button></li>
							<li><button type="button" class="techoption-btn">PHP</button></li>
							<li><button type="button" class="techoption-btn">C언어</button></li>
							<li><button type="button" class="techoption-btn">C++</button></li>
							<li><button type="button" class="techoption-btn">C#</button></li>
							<li><button type="button" class="techoption-btn">AWS</button></li>
							<li><button type="button" class="techoption-btn">MySQL</button></li>
							<li><button type="button" class="techoption-btn">Oracle</button></li>
							<li><button type="button" class="techoption-btn">React</button></li>
							<li><button type="button" class="techoption-btn">Vue.js</button></li>
							<li><button type="button" class="techoption-btn">JQuery</button></li>
							<li><button type="button" class="techoption-btn">HTML5</button></li>
							<li><button type="button" class="techoption-btn">CSS3</button></li>
							<li><button type="button" class="techoption-btn">JavaScript</button></li>
							<li><button type="button" class="techoption-btn">Svelte</button></li>
							<li><button type="button" class="techoption-btn">TypeScript</button></li>
							<li><button type="button" class="techoption-btn">AngularJS</button></li>
							<li><button type="button" class="techoption-btn">Kotlin</button></li>
							<li><button type="button" class="techoption-btn">RxJava</button></li>
							<li><button type="button" class="techoption-btn">Swift</button></li>
							<li><button type="button" class="techoption-btn">Objective-C</button></li>
							<li><button type="button" class="techoption-btn">Rxswift</button></li>
							<li><button type="button" class="techoption-btn">SwiftUI</button></li>
							<li><button type="button" class="techoption-btn">Xcode</button></li>
							<li><button type="button" class="techoption-btn">Flutter</button></li>
							<li><button type="button" class="techoption-btn">React Native</button></li>
							<li><button type="button" class="techoption-btn">MSSQL</button></li>
							<li><button type="button" class="techoption-btn">PostgreSQL</button></li>
							<li><button type="button" class="techoption-btn">NoSQL</button></li>
							<li><button type="button" class="techoption-btn">MariaDB</button></li>
							<li><button type="button" class="techoption-btn">MongoDB</button></li>
							<li><button type="button" class="techoption-btn">#SQL</button></li>
							<li><button type="button" class="techoption-btn">R언어</button></li>
							<li><button type="button" class="techoption-btn">Hadoop</button></li>
							<li><button type="button" class="techoption-btn">Spark</button></li>
							<li><button type="button" class="techoption-btn">Kafka</button></li>
							<li><button type="button" class="techoption-btn">TensorFlow</button></li>
							<li><button type="button" class="techoption-btn">PyTorch</button></li>
							<li><button type="button" class="techoption-btn">Elasticsearch</button></li>
							<li><button type="button" class="techoption-btn">OpenCV</button></li>
							<li><button type="button" class="techoption-btn">Linux</button></li>
							<li><button type="button" class="techoption-btn">Kubernetes</button></li>
							<li><button type="button" class="techoption-btn">Docker</button></li>
							<li><button type="button" class="techoption-btn">Network</button></li>
							<li><button type="button" class="techoption-btn">GCP</button></li>
							<li><button type="button" class="techoption-btn">Windows</button></li>
							<li><button type="button" class="techoption-btn">AZURE</button></li>
							<li><button type="button" class="techoption-btn">Terraform</button></li>
							<li><button type="button" class="techoption-btn">ISMS</button></li>
							<li><button type="button" class="techoption-btn">CISA</button></li>
							<li><button type="button" class="techoption-btn">CISSP</button></li>
							<li><button type="button" class="techoption-btn">Firewall</button></li>
							<li><button type="button" class="techoption-btn">VPN</button></li>
							<li><button type="button" class="techoption-btn">IPS</button></li>
							<li><button type="button" class="techoption-btn">CPPG</button></li>
							<li><button type="button" class="techoption-btn">FW</button></li>
							<li><button type="button" class="techoption-btn">Embedded</button></li>
							<li><button type="button" class="techoption-btn">Pads</button></li>
							<li><button type="button" class="techoption-btn">FPGA</button></li>
							<li><button type="button" class="techoption-btn">PCB</button></li>
							<li><button type="button" class="techoption-btn">RF</button></li>
							<li><button type="button" class="techoption-btn">.NET</button></li>
							<li><button type="button" class="techoption-btn">Golang</button></li>
							<li><button type="button" class="techoption-btn">Nft</button></li>
							<li><button type="button" class="techoption-btn">Solidity</button></li>
							<li><button type="button" class="techoption-btn">Blockchain</button></li>
						</ul>
					</section>
				</section>
				<div id="selected-tech" style="font-size: 10pt; margin-top: 10px;"></div>
				</div>
			</div>
                  
			<br><br>
			<!-- 채용시 예상 연봉 -->
			<div class="title_div">
				<span class="title">채용시 예상 연봉 (최소~최대, 단위: 만원)</span> 
				<span><i class="bi bi-asterisk imstar"></i></span>
			</div>
			<p class="info">연봉 정보는 통계 자료로만 쓰이며, 개별 연봉 정보는 절대 공개되지 않습니다.</p>
			<span class="salary" style="display: flex; align-items: center;">
				<input type="text" id="salary1" placeholder="0" required="required" 
				style="width: 200px; margin-top: 10px; margin-right: 10px;">
				~ 
				<input type="text" id="salary2" placeholder="0" required="required"
				style="width: 200px; margin-top: 10px; margin: 10px 10px 0px 10px;">
				만원
			</span> 
			<br><br>
                  
			<!-- 카테고리 선택 -->
			<div class="title_div">
			   <span class="title">카테고리 선택</span>
			</div>
			<p class="info">
			      현재 기업에서 시행중인 복지를 등록해주세요. (다중 선택 가능)<br>
			</p>
            <div class="title_div">
				<section class="cateselect-wrapper" data-role="cateselectbox">
					<section class="cateselectbox">
						<button type="button" class="catetoggle-btn">
							<span>카테고리</span> <i class="bi bi-caret-down-fill" style="color: gray;"></i>
						</button>
						<ul class="cateselectbox-option catehide">
							<li><button type="button" class="cateoption-btn">4.5일제</button></li>
							<li><button type="button" class="cateoption-btn">재택근무</button></li>
							<li><button type="button" class="cateoption-btn">유연근무제</button></li>
							<li><button type="button" class="cateoption-btn">시차출근제</button></li>
							<li><button type="button" class="cateoption-btn">인센티브</button></li>
							<li><button type="button" class="cateoption-btn">코드리뷰</button></li>
							<li><button type="button" class="cateoption-btn">반바지/슬리퍼 OK</button></li>
							<li><button type="button" class="cateoption-btn">자유복장</button></li>
							<li><button type="button" class="cateoption-btn">맛있는간식냠냠</button></li>
							<li><button type="button" class="cateoption-btn">맥북으로개발</button></li>
							<li><button type="button" class="cateoption-btn">닉네임사용</button></li>
							<li><button type="button" class="cateoption-btn">수평적조직</button></li>
							<li><button type="button" class="cateoption-btn">반려동물</button></li>
							<li><button type="button" class="cateoption-btn">누적투자금100억이상</button></li>
							<li><button type="button" class="cateoption-btn">스톡옵션제공</button></li>
							<li><button type="button" class="cateoption-btn">도서구입비지원</button></li>
							<li><button type="button" class="cateoption-btn">택시비지원</button></li>
							<li><button type="button" class="cateoption-btn">병역특례</button></li>
							<li><button type="button" class="cateoption-btn">전공우대</button></li>
						</ul>
					</section>
				</section>
				<div id="selected-cate" style="font-size: 10pt; margin-top: 10px;"></div>
			</div>
			<br><br>
                  
                  
			<!-- 지원 알림 이메일 -->
			<div class="title_div">
			   <span class="title">지원 알림 이메일</span>
			</div>
			<input type="text" id="email" name="h_c_id" placeholder="ex) email@gmail.com" 
			style="width: 270px; margin-top: 10px;" value="${c_id }"> <br>
			<br><br>
			<!-- 게시 마감일 설정 -->
			<div class="title_div">
				<span class="title" style="margin-right: 3px;">게시 마감일 설정</span> 
				<span><i class="bi bi-asterisk imstar"></i></span>
				<div class="form-check form-check-inline" style="margin-left: 60px;">
					<span class="radio"> <input class="form-check-input" 
					type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked="checked">
						<label class="form-check-label" for="flexRadioDefault1">상시</label>
					</span>
				</div>
				<div class="form-check form-check-inline" style="margin-left: 30px;">
					<span class="radio"> 
						<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
						<label class="form-check-label" for="flexRadioDefault2">직접설정</label>
					</span>
				</div>
			</div>
			<input type="date" name="input_date" class="deadline-date" style="margin-left: 200px;">
			<br><br><br><br>
         </div>
      </div>
   </div>
</div>
<br><br>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</form>
<script type="text/javascript">
$(document).ready(function() {
   // 직무 select1
   const toggleBtn1 = $('.toggle-btn');
   const selectBox1 = $('.selectbox-option');
   const options1 = $('.option-btn');
   const toggleText1 = $('.toggle-btn span');

   toggleBtn1.click(function() {
      selectBox1.toggleClass('hide');

   });

   options1.click(function() {
      toggleText1.text($(this).text());
      toggleText1.addClass('selected');
      selectBox1.addClass('hide');
   });

   $(document).click(function(event) {
      if (!selectBox1.parent().is(event.target) && !selectBox1.parent().has(event.target).length) {
         selectBox1.addClass('hide');
      }
   });

   // 직무 select2
   const toggleBtn2 = $('.toggle-btn2');
   const selectBox2 = $('.selectbox-option2');
   const options2 = $('.option-btn2');
   const toggleText2 = $('.toggle-btn2 span');

   toggleBtn2.click(function() {
      selectBox2.toggleClass('hide2');
   });

   options2.click(function() {
      toggleText2.text($(this).text());
      toggleText2.addClass('selected');
      selectBox2.addClass('hide2');
   });

   $(document).click(function(event) {
      if (!selectBox2.parent().is(event.target) && !selectBox2.parent().has(event.target).length) {
         selectBox2.addClass('hide2');
      }
   });

   // 직무 select3
   const toggleBtn3 = $('.toggle-btn3');
   const selectBox3 = $('.selectbox-option3');
   const options3 = $('.option-btn3');
   const toggleText3 = $('.toggle-btn3 span');

   toggleBtn3.click(function() {
      selectBox3.toggleClass('hide3');
   });

   options3.click(function() {
      toggleText3.text($(this).text());
      toggleText3.addClass('selected');
      selectBox3.addClass('hide3');
   });

   $(document).click(function(event) {
      if (!selectBox3.parent().is(event.target) && !selectBox3.parent().has(event.target).length) {
         selectBox3.addClass('hide3');
      }
   });

   // 근무지 api띄우고 #address1에 값 설정
   $('.location').click(function() {
      $('#postcode-overlay').show();
      $('#postcode-layer').show();

      new daum.Postcode({
         oncomplete: function(data) {
            $('#address1').val(data.address);
            $('#postcode-overlay').hide();
            $('#postcode-layer').hide();
         },
         width: '100%',
         height: '100%'
      }).embed($('#postcode-layer').get(0));
   });

   // 주소 검색 오버레이를 클릭하면 닫기
   $('#postcode-overlay').click(function() {
      $('#postcode-overlay').hide();
      $('#postcode-layer').hide();
   });
});
 </script>

<!-- 경력 select -->
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {

    /* 경력1 select */
    const toggleBtn = document.querySelector('.careertoggle-btn');
    const selectBox = document.querySelector('.selectcareer-option');
    const options = document.querySelectorAll('.careeroption-btn');
    const toggleText = document.querySelector('.careertoggle-btn span');

    toggleBtn.addEventListener('click', function() {
        selectBox.classList.toggle('careerhide');
    });

    options.forEach(function(option) {
        option.addEventListener('click', function() {
            toggleText.textContent = this.textContent;
            toggleText.classList.add('selected');
            selectBox.classList.add('careerhide');
        });
    });

    document.addEventListener('click', function(event) {
        if (!selectBox.parentElement.contains(event.target)) {
            selectBox.classList.add('careerhide');
        }
    });

    /* 경력2 select */
    const toggleBtn2 = document.querySelector('.careertoggle-btn2');
    const selectBox2 = document.querySelector('.selectcareer-option2');
    const options2 = document.querySelectorAll('.careeroption-btn2');
    const toggleText2 = document.querySelector('.careertoggle-btn2 span');

    toggleBtn2.addEventListener('click', function() {
        selectBox2.classList.toggle('careerhide2');
    });

    options2.forEach(function(option) {
        option.addEventListener('click', function() {
            toggleText2.textContent = this.textContent;
            toggleText2.classList.add('selected');
            selectBox2.classList.add('careerhide2');
        });
    });

    document.addEventListener('click', function(event) {
        if (!selectBox2.parentElement.contains(event.target)) {
            selectBox2.classList.add('careerhide2');
        }
    });


    /* 신입 체크박스 */
    const newcomerCheckbox = document.getElementById('newcomer-checkbox');
    const careerForm = document.querySelector('.careerform');
    const careerForm2 = document.querySelector('.careerform2');
    careerForm2.style.display = 'none';
    newcomerCheckbox.addEventListener('change', function() {
        if (this.checked) {
            careerForm.style.display = 'none';
            careerForm2.style.display = 'flex';
        } else {
            careerForm.style.display = 'flex';
            careerForm2.style.display = 'none';
        }
    });
});
</script>

<script type="text/javascript">
//학력
const toggleBtn4 = $('.toggle-btn4');
const selectBox4 = $('.selectbox-option4');
const options4 = $('.option-btn4');
const toggleText4 = $('.toggle-btn4 span');

toggleBtn4.click(function() {
   selectBox4.toggleClass('hide4');

});

options4.click(function() {
   toggleText4.text($(this).text());
   toggleText4.addClass('selected');
   selectBox4.addClass('hide4');
});

$(document).click(function(event) {
   if (!selectBox4.parent().is(event.target) && !selectBox4.parent().has(event.target).length) {
      selectBox4.addClass('hide4');
   }
});
</script>
<script type="text/javascript">
//학력
const toggleBtn4 = $('.toggle-btn4');
const selectBox4 = $('.selectbox-option4');
const options4 = $('.option-btn4');
const toggleText4 = $('.toggle-btn4 span');

toggleBtn4.click(function() {
   selectBox4.toggleClass('hide4');

});

options4.click(function() {
   toggleText4.text($(this).text());
   toggleText4.addClass('selected');
   selectBox4.addClass('hide4');
});

$(document).click(function(event) {
   if (!selectBox4.parent().is(event.target) && !selectBox4.parent().has(event.target).length) {
      selectBox4.addClass('hide4');
   }
});
</script>

<!-- 기술 스택 . 툴 -->
<script type="text/javascript">
$(document).ready(function() {
    const toggleBtnTech = $('.techtoggle-btn');
    const selectBoxTech = $('.techselectbox-option');
    const optionsTech = $('.techoption-btn');
    const toggleTextTech = $('.techtoggle-btn span');

    toggleBtnTech.click(function() {
        selectBoxTech.toggleClass('techhide');
    });

    optionsTech.click(function() {
        const techText = $(this).text();
        addSelectedTech(techText);
        toggleTextTech.text(techText).css({color: "black"});
        selectBoxTech.addClass('techhide');
        $(this).prop('disabled', true).addClass('disabled');
    });

    $('.resettech').click(function() {
        resetSelectedTechs();
    });

    function addSelectedTech(techText) {
        const techElement = $('<div>').addClass('selected-tech').css({
            display: 'inline-block',
            marginLeft: '6px',
            marginRight: '10px',
            marginBottom: '5px',
            border: '1px solid #ccc',
            backgroundColor: '#fafafa',
            padding: '6px',
            borderRadius: '15px',
            fontWeight: 'bold',
            paddingLeft: '8px'
        });

        const techTextElement = $('<span>').text(techText);
        const removeButton = $('<button>').html('<i class="bi bi-x-lg"></i>').css({
            marginLeft: '10px',
            border: 'none',
            background: 'none',
            color: 'blue',
            cursor: 'pointer'
        });

        removeButton.on('click', function() {
            techElement.remove();
            $('.techoption-btn').each(function() {
                if ($(this).text() === techText) {
                    $(this).prop('disabled', false).removeClass('disabled');
                }
            });
            updateToggleText();
        });

        techElement.append(techTextElement).append(removeButton);
        $('#selected-tech').append(techElement);
        updateToggleText();
    }

    function updateToggleText() {
        const selectedTechs = $('#selected-tech .selected-tech');
        const toggleText = $('.techtoggle-btn span');
        if (selectedTechs.length === 0) {
            toggleText.text("기술 스택ㆍ툴").css({color: "gray"});
        }
    }

    function resetSelectedTechs() {
        $('#selected-tech').empty();
        $('.techoption-btn').prop('disabled', false);
        updateToggleText(); // 여기에 추가
    }
});
</script>

<!-- 카테고리 -->
<script type="text/javascript">

/* 카테고리 select */
$(document).ready(function() {
    const toggleBtnCate = $('.catetoggle-btn');
    const selectBoxCate = $('.cateselectbox-option');
    const optionsCate = $('.cateoption-btn');
    const toggleTextCate = $('.catetoggle-btn span');

    toggleBtnCate.click(function() {
        selectBoxCate.toggleClass('catehide');
    });
    
    optionsCate.click(function() {
        const cateText = $(this).text();
        addSelectedCate(cateText);
        toggleTextCate.text(cateText).css({color: "black"});
        selectBoxCate.addClass('catehide');
        $(this).prop('disabled', true).addClass('disabled');
    });

    $('.resettech').click(function() {
        resetSelectedTechs();
    });

    function addSelectedCate(cateText) {
        const cateElement = $('<div>').addClass('selected-cate').css({
            display: 'inline-block',
            marginLeft: '6px',
            marginRight: '10px',
            marginBottom: '5px',
            border: '1px solid #ccc',
            backgroundColor: '#fafafa',
            padding: '6px',
            borderRadius: '15px',
            fontWeight: 'bold',
            paddingLeft: '8px'
        });

        const cateTextElement = $('<span>').text(cateText);
        const removeButton = $('<button>').html('<i class="bi bi-x-lg"></i>').css({
            marginLeft: '10px',
            border: 'none',
            background: 'none',
            color: 'blue',
            cursor: 'pointer'
        });

        removeButton.on('click', function() {
            cateElement.remove();
            $('.cateoption-btn').each(function() {
                if ($(this).text() === cateText) {
                    $(this).prop('disabled', false).removeClass('disabled');
                }
            });
            updateToggleText();
        });

        cateElement.append(cateTextElement).append(removeButton);
        $('#selected-cate').append(cateElement);
        updateToggleText();
    }

    function updateToggleText() {
        const selectedCates = $('#selected-cate .selected-cate');
        const toggleText = $('.catetoggle-btn span');
        if (selectedCates.length === 0) {
            toggleText.text("카테고리").css({color: "gray"});
        }
    }

    function resetSelectedCates() {
        $('#selected-cate').empty();
        $('.cateoption-btn').prop('disabled', false);
        updateToggleText(); // 여기에 추가
    }
});
</script>

<!-- 게시 마감일 설정 -->
<script type="text/javascript">
// 라디오 버튼 상태에 따라 input_date 활성화/비활성화
$('input[name="flexRadioDefault"]').change(function() {
   if ($('#flexRadioDefault1').is(':checked')) {
      $('input[name="input_date"]').attr('disabled', true);
   } else if ($('#flexRadioDefault2').is(':checked')) {
      $('input[name="input_date"]').removeAttr('disabled');
   }
});

// 페이지 로드 시 초기 상태 설정
if ($('#flexRadioDefault1').is(':checked')) {
   $('input[name="input_date"]').attr('disabled', true);
} else if ($('#flexRadioDefault2').is(':checked')) {
   $('input[name="input_date"]').removeAttr('disabled');
}
</script>
</body>
</html>