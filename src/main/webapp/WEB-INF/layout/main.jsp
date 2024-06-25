<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css" href="/css/slick.css">
<link rel="stylesheet" type="text/css" href="/css/slick-theme.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script type="text/javascript" src="/css/slick.js"></script>


<style type="text/css">


/* Hide the images by default */
.mySlides {
	display: none;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -22px;
	padding: 16px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 40px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

/* Fading animation */
.fada {
	animation-name: fada;
	animation-duration: 1.5s;
}

@
keyframes fada {
	from {opacity: .4
}

to {
	opacity: 1
}
}
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>" />
<body>
	<main class="JobsFeed_Jobsfeed___FVwn">
		<section class="Section_Section__XyOtJ">
			<c:if test="${sessionScope.loginok==null }">
				<article class="MatchedBanner_MatchedBanner__jSUtn">
					<div class="MatchedBanner_MatchedBanner__info__HEO_b">
						<h6
							class="Typography_Typography__root__RdAI1 Typography_Typography__headline2__vR7L_ Typography_Typography__weightBold__KkJEY MatchedBanner_MatchedBanner__info__title__ciAu_">
							내 이력서를 분석해<br>관심 있을 만한 포지션을 추천해 드려요.
						</h6>
						<button type="button" onclick="location.href='/login/main'"
							class="Button_Button__root__m1NGq Button_Button__contained__qyP2s Button_Button__containedPrimary__kCB60 Button_Button__containedSizeMedium__xBgIW MatchedBanner_MatchedBanner__btn__XNKYB"
							data-attribute-id="jobs__signupLogin__click">
							<span class="Button_Button__label__K0sBs">지금 시작하기</span><span
								class="Button_Button__interaction__1LUyr"></span>
						</button>
					</div>
				</article>
			</c:if>
			<c:if test="${sessionScope.loginok!=null }">
				<article class="MatchedJobArea_MatchedJobArea__oYonU">
					<div class="CarouselContainer_CarouselContainer__jvm3u">
						<aside class="CarouselHeader_CarouselHeader__5VBaX">
							<h4
								class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">내가
								관심 있을 만한 포지션</h4>
							<div class="CarouselHeader_CarouselHeader__action__nal5g">
								<a href="/matched"
									class="CarouselHeader_CarouselHeader__link__2mjNY"
									data-attribute-id="jobs__seeMore"
									data-domain="recommendPosition">전체보기<span
									class="CarouselHeader_CarouselHeader__link__interaction__rETxI"></span></a>
								<div class="CarouselNavigation_CarouselNavigation__Llibu">
									<button
										class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB"
										aria-label="이전" style="font-size: 15px;">
										<span class="IconButton_IconButton__label__o4AtY"><span
											class="SvgIcon_SvgIcon__root__OHiSO"><svg
													class="SvgIcon_SvgIcon__root__svg__ohdSc"
													viewBox="0 0 24 24">
												<path
														d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
														fill="#e1e2e4"></path></svg></span></span>
									</button>
									<button
										class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m"
										aria-label="다음" style="font-size: 15px;">
										<span class="IconButton_IconButton__label__o4AtY"><span
											class="SvgIcon_SvgIcon__root__OHiSO"><svg
													class="SvgIcon_SvgIcon__root__svg__ohdSc"
													viewBox="0 0 24 24">
												<path
														d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
														fill="#70737C"></path></svg></span></span><span
											class="IconButton_IconButton__interaction__7RjPt"></span>
									</button>
								</div>
							</div>
						</aside>
						<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
							<div class="slick-list">
								<div class="slick-slider post-wrapper">
									<div class="slick-track"
										style="width: 5400px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
										<div data-index="0"
											class="slick-slide slick-active slick-current" tabindex="-1"
											aria-hidden="false" style="outline: none; width: 270px;">

											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1"
												style="width: 270px; height: 170px; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="45832" data-company-name="도르코퍼레이션"
														data-position-id="204942"
														data-position-name="소프트웨어 엔지니어 Desktop App"
														data-response-rate="90.91" data-ai-score=""
														data-ai-score-status="fail"
														data-recommend-model-status="notBase"
														data-domain="recommendPosition" data-position-index="0"
														href="/wd/204942"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F45832%2Fnr6sqotxkkcnksgf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="high" alt="소프트웨어 엔지니어 Desktop App"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="45832" data-company-name="도르코퍼레이션"
																data-position-id="204942"
																data-position-name="소프트웨어 엔지니어 Desktop App"
																data-response-rate="90.91" data-ai-score=""
																data-ai-score-status="fail"
																data-recommend-model-status="notBase"
																data-domain="recommendPosition" data-position-index="0"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">소프트웨어
																엔지니어 Desktop App</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">도르코퍼레이션</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 270px; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="1867" data-company-name="메타넷글로벌"
														data-position-id="225420"
														data-position-name="제조SI Application 개발(C#, JSP)"
														data-response-rate="66.67" data-ai-score=""
														data-ai-score-status="fail"
														data-recommend-model-status="notBase"
														data-domain="recommendPosition" data-position-index="1"
														href="/layout/slick"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F1867%2Frb0oaxfgxatcrzg5__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="high" alt="제조SI Application 개발(C#, JSP)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="1867" data-company-name="메타넷글로벌"
																data-position-id="225420"
																data-position-name="제조SI Application 개발(C#, JSP)"
																data-response-rate="66.67" data-ai-score=""
																data-ai-score-status="fail"
																data-recommend-model-status="notBase"
																data-domain="recommendPosition" data-position-index="1"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">제조SI
																Application 개발(C#, JSP)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">메타넷글로벌</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 270px; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="1867" data-company-name="메타넷글로벌"
														data-position-id="225434"
														data-position-name="제조SI Architect"
														data-response-rate="66.67" data-ai-score=""
														data-ai-score-status="fail"
														data-recommend-model-status="notBase"
														data-domain="recommendPosition" data-position-index="2"
														href="/wd/225434"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F1867%2Frb0oaxfgxatcrzg5__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="high" alt="제조SI Architect"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="1867" data-company-name="메타넷글로벌"
																data-position-id="225434"
																data-position-name="제조SI Architect"
																data-response-rate="66.67" data-ai-score=""
																data-ai-score-status="fail"
																data-recommend-model-status="notBase"
																data-domain="recommendPosition" data-position-index="2"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">제조SI
																Architect</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">메타넷글로벌</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 270px; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="7095" data-company-name="니어스랩"
														data-position-id="214686"
														data-position-name="소프트웨어 엔지니어(로보틱스 퍼셉션)"
														data-response-rate="60.79" data-ai-score=""
														data-ai-score-status="fail"
														data-recommend-model-status="notBase"
														data-domain="recommendPosition" data-position-index="3"
														href="/wd/214686"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F7095%2F3ukufkqas3nmzrwr__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="high" alt="소프트웨어 엔지니어(로보틱스 퍼셉션)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="7095" data-company-name="니어스랩"
																data-position-id="214686"
																data-position-name="소프트웨어 엔지니어(로보틱스 퍼셉션)"
																data-response-rate="60.79" data-ai-score=""
																data-ai-score-status="fail"
																data-recommend-model-status="notBase"
																data-domain="recommendPosition" data-position-index="3"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">소프트웨어
																엔지니어(로보틱스 퍼셉션)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">니어스랩</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="4" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="5" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="6" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="7" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="8" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="9" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="10" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="11" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>

								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						$('.post-wrapper')
								.slick(
										{
											slidesToShow : 4,
											slidesToScroll : 4,
											autoplay : true,
											autoplaySpeed : 1000,
											row : 4,
											infinite : true,
											draggable : false,
											prevArrow : "<button type='button' class='slick-prev'>이전</button>",
											nextArrow : "<button type='button' class='slick-next'>다음</button>",
											arrows : true,
											variableWidth : true
										})
					</script>
				</article>
			</c:if>
			<article class="TopBannerArea_MainBannerArea__27LJX">
				<div class="slick-slider slide-banner">
					<div class="slick-list">
						<div class="slick-track"
							style="width: 37100px; opacity: 1; transform: translate3d(-15900px, 0px, 0px);">
							<div class="slick-slide">
								<div data-index="-1" tabindex="-1"
									class="slick-slide slick-cloned" aria-hidden="true"
									style="width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="http://link.overtax.co.kr/wanted_banner_2406"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="http://link.overtax.co.kr/wanted_banner_2406"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="혜움에서 휴가 보내드립니다"> <img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2399%2Fecc261c2.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="혜움에서 휴가 보내드립니다"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div>
												</a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">혜움에서
													휴가 보내드립니다</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">법인
													환급금 조회시 호텔 패키지 증정</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="0" class="slick-slide" tabindex="-1"
									aria-hidden="true"
									style="outline: none; width: 1060px; height: 170px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/company/9416" data-landing-uri="/company/9416"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="COMPANY_DETAIL"
													data-content-title="클라썸은 지금도 전 직군 채용 중!"
													data-content-id="9416"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2382%2Fe8da656c.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="클라썸은 지금도 전 직군 채용 중!"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">클라썸은
													지금도 전 직군 채용 중!</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">2024년
													1분기 수주액 236% 증가</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="1" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/company/1797" data-landing-uri="/company/1797"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="COMPANY_DETAIL"
													data-content-title="그렙 프로그래머스 적극 채용" data-content-id="1797"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2375%2Feb6da3f4.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="그렙 프로그래머스 적극 채용"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">그렙
													프로그래머스 적극 채용</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">개발
													기획 교육 마케팅 영업 채용 중</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="2" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a
													href="https://www.wanted.co.kr/tags/10486?view=position&amp;start_year=0&amp;end_year=10&amp;job_group_id=518&amp;job_ids=1634&amp;job_ids=1025&amp;job_ids=655&amp;job_ids=1024"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://www.wanted.co.kr/tags/10486?view=position&amp;start_year=0&amp;end_year=10&amp;job_group_id=518&amp;job_ids=1634&amp;job_ids=1025&amp;job_ids=655&amp;job_ids=1024"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="인공지능(AI) 포지션"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2398%2Fce7f687c.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="인공지능(AI) 포지션"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">인공지능(AI)
													포지션</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">눈여겨볼
													인공지능(AI) 채용공고를 소개합니다.</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="3" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/company/49342" data-landing-uri="/company/49342"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="COMPANY_DETAIL"
													data-content-title="개발 전 직군·CS·QA 채용 중"
													data-content-id="49342"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2402%2F961b2a29.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="개발 전 직군·CS·QA 채용 중"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(33, 33, 33, 0), rgba(33, 33, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">개발
													전 직군·CS·QA 채용 중</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">SEE
													YOU IN THE DUNGEON!</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="4" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/events/work_recipe03"
													data-landing-uri="/events/work_recipe03"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="EVENT_DETAIL"
													data-content-title="WORK RECIPE"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2365%2F8540675a.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="WORK RECIPE"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(84, 83, 20, 0), rgba(84, 83, 20, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">WORK
													RECIPE</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">일할
													맛 나는 기업, 오비맥주</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="5" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/company/24000" data-landing-uri="/company/24000"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="COMPANY_DETAIL"
													data-content-title="지금, 토스뱅크에 합류하세요"
													data-content-id="24000"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2383%2F223893a7.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="지금, 토스뱅크에 합류하세요"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">지금,
													토스뱅크에 합류하세요</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">Tech,
													Data, IT 직군 적극 채용</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="6" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a
													href="https://forms.workday.com/ko-kr/webinars/elevate-seoul-2024-on-demand/form.html/?camp=7014X000002s0XvQAI&amp;eid=kokr_pub_oohothr_oth_alp_wd_wbrep_24.6159&amp;utm_medium=pub&amp;utm_source=oohothr&amp;utm_campaign=24-05-RE-ko-ko-ele-alp-PX-Elevate_Korea_Ondemand-dsdi-oter&amp;productfocus=alp&amp;aud=wd&amp;assettype=wbrep&amp;ass"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://forms.workday.com/ko-kr/webinars/elevate-seoul-2024-on-demand/form.html/?camp=7014X000002s0XvQAI&amp;eid=kokr_pub_oohothr_oth_alp_wd_wbrep_24.6159&amp;utm_medium=pub&amp;utm_source=oohothr&amp;utm_campaign=24-05-RE-ko-ko-ele-alp-PX-Elevate_Korea_Ondemand-dsdi-oter&amp;productfocus=alp&amp;aud=wd&amp;assettype=wbrep&amp;ass"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="Elevate 서울 다시보기"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2408%2F8dae26ea.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="Elevate 서울 다시보기"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">Elevate
													서울 다시보기</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">글로벌
													HCM 리더 워크데이 컨퍼런스</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="7" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/company/49206" data-landing-uri="/company/49206"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="COMPANY_DETAIL"
													data-content-title="셀바티코의 새로운 여정에 합류하세요."
													data-content-id="49206"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2403%2F9d87cb1b.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="셀바티코의 새로운 여정에 합류하세요."
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(33, 33, 33, 0), rgba(33, 33, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">셀바티코의
													새로운 여정에 합류하세요.</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">프랑스
													유수 기관 투자를 유치한 뷰티 스타트업</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="8" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a
													href="https://docs.google.com/forms/d/e/1FAIpQLSede5haSACewrvdADGdFyeXzBYqyuNnkx-5-kx_fKdZ9626ng/viewform"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://docs.google.com/forms/d/e/1FAIpQLSede5haSACewrvdADGdFyeXzBYqyuNnkx-5-kx_fKdZ9626ng/viewform"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="옥외광고도 타겟팅이 됩니다"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2406%2F10625bd6.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="옥외광고도 타겟팅이 됩니다"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">옥외광고도
													타겟팅이 됩니다</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">옥외광고
													컨설팅을 무료로 받아보세요</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="9" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/events/2024_job_festa"
													data-landing-uri="/events/2024_job_festa"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="EVENT_DETAIL"
													data-content-title="2024 관광 일자리 페스타"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2385%2F1203d6e1.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="2024 관광 일자리 페스타"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">2024
													관광 일자리 페스타</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">지역
													관광기업들의 채용 정보가 한 곳에!</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="10" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/themes/newposition"
													data-landing-uri="/themes/newposition"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="THEME" data-content-title="이번 주 신규 포지션"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2078%2Fa78a154c.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="이번 주 신규 포지션"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(84, 84, 84, 0), rgba(84, 84, 84, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">이번
													주 신규 포지션</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">눈여겨볼
													이번 주 채용공고를 소개합니다.</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="11" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="/company/29905" data-landing-uri="/company/29905"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="COMPANY_DETAIL"
													data-content-title="트웰브랩스 전직군 채용" data-content-id="29905"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2393%2F59d2ac96.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="트웰브랩스 전직군 채용"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">트웰브랩스
													전직군 채용</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">엔비디아가
													투자한 영상이해 AI 스타트업</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="12" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a
													href="https://kr.redrob.io/?utm_source=wanted&amp;utm_medium=banner&amp;utm_campaign=2406_highfive_sponsership_aitest"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://kr.redrob.io/?utm_source=wanted&amp;utm_medium=banner&amp;utm_campaign=2406_highfive_sponsership_aitest"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="인사채용, 쇼핑하듯 검증하라"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2381%2F5caba691.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="인사채용, 쇼핑하듯 검증하라"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">인사채용,
													쇼핑하듯 검증하라</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">간편
													채용시험 플랫폼, 레드롭</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="13" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a
													href="https://www.wanted.co.kr/tags/10485?view=position&amp;start_year=0&amp;end_year=10"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://www.wanted.co.kr/tags/10485?view=position&amp;start_year=0&amp;end_year=10"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="최근 100억 이상 투자 받은 기업"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F1948%2F65930f6a.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="최근 100억 이상 투자 받은 기업"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">최근
													100억 이상 투자 받은 기업</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">채용
													중 포지션 확인하기</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="14"
									class="slick-slide slick-active slick-current" tabindex="-1"
									aria-hidden="false" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="https://www.wanted.co.kr/events/asiana_wanted_1"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://www.wanted.co.kr/events/asiana_wanted_1"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="합격 여행을 Wanted"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2396%2F69f29a7a.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="합격 여행을 Wanted"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(0, 122, 175, 0), rgba(0, 122, 175, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">합격
													여행을 Wanted</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">지금
													합격하면 여행 티켓을 끊어드려요</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="15" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a
													href="https://code-challenge.elice.io/courses/95930/info?utm_source=vertical&amp;utm_medium=wanted&amp;utm_campaign=알고리즘&amp;utm_term=main banner&amp;utm_content=event"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="https://code-challenge.elice.io/courses/95930/info?utm_source=vertical&amp;utm_medium=wanted&amp;utm_campaign=알고리즘&amp;utm_term=main banner&amp;utm_content=event"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="1200만 원의 경품 드려요"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2405%2Fd65c574a.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="1200만 원의 경품 드려요"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">1200만
													원의 경품 드려요</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">상위
													랭커 서류 면제까지!</p>
											</div>
										</div>
									</div>
								</div>
								<div data-index="16" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 1060px;">
									<div>
										<div class="BannerItem_BannerItem__NtVfT">
											<div class="BannerItem_BannerItem__link__olAEK">
												<a href="http://link.overtax.co.kr/wanted_banner_2406"
													target="_blank" rel="noopener noreferrer"
													data-landing-uri="http://link.overtax.co.kr/wanted_banner_2406"
													data-attribute-id="jobs__mainBanner__click"
													data-link-kind="CUSTOM_URL"
													data-content-title="혜움에서 휴가 보내드립니다"><img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2399%2Fecc261c2.jpg&amp;w=1060&amp;q=100"
													fetchpriority="auto" alt="혜움에서 휴가 보내드립니다"
													class="BannerItem_BannerItem__link__img__JHO6H">
													<div class="BannerItem_BannerItem__overlay__zQ88O"
														style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43));"></div></a>
											</div>
											<div class="BannerItem_BannerItem__info__1QEVE">
												<h3
													class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">혜움에서
													휴가 보내드립니다</h3>
												<p
													class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">법인
													환급금 조회시 호텔 패키지 증정</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<ul class="slick-dots" style="display: block;" role="tablist">
						<li class="" aria-hidden="true" role="presentation"
							aria-selected="true" aria-controls="navigation20"
							id="slick-slide20"><button type="button" data-role="none"
								role="button" tabindex="0">1</button></li>
						<li aria-hidden="false" role="presentation" aria-selected="false"
							aria-controls="navigation21" id="slick-slide21"
							class="slick-active"><button type="button" data-role="none"
								role="button" tabindex="0">2</button></li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							aria-controls="navigation22" id="slick-slide22"><button
								type="button" data-role="none" role="button" tabindex="0">3</button></li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							aria-controls="navigation23" id="slick-slide23"><button
								type="button" data-role="none" role="button" tabindex="0">4</button></li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							aria-controls="navigation24" id="slick-slide24"><button
								type="button" data-role="none" role="button" tabindex="0">5</button></li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							aria-controls="navigation25" id="slick-slide25"><button
								type="button" data-role="none" role="button" tabindex="0">6</button></li>
					</ul>
				</div>
				<script type="text/javascript">
					$('.slide-banner').slick({
						autoplay : true,
						autoplaySpeed : 2000,
						draggable : true,
						slidesToShow : 1,
						slidesToScroll : 1,
						infinite : true,
						dots : true
					});
				</script>
			</article>


			<article class="UserActionArea_UserActionArea__sjZgi">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4
							class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">김태윤님,
							지금 바로 지원해볼까요?</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g">
							<div class="CarouselNavigation_CarouselNavigation__Llibu">
								<button
									class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB"
									aria-label="이전" disabled="" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__o4AtY"><span
										class="SvgIcon_SvgIcon__root__OHiSO"><svg
												class="SvgIcon_SvgIcon__root__svg__ohdSc"
												viewBox="0 0 24 24">
												<path
													d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
													fill="#e1e2e4"></path></svg></span></span>
								</button>
								<button
									class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m"
									aria-label="다음" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__o4AtY"><span
										class="SvgIcon_SvgIcon__root__OHiSO"><svg
												class="SvgIcon_SvgIcon__root__svg__ohdSc"
												viewBox="0 0 24 24">
												<path
													d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
													fill="#70737C"></path></svg></span></span><span
										class="IconButton_IconButton__interaction__7RjPt"></span>
								</button>
							</div>
						</div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="slick-slider responsive">
							<div class="slick-list">
								<div class="slick-track"
									style="width: 3240px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0"
										class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="15531" data-company-name="글로비즈"
														data-position-id="219433"
														data-position-name="Linux 통신 Application 개발자"
														data-response-rate="0" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="0" href="/wd/219433"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F15531%2Fsmlyrzch9rh43moy__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto" alt="Linux 통신 Application 개발자"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="15531" data-company-name="글로비즈"
																data-position-id="219433"
																data-position-name="Linux 통신 Application 개발자"
																data-response-rate="0" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="0" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">Linux
																통신 Application 개발자</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">글로비즈</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="3260" data-company-name="모노리스"
														data-position-id="151961"
														data-position-name="임베디드 어플리케이션 개발자"
														data-response-rate="90.27" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="2" href="/wd/151961"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F3260%2F7jpvju6etisrw6ue__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto" alt="임베디드 어플리케이션 개발자"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="3260" data-company-name="모노리스"
																data-position-id="151961"
																data-position-name="임베디드 어플리케이션 개발자"
																data-response-rate="90.27" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="2" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">임베디드
																어플리케이션 개발자</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">모노리스</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide slick-active"
									
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="22646" data-company-name="비주얼신"
														data-position-id="222391"
														data-position-name="3D엔진(OpenGL) 개발자"
														data-response-rate="100" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="3" href="/wd/222391"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F22646%2Fjhk6iry9ejxrp4uq__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto" alt="3D엔진(OpenGL) 개발자"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="22646" data-company-name="비주얼신"
																data-position-id="222391"
																data-position-name="3D엔진(OpenGL) 개발자"
																data-response-rate="100" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="3" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">3D엔진(OpenGL)
																개발자</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">비주얼신</span>
															<div class="JobCard_JobCard__body__badge__atLen">
																<div>
																	<div
																		class="ResponseLevelLabel_container__CC9na ResponseLevelLabel_veryHigh__r0kfr JobCard_JobCard__body__badge__responseLevel__KLe5W">
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption2__114s_ Typography_Typography__weightBold__KkJEY">응답률
																			매우 높음</span>
																	</div>
																</div>
															</div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="4" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"><div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div></div>
									<div data-index="5" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"><div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div></div>
									<div data-index="6" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"><div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div></div>
									<div data-index="7" class="slick-slide" tabindex="-1"
									
									
										aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="8" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"><div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div></div>
									<div data-index="9" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"><div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div></div>
									<div data-index="10" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"><div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="890" data-company-name="한국신용데이터(KCD)"
														data-position-id="227181"
														data-position-name="[제품실] POS Engineer (Windows Client)"
														data-response-rate="91.97" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-base-action="bookmark" data-domain="actionBased"
														data-position-index="1" href="/wd/227181"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F890%2Fe1cvyooejhfjp3wf__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="auto"
																alt="[제품실] POS Engineer (Windows Client)"
																decoding="sync" loading="eager">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="890" data-company-name="한국신용데이터(KCD)"
																data-position-id="227181"
																data-position-name="[제품실] POS Engineer (Windows Client)"
																data-response-rate="91.97" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-base-action="bookmark" data-domain="actionBased"
																data-position-index="1" data-kind="remove"
																style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path
																				d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																				fill="#3366ff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[제품실]
																POS Engineer (Windows Client)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">한국신용데이터(KCD)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div></div>
									<div data-index="11" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 270px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
				$('.responsive').slick({
					slidesToShow : 4,
					slidesToScroll : 4,
					autoplay : true,
					autoplaySpeed : 1000,

					infinite : true,
					draggable : false,
					prevArrow : "<button type='button' class='slick-prev'>이전</button>",
					nextArrow : "<button type='button' class='slick-next'>다음</button>",
					arrows : true,
					variableWidth : true
				});
				</script>

			</article>

			<article>
				<section class="TagArea_TagArea__cardType__K3ZVy">
					<div class="CarouselContainer_CarouselContainer__jvm3u">
						<aside class="CarouselHeader_CarouselHeader__5VBaX">
							<a href="/wdlist" data-attribute-id="jobs__seeMore"
								data-domain="attractionTag"><h4
									class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">#재택근무</h4></a>
							<div class="CarouselHeader_CarouselHeader__action__nal5g">
								<a href="/wdlist"
									class="CarouselHeader_CarouselHeader__link__2mjNY"
									data-attribute-id="jobs__seeMore" data-domain="attractionTag">포지션으로
									더보기<span
									class="CarouselHeader_CarouselHeader__link__interaction__rETxI"></span>
								</a>
								<div class="CarouselNavigation_CarouselNavigation__Llibu">
									<button
										class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB"
										aria-label="이전" disabled="" style="font-size: 15px;">
										<span class="IconButton_IconButton__label__o4AtY"><span
											class="SvgIcon_SvgIcon__root__OHiSO"><svg
													class="SvgIcon_SvgIcon__root__svg__ohdSc"
													viewBox="0 0 24 24">
													<path
														d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
														fill="#e1e2e4"></path></svg></span></span>
									</button>
									<button
										class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m"
										aria-label="다음" style="font-size: 15px;">
										<span class="IconButton_IconButton__label__o4AtY"><span
											class="SvgIcon_SvgIcon__root__OHiSO"><svg
													class="SvgIcon_SvgIcon__root__svg__ohdSc"
													viewBox="0 0 24 24">
													<path
														d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
														fill="#70737C"></path></svg></span></span><span
											class="IconButton_IconButton__interaction__7RjPt"></span>
									</button>
								</div>
							</div>
						</aside>
						<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
							<div class="slick-slider mutiple-items slick-initialized"
								dir="ltr">
								<div class="slick-list">
									<div class="slick-track"
										style="width: 7200px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
										<div data-index="0"
											class="slick-slide slick-active slick-current" tabindex="-1"
											aria-hidden="false" style="outline: none; width: 360px;">
											<div>
												<div class="Card_TagCard__f0zU3">
													<a href="/company/179" data-attribute-id="company__click"
														data-tag-id="10412" data-tag-name="재택근무"
														data-company-id="179" data-company-name="버킷플레이스(오늘의집)"
														data-company-index="0" data-domain="attractionTag"
														data-base-action="popular"><div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F179%2Ffgaf0txpsk21hoon__1080_790.jpg&amp;w=338&amp;q=100"
																fetchpriority="low" alt="버킷플레이스(오늘의집)"
																class="Card_TagCard__Thumbnail__8I2Qn" decoding="async"
																loading="lazy">
															<div class="Card_TagCard__Thumbnail__Gradient__w6P7x"></div>
															<div
																class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__M_tzb">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__Company__r5cl6">
																	<div
																		class="Card_TagCard__Contents__Company__LogoWrapper__UFbjb">
																		<img
																			src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.2570f631.jpg&amp;w=80&amp;q=100"
																			fetchpriority="auto" alt="버킷플레이스(오늘의집)"
																			class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
																	</div>
																	<div
																		class="Card_TagCard__Contents__Company__Information__qZRcd">
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">버킷플레이스(오늘의집)</span><span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc Card_TagCard__Contents__Company__Button__following__uD_7g"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-company-id="179"
																	data-company-index="0" data-company-name="버킷플레이스(오늘의집)"
																	data-tag-id="10412" data-tag-name="재택근무"
																	data-kind="remove" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Typography_Typography__displayBlock__A3AK8">팔로잉</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div data-index="1" class="slick-slide slick-active"
											tabindex="-1" aria-hidden="false"
											style="outline: none; width: 360px;">
											<div>
												<div class="Card_TagCard__f0zU3">
													<a href="/company/12139" data-attribute-id="company__click"
														data-tag-id="10412" data-tag-name="재택근무"
														data-company-id="12139" data-company-name="해피문데이"
														data-company-index="1" data-domain="attractionTag"
														data-base-action="popular"><div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F12139%2Fnxr2vcutnathg272__1080_790.png&amp;w=338&amp;q=100"
																fetchpriority="low" alt="해피문데이"
																class="Card_TagCard__Thumbnail__8I2Qn" decoding="async"
																loading="lazy">
															<div class="Card_TagCard__Thumbnail__Gradient__w6P7x"></div>
															<div
																class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__M_tzb">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__Company__r5cl6">
																	<div
																		class="Card_TagCard__Contents__Company__LogoWrapper__UFbjb">
																		<img
																			src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.8908312a.png&amp;w=80&amp;q=100"
																			fetchpriority="auto" alt="해피문데이"
																			class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
																	</div>
																	<div
																		class="Card_TagCard__Contents__Company__Information__qZRcd">
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">해피문데이</span><span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc Card_TagCard__Contents__Company__Button__following__uD_7g"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-company-id="12139"
																	data-company-index="1" data-company-name="해피문데이"
																	data-tag-id="10412" data-tag-name="재택근무"
																	data-kind="remove" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Typography_Typography__displayBlock__A3AK8">팔로잉</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div data-index="2" class="slick-slide slick-active"
											tabindex="-1" aria-hidden="false"
											style="outline: none; width: 360px;">
											<div>
												<div class="Card_TagCard__f0zU3">
													<a href="/company/4941" data-attribute-id="company__click"
														data-tag-id="10412" data-tag-name="재택근무"
														data-company-id="4941" data-company-name="몰로코"
														data-company-index="2" data-domain="attractionTag"
														data-base-action="popular"><div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F4941%2Frdihcgfp51iuci7s__1080_790.jpg&amp;w=338&amp;q=100"
																fetchpriority="low" alt="몰로코"
																class="Card_TagCard__Thumbnail__8I2Qn" decoding="async"
																loading="lazy">
															<div class="Card_TagCard__Thumbnail__Gradient__w6P7x"></div>
															<div
																class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__M_tzb">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__Company__r5cl6">
																	<div
																		class="Card_TagCard__Contents__Company__LogoWrapper__UFbjb">
																		<img
																			src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.d3828878.png&amp;w=80&amp;q=100"
																			fetchpriority="auto" alt="몰로코"
																			class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
																	</div>
																	<div
																		class="Card_TagCard__Contents__Company__Information__qZRcd">
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">몰로코</span><span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-company-id="4941"
																	data-company-index="2" data-company-name="몰로코"
																	data-tag-id="10412" data-tag-name="재택근무"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div data-index="3" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="4" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="5" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="6" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="7" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="8" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="9" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="10" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="11" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="12" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="13" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="14" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="15" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="16" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="17" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="18" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="19" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 360px;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						$('.mutiple-items').slick({
							autoplay : true,

						});
					</script>
				</section>
				<section class="TagArea_TagArea__listType__aDS6g">
					<div class="CarouselContainer_CarouselContainer__jvm3u">
						<aside
							class="CarouselHeader_CarouselHeader__5VBaX CarouselHeader_CarouselHeader__isTagList__mdBDx">
							<a href="/wdlist" data-attribute-id="jobs__seeMore"
								data-domain="attractionTag"><h4
									class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">#1,001~10,000명</h4></a>
							<div class="CarouselHeader_CarouselHeader__action__nal5g">
								<a href="/wdlist"
									class="CarouselHeader_CarouselHeader__link__2mjNY"
									data-attribute-id="jobs__seeMore" data-domain="attractionTag">포지션으로
									더보기<span
									class="CarouselHeader_CarouselHeader__link__interaction__rETxI"></span>
								</a>
							</div>
						</aside>
						<div
							class="CarouselContainer_CarouselContainer__slider__dWB5h CarouselContainer_CarouselContainer__slider__isTagList__b8_2h">
							<div class="slick-slider slick-initialized" dir="ltr">
								<div class="slick-list">
									<div class="slick-track"
										style="width: 1820px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
										<div data-index="0"
											class="slick-slide slick-active slick-current" tabindex="-1"
											aria-hidden="false" style="outline: none; width: 364px;">
											<div>
												<ul class="List_TagList__yoeks">
													<li class="ListCard_List__RGzzX"><a
														href="/company/35972" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="35972" data-company-name="투썸플레이스"
														data-company-index="0" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.1b73ee1e.png&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="투썸플레이스"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">투썸플레이스</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">숙박,
																			음식점</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="35972"
																	data-company-index="0" data-company-name="투썸플레이스"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/23220" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="23220" data-company-name="매일유업"
														data-company-index="1" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.f430326b.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="매일유업"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">매일유업</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">제조</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="23220"
																	data-company-index="1" data-company-name="매일유업"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/426" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="426" data-company-name="컬리"
														data-company-index="2" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.e2c011d3.png&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="컬리"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">컬리</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">판매,
																			유통</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="426"
																	data-company-index="2" data-company-name="컬리"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/35"
														data-attribute-id="company__click" data-tag-id="10405"
														data-tag-name="1,001~10,000명" data-company-id="35"
														data-company-name="위대한상상(요기요)" data-company-index="3"
														data-domain="attractionTag" data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.e39b35d6.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="위대한상상(요기요)"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">위대한상상(요기요)</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="35"
																	data-company-index="3" data-company-name="위대한상상(요기요)"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
												</ul>
											</div>
										</div>
										<div data-index="1" class="slick-slide slick-active"
											tabindex="-1" aria-hidden="false"
											style="outline: none; width: 364px;">
											<div>
												<ul class="List_TagList__yoeks">
													<li class="ListCard_List__RGzzX"><a
														href="/company/20963" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="20963" data-company-name="알라딘커뮤니케이션"
														data-company-index="4" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.89028340.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="알라딘커뮤니케이션"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">알라딘커뮤니케이션</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="20963"
																	data-company-index="4" data-company-name="알라딘커뮤니케이션"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/5857" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="5857" data-company-name="아이아이컴바인드"
														data-company-index="5" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.6b70de4d.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="아이아이컴바인드"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">아이아이컴바인드</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">제조</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="5857"
																	data-company-index="5" data-company-name="아이아이컴바인드"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/4667" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="4667"
														data-company-name="씨제이올리브네트웍스(CJ올리브네트웍스)"
														data-company-index="6" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.eeda0d5f.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="씨제이올리브네트웍스(CJ올리브네트웍스)"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">씨제이올리브네트웍스(CJ올리브네트웍스)</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="4667"
																	data-company-index="6"
																	data-company-name="씨제이올리브네트웍스(CJ올리브네트웍스)"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/521" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="521" data-company-name="크래프톤(Krafton)"
														data-company-index="7" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.30208ed5.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="크래프톤(Krafton)"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">크래프톤(Krafton)</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="521"
																	data-company-index="7"
																	data-company-name="크래프톤(Krafton)" data-kind="add"
																	data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
												</ul>
											</div>
										</div>
										<div data-index="2" class="slick-slide slick-active"
											tabindex="-1" aria-hidden="false"
											style="outline: none; width: 364px;">
											<div>
												<ul class="List_TagList__yoeks">
													<li class="ListCard_List__RGzzX"><a
														href="/company/29505" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="29505" data-company-name="한국필립모리스"
														data-company-index="8" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.c9cb799b.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="한국필립모리스"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">한국필립모리스</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">제조</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="29505"
																	data-company-index="8" data-company-name="한국필립모리스"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/7810" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="7810" data-company-name="한화생명보험"
														data-company-index="9" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.bc62e98e.png&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="한화생명보험"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">한화생명보험</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">금융</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="7810"
																	data-company-index="9" data-company-name="한화생명보험"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/27759" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="27759" data-company-name="코웨이"
														data-company-index="10" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.66e4ad49.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="코웨이"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">코웨이</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">제조</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="27759"
																	data-company-index="10" data-company-name="코웨이"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a
														href="/company/21933" data-attribute-id="company__click"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
														data-company-id="21933" data-company-name="현대캐피탈"
														data-company-index="11" data-domain="attractionTag"
														data-base-action="popular"><div
																class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div
																	class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.c938bd4c.jpg&amp;w=110&amp;q=100"
																		fetchpriority="low" alt="현대캐피탈"
																		class="ListCard_ListCard__Contents__Image__ZnXfj"
																		decoding="async" loading="lazy">
																	<div
																		class="ListCard_ListCard__Contents__Information__nzox0">
																		<p
																			class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">현대캐피탈</p>
																		<span
																			class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">금융</span>
																	</div>
																</div>
																<button
																	class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
																	data-attribute-id="company__follow__click"
																	data-domain="attractionTag" data-tag-id="10405"
																	data-tag-name="1,001~10,000명" data-company-id="21933"
																	data-company-index="11" data-company-name="현대캐피탈"
																	data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span
																		class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span
																		class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
												</ul>
											</div>
										</div>
										<div data-index="3" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 364px;"></div>
										<div data-index="4" class="slick-slide" tabindex="-1"
											aria-hidden="true" style="outline: none; width: 364px;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</article>
			<article class="ThemeArea_ThemeArea__a7D3I">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4
							class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">테마로
							모아보기</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g">
							<div class="CarouselNavigation_CarouselNavigation__Llibu">
								<button
									class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB"
									aria-label="이전" disabled="" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__o4AtY"><span
										class="SvgIcon_SvgIcon__root__OHiSO"><svg
												class="SvgIcon_SvgIcon__root__svg__ohdSc"
												viewBox="0 0 24 24">
												<path
													d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
													fill="#e1e2e4"></path></svg></span></span>
								</button>
								<button
									class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m"
									aria-label="다음" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__o4AtY"><span
										class="SvgIcon_SvgIcon__root__OHiSO"><svg
												class="SvgIcon_SvgIcon__root__svg__ohdSc"
												viewBox="0 0 24 24">
												<path
													d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"
													fill="#70737C"></path></svg></span></span><span
										class="IconButton_IconButton__interaction__7RjPt"></span>
								</button>
							</div>
						</div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="slick-slider slick-initialized" dir="ltr">
							<div class="slick-list">
								<div class="slick-track"
									style="width: 4320px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0"
										class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width: 360px;">
										<div>
											<div role="img" aria-label="테마로 모아보기"
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_"
													data-attribute-id="jobs__theme__click"
													data-theme-title="신입 포지션 모음 원한다면"
													data-landing-uri="/themes/newcomer">
													<a class="ThemeCard_ThemeCard__Link__rxJqR"
														href="/themes/newcomer"><div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F287_49bf0c6b.jpg&amp;w=520&amp;q=100"
																fetchpriority="auto" alt="신입 포지션 모음 원한다면">
															<h6
																class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">신입
																포지션 모음 원한다면</h6>
														</div>
														<div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
															<div
																class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d1238d64.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 5;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c7b4f0a6.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="에임(AIM)"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 6;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.8fbbbed4.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="엘리스"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 7;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.56cbd0b4.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="엔핏"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 8;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.9a528984.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="이디엠에듀케이션"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 9;">
															</div>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+176</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 360px;">
										<div>
											<div role="img" aria-label="테마로 모아보기"
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_"
													data-attribute-id="jobs__theme__click"
													data-theme-title="구성원의 가족까지 생각하는 기업"
													data-landing-uri="/themes/jaranda_2024">
													<a class="ThemeCard_ThemeCard__Link__rxJqR"
														href="/themes/jaranda_2024"><div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F477_be9c8da0.jpg&amp;w=520&amp;q=100"
																fetchpriority="auto" alt="구성원의 가족까지 생각하는 기업">
															<h6
																class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">구성원의
																가족까지 생각하는 기업</h6>
														</div>
														<div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
															<div
																class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.1155e8df.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 5;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d18636d6.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="미리디아이에이치"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 6;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.98199e95.png&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 7;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.8330a534.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 8;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.b2156762.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 9;">
															</div>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+17</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 360px;">
										<div>
											<div role="img" aria-label="테마로 모아보기"
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_"
													data-attribute-id="jobs__theme__click"
													data-theme-title="이번 달 모집 마감 포지션"
													data-landing-uri="/themes/closesoon">
													<a class="ThemeCard_ThemeCard__Link__rxJqR"
														href="/themes/closesoon"><div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F301_03304e0e.jpg&amp;w=520&amp;q=100"
																fetchpriority="auto" alt="이번 달 모집 마감 포지션">
															<h6
																class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">이번
																달 모집 마감 포지션</h6>
														</div>
														<div
															class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
															<div
																class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c9711d08.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 5;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.309f13fb.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="제일펑타이(PENGTAI)"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 6;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.5849d88e.png&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 7;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.946e96ac.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt="리디(RIDI)"
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 8;"><img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.af4b3085.jpg&amp;w=64&amp;q=100"
																	fetchpriority="auto" alt=""
																	class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
																	style="z-index: 9;">
															</div>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+31</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="4" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="5" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="6" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="7" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="8" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="9" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="10" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="11" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 360px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
			<article class="FeaturedJobArea_FeaturedJobArea__6vOHf">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4
							class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">요즘
							뜨는 포지션</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g"></div>
					</aside>
					<div
						class="CarouselContainer_CarouselContainer__slider__dWB5h CarouselContainer_CarouselContainer__slider__isEnd__rUQoI">
						<div class="slick-slider slick-initialized">
							<div class="slick-list">
								<div class="slick-track"
									style="width: 1080px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0"
										class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="7148" data-company-name="모라이(MORAI)"
														data-position-id="225191"
														data-position-name="[전문연구요원 가능] Simulation Software Engineer"
														data-response-rate="92" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-domain="popular" data-position-index="0"
														href="/wd/225191"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F7148%2Fmg31wmprzboz6wgc__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="low"
																alt="[전문연구요원 가능] Simulation Software Engineer"
																decoding="async" loading="lazy">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="7148" data-company-name="모라이(MORAI)"
																data-position-id="225191"
																data-position-name="[전문연구요원 가능] Simulation Software Engineer"
																data-response-rate="92" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-domain="popular" data-position-index="0"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[전문연구요원
																가능] Simulation Software Engineer</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">모라이(MORAI)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="3809" data-company-name="씨드로닉스"
														data-position-id="35039"
														data-position-name="Computer Vision Engineer"
														data-response-rate="90" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-domain="popular" data-position-index="1"
														href="/wd/35039"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F3809%2Fe9gp9xctbz63j6zs__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="low" alt="Computer Vision Engineer"
																decoding="async" loading="lazy">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="3809" data-company-name="씨드로닉스"
																data-position-id="35039"
																data-position-name="Computer Vision Engineer"
																data-response-rate="90" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-domain="popular" data-position-index="1"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">Computer
																Vision Engineer</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">씨드로닉스</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="12274" data-company-name="뉴아인"
														data-position-id="159744"
														data-position-name="의료기기 펌웨어 (F/W) 개발 (3년 이상 및 병역특례)"
														data-response-rate="66" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-domain="popular" data-position-index="2"
														href="/wd/159744"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F12274%2Fglldyz1m6d6ps3dd__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="low"
																alt="의료기기 펌웨어 (F/W) 개발 (3년 이상 및 병역특례)" decoding="async"
																loading="lazy">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="12274" data-company-name="뉴아인"
																data-position-id="159744"
																data-position-name="의료기기 펌웨어 (F/W) 개발 (3년 이상 및 병역특례)"
																data-response-rate="66" data-ai-score=""
																data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-domain="popular" data-position-index="2"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">의료기기
																펌웨어 (F/W) 개발 (3년 이상 및 병역특례)</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">뉴아인</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 270px;">
										<div>
											<div
												class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
												tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click"
														data-job-category-id="518" data-job-category="IT"
														data-company-id="34190" data-company-name="유모델러"
														data-position-id="221267" data-position-name="유니티 엔진 개발자"
														data-response-rate="4" data-ai-score=""
														data-ai-score-status=""
														data-recommend-model-status="notBase"
														data-domain="popular" data-position-index="3"
														href="/wd/221267"><div
															class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F34190%2F6i7qrbhia0ifprlm__400_400.jpg&amp;w=400&amp;q=75"
																fetchpriority="low" alt="유니티 엔진 개발자" decoding="async"
																loading="lazy">
															<button
																class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
																aria-label="bookmark button"
																data-attribute-id="position__bookmark__click"
																data-job-category-id="518" data-job-category="IT"
																data-company-id="34190" data-company-name="유모델러"
																data-position-id="221267"
																data-position-name="유니티 엔진 개발자" data-response-rate="4"
																data-ai-score="" data-ai-score-status=""
																data-recommend-model-status="notBase"
																data-domain="popular" data-position-index="3"
																data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span
																	class="SvgIcon_SvgIcon__root__OHiSO"><svg
																			class="SvgIcon_SvgIcon__root__svg__ohdSc"
																			viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd"
																				d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z"
																				fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p
																class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">유니티
																엔진 개발자</p>
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">유모델러</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<footer class="Footer_footerClass__1m1n1">
			<div class="Footer_rowClass__hVFpN">
				<div class="BrandNewNavLinks_BrandNewNavLinks___ndTt">
					<a class="BrandNewNavLinks_BrandNewNavLinks__logo__PVLJM"
						aria-label="Footer Home Button" data-attribute-id="fnb"
						data-fnb-kind="home" data-page-path="/" href="/"><svg
							width="112" height="32" viewBox="0 0 4744 1356">
							<mask id="WantedLogoSymbolMask_:r1:" maskUnits="userSpaceOnUse"
								x="38" y="278" width="1272" height="869"
								style="mask-type: alpha;">
							<path
								d="M480 1147C515 1147 546 1119 546 1075V735H451V994C451 1002 444 1004 439 999L185 748C179 741 182 735 191 735H819V640H111C66 640 38 671 38 707C38 724 45 742 62 759L427 1124C443 1141 462 1147 480 1147ZM1064 1131C1199 1131 1310 1020 1310 885C1310 750 1199 640 1064 640H914V735H1064C1145 735 1215 801 1215 885C1215 969 1146 1036 1064 1036C982 1036 914 967 914 885V360C914 313 878 278 832 278H534C486 278 451 314 451 361V640H546V384C546 378 550 373 556 373H808C814 373 819 378 819 384V885C819 1020 929 1131 1064 1131Z"
								fill="#D9D9D9"></path></mask>
							<g mask="url(#WantedLogoSymbolMask_:r1:)">
							<rect x="117" y="630" width="330" height="116" fill="#216BFF"></rect>
							<path
								d="M556 1075C556 1098.26 547.94 1119.37 533.3 1134.46C519.2 1148.99 500.27 1157 480 1157C456.71 1157 435.91 1148 419.82 1130.96L54.9301 766.07C37.3101 748.45 28.0001 728.03 28.0001 707C28.0001 685.97 36.0501 667 50.6601 652.82C65.8301 638.1 87.2601 630 111 630H196.19V745L441 986.92H556V1075Z"
								fill="url(#WantedLogoGradient0Linear_:r1:)"></path>
							<path
								d="M441 996.5V361C441 307.98 480.98 268 534 268H556.18L556 1006.92L441 996.5Z"
								fill="url(#WantedLogoGradient1Linear_:r1:)"></path>
							<mask id="mask1_:r1:" maskUnits="userSpaceOnUse" x="441" y="268"
								width="110" height="110" style="mask-type: alpha;">
							<path d="M441 378H551V268H534C480.98 268 441 307.98 441 361V378Z"></path></mask>
							<g mask="url(#mask1_:r1:)">
							<rect x="441" y="268" width="220" height="220"
								fill="url(#WantedLogoGradientFallback1_:r1:)"></rect>
							<foreignObject x="441" y="268" width="220" height="220"
								style="background: conic-gradient(rgb(42, 184, 255) 0deg, rgb(32, 186, 255) 180deg, rgb(32, 186, 255) 270deg, rgb(42, 184, 255) 360deg);"></foreignObject></g>
							<mask id="mask2_:r1:" maskUnits="userSpaceOnUse" x="28" y="630"
								width="158" height="189" style="mask-type: alpha;">
							<path
								d="M185.52 739.98L107.18 818.32L54.93 766.07C37.31 748.45 28 728.03 28 707C28 685.97 36.05 667 50.66 652.82C65.83 638.1 87.26 630 111 630H185.52V739.98Z"></path></mask>
							<g mask="url(#mask2_:r1:)">
							<rect x="28" y="582.5" width="315" height="315"
								fill="url(#WantedLogoGradientFallback2_:r1:)"></rect>
							<foreignObject x="28" y="582.5" width="315" height="315"
								style="background: conic-gradient(rgb(113, 126, 255) 0deg, rgb(78, 118, 255) 90deg, rgb(19, 104, 255) 180deg, rgb(26, 106, 255) 225deg, rgb(49, 111, 255) 270deg, rgb(80, 118, 255) 315deg, rgb(113, 126, 255) 360deg);"></foreignObject></g>
							<mask id="mask3_:r1:" maskUnits="userSpaceOnUse" x="367" y="999"
								width="190" height="158" style="mask-type: alpha;">
							<path
								d="M445.5 1000V999.86L556 1033.48V1074.99C556 1098.25 547.94 1119.36 533.3 1134.45C519.2 1148.98 500.27 1156.99 480 1156.99C456.71 1156.99 435.91 1147.99 419.82 1130.95L367.18 1078.32L445.5 1000Z"></path></mask>
							<g mask="url(#mask3_:r1:)">
							<rect x="288.5" y="843" width="314" height="314"
								fill="url(#WantedLogoGradientFallback3_:r1:)"></rect>
							<foreignObject x="288.5" y="843" width="314" height="314"
								style="background: conic-gradient(rgb(0, 145, 255) 0deg, rgb(0, 150, 255) 90deg, rgb(0, 137, 255) 135deg, rgb(0, 126, 255) 180deg, rgb(0, 117, 255) 225deg, rgb(0, 110, 255) 270deg, rgb(0, 145, 255) 360deg);"></foreignObject></g>
							<path d="M441 998.5L556 1033.5V950.34H441V998.5Z"
								fill="url(#WantedLogoGradient5Linear_:r1:)"></path>
							<path d="M556 1058.5L441 998.5L441 961L556 1001L556 1058.5Z"
								fill="url(#WantedLogoGradient6Linear_:r1:)"></path>
							<path d="M556 725H441V830.5H556V725Z"
								fill="url(#WantedLogoGradient7Linear_:r1:)"></path>
							<mask id="mask4_:r1:" maskUnits="userSpaceOnUse" x="809" y="630"
								width="511" height="511" style="mask-type: alpha;">
							<path
								d="M965.35 984.2C938.692 957.292 924.003 922.066 924 885V871H809V885C809 953.02 835.55 1017.18 883.78 1065.68C932.09 1114.25 996.03 1141 1064 1141C1131.97 1141 1196.14 1114.26 1244.7 1065.7C1293.26 1017.14 1320 952.92 1320 885C1320 817.08 1293.25 753.08 1244.68 704.78C1196.18 656.56 1132.01 630 1064 630H900V744.99H1064C1100.95 744.99 1136.07 759.43 1162.89 785.64C1190.04 812.19 1205 847.47 1205 884.99C1205 961.42 1140.43 1025.99 1064 1025.99C1027.09 1025.99 992.05 1011.15 965.35 984.2Z"></path></mask>
							<g mask="url(#mask4_:r1:)">
							<rect x="809" y="630" width="511" height="511"
								fill="url(#WantedLogoGradientFallback4_:r1:)"></rect>
							<foreignObject x="809" y="630" width="511" height="511"
								style="background: conic-gradient(rgb(255, 90, 0) 0deg, rgb(255, 94, 15) 90deg, rgb(255, 114, 89) 180deg, rgb(255, 142, 189) 270deg, rgb(255, 159, 254) 315deg, rgb(255, 90, 0) 360deg);"></foreignObject></g>
							<rect x="809" y="739" width="115" height="132" fill="#FF8EBD"></rect>
							<mask id="mask5_:r1:" maskUnits="userSpaceOnUse" x="28" y="630"
								width="1292" height="512" style="mask-type: alpha;">
							<path
								d="M924 884.99C924 922.06 938.69 957.29 965.35 984.2C992.05 1011.15 1027.09 1025.99 1064 1025.99C1140.43 1025.99 1205 961.42 1205 884.99C1205 847.47 1190.04 812.19 1162.89 785.64C1136.07 759.43 1100.95 744.99 1064 744.99H556V734.99H441V744.99H196.19L204.82 753.52L28.05 704.22C28.73 684.53 36.7 666.36 50.66 652.82C65.83 638.1 87.26 630 111 630H441V640H556V630H1064C1132.01 630 1196.18 656.56 1244.68 704.78C1293.25 753.08 1320 817.08 1320 885C1320 952.92 1293.26 1017.14 1244.7 1065.7C1196.14 1114.26 1131.97 1141 1064 1141C996.03 1141 932.09 1114.25 883.78 1065.68C835.55 1017.18 809 953.02 809 885H924V884.99Z"></path></mask>
							<g mask="url(#mask5_:r1:)">
							<path d="M1064 630H176.19L186 745H1064V630Z"
								fill="url(#WantedLogoGradient9Linear_:r1:)"></path></g>
							<path d="M1011.5 745V630H904V745H1011.5Z"
								fill="url(#WantedLogoGradient10Linear_:r1:)"></path>
							<mask id="mask6_:r1:" maskUnits="userSpaceOnUse" x="550" y="268"
								width="374" height="617" style="mask-type: alpha;">
							<path
								d="M809 885V745H819V630H809V384C809 383.52 808.48 383 808 383H550V268H832C857.02 268 880.2 277.33 897.29 294.27C914.51 311.35 924 334.69 924 360V630H914V745H924V885H809Z"></path></mask>
							<g mask="url(#mask6_:r1:)">
							<path
								d="M809 268V885H924V360C924 334.69 914.51 311.35 897.29 294.27C880.2 277.33 857.01 268 832 268H809Z"
								fill="url(#WantedLogoGradient11Linear_:r1:)"></path></g>
							<path d="M815 268H550V384H815V268Z"
								fill="url(#WantedLogoGradient12Linear_:r1:)"></path>
							<mask id="mask7_:r1:" maskUnits="userSpaceOnUse" x="812" y="268"
								width="112" height="111" style="mask-type: alpha;">
							<path
								d="M832 268H812.5V378.5H924V360C924 334.69 914.51 311.35 897.29 294.27C880.2 277.33 857.01 268 832 268Z"
								fill="url(#WantedLogoGradient13Linear_:r1:)"></path></mask>
							<g mask="url(#mask7_:r1:)">
							<rect x="691" y="257" width="243" height="243"
								fill="url(#WantedLogoGradientFallback5_:r1:)"></rect>
							<foreignObject x="691" y="257" width="243" height="243"
								style="background: conic-gradient(rgb(109, 177, 255) 0deg, rgb(123, 176, 255) 45deg, rgb(143, 173, 255) 90deg, rgb(180, 168, 255) 180deg, rgb(109, 177, 255) 360deg);"></foreignObject></g></g>
							<path
								d="M4424 1008C4487 1008 4540 981 4569 939V998H4673V278H4569V552C4540 513 4486 488 4423 488C4278 488 4167 605 4167 748C4167 891 4279 1008 4424 1008ZM4424 908C4339 908 4269 835 4269 748C4269 661 4339 588 4424 588C4509 588 4579 661 4579 748C4579 835 4509 908 4424 908ZM3729 706C3733 642 3796 581 3874 581C3952 581 4011 642 4015 706H3729ZM3883 1008C3984 1008 4072 950 4108 870L4025 842C4001 885 3945 915 3884 915C3796 915 3733 861 3729 788H4114C4134 620 4033 488 3883 488C3733 488 3627 595 3627 748C3627 901 3732 1008 3883 1008ZM3510 1007C3541 1007 3572 1000 3592 989V898C3568 910 3547 915 3533 915C3493 915 3473 891 3473 842V580H3592V498H3473V398H3369V498H3289V580H3369V846C3369 947 3421 1007 3510 1007ZM2797 998H2901V714C2901 627 2950 578 3021 578C3092 578 3140 627 3140 714V998H3244V708C3244 567 3179 488 3053 488C2986 488 2926 515 2901 562V498H2797V998ZM2458 908C2373 908 2303 835 2303 748C2303 661 2373 588 2458 588C2543 588 2613 661 2613 748C2613 835 2543 908 2458 908ZM2458 1008C2521 1008 2574 981 2603 939V998H2707V498H2603V552C2574 513 2520 488 2457 488C2312 488 2201 605 2201 748C2201 891 2313 1008 2458 1008ZM1636 998H1735L1828 718L1921 998H2020L2196 498H2087L1972 850L1867 498H1789L1684 850L1569 498H1460L1636 998Z"></path>
							<defs>
							<linearGradient id="WantedLogoGradient0Linear_:r1:" x1="27.7716"
								y1="630.227" x2="555.522" y2="1157.48"
								gradientUnits="userSpaceOnUse">
							<stop stop-color="#4C75FF"></stop>
							<stop offset="0.310893" stop-color="#0B66FF"></stop>
							<stop offset="0.41658" stop-color="#0064FF"></stop>
							<stop offset="0.522267" stop-color="#0067FF"></stop>
							<stop offset="0.733645" stop-color="#0074FF"></stop>
							<stop offset="1" stop-color="#0084FF"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient1Linear_:r1:" x1="498.59"
								y1="268" x2="498.59" y2="1006.92" gradientUnits="userSpaceOnUse">
							<stop offset="0.0130872" stop-color="#25B9FF"></stop>
							<stop offset="0.632316" stop-color="#07BEFF"></stop>
							<stop offset="0.745954" stop-color="#00BEFF"></stop>
							<stop offset="1" stop-color="#0092FF"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient5Linear_:r1:" x1="498.5"
								y1="950.34" x2="498.5" y2="1033.49"
								gradientUnits="userSpaceOnUse">
							<stop stop-color="#009FFF"></stop>
							<stop offset="0.578979" stop-color="#0094FF"></stop>
							<stop offset="1" stop-color="#0092FF"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient6Linear_:r1:" x1="510.338"
								y1="982.668" x2="496.815" y2="1025.94"
								gradientUnits="userSpaceOnUse">
							<stop stop-color="#0098FF" stop-opacity="0"></stop>
							<stop offset="0.249864" stop-color="#0096FF"></stop>
							<stop offset="0.499891" stop-color="#0093FF"></stop>
							<stop offset="0.749808" stop-color="#0091FF" stop-opacity="0.65"></stop>
							<stop offset="1" stop-color="#0090FF" stop-opacity="0"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient7Linear_:r1:" x1="498.5"
								y1="735.78" x2="498.5" y2="825.5" gradientUnits="userSpaceOnUse">
							<stop stop-color="#0087FF"></stop>
							<stop offset="1" stop-color="#67B8FF" stop-opacity="0"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient9Linear_:r1:" x1="176"
								y1="688" x2="1064" y2="688" gradientUnits="userSpaceOnUse">
							<stop stop-color="#697DFF"></stop>
							<stop offset="0.0251928" stop-color="#757FFF"></stop>
							<stop offset="0.238039" stop-color="#CF94FF"></stop>
							<stop offset="0.291258" stop-color="#ED9BFF"></stop>
							<stop offset="0.344471" stop-color="#FE9FFF"></stop>
							<stop offset="0.46271" stop-color="#FF99E6"></stop>
							<stop offset="0.580945" stop-color="#FF859C"></stop>
							<stop offset="0.628242" stop-color="#FF786E"></stop>
							<stop offset="0.722828" stop-color="#FF5A00"></stop>
							<stop offset="0.830944" stop-color="#FF5A00"></stop>
							<stop offset="0.999838" stop-color="#FF5A00"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient10Linear_:r1:" x1="914.8"
								y1="687.5" x2="1006.4" y2="687.5" gradientUnits="userSpaceOnUse">
							<stop stop-color="#FF2900"></stop>
							<stop offset="1" stop-color="#FF5534" stop-opacity="0"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient11Linear_:r1:" x1="866.5"
								y1="268" x2="866.5" y2="885" gradientUnits="userSpaceOnUse">
							<stop offset="0.0170303" stop-color="#76B0FF"></stop>
							<stop offset="0.2715" stop-color="#9DACFF"></stop>
							<stop offset="0.636231" stop-color="#F3A1FF"></stop>
							<stop offset="0.727132" stop-color="#FF9EFD"></stop>
							<stop offset="0.818033" stop-color="#FF97E8"></stop>
							<stop offset="0.999848" stop-color="#FF8EBD"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient12Linear_:r1:" x1="550"
								y1="326" x2="812.5" y2="326" gradientUnits="userSpaceOnUse">
							<stop stop-color="#29B8FF"></stop>
							<stop offset="1" stop-color="#6DB1FF"></stop></linearGradient>
							<linearGradient id="WantedLogoGradient13Linear_:r1:" x1="869.5"
								y1="257" x2="869.5" y2="874" gradientUnits="userSpaceOnUse">
							<stop offset="0.0170303" stop-color="#76B0FF"></stop>
							<stop offset="0.2715" stop-color="#9DACFF"></stop>
							<stop offset="0.636231" stop-color="#F3A1FF"></stop>
							<stop offset="0.727132" stop-color="#FF9EFD"></stop>
							<stop offset="0.818033" stop-color="#FF97E8"></stop>
							<stop offset="0.999848" stop-color="#FF8EBD"></stop></linearGradient>
							<radialGradient id="WantedLogoGradientFallback1_:r1:" fx="0%"
								fy="50%" cx="0%" cy="50%" r="50%">
							<stop offset="0%" stop-color="#20BAFF"></stop>
							<stop offset="100%" stop-color="#2AB8FF"></stop></radialGradient>
							<radialGradient id="WantedLogoGradientFallback2_:r1:" fx="40%"
								fy="60%" cx="30%" cy="80%" r="50%">
							<stop offset="0%" stop-color="#1A6AFF"></stop>
							<stop offset="100%" stop-color="#717EFF"></stop></radialGradient>
							<radialGradient id="WantedLogoGradientFallback3_:r1:" fx="40%"
								fy="65%" cx="30%" cy="70%" r="50%">
							<stop offset="0%" stop-color="#0075FF"></stop>
							<stop offset="100%" stop-color="#0096FF"></stop></radialGradient>
							<radialGradient id="WantedLogoGradientFallback4_:r1:" fx="50%"
								fy="0%" cx="100%" cy="5%" r="95%">
							<stop offset="0%" stop-color="#FF5A00"></stop>
							<stop offset="100%" stop-color="#FF8EBD"></stop></radialGradient>
							<radialGradient id="WantedLogoGradientFallback5_:r1:" fx="25%"
								fy="55%" cx="25%" cy="0%" r="55%">
							<stop offset="0%" stop-color="#6DB1FF"></stop>
							<stop offset="100%" stop-color="#8FADFF"></stop></radialGradient></defs></svg></a>
					<div class="BrandNewNavLinks_BrandNewNavLinks__links__V6A0u">
						<a href="https://www.wantedlab.com/" class="" target="_blank"
							rel="noopener noreferrer" data-attribute-id="fnb"
							data-fnb-kind="investment"><p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1-reading__3pEGb Typography_Typography__weightMedium__GXnOM">기업소개</p></a><a
							href="https://ad.wantedlab.com/" class="" target="_blank"
							rel="noopener noreferrer" data-attribute-id="fnb"
							data-fnb-kind="AD"><p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1-reading__3pEGb Typography_Typography__weightMedium__GXnOM">광고문의</p></a><a
							href="https://help.wanted.co.kr/hc/ko/" class="" target="_blank"
							rel="noopener noreferrer" data-attribute-id="fnb"
							data-fnb-kind="FAQ"><p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1-reading__3pEGb Typography_Typography__weightMedium__GXnOM">고객센터</p></a><a
							href="https://www.wanted.co.kr/terms" class="" target="_blank"
							rel="noopener noreferrer" data-attribute-id="fnb"
							data-fnb-kind="termsOfUse"><p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1-reading__3pEGb Typography_Typography__weightMedium__GXnOM">이용약관</p></a><a
							href="https://blog.wantedlab.com/" class="" target="_blank"
							rel="noopener noreferrer" data-attribute-id="fnb"
							data-fnb-kind="blog"><p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1-reading__3pEGb Typography_Typography__weightMedium__GXnOM">블로그</p></a><a
							href="https://www.wanted.co.kr/privacy"
							class="BrandNewNavLinks_BrandNewNavLinks__links__privacyPolicy__gn4pT"
							target="_blank" rel="noopener noreferrer" data-attribute-id="fnb"
							data-fnb-kind="privacyPolicy"><p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1-reading__3pEGb Typography_Typography__weightBold__KkJEY">개인정보
								처리방침</p></a>
					</div>
				</div>
				<div class="Footer_footerText__WK_1o kr">
					<p>
						<span>(주)원티드랩</span><span>대표이사 이복기</span>
					</p>
					<p>
						<span>서울특별시 송파구 올림픽로 300, 롯데월드타워 35층</span><span>전화번호:
							02-539-7118</span>
					</p>
					<p>
						<span>사업자등록번호: 299-86-00021</span><span>통신판매번호:
							2020-서울송파-3147</span><span>유료직업소개사업등록번호: (국내)
							제2020-3230259-14-5-00018호</span>
					</p>
				</div>
				<div class="AskLinks_AskLinks__ZBwcR">
					<a href="https://help.wanted.co.kr/hc/ko/requests/new"
						class="AskLinks_AskLinks__link__ujSVA" target="_blank"
						rel="noopener noreferrer"><span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY">채용서비스
							문의</span></a><a href="https://wantedspace.channel.io/"
						class="AskLinks_AskLinks__link__ujSVA" target="_blank"
						rel="noopener noreferrer"><span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY">원티드스페이스
							문의</span></a><a href="https://help.wantedgigs.co.kr/hc/ko/requests/new"
						class="AskLinks_AskLinks__link__ujSVA" target="_blank"
						rel="noopener noreferrer"><span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY">원티드긱스
							문의</span></a><a href="https://forms.gle/3Sfpu7dj6woGQgp18"
						class="AskLinks_AskLinks__link__ujSVA" target="_blank"
						rel="noopener noreferrer"><span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY">프리온보딩
							문의</span></a><a href="https://forms.gle/NspB1EZnQUFc4twHA"
						class="AskLinks_AskLinks__link__ujSVA" target="_blank"
						rel="noopener noreferrer"><span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY">취업지원시스템
							문의</span></a><a
						href="https://docs.google.com/forms/d/e/1FAIpQLScBkfgjjIRLM5SnnKVAZwjJ1ZC2a24rtiQ_H80zNMXmpySdww/viewform?usp=send_form"
						class="AskLinks_AskLinks__link__ujSVA" target="_blank"
						rel="noopener noreferrer"><span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY">IR
							문의</span></a>
				</div>
				<hr class="Footer_Divider__fijsw">
				<div class="Footer_socialClass__LNZhe">
					<span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM">©
						2024 Wanted Lab, Inc.</span>
					<div class="SocialLinks_BrandNewSocialLinks__kfuHM">
						<a
							class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm"
							as="a" href="https://www.instagram.com/wantedjobs.kr/"><span
							class="Button_Button__label__K0sBs"><img
								src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbrand_new%2Finstagram.png&amp;w=20&amp;q=100"
								fetchpriority="low" alt="instagram" decoding="async"
								loading="lazy"></span><span
							class="Button_Button__interaction__1LUyr"></span></a><a
							class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm"
							as="a" href="https://www.facebook.com/wantedkr"><span
							class="Button_Button__label__K0sBs"><img
								src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbrand_new%2Ffacebook.png&amp;w=20&amp;q=100"
								fetchpriority="low" alt="facebook" decoding="async"
								loading="lazy"></span><span
							class="Button_Button__interaction__1LUyr"></span></a><a
							class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm"
							as="a"
							href="https://www.youtube.com/channel/UC0tGZ6MqieGG2m5lA5PeQsw"><span
							class="Button_Button__label__K0sBs"><img
								src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbrand_new%2Fyoutube.png&amp;w=20&amp;q=100"
								fetchpriority="low" alt="youtube" decoding="async"
								loading="lazy"></span><span
							class="Button_Button__interaction__1LUyr"></span></a><a
							class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm"
							as="a" href="https://blog.naver.com/wantedlab"><span
							class="Button_Button__label__K0sBs"><img
								src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbrand_new%2Fblog.png&amp;w=20&amp;q=100"
								fetchpriority="low" alt="blog" decoding="async" loading="lazy"></span><span
							class="Button_Button__interaction__1LUyr"></span></a><a
							class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm"
							as="a" href="https://apps.apple.com/kr/app/id1074569961"><span
							class="Button_Button__label__K0sBs"><img
								src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbrand_new%2Fapple.png&amp;w=20&amp;q=100"
								fetchpriority="low" alt="apple" decoding="async" loading="lazy"></span><span
							class="Button_Button__interaction__1LUyr"></span></a><a
							class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm"
							as="a"
							href="https://play.google.com/store/apps/details?id=com.wanted.android.wanted"><span
							class="Button_Button__label__K0sBs"><img
								src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbrand_new%2Fgoogle.png&amp;w=20&amp;q=100"
								fetchpriority="low" alt="google" decoding="async" loading="lazy"></span><span
							class="Button_Button__interaction__1LUyr"></span></a>
					</div>
				</div>
			</div>
		</footer>
	</main>
</body>
</html>