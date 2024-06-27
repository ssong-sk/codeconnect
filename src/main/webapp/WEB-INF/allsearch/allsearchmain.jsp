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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
div.searchdiv {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px 0 24px;
}

div.input-container {
	position: relative;
	width: 530px;
}

div.input-container i {
	position: absolute;
	top: 50%;
	left: 20px;
	transform: translateY(-50%);
	color: #171719;
	font-weight: bold; /* 아이콘 굵기 추가 */
}

input.searchinput {
	width: 100%;
	padding-left: 40px; /* 아이콘 오른쪽에 여백 추가 */
	height: 52px;
	margin: 0;
	padding: 0 55px 0 52px;
	border: 1px solid hsla(225, 5%, 46%, .22);
	border-radius: 12px;
	font-size: 18px;
	font-weight: 500;
	color: #171719;
	background: #fff;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	appearance: none;
	box-sizing: border-box;
}

input.searchinput:focus {
	border-color: #0d6efd;
	outline: none; /* 기본 브라우저 테두리 제거 */
}

input.searchinput::placeholder {
	color: rgba(23, 23, 25, 0.5); /* 연한 글자색 */
}

span.searchicon {
	position: absolute;
	top: 50%;
	left: 100px;
	transform: translateY(-50%);
	pointer-events: none;
	display: flex;
}

span.searchicon i {
	width: 20px;
	height: 20px;
	user-select: none;
	display: inline-block;
	fill: #171719;
	flex-shrink: 0;
}

div.searchTabmenu {
	overflow: hidden;
	position: sticky;
	top: 60px;
	z-index: 11;
	text-align: left;
	background: hsla(0, 0%, 100%, .88);
	backdrop-filter: saturate(150%) blur(32px);
}

div.searchTabmenu:before {
	width: 90%;
	display: block;
	position: absolute;
	bottom: 0;
	left: 50%;
	max-width: 1080px;
	height: 1px;
	margin: 0 auto;
	background-color: rgba(0, 0, 0, .05);
	transform: translateX(-50%);
	content: "";
}

.search_tab {
	display: inline-block;
	position: relative;
	z-index: 1;
	padding: 0 16px;
	font-weight: 500;
	vertical-align: top;
	text-decoration: none;
}

.search_tab:first-of-type {
	margin-left: -16px;
}

.search_tab[aria-selected=true] .searchtabmenu_text {
	color: #171719;
}

.search_tab[aria-selected=true] .searchtabmenu_text:before {
	display: block;
}

.searchtabmenu_text {
	display: block;
	position: relative;
	padding: 16px 0;
	font-size: 16px;
	font-weight: 600;
	color: rgba(55, 56, 60, .28);
	letter-spacing: .09px;
	line-height: 150%;
	-webkit-transition: color .2s ease;
	transition: color .2s ease;
}

.searchtabmenu_text:hover {
	color: rgba(55, 56, 60, .61);
}

.searchtabmenu_text:before {
	display: none;
	position: absolute;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1;
	height: 2px;
	background-color: #171719;
	content: "";
}

a, a:active, a:hover, a:visited {
	color: inherit;
}

.searchcontent {
	width: 90%;
	margin: 0 auto;
	padding-bottom: 80px;
	max-width: 1080px;
}

.searchcontent2 {
	position: relative;
	padding-top: 32px;
}

.searchtitle {
	display: flex;
	margin-bottom: 24px;
}

.searchtitle_text {
	font-size: 20px;
	font-weight: 600;
	line-height: 130%;
	color: #171719;
}

.searchtitle_text span {
	margin-left: 8px;
	font-weight: 400;
}

.searchtitle_text_span {
	color: rgba(55, 56, 60, .61);
}

/* 리스트 출력 */
.searchlist, .s-searchlist {
	display: block;
	margin-top: -20px;
}

.searchlist {
	display: flex;
	flex-wrap: wrap;
}

.listdiv {
	width: calc((100% - 60px) / 4);
	margin-top: 20px;
	display: inline-block;
	position: relative;
	vertical-align: top;
	margin-right: 20px;
	margin-top: 20px;
}

/* 초기에는 처음 8개의 listdiv만 보이게 함 */
.listdiv:nth-child(n + 9) {
	display: none;
}

.image-container {
    position: relative;
    width: 100%;
    padding-bottom: calc(66.6666666667% + 2px);
    border-radius: 12px;
    overflow: hidden;
}

.image-container img {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    object-fit: cover;
}

.scrap {
    position: absolute;
    top: 10px;
    right: 10px;
    background: none;
    border: none;
    cursor: pointer;
}

.listdiv:nth-child(4n) {
	margin-right: 0
}

.listimg {
	overflow: hidden;
	position: relative;
	padding-bottom: calc(66.6666666667% + 2px);
	border-radius: 12px;
	background-size: cover;
	background-position: 50%;
}

.listimg img {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 0;
	display: block;
	object-fit: cover;
	transition: transform .2s ease, -webkit-transform .2s ease;
	will-change: auto;
}

strong.listname {
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	overflow: hidden;
	text-align: left;
	font-weight: 600;
	font-size: 16px;
	line-height: 24px;
	color: #171717;
}

span.listcompanyname {
	width: auto;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	display: block;
	margin-top: 4px;
	font-size: 13px;
	line-height: 18px;
	font-weight: 500;
	letter-spacing: .25px;
	color: #8a8a8a;
}

a{
	text-decoration: none;
}

.hirealllistshow, .cialllistshow{
	text-align: center;
    margin-top: 40px;
}

.hirebtn, .cibtn{
	padding: 0 28px;
    min-width: 84px;
    height: 48px;
    font-size: 16px;
    font-weight: 600;
    border-radius: 12px;
	--button-color: #171719;
	color: var(--button-color);
	box-shadow: inset 0 0 0 1px hsla(225, 5%, 46%, .16);
	background-color: #fff;
	position: relative;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    vertical-align: middle;
    box-sizing: border-box;
    line-height: normal;
    border: none;
    cursor: pointer;
    white-space: nowrap;
}

.hirebtnspan, .cibtnspan{
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    font-size: inherit;
    font-weight: inherit;
    color: inherit;
}

.icon1{
    margin-left: 6px;
    font-size: 1.2em;
	display: flex;
    align-items: center; /* 수직 정렬을 위해 추가 */
}

.icon2 {
    display: flex;
    align-items: center;
    justify-content: center;
}

i.bi-chevron-right {
    width: 16px;
    height: 16px;
    user-select: none;
    flex-shrink: 0;
    font-size: inherit;
    margin-bottom: 10px;
}

/* 회사 리스트 */
.companylist, .s-companylist{
	position: relative;
	list-style: none;
	margin: 0;
    padding: 0;	
    border: 0;
    display: flex; /* 이 부분을 추가하세요 */
    flex-wrap: wrap; /* 이 부분을 추가하세요 */
}

.comli{
	display: inline-block;
    width: calc(50% - 20px);
    margin: 10px;
    align-items: center;
    background: #fff;
    border-radius: 16px;
    border: 1px solid hsla(225, 5%, 46%, .16);
    vertical-align: top;
}

.comli.hidden {
    display: none;
}

.com_a{
	display: block;
    padding: 20px;
}

.comsubject{
	display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
}

.comsubject2{
	width: calc(100% - 110px);
	display: flex;
    flex-direction: row;
    align-items: center;
}

div.comlogo{
	position: relative;
    width: 56px;
    height: 56px;
    border-radius: 8px;
    background-size: 100%;
    background-position: 50%;
    background-repeat: no-repeat;
    overflow: hidden; /* 이 부분을 추가하세요 */
}

div.comlogo img {
    width: 100%; /* 이 부분을 추가하세요 */
    height: 100%; /* 이 부분을 추가하세요 */
    object-fit: cover; /* 이 부분을 추가하세요 */
    border-radius: 8px; /* 이 부분을 추가하세요 */
}

.comname{
	width: calc(100% - 78px);
    height: 58px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding-left: 12px;
}

.cname{
	color: #171719;
    margin-bottom: 4px;
    margin: 0;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
	font-weight: 600;
	font-size: 16px;
    line-height: 24px;
}

.ccate{
	color: rgba(55, 56, 60, .61);
	margin: 0;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    font-weight: 400;
	font-size: 12px;
    letter-spacing: .0252em;
    line-height: 16px;
}

.cbtn{
    padding: 0 14px;
    min-width: 48px;
    height: 32px;
    font-size: 13px;
    font-weight: 600;
    border-radius: 8px;
	--button-color: #171719;
    color: var(--button-color);
	box-shadow: inset 0 0 0 1px hsla(225, 5%, 46%, .16);
	background-color: #fff;
	position: relative;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    vertical-align: middle;
    box-sizing: border-box;
    line-height: normal;
    border: none;
    cursor: pointer;
    white-space: nowrap;
}

span.followtext{
	width: 100%;
    font-size: inherit;
    font-weight: inherit;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
    color: inherit;
}

.followbox{
	overflow: hidden;
    position: absolute;
    z-index: 0;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    border-radius: inherit;
    opacity: 0;
    background-color: var(--button-color);
    transition: opacity .2s ease;
    will-change: opacity;
}

.comcontent{
	color: rgba(55, 56, 60, .61);
    margin-top: 8px;
    height: 48px;
    word-break: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

.content_p{
	font-weight: 400;
    font-size: 15px;
    line-height: 22px;
    margin: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2; /* 최대 2줄까지 표시 */
    -webkit-box-orient: vertical;
}

.bottom_p{
	color: rgba(55, 56, 60, .61);
	font-weight: 600;
	font-size: 15px;
    line-height: 22px;
	margin: 0;
}
</style> 
</head>
<body>
	<div style="background: #fff;">
		<div class="searchdiv">
			<div class="input-container">
				<i class="bi bi-search"></i> <input class="searchinput"
					type="search" name="searchword" placeholder="검색어를 입력해 주세요.">
			</div>
		</div>

		<div class="searchTabmenu">
			<div style="width: 1080px; margin: 0 auto;">
				<a href="#" class="search_tab" tabindex="0" aria-selected="true"
					aria-controls="search_tabpanel_all"> <span
					class="searchtabmenu_text">전체</span>
				</a>
				<a href="#" class="search_tab" tabindex="-1" aria-selected="false"
					aria-controls="search_tabpanel_hire"> <span
					class="searchtabmenu_text">채용공고(<span class="htotalcount">${htotalcount }</span>)</span>
				</a>
				<a href="#" class="search_tab" tabindex="-1" aria-selected="false"
					aria-controls="search_tabpanel_company"> <span
					class="searchtabmenu_text">회사(<span class="citotalcount">${citotalcount }</span>)</span>
				</a>
			</div>
		</div>
		
		<!-- 채용공고 리스트 -->
		<div class="searchcontent">
			<div class="searchcontent2">
				<div class="hirediv">
					<div class="searchtitle">
						<h2 class="searchtitle_text">
							채용공고<span class="searchtitle_text_span_hire">${htotalcount }</span>
						</h2>
					</div>
					<div id="hireListContainer">
						<div class="searchlist">
							<c:forEach var="h" items="${hlist}">
								<div class="listdiv">
								    <a href="#">
								        <div class="image-container">
								            <img src="../../companyintro_uploads/${h.ci_image}" alt="${h.c_name}" sizes="(max-width: 991px) 50vw, (max-width: 1178px) 25vw, 250px">
								            <button aria-pressed='false' type='button' class='scrap' value='${h.h_num}'>
								                <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' fill='none' viewBox='0 0 24 24'>
								                    <path fill='#fff' fill-rule='evenodd' d='M10.725 14.71a2 2 0 0 1 2.55 0l3.975 3.289V5H6.75v12.999l3.975-3.29ZM4.75 20.123V5a2 2 0 0 1 2-2h10.5a2 2 0 0 1 2 2v15.124a1 1 0 0 1-1.638.77L12 16.25l-5.612 4.645a1 1 0 0 1-1.638-.77Z' clip-rule='evenodd'></path>
								                </svg>
								            </button>
								        </div>
								        <div style="padding-top: 12px;">
								            <strong class="listname">${h.h_title}</strong>
								            <span>
								                <span class="listcompanyname">${h.c_name}</span>
								            </span>
								        </div>
								    </a>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="hirealllistshow">
					    <button type="button" class="hirebtn">
					        <span class="hirebtnspan">
					            채용공고 전체보기
					            <span class="icon1">
					                <span class="icon2">
					                    <i class="bi bi-chevron-right"></i>
                					</span>
					            </span>
					        </span>
					    </button>
					</div>
				</div>
				<!-- 회사 리스트 -->
				<div class="companydiv" style="margin-top: 80px;">
					<div class="searchtitle">
						<h2 class="searchtitle_text">
							회사<span class="searchtitle_text_span_com">${citotalcount }</span>
						</h2>
					</div>
					<div id="ciListContainer">
						<div class="cilist" style="margin: -10px;">
							<ul class="companylist" style="position: relative;">
							<c:forEach var="ci" items="${cilist}">
								<li class="comli">
									<a href="#" class="com_a">
										<!-- 제목부분 -->
										<div class="comsubject">
											<div class="comsubject2">
												<div class="comlogo">
													<img src="../../companyintro_uploads/${ci.ci_logo }">
												</div>
												<div class="comname">
													<h5 class="cname">${ci.c_name }</h5>
													<h6 class="ccate">${ci.c_category }</h6>
												</div>
											</div>
											<button type="button" class="cbtn">
												<span class="followtext">팔로우</span>
												<span class="followbox"></span>
											</button>
										</div>
										<!-- 내용부분 -->
										<div class="comcontent">
											<p class="content_p">${ci.ci_soge }</p>
										</div>
										<!-- 실시간 채용 알림 -->
										<div style="margin-top: 8px;">
											<p class="bottom_p">팔로우하고 실시간 채용 알림을 받아보세요.</p>
										</div>
									</a>
								</li>
							</c:forEach>
							</ul>
						</div>
					</div>
					<div class="cialllistshow">
					    <button type="button" class="cibtn">
					        <span class="cibtnspan">
					            회사 전체보기
					            <span class="icon1">
					                <span class="icon2">
					                    <i class="bi bi-chevron-right"></i>
                					</span>
					            </span>
					        </span>
					    </button>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
$(".search_tab").click(function() {
	$(".search_tab").attr('aria-selected', 'false');
	$(this).attr('aria-selected', 'true');
})
</script>

<!-- 검색 엔터 채용공고 -->
<script type="text/javascript">
$('.searchinput').on('keypress', function(e) {
	if (e.which == 13) { // 엔터 키를 눌렀을 때
		var searchword = $(this).val();

		$.ajax({
			type : "GET",
			url : "hiresearch", // 실제 검색을 처리하는 서버의 URL로 변경해야 합니다.
			dataType : "json",
			data : {
				"searchword" : searchword
			},
			success : function(res) {
				hsearch(res);
				$(".searchtitle_text_span_hire").text(res.length);
				$(".htotalcount").text(res.length);
			}
		});
		
		<!-- 검색 엔터 회사 -->
		$.ajax({
			type : "GET",
			url : "cintrosearch", // 실제 검색을 처리하는 서버의 URL로 변경해야 합니다.
			dataType : "json",
			data : {
				"searchword" : searchword
			},
			success : function(res) {
				cisearch(res);
				$(".searchtitle_text_span_com").text(res.length);
				$(".citotalcount").text(res.length);
			}
		})
	}
});


/* 채용공고 리스트 함수 */
function hsearch(res) {
	$(".searchlist").hide();

	if (res.length === 0) {
		$(".s-searchlist").hide();
		$(".searchlist").show();
		$('.searchlist').html('<p>검색 결과가 없습니다.</p>');
		return;
	}
	var s = "<div class='s-searchlist'>";
	$.each(res,function(index, h) {
		s += "<div class='listdiv'>";
		s += "<a href='#'>";
		s += "<div class='listimg'>";
		s += "<img src='../../companyintro_uploads/"+ h.ci_image+ "' alt='"+ h.c_name+ "' sizes='(max-width: 991px) 50vw, (max-width: 1178px) 25vw, 250px'>";
		s += "</div>";
		s += "<div style='padding-top: 12px;'>";
		s += "<strong class='listname'>" + h.h_title + "</strong>";
		s += "<span>";
		s += "<span class='listcompanyname'>" + h.c_name + "</span>";
		s += "</span>";
		s += "</div>";
		s += "</a>";
		s += "<button aria-pressed='false' type='button' class='scrap' value='" + h.h_num + "'>";
		s += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' fill='none' viewBox='0 0 24 24'>";
		s += "<path fill='#fff' fill-rule='evenodd' d='M10.725 14.71a2 2 0 0 1 2.55 0l3.975 3.289V5H6.75v12.999l3.975-3.29ZM4.75 20.123V5a2 2 0 0 1 2-2h10.5a2 2 0 0 1 2 2v15.124a1 1 0 0 1-1.638.77L12 16.25l-5.612 4.645a1 1 0 0 1-1.638-.77Z' clip-rule='evenodd'></path>";
		s += "</svg>";
		s += "</button>";
		s += "</div>"; // listdiv 닫기
	});
	s += "</div>"; // searchlist 닫기
	$('#hireListContainer').html(s); // 업데이트할 요소의 ID를 지정
}

/* 회사 리스트 함수 */
function cisearch(res){
	$(".cilist").hide();

	if (res.length === 0) {
		$(".s-cilist").hide();
		$(".cilist").show();
		$('.cilist').html('<p>검색 결과가 없습니다.</p>');
		return;
	}
	var s = "<div class='s-cilist' style='margin: -10px;'><ul class='s-companylist' style='position: relative;'>";
	$.each(res, function(index, ci) {
	    s += "<li class='comli'>";
	    s += "<a href='#' class='com_a'>";
	    s += "<div class='comsubject'>";
	    s += "<div class='comsubject2'>";
	    s += "<div class='comlogo'>";
	    s += "<img src='../../companyintro_uploads/" + ci.ci_logo + "'>";
	    s += "</div>";
	    s += "<div class='comname'>";
	    s += "<h5 class='cname'>" + ci.c_name + "</h5>";
	    s += "<h6 class='ccate'>" + ci.c_category + "</h6>";
	    s += "</div>";
	    s += "</div>";
	    s += "<button type='button' class='cbtn'>";
	    s += "<span class='followtext'>팔로우</span>";
	    s += "<span class='followbox'></span>";
	    s += "</button>";
	    s += "</div>";
	    s += "<div class='comcontent'>";
	    s += "<p class='content_p'>" + ci.ci_soge + "</p>";
	    s += "</div>";
	    s += "<div style='margin-top: 8px;'>";
	    s += "<p class='bottom_p'>팔로우하고 실시간 채용 알림을 받아보세요.</p>";
	    s += "</div>";
	    s += "</a>";
	    s += "</li>";
	});
	s += "</ul></div>";
	// s를 HTML에 추가
	$('#ciListContainer').html(s); // 업데이트할 요소의 ID를 지정
}

/* 전체보기 */
// 초기에는 처음 8개의 listdiv만 보이게 함
$('.listdiv:gt(7)').hide();
// 초기에는 처음 4개의 comli만 보이게 함
$('.comli:gt(3)').hide();

// 채용공고 전체보기 버튼 클릭 이벤트 처리
$('.hirebtn').click(function() {
    // 모든 listdiv 요소를 보이도록 설정
    $('.listdiv').show();

    // 버튼을 숨김 처리
    $(this).hide();

    // '채용공고' 탭을 클릭 상태로 변경
    $('.search_tab').attr('aria-selected', 'false');
    $('[aria-controls="search_tabpanel_hire"]').attr('aria-selected', 'true');
    
    $('.hirediv').show();
    $('.companydiv').hide();
});

// 회사 전체보기 버튼 클릭 이벤트 처리
$('.cibtn').click(function() {
    // 모든 comli 요소를 보이도록 설정
    $('.comli').show();

    // 버튼을 숨김 처리
    $(this).hide();

    // '회사' 탭을 클릭 상태로 변경
    $('.search_tab').attr('aria-selected', 'false');
    $('[aria-controls="search_tabpanel_company"]').attr('aria-selected', 'true');
    
    // 다른 탭 내용 숨기기
    $('.hirediv').hide();
    
 	// margin-top을 32px로 변경
    $('.companydiv').css('margin-top', '0px').show();
});

//'채용공고' 탭을 클릭했을 때 처리
$('.search_tab[aria-controls="search_tabpanel_hire"]').click(function(e) {
    e.preventDefault();
    
    // 모든 listdiv 요소를 보이도록 설정
    $('.listdiv').show();

    // 채용공고 탭을 활성화 상태로 변경
    $('.search_tab').attr('aria-selected', 'false');
    $(this).attr('aria-selected', 'true');

    // '채용공고 전체보기' 버튼 숨김 처리
    $('.hirebtn').hide();
    
    $('.hirediv').show();
    $('.companydiv').hide();
});

//'회사' 탭을 클릭했을 때 처리
$('.search_tab[aria-controls="search_tabpanel_company"]').click(function(e) {
    e.preventDefault();
	
 	// 모든 comli 요소를 보이도록 설정
    $('.comli').show();
 	
    // 회사 탭을 활성화 상태로 변경
    $('.search_tab').attr('aria-selected', 'false');
    $(this).attr('aria-selected', 'true');

    // '회사 전체보기' 버튼 숨김 처리
    $('.cibtn').hide();
    
    // 채용공고 테이블 숨김
    $('.hirediv').hide();
    
 	// margin-top을 32px로 변경
    $('.companydiv').css('margin-top', '0px').show();
});

//'전체' 탭을 클릭했을 때 처리
$('.search_tab[aria-controls="search_tabpanel_all"]').click(function(e) {
    e.preventDefault();
	
    $('.hirediv').show();
    $('.companydiv').show();
    
    // 처음 8개의 listdiv만 보이게 함
    $('.listdiv:gt(7)').hide();
    $('.comli:gt(3)').hide();

    // '채용공고 전체보기' 버튼 보이게 함
    $('.hirebtn').show();
    
    // 회사 전체보기 버튼 보이게
    $('.cibtn').show();
    
    // margin-top을 80px로 변경
    $('.companydiv').css('margin-top', '80px').show();
});
</script>
</body>
</html>