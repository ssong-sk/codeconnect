<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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


<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />


<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<c:set var="root" value="<%=request.getContextPath()%>" />
<body>
	<main class="JobsFeed_Jobsfeed___FVwn">
		<section class="Section_Section__XyOtJ">
			<c:if test="${sessionScope.loginok==null }">
				<c:if test="${sessionScope.c_loginok==null }">
					<article class="MatchedBanner_MatchedBanner__jSUtn">
						<div class="MatchedBanner_MatchedBanner__info__HEO_b">
							<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline2__vR7L_ Typography_Typography__weightBold__KkJEY MatchedBanner_MatchedBanner__info__title__ciAu_">내 이력서를 분석해<br>관심 있을 만한 포지션을 추천해 드려요.
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
			</c:if>
			<c:if test="${sessionScope.loginok!=null }">
				<article class="MatchedJobArea_MatchedJobArea__oYonU">
					<div class="CarouselContainer_CarouselContainer__jvm3u">
						<aside class="CarouselHeader_CarouselHeader__5VBaX">
							<h4
								class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">내가
								관심 있을 만한 포지션</h4>
						</aside>
						<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
							<div class="post-wrapper">
								<c:forEach var="h" items="${hlist}">
 									<div>
										<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
										tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
												<a href="hire/detail?h_num=${h.h_num }">
													<div class="JobCard_JobCard__thumb__WU1ax">
														<div class="JobCard_JobCard__thumb__reward__6_Xx_">
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
														</div>
														<img src="../../companyintro_uploads/${h.ci_image}">
													</div>
													<div>
														<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">${h.h_title}</p>
														<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">${h.c_name}</span>
														<div class="JobCard_JobCard__body__badge__atLen"></div>
													</div>
												</a>
											</div>
										</div>
 									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</article>
			</c:if>
			
			<script type="text/javascript">
				$('.post-wrapper').slick({
					slidesToShow : 4,
					slidesToScroll : 4,
					draggable : true,
					dots : true
					
					
				});
			</script>

			<article class="TopBannerArea_MainBannerArea__27LJX">
				<div class="post-slider">
					<div class="slide-banner">
					
						<div data-index="0" class="slick-slide slick-active slick-current"
							tabindex="-1" aria-hidden="false"
							style="outline: none; width: 1060px;">
							<div>
								<div class="BannerItem_BannerItem__NtVfT">
									<div class="BannerItem_BannerItem__link__olAEK">
										<a href="#" target="_blank" rel="noopener noreferrer"
											data-landing-uri="https://code-challenge.elice.io/courses/95930/info?utm_source=vertical&amp;utm_medium=wanted&amp;utm_campaign=알고리즘&amp;utm_term=main banner&amp;utm_content=event"
											data-attribute-id="jobs__mainBanner__click"
											data-link-kind="CUSTOM_URL"
											data-content-title="1200만 원의 경품 드려요"><img
											src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2405%2Fd65c574a.jpg&amp;w=1060&amp;q=100"
											fetchpriority="auto" alt="1200만 원의 경품 드려요"
											class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O"
												style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43))"></div></a>
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

						<div data-index="1" class="slick-slide slick-active slick-current"
							tabindex="-1" aria-hidden="false"
							style="outline: none; width: 1060px;">
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
												style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
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


						<div data-index="2" class="slick-slide" tabindex="-1"
							aria-hidden="true" style="outline: none; width: 1060px;">
							<div>
								<div class="BannerItem_BannerItem__NtVfT">
									<div class="BannerItem_BannerItem__link__olAEK">
										<a
											href="https://www.wanted.co.kr/tags/10486?view=position&amp;start_year=0&amp;end_year=10&amp;job_group_id=518&amp;job_ids=1634&amp;job_ids=1025&amp;job_ids=655&amp;job_ids=1024"
											target="_blank" rel="noopener noreferrer"
											data-landing-uri="https://www.wanted.co.kr/tags/10486?view=position&amp;start_year=0&amp;end_year=10&amp;job_group_id=518&amp;job_ids=1634&amp;job_ids=1025&amp;job_ids=655&amp;job_ids=1024"><img
											src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2F2398%2Fce7f687c.jpg&amp;w=1060&amp;q=100"
											fetchpriority="auto" alt="인공지능(AI) 포지션"
											class="BannerItem_BannerItem__link__img__JHO6H">
											<div class="BannerItem_BannerItem__overlay__zQ88O"
												style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
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


						<div data-index="3" class="slick-slide slick-active slick-current"
							tabindex="-1" aria-hidden="false"
							style="outline: none; width: 1060px;">
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
												style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
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

						<div data-index="4" class="slick-slide slick-active slick-current"
							tabindex="-1" aria-hidden="false"
							style="outline: none; width: 1060px;">
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
												style="background: linear-gradient(270deg, rgba(38, 38, 33, 0), rgba(38, 38, 33, 0.43))"></div></a>
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

						<div data-index="5" class="slick-slide slick-active slick-current"
							tabindex="-1" aria-hidden="false"
							style="outline: none; width: 1060px;">
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
												style="background: linear-gradient(270deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.43))"></div></a>
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


					</div>
				</div>
			</article>
			<script type="text/javascript">
				$('.slide-banner').slick({
					slidesToShow : 1,
					slidesToScroll : 1,
					autoplay : true,
					autoplaySpeed : 3000,
					draggable : true,
					dots : true,
					variableWidth : true,
					infinite : true
				});
			</script>



		<c:if test="${sessionScope.loginok!=null }">
			<article class="UserActionArea_UserActionArea__sjZgi">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4 class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">
						${r_name }님, 지금 바로 지원해볼까요?</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g">
						</div>
					</aside>
					
					
						<c:set var="hasScrapedItems" value="false" />
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="mutiple-items">
						<c:forEach var="r" items="${rlist}">
						<c:set var="isScraped"
								value="${fn:contains(userScraps, r.h_num)}" />
							<c:if test="${isScraped}">
								<c:set var="hasScrapedItems" value="true"/>
 									<div>
										<div class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
										tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__Tb7pI">
												<a data-attribute-id="position__click"
												data-job-category-id="518" data-job-category="IT"
												data-company-id="7148" data-company-name="모라이(MORAI)"
												data-position-id="225191"
												data-position-name="[전문연구요원 가능] SW Engineer(Virtual Sensor팀)"
												data-response-rate="92.59" data-ai-score=""
												data-ai-score-status="fail"
												data-recommend-model-status="notBase"
												data-domain="recommendPosition" data-position-index="0"
												href="hire/detail?h_num=${r.h_num }">
													<div class="JobCard_JobCard__thumb__WU1ax">
														<div class="JobCard_JobCard__thumb__reward__6_Xx_">
															<span class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
														</div>
														<img src="../../companyintro_uploads/${r.ci_image}">
													</div>
													<div>
														<p class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY JobCard_JobCard__body__position__CyaGY">${r.h_title}</p>
														<span class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM JobCard_JobCard__body__company__AUj_B">${r.c_name}</span>
														<div class="JobCard_JobCard__body__badge__atLen"></div>
													</div>
												</a>
											</div>
										</div>
 									</div>
 									</c:if>
								</c:forEach>
						</div>
					</div>
					<c:if test="${!hasScrapedItems }">
					<c:set var="isScraped"
						value="${fn:contains(userScraps, r.h_num)}" />
					<article class="MatchedBanner_MatchedBanner__jSUtn">
					<div class="MatchedBanner_MatchedBanner__info__HEO_b">
						<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline2__vR7L_ Typography_Typography__weightBold__KkJEY MatchedBanner_MatchedBanner__info__title__ciAu_">관심있는 회사를<br>북마크에 추가해보세요!
						</h6>
						<button type="button" onclick="location.href='/hire/main'" class="Button_Button__root__m1NGq Button_Button__contained__qyP2s Button_Button__containedPrimary__kCB60 Button_Button__containedSizeMedium__xBgIW MatchedBanner_MatchedBanner__btn__XNKYB" data-attribute-id="jobs__signupLogin__click">
							<span class="Button_Button__label__K0sBs">회사 찾아보기</span><span class="Button_Button__interaction__1LUyr"></span>
						</button>
					</div>
				</article>
					</c:if>

				</div>
				<script>
					$('.mutiple-items').slick({
						slidesToShow : 4,
						slidesToScroll : 4,
						draggable : true,
						dots : true
					});
				</script>
			</article>
			</c:if>

			<section class="TagArea_TagArea__cardType__K3ZVy">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<a href="/wdlist" data-attribute-id="jobs__seeMore"
							data-domain="attractionTag"><h4
								class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">#인기있는 포지션</h4></a>
						
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="triple-items">




							<div data-index="0"
								class="slick-slide slick-active slick-current" tabindex="-1"
								aria-hidden="false" style="outline: none; width: 360px;">
								<div>
									<div class="Card_TagCard__f0zU3">
										<a href="/company/35972" data-attribute-id="company__click"
											data-tag-id="10405" data-tag-name="1,001~10,000명"
											data-company-id="35972" data-company-name="투썸플레이스"
											data-company-index="0" data-domain="attractionTag"
											data-base-action="popular"><div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
												<img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F35972%2Fblhaxaubvn6ltggw__1080_790.png&amp;w=338&amp;q=100"
													fetchpriority="low" alt="투썸플레이스"
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
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.1b73ee1e.png&amp;w=80&amp;q=100"
																fetchpriority="auto" alt="투썸플레이스"
																class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
														</div>
														<div
															class="Card_TagCard__Contents__Company__Information__qZRcd">
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">투썸플레이스</span><span
																class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">숙박,
																음식점</span>
														</div>
													</div>
													<button
														class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
														data-attribute-id="company__follow__click"
														data-domain="attractionTag" data-company-id="35972"
														data-company-index="0" data-company-name="투썸플레이스"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
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



							<div data-index="1" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 360px;">
								<div>
									<div class="Card_TagCard__f0zU3">
										<a href="/company/23220" data-attribute-id="company__click"
											data-tag-id="10405" data-tag-name="1,001~10,000명"
											data-company-id="23220" data-company-name="매일유업"
											data-company-index="1" data-domain="attractionTag"
											data-base-action="popular"><div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
												<img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F23220%2Fgry3yhot5ittsnyn__1080_790.jpg&amp;w=338&amp;q=100"
													fetchpriority="low" alt="매일유업"
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
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.f430326b.jpg&amp;w=80&amp;q=100"
																fetchpriority="auto" alt="매일유업"
																class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
														</div>
														<div
															class="Card_TagCard__Contents__Company__Information__qZRcd">
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">매일유업</span><span
																class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">제조</span>
														</div>
													</div>
													<button
														class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
														data-attribute-id="company__follow__click"
														data-domain="attractionTag" data-company-id="23220"
														data-company-index="1" data-company-name="매일유업"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
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



							<div data-index="2" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 360px;">
								<div>
									<div class="Card_TagCard__f0zU3">
										<a href="/company/426" data-attribute-id="company__click"
											data-tag-id="10405" data-tag-name="1,001~10,000명"
											data-company-id="426" data-company-name="컬리"
											data-company-index="2" data-domain="attractionTag"
											data-base-action="popular"><div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
												<img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F426%2Fkzslm49iecovfi0j__1080_790.jpg&amp;w=338&amp;q=100"
													fetchpriority="low" alt="컬리"
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
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.e2c011d3.png&amp;w=80&amp;q=100"
																fetchpriority="auto" alt="컬리"
																class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
														</div>
														<div
															class="Card_TagCard__Contents__Company__Information__qZRcd">
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">컬리</span><span
																class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">판매,
																유통</span>
														</div>
													</div>
													<button
														class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
														data-attribute-id="company__follow__click"
														data-domain="attractionTag" data-company-id="426"
														data-company-index="2" data-company-name="컬리"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
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



							<div data-index="3"
								class="slick-slide slick-active slick-current" tabindex="-1"
								aria-hidden="false" style="outline: none; width: 360px;">
								<div>
									<div class="Card_TagCard__f0zU3">
										<a href="/company/35" data-attribute-id="company__click"
											data-tag-id="10405" data-tag-name="1,001~10,000명"
											data-company-id="35" data-company-name="위대한상상(요기요)"
											data-company-index="3" data-domain="attractionTag"
											data-base-action="popular"><div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
												<img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F35%2Fwl4mb18qp45k1aum__1080_790.jpg&amp;w=338&amp;q=100"
													fetchpriority="low" alt="위대한상상(요기요)"
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
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.e39b35d6.jpg&amp;w=80&amp;q=100"
																fetchpriority="auto" alt="위대한상상(요기요)"
																class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
														</div>
														<div
															class="Card_TagCard__Contents__Company__Information__qZRcd">
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">위대한상상(요기요)</span><span
																class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">IT,
																컨텐츠</span>
														</div>
													</div>
													<button
														class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
														data-attribute-id="company__follow__click"
														data-domain="attractionTag" data-company-id="35"
														data-company-index="3" data-company-name="위대한상상(요기요)"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
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



							<div data-index="4" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 360px;">
								<div>
									<div class="Card_TagCard__f0zU3">
										<a href="/company/27759" data-attribute-id="company__click"
											data-tag-id="10405" data-tag-name="1,001~10,000명"
											data-company-id="27759" data-company-name="코웨이"
											data-company-index="10" data-domain="attractionTag"
											data-base-action="popular"><div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
												<img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F27759%2Fccuk5lonkfq5a9oo__1080_790.jpg&amp;w=338&amp;q=100"
													fetchpriority="low" alt="코웨이"
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
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.66e4ad49.jpg&amp;w=80&amp;q=100"
																fetchpriority="auto" alt="코웨이"
																class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
														</div>
														<div
															class="Card_TagCard__Contents__Company__Information__qZRcd">
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">코웨이</span><span
																class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">제조</span>
														</div>
													</div>
													<button
														class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
														data-attribute-id="company__follow__click"
														data-domain="attractionTag" data-company-id="27759"
														data-company-index="10" data-company-name="코웨이"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
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



							<div data-index="5" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 360px;">
								<div>
									<div class="Card_TagCard__f0zU3">
										<a href="/company/8369" data-attribute-id="company__click"
											data-tag-id="10405" data-tag-name="1,001~10,000명"
											data-company-id="8369" data-company-name="교보문고"
											data-company-index="13" data-domain="attractionTag"
											data-base-action="popular"><div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Card_TagCard__Container__KHnF3">
												<img
													src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F8369%2Ft0cq4otdj2qmyye5__1080_790.png&amp;w=338&amp;q=100"
													fetchpriority="low" alt="교보문고"
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
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.cfaf1e93.jpg&amp;w=80&amp;q=100"
																fetchpriority="auto" alt="교보문고"
																class="Card_TagCard__Contents__Company__LogoWrapper__Logo__xrSQo">
														</div>
														<div
															class="Card_TagCard__Contents__Company__Information__qZRcd">
															<span
																class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY Card_TagCard__Contents__Company__Information_companyName__5QkN7">교보문고</span><span
																class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM Card_TagCard__Contents__Company__Information_industryName__nECyd">판매,
																유통</span>
														</div>
													</div>
													<button
														class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ Card_TagCard__Contents__Company__Button__oHyuc"
														data-attribute-id="company__follow__click"
														data-domain="attractionTag" data-company-id="8369"
														data-company-index="13" data-company-name="교보문고"
														data-tag-id="10405" data-tag-name="1,001~10,000명"
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





						</div>
					</div>

					<script type="text/javascript">
						$('.triple-items').slick({
							slidesToShow : 3,
							slidesToScroll : 3,
							autoplay : true,
							autoplaySpeed : 3000,
							draggable : true,
							variableWidth : true,
							dots: true
						});
					</script>

				</div>
			</section>
			<section class="TagArea_TagArea__listType__aDS6g">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside
						class="CarouselHeader_CarouselHeader__5VBaX CarouselHeader_CarouselHeader__isTagList__mdBDx">
						<a href="/wdlist" data-attribute-id="jobs__seeMore"
							data-domain="attractionTag"><h4
								class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">#요즘 뜨는 기업</h4></a>
						
					</aside>




					<div
						class="CarouselContainer_CarouselContainer__slider__dWB5h CarouselContainer_CarouselContainer__slider__isTagList__b8_2h">
						<div class="mutiple-items2">
							<c:forEach var="ci" items="${cilist}" varStatus="loop">
								<c:if test="${loop.index % 4 == 0}">
									<ul class="List_TagList__yoeks">
								</c:if>

								<li class="ListCard_List__RGzzX"><a
									href="/company/showimsiCom?c_num=${ci.c_num }" data-attribute-id="company__click"
									data-tag-id="10405" data-tag-name="1,001~10,000명"
									data-company-id="${ci.c_num}" data-company-name="${ci.c_name}"
									data-company-index="${loop.index}" data-domain="attractionTag"
									data-base-action="popular">
										<div
											class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__x7sMD">
											<div
												class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Grid_Grid__align-content_space-between__hVHLa Grid_Grid__wrap_nowrap__lW8k0 ListCard_ListCard__Contents__kgwtL">
												<img src="../../companyintro_uploads/${ci.ci_logo }" fetchpriority="low"
													alt="${ci.c_name}"
													class="ListCard_ListCard__Contents__Image__ZnXfj"
													decoding="async" loading="lazy">
												<div class="ListCard_ListCard__Contents__Information__nzox0">
													<p
														class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY ListCard_ListCard__Contents__Information_companyName__vtCMs">${ci.c_name}</p>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Contents__Information_industryName__hy1BM">${ci.c_category}</span>
												</div>
											</div>
											<button
												class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ ListCard_ListCard__Button__PQ9Ge"
												data-attribute-id="company__follow__click"
												data-domain="attractionTag" data-tag-id="10405"
												data-tag-name="1,001~10,000명" data-company-id="${ci.c_num}"
												data-company-index="${loop.index}"
												data-company-name="${ci.c_name}" data-kind="add"
												data-base-action="popular">
												<span class="Button_Button__label__K0sBs"><span
													class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListCard_ListCard__Button__Text__GxZco">팔로우</span></span>
												<span class="Button_Button__interaction__1LUyr"></span>
											</button>
										</div>
								</a></li>

								<c:if test="${loop.index % 4 == 3 or loop.last}">
									</ul>
								</c:if>
							</c:forEach>
						</div>
					</div>

					<script type="text/javascript">
						$('.mutiple-items2').slick({
							slidesToShow : 3,
							slidesToScroll : 1,
							autoplay : true,
							autoplaySpeed : 4000,
							draggable : true,
							dots : true
						});
					</script>			
				</section>
			<!-- 			</article> -->
			<article class="ThemeArea_ThemeArea__a7D3I">
				<div class="CarouselContainer_CarouselContainer__jvm3u">
					<aside class="CarouselHeader_CarouselHeader__5VBaX">
						<h4
							class="Typography_Typography__root__RdAI1 Typography_Typography__heading1__N9Asv Typography_Typography__weightBold__KkJEY ">테마로
							모아보기</h4>
						<div class="CarouselHeader_CarouselHeader__action__nal5g">
							<div class="CarouselNavigation_CarouselNavigation__Llibu">
	
								
							</div>
						</div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__dWB5h">
						<div class="slide-thema">



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
											data-theme-title="100억 이상 투자 유치 기업"
											data-landing-uri="/themes/investment">
											<a class="ThemeCard_ThemeCard__Link__rxJqR"
												href="/themes/investment"><div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
													<img
														src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F468_ea47a4be.jpg&amp;w=520&amp;q=100"
														fetchpriority="auto" alt="100억 이상 투자 유치 기업">
													<h6
														class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">100억
														이상 투자 유치 기업</h6>
												</div>
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
													<div
														class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.930fdb88.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="머니브레인"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 5;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c8490a8f.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 6;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.bace736e.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 7;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.40ff0c85.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="와탭랩스(WhaTapLabs)"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 8;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.fd4dce1a.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 9;">
													</div>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+140</span>
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
											data-theme-title="안정적인 흑자 기업 원한다면"
											data-landing-uri="/themes/surplus">
											<a class="ThemeCard_ThemeCard__Link__rxJqR"
												href="/themes/surplus"><div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
													<img
														src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F334_46fc60b5.jpg&amp;w=520&amp;q=100"
														fetchpriority="auto" alt="안정적인 흑자 기업 원한다면">
													<h6
														class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">안정적인
														흑자 기업 원한다면</h6>
												</div>
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
													<div
														class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c1794468.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="비티씨코리아닷컴(빗썸)"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 5;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d8d72579.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 6;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.30208ed5.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="PUBG Corporation"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 7;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.4b4c1752.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="넥슨코리아(NEXON)"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 8;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.a2574442.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 9;">
													</div>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+1</span>
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
											data-theme-title="신규 포지션 모음 원한다면"
											data-landing-uri="/themes/newposition">
											<a class="ThemeCard_ThemeCard__Link__rxJqR"
												href="/themes/newposition"><div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
													<img
														src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F439_20ede613.jpg&amp;w=520&amp;q=100"
														fetchpriority="auto" alt="신규 포지션 모음 원한다면">
													<h6
														class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">신규
														포지션 모음 원한다면</h6>
												</div>
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
													<div
														class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.9c73b5c8.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 5;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.0b77dde8.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 6;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.13abbc81.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 7;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.26bbd0fa.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 8;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.eca2584b.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 9;">
													</div>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+63</span>
												</div></a>
										</div>
									</div>
								</div>
							</div>


							<div data-index="3" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 360px;">
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
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.8fbbbed4.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="엘리스"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 5;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d1238d64.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 6;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c7b4f0a6.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="에임(AIM)"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 7;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.9a528984.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="이디엠에듀케이션"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 8;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.56cbd0b4.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="엔핏"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 9;">
													</div>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+174</span>
												</div></a>
										</div>
									</div>
								</div>
							</div>


							<div data-index="4" class="slick-slide slick-active"
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
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.309f13fb.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="제일펑타이(PENGTAI)"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 5;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.946e96ac.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="리디(RIDI)"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 6;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.af4b3085.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 7;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.5849d88e.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 8;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c9711d08.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 9;">
													</div>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+29</span>
												</div></a>
										</div>
									</div>
								</div>
							</div>


							<div data-index="5" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 360px;">
								<div>
									<div role="img" aria-label="테마로 모아보기"
										class="CarouselContainer_CarouselContainer__slider__item__5wY5G"
										tabindex="-1" style="width: 100%; display: inline-block;">
										<div
											class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH ThemeCard_ThemeCard__cHwR_"
											data-attribute-id="jobs__theme__click"
											data-theme-title="재택근무 원한다면"
											data-landing-uri="/themes/workathome">
											<a class="ThemeCard_ThemeCard__Link__rxJqR"
												href="/themes/workathome"><div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_flex-start__nEOiH Thumbnail_Thumbnail__Alrpu">
													<img
														src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F262_7ee78e93.jpg&amp;w=520&amp;q=100"
														fetchpriority="auto" alt="재택근무 원한다면">
													<h6
														class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY Thumbnail_Thumbnail__Title__EEI9U">재택근무
														원한다면</h6>
												</div>
												<div
													class="Grid_Grid__container__43uvK Grid_Grid__align-items_center__2CxBh Contents_Contents__ZSFp1">
													<div
														class="AvatarGroup_AvatarGroup__root__2veen Contents_Contents__CompanyLogoList__yK_gD">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.bebe4adc.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 5;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.930139fe.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 6;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.98199e95.png&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 7;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d18636d6.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt="미리디아이에이치"
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 8;"><img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.2b61adb2.jpg&amp;w=64&amp;q=100"
															fetchpriority="auto" alt=""
															class="AvatarGroup_AvatarGroup__avatar__hD_e7 Contents_Contents__CompanyLogoList__CompanyLogo__9184_"
															style="z-index: 9;">
													</div>
													<span
														class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightBold__KkJEY Contents_Contents__MoreCount__uO4am">+14</span>
												</div></a>
										</div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
				<script type="text/javascript">
					$('.slide-thema').slick({
						slidesToShow : 3,
						slidesToScroll : 3,
						draggable : true,
						variableWidth : true,
						dots : true
					});
				</script>
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
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM"></span>
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
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">
																</span>
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
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">
																</span>
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
																	class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightBold__KkJEY JobCard_JobCard__thumb__reward__text__i15UM">
																</span>
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
	</main>
</body>
</html>