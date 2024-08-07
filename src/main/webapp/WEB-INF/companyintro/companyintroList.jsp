<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
/* 전체 틀 레이아웃 */
.all {
	height: 100%;
}

.center {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	max-width: 1060px;
}

#wrap {
      margin-top: 60px; /* 헤더 들어갈 부분 */
      font-family: 'IBM Plex Sans KR', sans-serif;
  }
  .all-form {
      display: flex; /* Flexbox로 배치 */
      align-items: flex-start; /* 상단 정렬 */
      padding: 20px; /* 전체 여백 */
      margin: 0 auto; /* 가운데 정렬 */
      border: 0px solid #ddd; /* 외곽선 */
      margin-top: 60px;
      padding: 0px;
  }

button {
	border: none;
	border-radius: 0px;
	background: none;
	cursor: pointer;
}

/* 왼쪽 메뉴바 스타일 */
.leftmenu {
	
}

.title-section {
	margin-top: 30%;
}

.leftmenu li {
	padding: 2px 0;
}

.menu-item {
	font-size: 0.9em;
}

/*오른쪽 스타일*/
.mylist-area {
	margin-left: 15%; /* 메뉴바와의 간격 */
}

.mylist-img {
	border: 0.5px solid gray;
	width: 100px;
	height: 100px;
	border-radius: 50%;
}

.mylist-state {
	display: flex; /* Flexbox 적용 */
	justify-content: space-around; /* 항목들을 균등하게 분배 */
	margin-top: 5%;
}

/* 추천 공고 섹션 스타일 */
.mylist-chu {
	margin-top: 5%; /* 상단 여백 */
	padding: 10px 0; /* 상하 여백 */
}

/* 리스트 표시 및 정렬 */
.hirelist, .s_hirelist {
	z-index: 2;
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
	margin: 0px auto;
	height: 100%;
	left: 0px;
}

.hireinfo {
	opacity: initial;
	position: relative;
	width: calc(25% - 20px);
	flex: 1 1 22%;
	box-sizing: border-box;
	padding: 10px;
	max-width: 265px;
}

a {
	color: rgb(0, 0, 0);
	text-decoration: none;
}

.hireinfo .img_box {
	width: 100%;
	height: 166px;
	border-radius: 4px;
	overflow: hidden;
	border: 1px solid rgba(0, 0, 0, 0.1);
	position: relative;
}

.hireinfo .img_box .img {
	width: 250px;
	height: 166px;
	object-fit: cover;
	transition: all 0.3s ease 0s;
}

.hireinfo-content {
	padding: 12px 0px 36px;
	width: calc(100% - 7px);
}

.content-company {
	display: flex;
	align-items: center;
}

.content-company span {
	font-size: 14px;
	line-height: 24px;
	letter-spacing: -0.5px;
	color: rgb(68, 68, 68);
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.hireinfo-content h2 {
	margin-top: 6px;
	font-size: 17px;
	line-height: 1.4em;
	letter-spacing: -0.5px;
	font-weight: 600;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.content-techlist {
	display: flex;
	margin: 0px;
	font-size: 13px;
	line-height: 18px;
	letter-spacing: -0.5px;
	color: rgb(153, 153, 153);
	height: 18px;
	font-family: __Montserrat_08d7fe, __Montserrat_Fallback_08d7fe;
	flex-wrap: wrap;
	overflow: hidden;
	padding: 0px;
}

.content-techlist li {
	margin-right: 5px;
}

.content-area {
	display: flex;
	font-size: 13px;
	line-height: 18px;
	letter-spacing: -0.5px;
	color: rgb(153, 153, 153);
	margin-top: 7px;
	padding: 0px;
}

.content-area li {
	margin-right: 5px;
}

.hireinfo .img_box .counts {
	position: absolute;
	margin-left: auto;
	color: rgb(255, 255, 255);
	font-size: 13px;
	z-index: 11;
	right: 10px;
	top: 10px;
	width: 70px;
	display: flex;
	align-items: center;
	display: none;
}

.hireinfo .img_box:hover .counts {
	display: flex;
}

.hireinfo .counts .position_view_count {
	display: flex;
	align-items: center;
	margin-right: 10px;
}

.hireinfo .counts .position_view_count span {
	margin-left: 4px;
}

.hireinfo .counts button {
	padding: 0px;
}

.scrap {
	display: flex;
	justify-content: center;
	align-items: center;
}

.hireinfo .img_filter {
	position: absolute;
	top: 0;
	left: 0;
	width: 250px;
	height: 166px;
	background: rgba(0, 0, 0, 0.5);
	opacity: 0;
	transition: opacity 0.3s ease;
	z-index: 10;
}

.hireinfo:hover .img {
	transform: scale(1.1);
}

.hireinfo:hover .img_filter {
	opacity: 0.8;
}

svg {
	width: 18px;
	height: 18px;
}

.position_view_count svg {
	margin-bottom: 1px;
}

.position_view_count span {
	font-size: 12pt;
	font-family: IBM Plex Sans KR;
	color: #fff;
}

.bi-heart-fill {
	color: red;
}

/* 랭킹 리스트 스타일 */
.ranking-list {
	display: flex;
	justify-content: space-between;
	margin-bottom: 50px;
	width: 100%;
}

.ranking-box {
	width: 32%;
	border: 1px solid #ddd;
	border-radius: 10px;
	padding: 20px;
	/*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);*/
}

.ranking-title {
	font-size: 1.2em;
	margin-bottom: 20px;
	text-align: center;
}

.ranking-item {
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
	padding: 10px 0;
	border-bottom: 1px solid #eee;
}

.ranking-item:last-child {
	border-bottom: none;
}

.ranking-item span {
	font-size: 1em;
}

.ranking-item .rank {
	font-weight: bold;
}

.ranking-item .amount {
	color: blue;
}

 /* 이미지 */
.image-container {
    position: relative;
    display: inline-block;
}

.centered-text {
    position: absolute;
    top: 90%;
    left: 17%;
    transform: translate(-50%, -50%);
    color: white;
    font-weight: bold;
    text-align: center;
} 
</style>
</head>
<body>
	<div class="all">
		<div id="wrap">

			<div class="center">
              <div class="image-container">
	            <img alt="" src="../image/company.PNG" style="width: 1060px; border-radius: 10px; height: 300px;">
	            <h4 class="centered-text">미래를 함께할 인재를 찾습니다</h4>
	          </div>
				<div class="all-form">

					<section class="hirelist">
                      <div style="font-size: 1.5em; margin-bottom: 2%;"><b>카테고리별 기업 순위</b></div>
						<!-- 랭킹 리스트 -->
						<div class="ranking-list">
							<div class="ranking-box">
								<div class="ranking-title">인기검색 기업 순위</div><br>

								<c:forEach var="c" items="${clist2}" varStatus="status">
									<c:if test="${status.index < 10}">
										<div class="ranking-item">
											<span class="rank">${status.index + 1}</span> <a
												href="/company/showimsiCom?c_num=${c.c_num }"> <span
												class="company">${c.c_name}</span>
											</a> <span class="amount">${c.c_salary} 만원</span>
										</div>
									</c:if>
								</c:forEach>

							</div>
							<div class="ranking-box">
								<div class="ranking-title">대기업 연봉 순위</div><br>
								<c:forEach var="b1" items="${blist1}" varStatus="status">
									<c:if test="${status.index < 10}">
										<div class="ranking-item">
											<span class="rank">${status.index + 1}</span> <a
												href="/company/showimsiCom?c_num=${b1.c_num }"> <span
												class="company">${b1.c_name}</span>
											</a> <span class="amount">${b1.c_salary} 만원</span>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<div class="ranking-box">
								<div class="ranking-title">중견기업 연봉 순위</div><br>
								<c:forEach var="b2" items="${blist2}" varStatus="status">
									<c:if test="${status.index < 10}">
										<div class="ranking-item">
											<span class="rank">${status.index + 1}</span> <a
												href="/company/showimsiCom?c_num=${b2.c_num }"> <span
												class="company">${b2.c_name}</span>
											</a> <span class="amount">${b2.c_salary} 만원</span>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>

						<!-- 랭킹 리스트 끝-->
						<!-- 기업 리스트 -->
						<div style="font-size: 1.5em; margin-bottom: 2%; width: 100%;"><b>주목할 만한 기업들</b></div>
						<c:forEach var="a" items="${clist}">
							<div class="hireinfo">
								<a target="_self" title="${a.c_name}"
									href="/company/showimsiCom?c_num=${a.c_num}">
									<div class="img_box">
										<div class="img_filter"></div>
										<img alt="${a.c_name}" class="img"
											src="../../companyintro_uploads/${a.ci_image}">
										<div class="bKGmxJ"></div>
										<div class="counts">
											<div class="position_view_count">
												<svg xmlns="http://www.w3.org/2000/svg" width="20"
													height="20">
                                                    <g fill="none"
														fill-rule="evenodd">
                                                        <path
														d="M0 0h16v16H0z"></path>
                                                        <!-- 읽은 횟수 기능 없으니까 눈모양 아이콘 삭제 -->
                                                        <!--                                                         <g stroke="#FFF" stroke-linecap="round">
                                                            <path
                                                                d="M8 10c.86 0 1.556-.672 1.556-1.5S8.859 7 8 7c-.86 0-1.556.672-1.556 1.5S7.141 10 8 10z">
                                                            </path>
                                                            <path
                                                                d="M15 8.5c-1.469 2.243-4.108 4.5-7 4.5-2.892 0-5.531-2.257-7-4.5C2.788 6.369 4.882 4 8 4s5.212 2.369 7 4.5z">
                                                            </path>
                                                           
                                                        </g>
                                                         -->
                                                    </g>
                                                </svg>

												<!-- 
                                                <span>87</span>-->
											</div>
										</div>
									</div>
								</a>
								<div class="hireinfo-content">
									<div class="content-company">
										<a target="_self" href="/company/showimsiCom?c_num=${a.c_num}"><span>${a.c_category}</span></a>
										&nbsp;

										<!-- 일반 회원 로그인 상태일 때만 스크랩 기능 보이도록 해야한다. -->
										<c:if test="${sessionScope.loginok!=null }">
											<button class="scrap" value="${a.c_num}"
												aria-pressed="${fn:contains(scrapList, a.c_num) ? 'true' : 'false'}">
												<i id="heart"
													class="bi ${fn:contains(scrapList, a.c_num) ? 'bi-heart-fill' : 'bi-heart'}"></i>
											</button>
										</c:if>


									</div>
									<a target="_self" title="${a.c_name}"
										href="/company/showimsiCom?c_num=${a.c_num}">
										<h2 class="position_card_info_title">${a.c_name}</h2>
									</a>
									<ul class="content-area">
										<li><c:set var="addressParts"
												value="${fn:split(a.c_addr, ' ')}" /> <c:out
												value="${addressParts[0]} ${addressParts[1]}" /></li>
									</ul>
								</div>
							</div>
						</c:forEach>


					</section>
				</div>
			</div>

		</div>
	</div>

	<script type="text/javascript">
		/* 스크랩 기능 */
		scrapPress();

		function scrapPress() {
			$("button.scrap")
					.click(
							function() {
								var scrappressed = $(this);
								var isPressed = scrappressed
										.attr('aria-pressed') === 'true';
								var r_num = $("#r_num").val();
								var c_num = scrappressed.val();
								var isLoggedIn = r_num != 0 ? true : false;

								console.log("isPressed:", isPressed, "r_num:",
										r_num, "c_num:", c_num);

								if (isLoggedIn) {
									if (isPressed) {
										$
												.ajax({
													type : "post",
													url : "/company/scrapdelete",
													dataType : "html",
													data : {
														"r_num" : r_num,
														"c_num" : c_num,
													},
													success : function() {
														// aria-pressed가 true인 경우 -> false로 변경
														scrappressed.attr(
																'aria-pressed',
																'false');
														scrappressed
																.find('i')
																.removeClass(
																		'bi-heart-fill')
																.addClass(
																		'bi-heart');
													},
													error : function(request,
															status, error) {
														console.log("Error:",
																error);
													}
												});
									} else {
										$
												.ajax({
													type : "post",
													url : "/company/scrap",
													dataType : "html",
													data : {
														"r_num" : r_num,
														"c_num" : c_num,
													},
													success : function() {
														// aria-pressed가 false인 경우 -> true로 변경
														scrappressed.attr(
																'aria-pressed',
																'true');
														scrappressed
																.find('i')
																.removeClass(
																		'bi-heart')
																.addClass(
																		'bi-heart-fill');
													},
													error : function(request,
															status, error) {
														console.log("Error:",
																error);
													}
												});
									}
								} else {
									var confirmLogin = confirm("로그인이 필요합니다.\n로그인 페이지로 이동하시겠습니까?");
									if (confirmLogin) {
										window.location.href = "/login/main";
									}
								}

							});
		}
	</script>

</body>
</html>