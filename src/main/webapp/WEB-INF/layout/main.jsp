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


</head>
<c:set var="root" value="<%=request.getContextPath()%>" />
<body>
<main class="JobsFeed_Jobsfeed___FVwn">
		<section class="Section_Section__XyOtJ">
			<article class="MatchedJobArea_MatchedJobArea__oYonU">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4 class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">내가
							관심 있을 만한 포지션</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g">
							<a href="/matched" class="CarouselHeader_CarouselHeader__link__2mjNY" data-attribute-id="jobs__seeMore" data-domain="recommendPosition">전체보기<span class="CarouselHeader_CarouselHeader__link__interaction__rETxI"></span></a>
							<div class="CarouselNavigation_CarouselNavigation__Llibu">
								<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB" aria-label="이전" disabled="" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
												<path d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z" fill="#e1e2e4"></path></svg></span></span>
								</button>
								<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m" aria-label="다음" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
												<path d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z" fill="#70737C"></path></svg></span></span><span class="IconButton_IconButton__interaction__7RjPt"></span>
								</button>
							</div>
						</div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="slick-slider slick-initialized" dir="ltr">
							<div class="slick-list">
								<div class="slick-track" style="width: 5400px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="49301" data-company-name="피엔제이컨설팅" data-position-id="225065" data-position-name="웹 개발자" data-response-rate="100" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="0" href="/wd/225065"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F49301%2Fhcioemalwcdpl66i__400_400.png&amp;w=400&amp;q=75" fetchpriority="high" alt="웹 개발자" decoding="sync" loading="eager">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="49301" data-company-name="피엔제이컨설팅" data-position-id="225065" data-position-name="웹 개발자" data-response-rate="100" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="0" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">웹
																개발자</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">피엔제이컨설팅</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="3608" data-company-name="뮤즈라이브(Muzlive)" data-position-id="221335" data-position-name="프론트엔드 엔지니어 (React)" data-response-rate="94.89" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="1" href="/wd/221335"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F3608%2Fevtc3yyspm9mddm6__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="high" alt="프론트엔드 엔지니어 (React)" decoding="sync" loading="eager">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="3608" data-company-name="뮤즈라이브(Muzlive)" data-position-id="221335" data-position-name="프론트엔드 엔지니어 (React)" data-response-rate="94.89" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="1" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">프론트엔드
																엔지니어 (React)</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">뮤즈라이브(Muzlive)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="21731" data-company-name="비글즈" data-position-id="222235" data-position-name="Backend Engineer (5년 이상)" data-response-rate="87.88" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="2" href="/wd/222235"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F21731%2Fkjvusmmfzuz051ch__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="high" alt="Backend Engineer (5년 이상)" decoding="sync" loading="eager">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="21731" data-company-name="비글즈" data-position-id="222235" data-position-name="Backend Engineer (5년 이상)" data-response-rate="87.88" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="2" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">Backend
																Engineer (5년 이상)</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">비글즈</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="38113" data-company-name="엘케이벤쳐스" data-position-id="149841" data-position-name="인생네컷/포토드링크 Windows Application 개발자" data-response-rate="100" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="3" href="/wd/149841"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F38113%2Frf1ziip7sh32uv2q__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="high" alt="인생네컷/포토드링크 Windows Application 개발자" decoding="sync" loading="eager">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="38113" data-company-name="엘케이벤쳐스" data-position-id="149841" data-position-name="인생네컷/포토드링크 Windows Application 개발자" data-response-rate="100" data-ai-score="" data-ai-score-status="fail" data-recommend-model-status="notBase" data-domain="recommendPosition" data-position-index="3" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">인생네컷/포토드링크
																Windows Application 개발자</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">엘케이벤쳐스</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="4" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="5" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="6" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="7" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="8" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="9" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="10" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="11" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="12" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="13" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="14" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="15" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="16" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="17" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="18" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
									<div data-index="19" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 270px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
			<article class="TopBannerArea_MainBannerArea__27LJX">
				<div class="slick-slider slick-initialized" dir="ltr">
					<div class="slick-list">
						<div class="slick-track" style="width: 24380px; opacity: 1; transform: translate3d(-4240px, 0px, 0px);">
							<div data-index="-1" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="https://www.bizplay.co.kr/vuch_te_01.act?infw=wanted_202405" target="_blank" rel="noopener noreferrer" data-landing-uri="https://www.bizplay.co.kr/vuch_te_01.act?infw=wanted_202405" data-attribute-id="jobs__mainBanner__click" data-link-kind="CUSTOM_URL" data-content-title="올인원 bzp 출장관리"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2371%2Fcb115077.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="올인원 bzp 출장관리" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">올인원
												bzp 출장관리</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">출장규정
												자동화로 손쉬운 임직원 관리</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="0" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/company/370" data-landing-uri="/company/370" data-attribute-id="jobs__mainBanner__click" data-link-kind="COMPANY_DETAIL" data-content-title="EA 개발 직군 선수 영입" data-content-id="370"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2373%2F6f7e6f62.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="EA 개발 직군 선수 영입" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">EA
												개발 직군 선수 영입</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">자소서
												없이 오늘 지원, 9월 입사!</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="1" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/company/403" data-landing-uri="/company/403" data-attribute-id="jobs__mainBanner__click" data-link-kind="COMPANY_DETAIL" data-content-title="삼쩜삼 개발직군 대규모 채용" data-content-id="403"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2367%2F2d2da733.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="삼쩜삼 개발직군 대규모 채용" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">삼쩜삼
												개발직군 대규모 채용</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">24.05.27.
												- 24.06.16.</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="2" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/wd/223838" data-landing-uri="/wd/223838" data-attribute-id="jobs__mainBanner__click" data-link-kind="POSITION" data-content-title="토스 PC 플랫폼 디자이너" data-content-id="223838"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2374%2Fabe3e5db.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="토스 PC 플랫폼 디자이너" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">토스
												PC 플랫폼 디자이너</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">서류
												패스의 기회, 놓치지 마세요!</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="3" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/events/2024_job_festa" data-landing-uri="/events/2024_job_festa" data-attribute-id="jobs__mainBanner__click" data-link-kind="EVENT_DETAIL" data-content-title="2024 관광 일자리 페스타"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2385%2F1203d6e1.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="2024 관광 일자리 페스타" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">2024
												관광 일자리 페스타</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">지역
												관광기업들의 채용 정보가 한 곳에!</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="4" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/events/work_recipe03" data-landing-uri="/events/work_recipe03" data-attribute-id="jobs__mainBanner__click" data-link-kind="EVENT_DETAIL" data-content-title="WORK RECIPE"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2365%2F8540675a.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="WORK RECIPE" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(84, 83, 20, 0), rgba(84, 83, 20, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">WORK
												RECIPE</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">일할
												맛 나는 기업, 오비맥주</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="5" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/themes/newposition" data-landing-uri="/themes/newposition" data-attribute-id="jobs__mainBanner__click" data-link-kind="THEME" data-content-title="이번 주 신규 포지션"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2078%2Fa78a154c.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="이번 주 신규 포지션" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(84, 84, 84, 0), rgba(84, 84, 84, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">이번
												주 신규 포지션</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">눈여겨볼
												이번 주 채용공고를 소개합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="6" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/company/1797" data-landing-uri="/company/1797" data-attribute-id="jobs__mainBanner__click" data-link-kind="COMPANY_DETAIL" data-content-title="그렙 프로그래머스 적극 채용" data-content-id="1797"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2375%2Feb6da3f4.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="그렙 프로그래머스 적극 채용" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">그렙
												프로그래머스 적극 채용</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">개발
												기획 교육 마케팅 영업 채용 중</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="7" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/themes/investment" data-landing-uri="/themes/investment" data-attribute-id="jobs__mainBanner__click" data-link-kind="THEME" data-content-title="최근 100억 이상 투자 받은 기업"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F1948%2F65930f6a.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="최근 100억 이상 투자 받은 기업" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">최근
												100억 이상 투자 받은 기업</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">채용
												중 포지션 확인하기</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="8" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="http://talenx.com/" target="_blank" rel="noopener noreferrer" data-landing-uri="http://talenx.com/" data-attribute-id="jobs__mainBanner__click" data-link-kind="CUSTOM_URL" data-content-title="인재관리의 모든 것"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2372%2Fea23e64c.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="인재관리의 모든 것" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">인재관리의
												모든 것</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">깊이
												있는 인재관리와 직원 경험 제공</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="9" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/themes/jaranda_2024" data-landing-uri="/themes/jaranda_2024" data-attribute-id="jobs__mainBanner__click" data-link-kind="THEME" data-content-title="구성원의 가족까지 생각하는 기업"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2364%2Ff2c13959.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="구성원의 가족까지 생각하는 기업" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">구성원의
												가족까지 생각하는 기업</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">'일·가정
												양립’ 기업을 소개합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="10" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="https://www.bizplay.co.kr/vuch_te_01.act?infw=wanted_202405" target="_blank" rel="noopener noreferrer" data-landing-uri="https://www.bizplay.co.kr/vuch_te_01.act?infw=wanted_202405" data-attribute-id="jobs__mainBanner__click" data-link-kind="CUSTOM_URL" data-content-title="올인원 bzp 출장관리"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2371%2Fcb115077.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="올인원 bzp 출장관리" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">올인원
												bzp 출장관리</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">출장규정
												자동화로 손쉬운 임직원 관리</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="11" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/company/370" data-landing-uri="/company/370" data-attribute-id="jobs__mainBanner__click" data-link-kind="COMPANY_DETAIL" data-content-title="EA 개발 직군 선수 영입" data-content-id="370"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2373%2F6f7e6f62.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="EA 개발 직군 선수 영입" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">EA
												개발 직군 선수 영입</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">자소서
												없이 오늘 지원, 9월 입사!</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="12" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/company/403" data-landing-uri="/company/403" data-attribute-id="jobs__mainBanner__click" data-link-kind="COMPANY_DETAIL" data-content-title="삼쩜삼 개발직군 대규모 채용" data-content-id="403"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2367%2F2d2da733.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="삼쩜삼 개발직군 대규모 채용" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">삼쩜삼
												개발직군 대규모 채용</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">24.05.27.
												- 24.06.16.</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="13" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/wd/223838" data-landing-uri="/wd/223838" data-attribute-id="jobs__mainBanner__click" data-link-kind="POSITION" data-content-title="토스 PC 플랫폼 디자이너" data-content-id="223838"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2374%2Fabe3e5db.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="토스 PC 플랫폼 디자이너" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">토스
												PC 플랫폼 디자이너</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">서류
												패스의 기회, 놓치지 마세요!</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="14" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/events/2024_job_festa" data-landing-uri="/events/2024_job_festa" data-attribute-id="jobs__mainBanner__click" data-link-kind="EVENT_DETAIL" data-content-title="2024 관광 일자리 페스타"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2385%2F1203d6e1.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="2024 관광 일자리 페스타" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">2024
												관광 일자리 페스타</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">지역
												관광기업들의 채용 정보가 한 곳에!</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="15" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/events/work_recipe03" data-landing-uri="/events/work_recipe03" data-attribute-id="jobs__mainBanner__click" data-link-kind="EVENT_DETAIL" data-content-title="WORK RECIPE"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2365%2F8540675a.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="WORK RECIPE" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(84, 83, 20, 0), rgba(84, 83, 20, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">WORK
												RECIPE</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">일할
												맛 나는 기업, 오비맥주</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="16" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/themes/newposition" data-landing-uri="/themes/newposition" data-attribute-id="jobs__mainBanner__click" data-link-kind="THEME" data-content-title="이번 주 신규 포지션"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2078%2Fa78a154c.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="이번 주 신규 포지션" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(84, 84, 84, 0), rgba(84, 84, 84, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">이번
												주 신규 포지션</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">눈여겨볼
												이번 주 채용공고를 소개합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="17" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/company/1797" data-landing-uri="/company/1797" data-attribute-id="jobs__mainBanner__click" data-link-kind="COMPANY_DETAIL" data-content-title="그렙 프로그래머스 적극 채용" data-content-id="1797"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2375%2Feb6da3f4.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="그렙 프로그래머스 적극 채용" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">그렙
												프로그래머스 적극 채용</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">개발
												기획 교육 마케팅 영업 채용 중</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="18" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/themes/investment" data-landing-uri="/themes/investment" data-attribute-id="jobs__mainBanner__click" data-link-kind="THEME" data-content-title="최근 100억 이상 투자 받은 기업"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F1948%2F65930f6a.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="최근 100억 이상 투자 받은 기업" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">최근
												100억 이상 투자 받은 기업</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">채용
												중 포지션 확인하기</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="19" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="http://talenx.com/" target="_blank" rel="noopener noreferrer" data-landing-uri="http://talenx.com/" data-attribute-id="jobs__mainBanner__click" data-link-kind="CUSTOM_URL" data-content-title="인재관리의 모든 것"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2372%2Fea23e64c.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="인재관리의 모든 것" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">인재관리의
												모든 것</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">깊이
												있는 인재관리와 직원 경험 제공</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="20" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="/themes/jaranda_2024" data-landing-uri="/themes/jaranda_2024" data-attribute-id="jobs__mainBanner__click" data-link-kind="THEME" data-content-title="구성원의 가족까지 생각하는 기업"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2364%2Ff2c13959.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="구성원의 가족까지 생각하는 기업" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">구성원의
												가족까지 생각하는 기업</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">'일·가정
												양립’ 기업을 소개합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div data-index="21" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1060px;">
								<div>
									<div class="BannerItem_BannerItem__NtVfT">
										<div class="BannerItem_BannerItem__link__olAEK">
											<a href="https://www.bizplay.co.kr/vuch_te_01.act?infw=wanted_202405" target="_blank" rel="noopener noreferrer" data-landing-uri="https://www.bizplay.co.kr/vuch_te_01.act?infw=wanted_202405" data-attribute-id="jobs__mainBanner__click" data-link-kind="CUSTOM_URL" data-content-title="올인원 bzp 출장관리"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2371%2Fcb115077.jpg&amp;w=1060&amp;q=100" fetchpriority="auto" alt="올인원 bzp 출장관리" class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O" style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
										</div>
										<div class="BannerItem_BannerItem__info__1QEVE">
											<h3 class="Typography_Typography__root__RdAI1 Typography_Typography__title3__J1fCl Typography_Typography__title3__weightBold__xwZk7 Typography_Typography__weightBold__KkJEY BannerItem_BannerItem__info__title__todNv">올인원
												bzp 출장관리</h3>
											<p class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightMedium__GXnOM BannerItem_BannerItem__info__desc__pNpL7">출장규정
												자동화로 손쉬운 임직원 관리</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<ul style="display: block" class="TopBannerArea_MainBannerArea__dots__tIsvd">
						<li class=""><button>1</button></li>
						<li class=""><button>2</button></li>
						<li class=""><button>3</button></li>
						<li class="slick-active"><button>4</button></li>
						<li class=""><button>5</button></li>
						<li class=""><button>6</button></li>
						<li class=""><button>7</button></li>
						<li class=""><button>8</button></li>
						<li class=""><button>9</button></li>
						<li class=""><button>10</button></li>
						<li class=""><button>11</button></li>
					</ul>
				</div>
			</article>
			<article>
				<section class="TagArea_TagArea__cardType__K3ZVy">
					<div class="CarouselContainer_CarouselContainer__jvm3u">
						<aside class="CarouselHeader_CarouselHeader__5VBaX">
							<a href="/wdlist" data-attribute-id="jobs__seeMore" data-domain="attractionTag"><h4 class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">#퇴사율5%이하</h4></a>
							<div class="CarouselHeader_CarouselHeader__action__nal5g">
								<a href="/wdlist" class="CarouselHeader_CarouselHeader__link__2mjNY" data-attribute-id="jobs__seeMore" data-domain="attractionTag">포지션으로
									더보기<span class="CarouselHeader_CarouselHeader__link__interaction__rETxI"></span>
								</a>
								<div class="CarouselNavigation_CarouselNavigation__Llibu">
									<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB" aria-label="이전" disabled="" style="font-size: 15px;">
										<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
													<path d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z" fill="#e1e2e4"></path></svg></span></span>
									</button>
									<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m" aria-label="다음" style="font-size: 15px;">
										<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
													<path d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z" fill="#70737C"></path></svg></span></span><span class="IconButton_IconButton__interaction__7RjPt"></span>
									</button>
								</div>
							</div>
						</aside>
						<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
							<div class="slick-slider slick-initialized" dir="ltr">
								<div class="slick-list">
									<div class="slick-track" style="width: 3600px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
										<div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 360px;">
											<div>
												<div class="Card_TagCard__f0zU3">
													<a href="/company/33276" data-attribute-id="company__click" data-tag-id="10410" data-tag-name="퇴사율5%이하" data-company-id="33276" data-company-name="지냅스" data-company-index="0" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F33276%2Fwjffw2wkykp9qlxe__1080_790.jpg&amp;w=338&amp;q=100" fetchpriority="low" alt="지냅스" class="Card_TagCard__Thumbnail__8I2Qn" decoding="async" loading="lazy">
															<div class="Card_TagCard__Thumbnail__Gradient__w6P7x"></div>
															<div class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__M_tzb">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__Company__r5cl6">
																	<div class="Card_TagCard__Contents__Company__LogoWrapper__UFbjb">
																		<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.2e9522e2.jpg&amp;w=80&amp;q=100" fetchpriority="auto" alt="지냅스" class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
																	</div>
																	<div class="Card_TagCard__Contents__Company__Information__qZRcd">
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">지냅스</span><span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc" data-attribute-id="company__follow__click" data-domain="attractionTag" data-company-id="33276" data-company-index="0" data-company-name="지냅스" data-tag-id="10410" data-tag-name="퇴사율5%이하" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div data-index="1" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 360px;">
											<div>
												<div class="Card_TagCard__f0zU3">
													<a href="/company/5936" data-attribute-id="company__click" data-tag-id="10410" data-tag-name="퇴사율5%이하" data-company-id="5936" data-company-name="SOOP" data-company-index="1" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F5936%2Fm69fo0bhri89vhu3__1080_790.jpg&amp;w=338&amp;q=100" fetchpriority="low" alt="SOOP" class="Card_TagCard__Thumbnail__8I2Qn" decoding="async" loading="lazy">
															<div class="Card_TagCard__Thumbnail__Gradient__w6P7x"></div>
															<div class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__M_tzb">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__Company__r5cl6">
																	<div class="Card_TagCard__Contents__Company__LogoWrapper__UFbjb">
																		<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.af63a005.png&amp;w=80&amp;q=100" fetchpriority="auto" alt="SOOP" class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
																	</div>
																	<div class="Card_TagCard__Contents__Company__Information__qZRcd">
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">SOOP</span><span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc" data-attribute-id="company__follow__click" data-domain="attractionTag" data-company-id="5936" data-company-index="1" data-company-name="SOOP" data-tag-id="10410" data-tag-name="퇴사율5%이하" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 360px;">
											<div>
												<div class="Card_TagCard__f0zU3">
													<a href="/company/24086" data-attribute-id="company__click" data-tag-id="10410" data-tag-name="퇴사율5%이하" data-company-id="24086" data-company-name="파더스랩" data-company-index="2" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F24086%2Fkjhzl5oca4pqetns__1080_790.jpg&amp;w=338&amp;q=100" fetchpriority="low" alt="파더스랩" class="Card_TagCard__Thumbnail__8I2Qn" decoding="async" loading="lazy">
															<div class="Card_TagCard__Thumbnail__Gradient__w6P7x"></div>
															<div class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__M_tzb">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__wrap_nowrap__lW8k0 Card_TagCard__Contents__Company__r5cl6">
																	<div class="Card_TagCard__Contents__Company__LogoWrapper__UFbjb">
																		<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.b138efd1.jpg&amp;w=80&amp;q=100" fetchpriority="auto" alt="파더스랩" class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
																	</div>
																	<div class="Card_TagCard__Contents__Company__Information__qZRcd">
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">파더스랩</span><span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc" data-attribute-id="company__follow__click" data-domain="attractionTag" data-company-id="24086" data-company-index="2" data-company-name="파더스랩" data-tag-id="10410" data-tag-name="퇴사율5%이하" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div data-index="3" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="4" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="5" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="6" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="7" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="8" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
										<div data-index="9" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="TagArea_TagArea__listType__aDS6g">
					<div class="CarouselContainer_CarouselContainer__jvm3u">
						<aside class="CarouselHeader_CarouselHeader__5VBaX CarouselHeader_CarouselHeader__isTagList__mdBDx">
							<a href="/wdlist" data-attribute-id="jobs__seeMore" data-domain="attractionTag"><h4 class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">#연봉
									업계평균이상</h4></a>
							<div class="CarouselHeader_CarouselHeader__action__nal5g">
								<a href="/wdlist" class="CarouselHeader_CarouselHeader__link__2mjNY" data-attribute-id="jobs__seeMore" data-domain="attractionTag">포지션으로
									더보기<span class="CarouselHeader_CarouselHeader__link__interaction__rETxI"></span>
								</a>
							</div>
						</aside>
						<div class="CarouselContainer_CarouselContainer__slider__dWB5h CarouselContainer_CarouselContainer__slider__isTagList__b8_2h">
							<div class="slick-slider slick-initialized" dir="ltr">
								<div class="slick-list">
									<div class="slick-track" style="width: 1820px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
										<div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 364px;">
											<div>
												<ul class="List_TagList__yoeks">
													<li class="ListCard_List__RGzzX"><a href="/company/568" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="568" data-company-name="뉴플로이" data-company-index="0" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.965ad728.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="뉴플로이" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">뉴플로이</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="568" data-company-index="0" data-company-name="뉴플로이" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/698" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="698" data-company-name="로지스팟" data-company-index="1" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.199b0d22.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="로지스팟" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">로지스팟</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">물류,
																			운송</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="698" data-company-index="1" data-company-name="로지스팟" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/1323" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="1323" data-company-name="에코마케팅" data-company-index="2" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.7514fe6b.png&amp;w=110&amp;q=100" fetchpriority="low" alt="에코마케팅" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">에코마케팅</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="1323" data-company-index="2" data-company-name="에코마케팅" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/3259" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="3259" data-company-name="미로(라스트오더)" data-company-index="3" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.a80ae1db.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="미로(라스트오더)" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">미로(라스트오더)</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="3259" data-company-index="3" data-company-name="미로(라스트오더)" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
												</ul>
											</div>
										</div>
										<div data-index="1" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 364px;">
											<div>
												<ul class="List_TagList__yoeks">
													<li class="ListCard_List__RGzzX"><a href="/company/3347" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="3347" data-company-name="헥슬란트" data-company-index="4" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.da3ff12d.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="헥슬란트" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">헥슬란트</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="3347" data-company-index="4" data-company-name="헥슬란트" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/4203" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="4203" data-company-name="미궁365" data-company-index="5" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.738d88c1.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="미궁365" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">미궁365</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">판매,
																			유통</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="4203" data-company-index="5" data-company-name="미궁365" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/5273" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="5273" data-company-name="테스트웍스" data-company-index="6" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.9b0ea1de.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="테스트웍스" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">테스트웍스</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="5273" data-company-index="6" data-company-name="테스트웍스" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/16825" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="16825" data-company-name="미핑기획" data-company-index="7" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.b2663990.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="미핑기획" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">미핑기획</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">기타
																			서비스업</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="16825" data-company-index="7" data-company-name="미핑기획" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
												</ul>
											</div>
										</div>
										<div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 364px;">
											<div>
												<ul class="List_TagList__yoeks">
													<li class="ListCard_List__RGzzX"><a href="/company/18425" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="18425" data-company-name="시니스트" data-company-index="8" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.8b63c275.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="시니스트" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">시니스트</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="18425" data-company-index="8" data-company-name="시니스트" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/19388" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="19388" data-company-name="바이너리브릿지(BinaryBridgeInc.)" data-company-index="9" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.94b54292.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="바이너리브릿지(BinaryBridgeInc.)" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">바이너리브릿지(BinaryBridgeInc.)</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">IT,
																			컨텐츠</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="19388" data-company-index="9" data-company-name="바이너리브릿지(BinaryBridgeInc.)" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/19806" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="19806" data-company-name="액트플러스" data-company-index="10" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.ad738efe.jpg&amp;w=110&amp;q=100" fetchpriority="low" alt="액트플러스" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">액트플러스</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">판매,
																			유통</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="19806" data-company-index="10" data-company-name="액트플러스" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
													<li class="ListCard_List__RGzzX"><a href="/company/22317" data-attribute-id="company__click" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="22317" data-company-name="딥다이브" data-company-index="11" data-domain="attractionTag" data-base-action="popular"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
																<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
																	<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.4d9a5edf.png&amp;w=110&amp;q=100" fetchpriority="low" alt="딥다이브" class="ListCard_ListCard__Contents__Image__ZnXfj" decoding="async" loading="lazy">
																	<div class="ListCard_ListCard__Contents__Information__nzox0">
																		<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">딥다이브</p>
																		<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">제조</span>
																	</div>
																</div>
																<button class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge" data-attribute-id="company__follow__click" data-domain="attractionTag" data-tag-id="10395" data-tag-name="연봉 업계평균이상" data-company-id="22317" data-company-index="11" data-company-name="딥다이브" data-kind="add" data-base-action="popular">
																	<span class="Button_Button__label__K0sBs"><span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span><span class="Button_Button__interaction__1LUyr"></span>
																</button>
															</div></a></li>
												</ul>
											</div>
										</div>
										<div data-index="3" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 364px;"></div>
										<div data-index="4" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 364px;"></div>
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
						<h4 class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">테마로
							모아보기</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g">
							<div class="CarouselNavigation_CarouselNavigation__Llibu">
								<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__normalDisabled__lpQXR IconButton_IconButton__disabled__6qJ2Q CarouselNavigation_CarouselNavigation__left__ZzsPB" aria-label="이전" disabled="" style="font-size: 15px">
									<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
												<path d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z" fill="#e1e2e4"></path></svg></span></span>
								</button>
								<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf CarouselNavigation_CarouselNavigation__right__lB17m" aria-label="다음" style="font-size: 15px">
									<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
												<path d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z" fill="#70737C"></path></svg></span></span><span class="IconButton_IconButton__interaction__7RjPt"></span>
								</button>
							</div>
						</div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="slick-slider slick-initialized" dir="ltr">
							<div class="slick-list">
								<div class="slick-track" style="width: 4320px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 360px;">
										<div>
											<div role="img" aria-label="테마로 모아보기" class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_" data-attribute-id="jobs__theme__click" data-theme-title="신규 포지션 모음 원한다면" data-landing-uri="/themes/newposition">
													<a class="ThemeCard_ThemeCard__Link__rxJqR" href="/themes/newposition"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F439_20ede613.jpg&amp;w=520&amp;q=100" fetchpriority="auto" alt="신규 포지션 모음 원한다면">
															<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">신규
																포지션 모음 원한다면</h6>
														</div>
														<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
															<div class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
																<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.eca2584b.jpg&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 5;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.cccd5ac9.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 6;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.9c73b5c8.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 7;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.13abbc81.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 8;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.7affd299.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 9;">
															</div>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+75</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 360px;">
										<div>
											<div role="img" aria-label="테마로 모아보기" class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_" data-attribute-id="jobs__theme__click" data-theme-title="이번 달 모집 마감 포지션" data-landing-uri="/themes/closesoon">
													<a class="ThemeCard_ThemeCard__Link__rxJqR" href="/themes/closesoon"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F301_03304e0e.jpg&amp;w=520&amp;q=100" fetchpriority="auto" alt="이번 달 모집 마감 포지션">
															<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">이번
																달 모집 마감 포지션</h6>
														</div>
														<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
															<div class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
																<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.309f13fb.jpg&amp;w=64&amp;q=100" fetchpriority="auto" alt="제일펑타이(PENGTAI)" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 5;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.2899a10e.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 6;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.17055dbd.jpg&amp;w=64&amp;q=100" fetchpriority="auto" alt="오픈놀" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 7;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.bb83d9d7.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 8;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.5849d88e.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 9;">
															</div>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+7</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 360px;">
										<div>
											<div role="img" aria-label="테마로 모아보기" class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_" data-attribute-id="jobs__theme__click" data-theme-title="연봉 수직 상승 원한다면" data-landing-uri="/themes/salarytop">
													<a class="ThemeCard_ThemeCard__Link__rxJqR" href="/themes/salarytop"><div class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F264_a0dffe96.jpg&amp;w=520&amp;q=100" fetchpriority="auto" alt="연봉 수직 상승 원한다면">
															<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">연봉
																수직 상승 원한다면</h6>
														</div>
														<div class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
															<div class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
																<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.4145ab82.jpg&amp;w=64&amp;q=100" fetchpriority="auto" alt="렌딧(LENDIT)" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 5;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.a2574442.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 6;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.2b61adb2.jpg&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 7;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.831571f7.jpg&amp;w=64&amp;q=100" fetchpriority="auto" alt="클로버추얼패션(CLOVirtualFashion)" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 8;"><img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.f9a10352.png&amp;w=64&amp;q=100" fetchpriority="auto" alt="" class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_" style="z-index: 9;">
															</div>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+22</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="4" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="5" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="6" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="7" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="8" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="9" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="10" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
									<div data-index="11" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 360px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
			<article class="FeaturedJobArea_FeaturedJobArea__6vOHf">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4 class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">요즘
							뜨는 포지션</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g"></div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h CarouselContainer_CarouselContainer__slider__isEnd__rUQoI">
						<div class="slick-slider slick-initialized">
							<div class="slick-list">
								<div class="slick-track" style="width: 1080px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="9734" data-company-name="앤서스랩코리아" data-position-id="210624" data-position-name="[NP]C# Backend Server Engineer" data-response-rate="85" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="0" href="/wd/210624"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F9734%2Fgjzqhclx1aufsr4z__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="low" alt="[NP]C# Backend Server Engineer" decoding="async" loading="lazy">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="9734" data-company-name="앤서스랩코리아" data-position-id="210624" data-position-name="[NP]C# Backend Server Engineer" data-response-rate="85" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="0" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[NP]C#
																Backend Server Engineer</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">앤서스랩코리아</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="385" data-company-name="크레비스파트너스(도너스)" data-position-id="6322" data-position-name="SaaS 백엔드 개발자 (전문연구요원 가능)" data-response-rate="98" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="1" href="/wd/6322"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F385%2Fof7ul1avnp1bokqt__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="low" alt="SaaS 백엔드 개발자 (전문연구요원 가능)" decoding="async" loading="lazy">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="385" data-company-name="크레비스파트너스(도너스)" data-position-id="6322" data-position-name="SaaS 백엔드 개발자 (전문연구요원 가능)" data-response-rate="98" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="1" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">SaaS
																백엔드 개발자 (전문연구요원 가능)</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">크레비스파트너스(도너스)</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="38113" data-company-name="엘케이벤쳐스" data-position-id="149841" data-position-name="인생네컷/포토드링크 Windows Application 개발자" data-response-rate="100" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="2" href="/wd/149841"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F38113%2Frf1ziip7sh32uv2q__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="low" alt="인생네컷/포토드링크 Windows Application 개발자" decoding="async" loading="lazy">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="38113" data-company-name="엘케이벤쳐스" data-position-id="149841" data-position-name="인생네컷/포토드링크 Windows Application 개발자" data-response-rate="100" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="2" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">인생네컷/포토드링크
																Windows Application 개발자</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">엘케이벤쳐스</span>
															<div class="JobCard_JobCard__body__badge__atLen"></div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
									<div data-index="3" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 270px;">
										<div>
											<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G" tabindex="-1" style="width: 100%; display: inline-block;">
												<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
													<a data-attribute-id="position__click" data-job-category-id="518" data-job-category="IT" data-company-id="5329" data-company-name="디스트릭트코리아" data-position-id="222827" data-position-name="[대구] 사내 그룹웨어 개발자(닷넷)" data-response-rate="73" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="3" href="/wd/222827"><div class="JobCard_JobCard__thumb__WU1ax">
															<div class="JobCard_JobCard__thumb__reward__6_Xx_">
																<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">합격보상금
																	100만원</span>
															</div>
															<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F5329%2Fht29yohalmhi0fmd__400_400.jpg&amp;w=400&amp;q=75" fetchpriority="low" alt="[대구] 사내 그룹웨어 개발자(닷넷)" decoding="async" loading="lazy">
															<button class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn" aria-label="bookmark button" data-attribute-id="position__bookmark__click" data-job-category-id="518" data-job-category="IT" data-company-id="5329" data-company-name="디스트릭트코리아" data-position-id="222827" data-position-name="[대구] 사내 그룹웨어 개발자(닷넷)" data-response-rate="73" data-ai-score="" data-ai-score-status="" data-recommend-model-status="notBase" data-domain="popular" data-position-index="3" data-kind="add" style="font-size: 22px;">
																<span class="IconButton_IconButton__label__o4AtY"><span class="SvgIcon_SvgIcon__root__OHiSO"><svg class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M8.16445 2.59985H15.8353C16.3651 2.59984 16.8163 2.59983 17.1867 2.63009C17.5759 2.66189 17.9545 2.73152 18.3164 2.91594C18.8621 3.19397 19.3057 3.63761 19.5838 4.18328C19.7682 4.54522 19.8378 4.92381 19.8696 5.31297C19.8999 5.6834 19.8999 6.13458 19.8999 6.66445V21.4999C19.8999 21.8249 19.7245 22.1248 19.4412 22.2842C19.1579 22.4436 18.8107 22.4379 18.5328 22.2692L11.9999 18.3028L5.46694 22.2692C5.18906 22.4379 4.84179 22.4436 4.55848 22.2842C4.27517 22.1248 4.09985 21.8249 4.09985 21.4999V6.66445C4.09984 6.13461 4.09983 5.68339 4.13009 5.31297C4.16189 4.92381 4.23152 4.54522 4.41594 4.18328C4.69397 3.63761 5.13761 3.19397 5.68328 2.91594C6.04522 2.73152 6.42381 2.66189 6.81297 2.63009C7.18338 2.59983 7.63462 2.59984 8.16445 2.59985ZM7.79989 4.39992C6.98533 4.39992 6.79149 4.41103 6.65997 4.45376C6.32509 4.56257 6.06254 4.82512 5.95373 5.16001C5.91099 5.29153 5.89989 5.48536 5.89989 6.29992V19.9006L11.5328 16.4806C11.8198 16.3064 12.18 16.3064 12.467 16.4806L18.0999 19.9006V6.29992C18.0999 5.48536 18.0888 5.29153 18.0461 5.16001C17.9372 4.82512 17.6747 4.56257 17.3398 4.45376C17.2083 4.41103 17.0145 4.39992 16.1999 4.39992H7.79989Z" fill="#ffffff"></path></svg></span></span>
															</button>
														</div>
														<div>
															<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">[대구]
																사내 그룹웨어 개발자(닷넷)</p>
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">디스트릭트코리아</span>
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

	</main>
</body>
</html>