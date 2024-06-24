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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.detailaside {
    width: 340px;
    height: calc(100% - 100px);
    position: absolute;
    top: 60px;
    right: calc(50% - 530px);
}

.detailaside .wrap {
    position: fixed;
    top: 160px;
}

/* 배너?느낌 */
.detailaside .celebration {
    height: 48px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgb(230, 241, 253);
    border-radius: 4px 4px 0px 0px;
}

.cPhOyu .celebration > span > svg > path:first-child {
    fill: rgb(1, 118, 237);
}

.detailaside .celebration span {
    display: flex;
    align-items: center;
    gap: 2px;
    font-weight: 600;
    font-size: 14px;
    line-height: 25px;
    color: rgb(68, 68, 68);
    letter-spacing: -0.1px;
}

.detailaside .celebration em {
    font-weight: 800;
    color: rgb(1, 118, 237);
    font-style: normal;
}

.detailaside .celebration span svg path:first-child {
    fill: rgb(1, 118, 237);
}

/* aside main */

/* aside main contents */
.detailaside .contents {
    display: flex;
    flex-direction: column;
    padding: 32px 32px 40px;
    border-right: 1px solid rgb(228, 228, 228);
    border-bottom: 1px solid rgb(228, 228, 228);
    border-left: 1px solid rgb(228, 228, 228);
    border-image: initial;
    border-top: unset;
    box-sizing: border-box;
    border-radius: 0px 0px 4px 4px;
}

.detailaside .contents .company {
    display: flex;
    gap: 18px;
}

.detailaside .contents .company img {
    border-radius: 100px;
    border: 1px solid rgb(228, 228, 228);
}

.detailaside .contents .company .name {
    display: flex;
    flex-direction: column;
    gap: 8px;
}

.detailaside .contents .company .name h2 {
    font-size: 18px;
    font-weight: 700;
    line-height: 35px;
    letter-spacing: -0.1px;
    color: rgb(0, 0, 0);
}

.detailaside .contents .company .name span {
    display: flex;
    align-items: center;
    gap: 2px;
    font-size: 15px;
    font-weight: 500;
    line-height: 10px;
    letter-spacing: -0.5px;
    color: rgb(68, 68, 68);
}

.detailaside .contents .company:hover .name span {
    text-decoration: underline;
    text-underline-position: under;
    color: rgb(1, 118, 237);
}

/* aside main details */
.detailaside .contents .details {
    margin: 24px 0px 32px;
    display: flex;
    flex-direction: column;
    gap: 16px;
    font-size: 15px;
    line-height: 22px;
    letter-spacing: -0.1px;
}

.detailaside .contents .details div {
    display: flex;
    flex-wrap: wrap;
    gap: 0px 14px;
}

.detailaside .contents .details div dt {
    width: 76px;
    min-width: 76px;
    color: rgb(102, 102, 102);
    font-weight: normal;
}

.detailaside .contents .details div dd a {
    display: inline-flex;
    align-items: center;
    gap: 4px;
    font-weight: 500;
    color: rgb(1, 118, 237);
    text-decoration-line: underline;
}

.support {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    position: relative;
}

.support button {
    width: 100%;
    height: 48px;
    font-size: 15px;
    font-weight: bold;
    line-height: 24px;
    margin-bottom: 16px;
}

.supportbtn {
    background: rgb(1, 118, 237);
    border: 1px solid rgb(1, 118, 237);
    color: rgb(255, 255, 255);
    padding: 0px 16px;
    border-radius: 4px;
    letter-spacing: 1px;
}

.supportbtn:hover {
    background: rgb(1, 96, 192);
    border: 1px solid rgb(1, 96, 192);
    color: rgb(255, 255, 255);
    padding: 0px 16px;
    border-radius: 4px;
    letter-spacing: 1px;
}

.bottom {
    display: flex;
    align-items: center;
    white-space: nowrap;
    gap: 25px;
}

.bottomtag {
    position: relative;
    font-size: 14px;
    color: rgb(34, 34, 34);
    display: flex;
    align-items: center;
    cursor: pointer;
}

.bottomtag i {
    width: 20px;
    height: 20px;
}

.bottomtag > span {
    display: inline-block;
    margin-left: 4px;
    text-decoration: underline;
    text-underline-position: under;
    letter-spacing: -0.5px;
}

/* 배너 */
.detailaside .banner {
    position: relative;
    margin-top: 16px;
    cursor: pointer;
    border-radius: 4px;
}

.banner img {
    width: 100%;
    position: absolute;
    top: 0;
    left: 100%; /* 처음에는 화면 밖으로 */
    transition: left 0.5s ease-in-out;
}

.banner img.active {
    left: 0; /* 활성화된 이미지를 화면 안으로 */
}

.banner img.previous {
    left: -100%; /* 이전 이미지를 화면 밖으로 */
    display: none;
}

.bannerchg1 img {
    width: 340px;
    height: 72px;
    margin-top: 0px;
    cursor: pointer;
    border-radius: 4px;
}

.bannerchg2 img {
    width: 340px;
    height: 72px;
    margin-top: 0px;
    cursor: pointer;
    border-radius: 4px;
}

/* 입사지원 창 */
.ipsa{
	position: fixed;
    z-index: 3;
    background-color: rgb(255, 255, 255);
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
    box-shadow: rgba(0, 0, 0, 0.12) 0px 8px 16px;
    height: 100%;
    left: calc(50% + 190px);
    top: 200px;
    width: 470px;
}

.head{
	padding: 8px 24px;
    background-color: rgb(51, 51, 51);
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
}

.head h1{
	width: calc(100% - 36px);
    font-size: 15px;
    line-height: 24px;
    font-weight: 700;
    color: rgb(255, 255, 255);
    overflow-wrap: break-word;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
}

.xbtn{
	position: absolute;
    top: 10px;
    right: 24px;
    width: 20px;
    height: 20px;
    border: none;
    border-radius: 0px;
    background: none;
    cursor: pointer;
}
.modalcenter{
	position: relative;
    display: flex;
    flex-direction: column;
    background: rgb(255, 255, 255);
    border-radius: unset;
    padding-top: 0px;
    padding: 0px 23px 24px;
    overflow-y: auto;
    flex-grow: 1;
    border-right: 1px solid rgb(153, 153, 153);
    border-left: 1px solid rgb(153, 153, 153);
    border-image: initial;
    border-bottom: none;
    border-top: none;
    height: calc(-300px + 100vh);
    max-height: calc(-308px + 100vh);
}

.section h1{
	font-size: 20px;
    line-height: 30px;
    margin-bottom: 2px;
    display: block;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    unicode-bidi: isolate;
}

.section p{
	font-size: 15px;
    font-weight: 400;
    line-height: 22px;
    color: rgb(102, 102, 102);
    overflow-wrap: break-word;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
}

ul.smbox{
	margin-top: 0px;
    padding: 16px;
    border: 1px solid rgb(228, 228, 228);
    border-radius: 8px;
    list-style: none;
}

ul.smbox li{
	display: flex;
    align-items: flex-start;
}

.h2 h2{
	font-size: 16px;
    line-height: 24px;
    color: rgb(34, 34, 34);
	font-weight: bold;
}

span.title{
	margin-right: 24px;
    font-weight: 400;
    font-size: 15px;
    line-height: 24px;
    color: rgb(68, 68, 68);
}

a.write{
	flex: 1 1 50%;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.write span{
	max-height: 48px;
    font-size: 15px;
    line-height: 24px;
    overflow-wrap: break-word;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
}

span.blind{
	overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    clip: rect(1px, 1px, 1px, 1px);
}

.redcircle::after {
	display: inline-block;
    margin: 0px 0px 3px 5px;
    content: "";
    width: 6px;
    height: 6px;
    background-color: #0d6efd;
    border-radius: 3px;
}

span.applysu{
	color: rgb(68, 68, 68);
	font-weight: 500;
    font-size: 14px;
    line-height: 24px;
    margin-bottom: 10px;
}

li.applybox{
	position: relative;
    padding: 16px;
    border: 1px solid rgb(228, 228, 228);
    border-radius: 8px;
}

/* 이력서 클릭시 적용 */
/* li.applybox{
	position: relative;
    padding: 16px;
    border: 1px solid rgb(0, 221, 109);
    border-radius: 8px;
} */

div input[type="radio"]{
	border-radius: 16px;
	position: absolute;
    top: 15px;
    left: 16px;
    width: 16px;
    height: 16px;
    outline: none;
    vertical-align: middle;
    cursor: pointer;
}

h3.appsub{
    width: 280px;
    overflow-wrap: break-word;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    margin-bottom: 4px;
    font-weight: 500;
    font-size: 15px;
    line-height: 24px;
    color: rgb(34, 34, 34);
}

ul.sebu li{
	position: relative;
    margin-right: 24px;
    font-size: 13px;
    line-height: 20px;
    color: rgb(102, 102, 102);
}

ul.sebu li::after{
	position: absolute;
    top: 7px;
    right: -9px;
    width: 4px;
    height: 4px;
    border-radius: 4px;
    background-color: #0d6efd;
    box-sizing: border-box;
    content: "";
}

.appdiv p{
	font-size: 13px;
    line-height: 20px;
    color: rgb(153, 153, 153);
}

.btns{
	 display: flex;
	 position: absolute;
	 bottom: 16px;
	 right: 12px;
}

.dowunbtn {
	margin-left: 12px;
    padding: 4px 4px 0px;
    color: rgb(153, 153, 153);
    background: none; /* 버튼 배경 제거 */
    border: none; /* 버튼 테두리 제거 */
    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
}

.dowunbtn:hover{
	color: #0d6efd;
}

.dowunbtn i {
    width: 20px;
    height: 20px;
}

.btns a{
	margin-left: 12px;
	padding: 4px 4px 0px;
	color: rgb(153, 153, 153); /* 기본 색상 */
    text-decoration: none;
}

.btns a i{
	width: 20px;
    height: 20px;
}

.btns a:hover{
	color: #0d6efd;
}

.empty_redcircle::after {
	display: inline-block;
    margin: 0px 0px 3px 5px;
    content: "";
    width: 6px;
    height: 6px;
    background-color: unset;
    box-sizing: border-box;
    border: 1px solid #0d6efd;
    border-radius: 3px;
}

div .downfile{
	font-size: 14px;
    line-height: 20px;
    color: rgb(153, 153, 153);
}

label.addfile{
	display: flex;
    align-items: center; /* 아이콘과 텍스트를 세로 방향으로 가운데 정렬 */
    cursor: pointer;
    font-weight: 500;
    font-size: 14px;
    line-height: 24px;
    margin-bottom: 10px;
}

label.addfile i{
	width: 16px;
	height: 16px;
	background-color: #0d6efd; /* 배경색 설정 */
	color: white; /* 아이콘 색상 설정 */
	border-radius: 50%; /* 아이콘을 둥글게 */
	display: flex; /* 아이콘을 flex 요소로 설정 */
	align-items: center; /* 아이콘을 세로 방향으로 가운데 정렬 */
	justify-content: center; /* 아이콘을 가로 방향으로 가운데 정렬 */
	font-size: 18px; /* 아이콘 크기 설정 */
	border: none; /* 테두리 제거 */
}

div.filebox{
    align-items: center;
    justify-content: center;
    padding: 16px 0px;
    border: 1px dashed rgb(228, 228, 228);
    border-radius: 8px;
    font-weight: 400;
    font-size: 13px;
    line-height: 24px;
    letter-spacing: -0.5px;
    color: rgb(153, 153, 153);
    text-align: center;
}

.filebox h4{
	display: block;
	margin-bottom: 8px;
    font-weight: 400;
    font-size: 15px;
}

section.detail{
	display: flex;
    align-items: flex-start;
    justify-content: space-between;
    margin-top: 24px;
}

.detail div{
	flex: 1; /* Flexbox 아이템을 균등하게 확장 */
	margin-right: 16px; /* 오른쪽 마진 추가 */
	font-size: 13px;
	color: rgb(153, 153, 153);
	white-space: nowrap; /* 한 줄로 표시 */
	overflow: hidden; /* 넘치는 내용 숨김 */
	text-overflow: ellipsis; /* 넘칠 경우 ...로 표시 */
	padding-top: 2px;
	max-height: 20px; /* 기본적으로 숨겨진 상태를 위한 높이 설정 */
	transition: max-height 0.3s ease; /* 부드러운 애니메이션 효과를 위해 트랜지션 추가 */
}

.detail.open div {
	max-height: 100%;
	overflow: visible; /* 추가: 내용이 잘리지 않게 함 */
}

.detail button{
	display: flex;
    align-items: center;
    font-size: 13px;
    color: rgb(153, 153, 153);
    text-decoration: underline;
    border: none;
    border-radius: 0px;
    background: none;
    cursor: pointer;
}

.footer{
	position: fixed;
    bottom: 0px;
    left: calc(50% + 190px);
    width: 470px;
    height: 68px;
}

div.footerdiv{
	position: relative;
}

.footerbtn{
	width: 100%;
    height: 48px;
    border-radius: unset;
    font-size: 15px;
    line-height: 24px;
    border: 1px solid rgb(196, 196, 196);
    color: rgb(255, 255, 255);
    padding: 0px 16px;
    background: rgb(196, 196, 196);
    font-weight: bold;
}
</style>
</head>
<body>
	<aside aria-label="포지션정보 우측 메뉴" class="detailaside">
		<div class="wrap">
			<div class="celebration">
				<span><svg xmlns="http://www.w3.org/2000/svg" width="24"
						height="24" fill="none" viewBox="0 0 24 24" aria-hidden="true">
						<path fill="#222"
							d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10Z"></path>
						<path fill="#fff" fill-rule="evenodd"
							d="M5.25 12a.75.75 0 0 1 .75-.75h12a.75.75 0 0 1 0 1.5H6a.75.75 0 0 1-.75-.75Z"
							clip-rule="evenodd"></path>
						<path fill="#fff" fill-rule="evenodd"
							d="M11.731 10.224c-.03.022-.066.061-.085.152l-.983 4.715c-.392 1.885-3.097 1.846-3.436-.049l-.966-5.41a.75.75 0 1 1 1.477-.264l.966 5.41c.016.091.052.132.081.154a.27.27 0 0 0 .162.052.27.27 0 0 0 .163-.047c.03-.022.066-.061.085-.152l.982-4.715c.395-1.895 3.121-1.84 3.44.07l.81 4.857c.014.09.049.13.078.154a.27.27 0 0 0 .16.055.27.27 0 0 0 .162-.044c.03-.021.068-.06.089-.148l1.354-5.688a.75.75 0 1 1 1.46.348l-1.355 5.687c-.442 1.857-3.115 1.765-3.428-.118l-.81-4.857c-.015-.092-.051-.133-.08-.155a.27.27 0 0 0-.162-.054.27.27 0 0 0-.164.047Z"
							clip-rule="evenodd"></path></svg> 최종 합격하면 <em>취업 축하금 70만원</em>
				</span>
			</div>
			<div class="contents">
				<a class="company" target="_blank" title="먼치팩토리 기업정보" href="#">
					<img alt="먼치팩토리 로고" height="70" src="../../companyintro_uploads/${hdto.ci_logo }" width="70">
					<div class="name">
						<h2>${hdto.c_name }</h2>
						<span>기업정보 보기 <i class="bi bi-chevron-right"></i></span>
					</div> 
				</a>
				<dl class="details">
					<div>
						<dt>업력</dt>
						<dd>
							<strong>
								<span class="year"></span>&nbsp;
								<span style="color: rgb(136, 136, 136);">(${hdto.c_birthyear }년 설립)</span>
							</strong>
						</dd>
					</div>
					<div>
						<dt>홈페이지</dt>
						<dd>
							<a target="_blank" href="${hdto.ci_link }"> 
								<strong><span>${hdto.ci_link }</span></strong>
								<i class="bi bi-box-arrow-up-right"></i>
							</a>
						</dd>
					</div>
				</dl>
				<div class="support">
					<button type="button" class="supportbtn">지원하기</button>
					<ul class="bottom">
						<li class="bottomtag">
							<i class="bi bi-bookmark bold-icon"></i>
			                <span>스크랩</span>
			            </li>
			            |
						<li class="bottomtag" id="copyurl">
							<i class="bi bi-share"></i>
							<span>공유</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="banner">
				<div class="bannerchg1">
					<img alt="" src="../hire_img/banner1.png" class="active">
				</div>
				<div class="bannerchg2">
					<img alt="" src="../hire_img/banner2.png" class="previous">
				</div>
			</div>
		</div>		
	</aside>
	
	<div class="ipsa">
		<header class="head">
			<h1>입사지원</h1>
			<button class="xbtn"><i class="bi bi-x-lg" style="color: white;"></i></button>
		</header>
		<form>
			<div class="modalcenter">
				<section class="section" style="margin-top: 24px;">
					<h1>${hdto.h_title}</h1>
					<p>${hdto.c_name }</p>
				</section>
				
				<!-- 연락정보 -->
				<section style="margin-top: 24px;">
					<div class="h2" style="display: flex; justify-content: space-between; margin-bottom: 10px;">
						<h2>연락정보</h2>
					</div>
					<ul class="smbox">
						<li style="margin-bottom: 12px;">
							<span class="title">이메일</span>
							<a target="_blank" href="#" class="write">
								<span style="width: 280px;">${r_email }</span>
								<span style="display: flex;align-items: center;">
									<i class="bi bi-chevron-right" style="width: 16px;height: 16px;"></i>
								</span>
							</a>
						</li>
						<li>
							<span class="title">연락처</span>
							<a target="_blank" href="#" class="write">
								<span style="width: 280px;">${r_hp }</span>
								<span style="display: flex;align-items: center;">
									<i class="bi bi-chevron-right" style="width: 16px;height: 16px;"></i>
								</span>
							</a>
						</li>
					</ul>
				</section>
				
				<!-- 지원 이력서 -->
				<section style="margin-top: 24px;">
					<div class="h2" style="display: flex; justify-content: space-between;margin-bottom: 0px;">
						<h2>
							지원 이력서
							<em class="redcircle" style="font-style: normal;">
								<span class="blind">필수</span>
							</em>
						</h2>
						<span class="applysu">
							이력서 총 <em style="color: #0d6efd;;">${ir_count }</em>개
						</span>
					</div>
				<c:forEach var="ir" items="${irlist }">
					<ul style="display: flex; flex-direction: column; width: 100%;list-style: none;">
						<li class="applybox">
							<div style="display: flex;">
								<input type="radio" class="form-check-input" value="true" name="selected">
								<div class="appdiv" style="margin-left: 32px;">
									<h3 class="appsub">${ir.pe_title }</h3>
									<ul class="sebu" style="display: flex;margin-bottom: 8px;">
										<li>기본정보</li>
										<li>기술스택</li>
										<li>학력</li>
									</ul>
									<p>
										<span>${ir.pe_writeday }</span>
									</p>
									<div class="btns">
										<button class="dowunbtn">
											<i class="bi bi-download"></i>
										</button>
										<a target="_blank" href="<%-- /resumehome/updateForm?pe_num=${ir.pe_num} --%>">
											<i class="bi bi-pencil-square"></i>
										</a>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</c:forEach>
				</section>
				
				<!-- 첨부 파일 -->
				<section style="margin-top: 24px;">
					<div class="h2" style="display: flex; justify-content: space-between;">
						<h2>
							첨부 파일
							<em class="empty_redcircle" style="font-style: normal;">
								<span class="blind">선택</span>
							</em>
						</h2>
					</div>
					<div style="display: flex; justify-content: space-between;">
						<p class="downfile">같이 제출하실 첨부파일을 선택해주세요</p>
						<label class="addfile">
							<i class="bi bi-plus-circle"></i>&nbsp;첨부파일 추가
						</label>
					</div>
					<div class="filebox">
						<h4>첨부파일이 비어있습니다.</h4>
						<p>
							PDF 첨부를 추천드려요!
							<br>
							PDF로 보기 편하게 만들었어요 :)
						</p>
					</div>
				</section>
				
				<!--자세히 보기 -->
				<section class="detail">
					<div>
						제출서류는 입사자 확정일로부터 180일까지 지원기업에게 제공됩니다. 제출에 동의할 경우에만 입사지원 해주세요.
						동의하지 않을 경우 입사지원이 불가능합니다.
					</div>
					<button type="button" id="toggleBtn">
						자세히<i class="bi bi-chevron-down" style="margin-left: 4px;width: 16px;height: 16px;"></i>
					</button>
				</section>
			</div>
		
			<!-- 지원하기 버튼 -->
			<footer class="footer">
				<div class="footerdiv">
					<button class="footerbtn" type="submit">지원하기</button>
				</div>
			</footer>
		</form>
	</div>
</body>
<script type="text/javascript">
$('.ipsa').hide();

/* 공유 버튼 URL 복사 */
$(document).ready(function() {
    $('#copyurl').on('click', function() {
        var $tempInput = $('<input>');
        $('body').append($tempInput);
        $tempInput.val(window.location.href).select();
        document.execCommand('copy');
        $tempInput.remove();

        alert('URL이 복사되었습니다. 많이 공유해주세요:)');
    });
});


/* 날짜 변환 -> 년차 출력 */
$(document).ready(function() {
    var birthYear = parseInt("${hdto.c_birthyear}", 10);
    var currentYear = new Date().getFullYear();
    var yearsInBusiness = currentYear - birthYear;

    $('.year').text(yearsInBusiness + '년차');
});


/* 배너 변환 */
$(document).ready(function() {
    var $banners = $('.banner img');
    var currentIndex = 0;
    var totalBanners = $banners.length;

    function showNextBanner() {
        $banners.eq(currentIndex).removeClass('active').addClass('previous');
        currentIndex = (currentIndex + 1) % totalBanners;
        $banners.eq(currentIndex).removeClass('previous').addClass('active');
    }

    setInterval(showNextBanner, 3000);
});
</script>
<script type="text/javascript">
/* 자세히 버튼 클릭 */
$('#toggleBtn').click(function() {
    $('.detail div').toggleClass('open');
    if ($('.detail div').hasClass('open')) {
        $('.detail div').css('max-height', ''); // 클래스를 토글할 때 max-height 스타일을 초기화
        $('.detail div').css('white-space', 'normal'); // 추가: 여러 줄로 표시
        $('.detail div').css('overflow', 'visible'); // 추가: 내용이 잘리지 않게 함
        $('#toggleBtn').html('접기<i class="bi bi-chevron-up" style="margin-left: 4px; width: 16px; height: 16px;"></i>');
    } else {
        $('.detail div').css('max-height', '20px');
        $('.detail div').css('white-space', 'nowrap'); // 수정: 다시 한 줄로 표시
        $('.detail div').css('overflow', 'hidden'); // 수정: 내용 잘리게 함
        $('#toggleBtn').html('자세히<i class="bi bi-chevron-down" style="margin-left: 4px; width: 16px; height: 16px;"></i>');
    }
});

/* 지원창 열기 */
$(".supportbtn").click(function(){
	$('.ipsa').show();
})

/* 지원창 닫기 */
$('.xbtn').click(function() {
    $('.ipsa').hide(); // .ipsa 요소 숨기기
});
</script>

<script type="text/javascript">
/* 이력서 클릭시 */
$(".form-check-input").change(function(){
	$(".applybox").css("border", "1px solid rgb(228, 228, 228)");
	$(this).closest(".applybox").css("border", "2px solid #0d6efd"); // 선택된 radio 버튼의 부모 .applybox만 테두리 변경
	$(".footerbtn").css("background", "#0d6efd");
})
</script>
</html>