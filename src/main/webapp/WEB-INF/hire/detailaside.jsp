<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
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
						<span>기업정보 보기 ❯</span>
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
							<a target="_blank" href="https://hourplace.co.kr/"> 
								<strong><span>https://hourplace.co.kr/</span></strong>
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
</body>
<script type="text/javascript">

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
</html>