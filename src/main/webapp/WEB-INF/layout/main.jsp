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
<style type="text/css">

@charset "UTF-8";

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

a, abbr, acronym, address, applet, article, aside, audio, b, big,
	blockquote, body, canvas, caption, center, cite, code, dd, del, details,
	dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form,
	h1, h2, h3, h4, h5, h6, header, hgroup, html, i, iframe, img, ins, kbd,
	label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby,
	s, samp, section, small, span, strike, strong, sub, summary, sup, table,
	tbody, td, tfoot, th, thead, time, tr, tt, u, ul, var, video {
	margin: 0;
	padding: 0;
	border: 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

button, div, h1, h2, h3, h4, h5, h6, input, p, select, span, textarea {
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

a {
	font-family: inherit;
	text-decoration: inherit;
	cursor: pointer;
}

a, a:active, a:hover, a:visited {
	color: inherit;
}

* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: inherit;
}

@media ( min-width : 1200px) {
	.Section_Section__P1hhc {
		width: 90%;
	}
}

.Section_Section__P1hhc {
	max-width: 1060px;
	margin: 0 auto;
	display: flex;
	flex-direction: column;
	gap: 72px;
	padding: 40px 0 144px;
}

.CarouselHeader_CarouselHeader__d4DeW {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

.Typography_Typography__weightBold__e15ql {
	font-weight: 600;
}

.Typography_Typography__heading1__bVyRs {
	font-size: 22px;
	letter-spacing: -.0194em;
	line-height: 30px;
}

.Typography_Typography__label1__TCYoE {
    font-size: 14px;
    letter-spacing: .0145em;
    line-height: 20px;
}

.Typography_Typography__root__xYuMs {
	margin: 0;
}

.CarouselHeader_CarouselHeader__action__C_6l_ {
	display: flex;
	gap: 14px;
	align-items: center;
	height: 100%;
}

.CarouselHeader_CarouselHeader__link__WWKP1 {
	color: rgba(55, 56, 60, .61) !important;
	position: relative;
	padding: 4px 0;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-weight: 600;
}

.CarouselHeader_CarouselHeader__link__interaction__RUr0k {
	overflow: hidden;
	position: absolute;
	padding: 4px 0;
	z-index: 0;
	top: 0;
	right: -8px;
	bottom: 0;
	left: -8px;
	opacity: 0;
	background-color: #171719;
	-webkit-transition: opacity .2s ease;
	transition: opacity .2s ease;
	will-change: opacity;
	-webkit-box-shadow: inset 0 0 0 1px hsla(225, 5%, 46%, .22);
	box-shadow: inset 0 0 0 1px hsla(225, 5%, 46%, .22);
	border-radius: 4px;
}

.CarouselNavigation_CarouselNavigation__left__MtZCF {
	width: 31px;
	height: 28px;
	border: 1px solid hsla(225, 5%, 46%, .22) !important;
	border-right: none !important;
	border-top-left-radius: 6px !important;
	border-bottom-left-radius: 6px !important;
	border-top-right-radius: 0 !important;
	border-bottom-right-radius: 0 !important;
	align-items: center;
	justify-content: center;
}

.IconButton_IconButton__label__ZcWfp {
    width: 100%;
    font-size: inherit;
    font-weight: inherit;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
    color: inherit;
}

.CarouselNavigation_CarouselNavigation__left__MtZCF svg {
    -webkit-transform: rotate(180deg);
    transform: rotate(180deg);
}

.IconButton_IconButton__normalDisabled__qd8D_ {
    color: rgba(55, 56, 60, .16);
}
.IconButton_IconButton__normal__O3ySx {
    border: none;
}
.IconButton_IconButton__disabled__C0cqb, .IconButton_IconButton__loading__DyUMT {
    pointer-events: none;
}
.IconButton_IconButton__root__dO2x7 {
    position: relative;
    display: inline-flex;
    padding: 8px;
    border-radius: 50%;
    font-size: 24px;
    cursor: pointer;
    overflow: hidden;
}

.IconButton_IconButton__interaction__I48Mv {
    overflow: hidden;
    position: absolute;
    z-index: 0;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: 0;
    background-color: #171719;
    -webkit-transition: opacity .2s ease;
    transition: opacity .2s ease;
    will-change: opacity;
}

.CarouselContainer_CarouselContainer__slider__zf_Yl {
    margin-left: -10px;
    margin-right: -10px;
}

.CarouselContainer_CarouselContainer__95CM6 .slick-slider {
    margin-bottom: 0;
}




.slick-slider {
    margin-bottom: 30px;
}
.slick-slider {
    position: relative;
    display: block;
    box-sizing: border-box;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    user-select: none;
    touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}
.slick-list {
    position: relative;
    overflow: hidden;
    display: block;
    margin: 0;
    padding: 0;
}

.slick-initialized .slick-slide {
    display: block;
}

.slick-slide {
    float: left;
    height: 100%;
    min-height: 1px;
    display: none;
}

.CarouselContainer_CarouselContainer__slider__item__TJ0cf {
    padding-left: 10px;
    padding-right: 10px;
    outline: none !important;
}

.JobCard_JobCard__oZL4d {
    display: inline-block;
    position: relative;
    width: 100%;
}

.JobCard_JobCard__oZL4d a {
    -webkit-appearance: none;
    appearance: none;
    outline: none;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.JobCard_JobCard__thumb__iNW6E {
    position: relative;
    margin-bottom: 12px;
    overflow: hidden;
    padding-bottom: 67%;
    background-size: cover;
    background-position: 50%;
    border-radius: 12px;
}

.JobCard_JobCard__thumb__reward__lEvO4 {
    position: absolute;
    top: 15px;
    left: 15px;
    color: #fff;
    z-index: 1;
    margin-right: 44px;
}

@supports (-webkit-line-clamp:2) and (-webkit-box-orient:vertical) {
    .JobCard_JobCard__thumb__reward__text__rXmLF {
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }
}

.JobCard_JobCard__thumb__reward__text__rXmLF {
    text-shadow: 0 0 12px rgba(0, 0, 0, .16);
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
}

.JobCard_JobCard__thumb__iNW6E>img {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
    -webkit-transition: -webkit-transform .2s ease;
    transition: -webkit-transform .2s ease;
    transition: transform .2s ease;
    transition: transform .2s ease, -webkit-transform .2s ease;
    will-change: auto;
    object-fit: cover;
}

slick-slide img {
    display: block;
}
img {
    vertical-align: middle;
}

.JobCard_JobCard__thumb__iNW6E .bookmarkBtn {
    background: none;
    width: 40px;
    height: 40px;
    top: 6px;
    right: 6px;
    z-index: 1;
    display: flex;
    -ms-flex-pack: center;
    justify-content: center;
    align-items: center;
}

.JobCard_JobCard__thumb__iNW6E>button {
    position: absolute;
    right: 15px;
    top: 15px;
}

.IconButton_IconButton__disableGutters__lxsfN {
    padding: 8px;
}

.JobCard_JobCard__thumb__iNW6E .bookmarkBtn>span {
    font-size: 24px;
}

.SvgIcon_SvgIcon__root__8vwon {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: inherit;
    align-items: inherit;
    -ms-flex-pack: inherit;
    justify-content: inherit;
}

.SvgIcon_SvgIcon__root__svg__DKYBi {
    -webkit-user-select: none;
    user-select: none;
    width: 1em;
    height: 1em;
    display: inline-block;
    fill: currentColor;
    flex-shrink: 0;
    font-size: inherit;
}

</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>" />
<body>
	<section class="Section_Section__P1hhc">
		<article class="MatchedJobArea_MatchedJobArea__vFPPT">
			<div class="CarouselContainer_CarouselContainer__95CM6">
				<aside class="CarouselHeader_CarouselHeader__d4DeW">
					<h4
						class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql ">내가
						관심 있을 만한 포지션</h4>
					<div class="CarouselHeader_CarouselHeader__action__C_6l_">
						<a href="/matched"
							class="CarouselHeader_CarouselHeader__link__WWKP1"
							data-attribute-id="jobs__seeMore" data-domain="recommendPosition">전체보기<span
							class="CarouselHeader_CarouselHeader__link__interaction__RUr0k"></span></a>
						<div class="CarouselNavigation_CarouselNavigation__V89Z_">
							<button
								class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__normalDisabled__qd8D_ IconButton_IconButton__disabled__C0cqb CarouselNavigation_CarouselNavigation__left__MtZCF"
								aria-label="이전" disabled="" style="font-size: 15px;">
								<span class="IconButton_IconButton__label__ZcWfp"><svg
										width="12" height="12" viewBox="0 0 12 12">
										<path fill="#e1e2e4"
											d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg></span>
							</button>
							<button
								class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx CarouselNavigation_CarouselNavigation__right__2qsYe"
								aria-label="다음" style="font-size: 15px;">
								<span class="IconButton_IconButton__label__ZcWfp"><svg
										width="12" height="12" viewBox="0 0 12 12">
										<path fill="#70737C"
											d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg></span><span
									class="IconButton_IconButton__interaction__I48Mv"></span>
							</button>
						</div>
					</div>
				</aside>
				<div class="CarouselContainer_CarouselContainer__slider__zf_Yl">
					<div class="slick-slider slick-initialized" dir="ltr">
						<div class="slick-list">
							<div class="slick-track"
								style="width: 5400px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
								<div data-index="0"
									class="slick-slide slick-active slick-current" tabindex="-1"
									aria-hidden="false" style="outline: none; width: 270px;">
									<div>
										<div
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/225065" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="49301" data-company-name="피엔제이컨설팅"
													data-position-id="225065" data-position-name="웹 개발자"
													data-response-rate="0" data-ai-score=""
													data-ai-score-status="fail"
													data-recommend-model-status="notBase"
													data-domain="recommendPosition" data-position-index="0"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F49301%2Fhcioemalwcdpl66i__400_400.png&amp;w=400&amp;q=75"
															fetchpriority="high" alt="웹 개발자" decoding="sync"
															loading="eager">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="49301" data-company-name="피엔제이컨설팅"
															data-position-id="225065" data-position-name="웹 개발자"
															data-response-rate="0" data-ai-score=""
															data-ai-score-status="fail"
															data-recommend-model-status="notBase"
															data-domain="recommendPosition" data-position-index="0"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">웹
															개발자</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">피엔제이컨설팅</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/221335" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="3608" data-company-name="뮤즈라이브(Muzlive)"
													data-position-id="221335"
													data-position-name="프론트엔드 엔지니어 (React)"
													data-response-rate="95.09" data-ai-score=""
													data-ai-score-status="fail"
													data-recommend-model-status="notBase"
													data-domain="recommendPosition" data-position-index="1"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F3608%2Fevtc3yyspm9mddm6__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="high" alt="프론트엔드 엔지니어 (React)"
															decoding="sync" loading="eager">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="3608" data-company-name="뮤즈라이브(Muzlive)"
															data-position-id="221335"
															data-position-name="프론트엔드 엔지니어 (React)"
															data-response-rate="95.09" data-ai-score=""
															data-ai-score-status="fail"
															data-recommend-model-status="notBase"
															data-domain="recommendPosition" data-position-index="1"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">프론트엔드
															엔지니어 (React)</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">뮤즈라이브(Muzlive)</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/222235" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="21731" data-company-name="비글즈"
													data-position-id="222235"
													data-position-name="Backend Engineer (5년 이상)"
													data-response-rate="87.5" data-ai-score=""
													data-ai-score-status="fail"
													data-recommend-model-status="notBase"
													data-domain="recommendPosition" data-position-index="2"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F21731%2Fkjvusmmfzuz051ch__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="high" alt="Backend Engineer (5년 이상)"
															decoding="sync" loading="eager">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="21731" data-company-name="비글즈"
															data-position-id="222235"
															data-position-name="Backend Engineer (5년 이상)"
															data-response-rate="87.5" data-ai-score=""
															data-ai-score-status="fail"
															data-recommend-model-status="notBase"
															data-domain="recommendPosition" data-position-index="2"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">Backend
															Engineer (5년 이상)</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">비글즈</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/149841" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="38113" data-company-name="엘케이벤쳐스"
													data-position-id="149841"
													data-position-name="인생네컷/포토드링크 Windows Application 개발자"
													data-response-rate="97.78" data-ai-score=""
													data-ai-score-status="fail"
													data-recommend-model-status="notBase"
													data-domain="recommendPosition" data-position-index="3"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F38113%2Frf1ziip7sh32uv2q__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="high"
															alt="인생네컷/포토드링크 Windows Application 개발자" decoding="sync"
															loading="eager">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="38113" data-company-name="엘케이벤쳐스"
															data-position-id="149841"
															data-position-name="인생네컷/포토드링크 Windows Application 개발자"
															data-response-rate="97.78" data-ai-score=""
															data-ai-score-status="fail"
															data-recommend-model-status="notBase"
															data-domain="recommendPosition" data-position-index="3"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">인생네컷/포토드링크
															Windows Application 개발자</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">엘케이벤쳐스</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
								<div data-index="12" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="13" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="14" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="15" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="16" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="17" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="18" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
								<div data-index="19" class="slick-slide" tabindex="-1"
									aria-hidden="true" style="outline: none; width: 270px;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article>
			<section class="TagArea_TagArea__cardType__6T2ZY">
				<div class="CarouselContainer_CarouselContainer__95CM6">
					<aside class="CarouselHeader_CarouselHeader__d4DeW">
						<a href="/wdlist" data-attribute-id="jobs__seeMore"
							data-domain="attractionTag"><h4
								class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql ">#인원
								급성장</h4></a>
						<div class="CarouselHeader_CarouselHeader__action__C_6l_">
							<a href="/wdlist"
								class="CarouselHeader_CarouselHeader__link__WWKP1"
								data-attribute-id="jobs__seeMore" data-domain="attractionTag">포지션으로
								더보기<span
								class="CarouselHeader_CarouselHeader__link__interaction__RUr0k"></span>
							</a>
							<div class="CarouselNavigation_CarouselNavigation__V89Z_">
								<button
									class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__normalDisabled__qd8D_ IconButton_IconButton__disabled__C0cqb CarouselNavigation_CarouselNavigation__left__MtZCF"
									aria-label="이전" disabled="" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__ZcWfp"><svg
											width="12" height="12" viewBox="0 0 12 12">
											<path fill="#e1e2e4"
												d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg></span>
								</button>
								<button
									class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx CarouselNavigation_CarouselNavigation__right__2qsYe"
									aria-label="다음" style="font-size: 15px;">
									<span class="IconButton_IconButton__label__ZcWfp"><svg
											width="12" height="12" viewBox="0 0 12 12">
											<path fill="#70737C"
												d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg></span><span
										class="IconButton_IconButton__interaction__I48Mv"></span>
								</button>
							</div>
						</div>
					</aside>
					<div class="CarouselContainer_CarouselContainer__slider__zf_Yl">
						<div class="slick-slider slick-initialized" dir="ltr">
							<div class="slick-list">
								<div class="slick-track"
									style="width: 7200px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0"
										class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width: 360px;">
										<div>
											<div class="Card_TagCard__BNDsh">
												<a href="/company/136" data-attribute-id="company__click"
													data-tag-id="10401" data-tag-name="인원 급성장"
													data-company-id="136" data-company-name="하이퍼커넥트"
													data-company-index="0" data-domain="attractionTag"
													data-base-action="popular"><div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE Card_TagCard__Container__f_GER">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F136%2Fjhtqznnhtixesx0t__1080_790.jpg&amp;w=338&amp;q=100"
															fetchpriority="low" alt="하이퍼커넥트"
															class="Card_TagCard__Thumbnail__cUazg" decoding="async"
															loading="lazy">
														<div class="Card_TagCard__Thumbnail__Gradient__yRPIr"></div>
														<div
															class="Grid_Grid__container__J9CcC Grid_Grid__justify_space-between__SsVJS Grid_Grid__align-items_center__VEikH Grid_Grid__wrap_nowrap__4r_cp Card_TagCard__Contents__H57qb">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__wrap_nowrap__4r_cp Card_TagCard__Contents__Company__wlern">
																<div
																	class="Card_TagCard__Contents__Company__LogoWrapper__Yr6qH">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.4b65d2c3.png&amp;w=80&amp;q=100"
																		fetchpriority="auto" alt="하이퍼커넥트"
																		class="Card_TagCard__Contents__Company__LogoWrapper__Logo__QhZ_T">
																</div>
																<div
																	class="Card_TagCard__Contents__Company__Information__pR23H">
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql Card_TagCard__Contents__Company__Information_companyName__iNPVE">하이퍼커넥트</span><span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightMedium__O0Rdi Card_TagCard__Contents__Company__Information_industryName__cneMQ">IT,
																		컨텐츠</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Card_TagCard__Contents__Company__Button__vBQQ_"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-company-id="136"
																data-company-index="0" data-company-name="하이퍼커넥트"
																data-tag-id="10401" data-tag-name="인원 급성장"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
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
											<div class="Card_TagCard__BNDsh">
												<a href="/company/146" data-attribute-id="company__click"
													data-tag-id="10401" data-tag-name="인원 급성장"
													data-company-id="146" data-company-name="라쿠텐심포니코리아"
													data-company-index="1" data-domain="attractionTag"
													data-base-action="popular"><div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE Card_TagCard__Container__f_GER">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F146%2Fcumtfa6spjadeoiw__1080_790.jpg&amp;w=338&amp;q=100"
															fetchpriority="low" alt="라쿠텐심포니코리아"
															class="Card_TagCard__Thumbnail__cUazg" decoding="async"
															loading="lazy">
														<div class="Card_TagCard__Thumbnail__Gradient__yRPIr"></div>
														<div
															class="Grid_Grid__container__J9CcC Grid_Grid__justify_space-between__SsVJS Grid_Grid__align-items_center__VEikH Grid_Grid__wrap_nowrap__4r_cp Card_TagCard__Contents__H57qb">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__wrap_nowrap__4r_cp Card_TagCard__Contents__Company__wlern">
																<div
																	class="Card_TagCard__Contents__Company__LogoWrapper__Yr6qH">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.6d073739.jpg&amp;w=80&amp;q=100"
																		fetchpriority="auto" alt="라쿠텐심포니코리아"
																		class="Card_TagCard__Contents__Company__LogoWrapper__Logo__QhZ_T">
																</div>
																<div
																	class="Card_TagCard__Contents__Company__Information__pR23H">
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql Card_TagCard__Contents__Company__Information_companyName__iNPVE">라쿠텐심포니코리아</span><span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightMedium__O0Rdi Card_TagCard__Contents__Company__Information_industryName__cneMQ">IT,
																		컨텐츠</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Card_TagCard__Contents__Company__Button__vBQQ_"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-company-id="146"
																data-company-index="1" data-company-name="라쿠텐심포니코리아"
																data-tag-id="10401" data-tag-name="인원 급성장"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
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
											<div class="Card_TagCard__BNDsh">
												<a href="/company/660" data-attribute-id="company__click"
													data-tag-id="10401" data-tag-name="인원 급성장"
													data-company-id="660" data-company-name="민다"
													data-company-index="2" data-domain="attractionTag"
													data-base-action="popular"><div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE Card_TagCard__Container__f_GER">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F660%2F17617_2_0.e3e6187b__1080_790.jpg&amp;w=338&amp;q=100"
															fetchpriority="low" alt="민다"
															class="Card_TagCard__Thumbnail__cUazg" decoding="async"
															loading="lazy">
														<div class="Card_TagCard__Thumbnail__Gradient__yRPIr"></div>
														<div
															class="Grid_Grid__container__J9CcC Grid_Grid__justify_space-between__SsVJS Grid_Grid__align-items_center__VEikH Grid_Grid__wrap_nowrap__4r_cp Card_TagCard__Contents__H57qb">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__wrap_nowrap__4r_cp Card_TagCard__Contents__Company__wlern">
																<div
																	class="Card_TagCard__Contents__Company__LogoWrapper__Yr6qH">
																	<img
																		src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4_add971b1-b2f7-4009-ac54-e6ca91bbaa0b.jpg&amp;w=80&amp;q=100"
																		fetchpriority="auto" alt="민다"
																		class="Card_TagCard__Contents__Company__LogoWrapper__Logo__QhZ_T">
																</div>
																<div
																	class="Card_TagCard__Contents__Company__Information__pR23H">
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql Card_TagCard__Contents__Company__Information_companyName__iNPVE">민다</span><span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightMedium__O0Rdi Card_TagCard__Contents__Company__Information_industryName__cneMQ">IT,
																		컨텐츠</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Card_TagCard__Contents__Company__Button__vBQQ_"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-company-id="660"
																data-company-index="2" data-company-name="민다"
																data-tag-id="10401" data-tag-name="인원 급성장"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
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
			</section>
			<section class="TagArea_TagArea__listType__8ma9_">
				<div class="CarouselContainer_CarouselContainer__95CM6">
					<aside
						class="CarouselHeader_CarouselHeader__d4DeW CarouselHeader_CarouselHeader__isTagList__b_GAQ">
						<a href="/wdlist" data-attribute-id="jobs__seeMore"
							data-domain="attractionTag"><h4
								class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql ">#설립10년이상</h4></a>
						<div class="CarouselHeader_CarouselHeader__action__C_6l_">
							<a href="/wdlist"
								class="CarouselHeader_CarouselHeader__link__WWKP1"
								data-attribute-id="jobs__seeMore" data-domain="attractionTag">포지션으로
								더보기<span
								class="CarouselHeader_CarouselHeader__link__interaction__RUr0k"></span>
							</a>
						</div>
					</aside>
					<div
						class="CarouselContainer_CarouselContainer__slider__zf_Yl CarouselContainer_CarouselContainer__slider__isTagList__462QI">
						<div class="slick-slider slick-initialized" dir="ltr">
							<div class="slick-list">
								<div class="slick-track"
									style="width: 1820px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0"
										class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width: 364px;">
										<div>
											<ul class="List_TagList__8uMcp">
												<li class="ListCard_List__TSLsH"><a
													href="/company/45184" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="45184" data-company-name="에스넷아이씨티"
													data-company-index="0" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.5f34d1c3.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="에스넷아이씨티"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">에스넷아이씨티</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">IT,
																		컨텐츠</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="45184"
																data-company-index="0" data-company-name="에스넷아이씨티"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/27222" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="27222" data-company-name="럭스나인"
													data-company-index="1" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.6f3ae83e.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="럭스나인"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">럭스나인</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">제조</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="27222"
																data-company-index="1" data-company-name="럭스나인"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/32814" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="32814" data-company-name="토페스"
													data-company-index="2" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.21de07d3.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="토페스"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">토페스</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">제조</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="32814"
																data-company-index="2" data-company-name="토페스"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/31085" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="31085" data-company-name="머신앤비전"
													data-company-index="3" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.8446fc0e.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="머신앤비전"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">머신앤비전</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">제조</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="31085"
																data-company-index="3" data-company-name="머신앤비전"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
											</ul>
										</div>
									</div>
									<div data-index="1" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 364px;">
										<div>
											<ul class="List_TagList__8uMcp">
												<li class="ListCard_List__TSLsH"><a
													href="/company/35695" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="35695" data-company-name="코엠에스"
													data-company-index="4" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.7de9dd6c.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="코엠에스"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">코엠에스</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">제조</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="35695"
																data-company-index="4" data-company-name="코엠에스"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/26431" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="26431" data-company-name="레인보우로보틱스"
													data-company-index="5" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.10804456.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="레인보우로보틱스"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">레인보우로보틱스</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">제조</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="26431"
																data-company-index="5" data-company-name="레인보우로보틱스"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/26557" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="26557" data-company-name="디엔소프트"
													data-company-index="6" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.88dcd1fc.png&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="디엔소프트"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">디엔소프트</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">IT,
																		컨텐츠</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="26557"
																data-company-index="6" data-company-name="디엔소프트"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/9879" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="9879" data-company-name="제이앤케이사이언스"
													data-company-index="7" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.ded83728.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="제이앤케이사이언스"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">제이앤케이사이언스</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">제조</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="9879"
																data-company-index="7" data-company-name="제이앤케이사이언스"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
											</ul>
										</div>
									</div>
									<div data-index="2" class="slick-slide slick-active"
										tabindex="-1" aria-hidden="false"
										style="outline: none; width: 364px;">
										<div>
											<ul class="List_TagList__8uMcp">
												<li class="ListCard_List__TSLsH"><a
													href="/company/43929" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="43929" data-company-name="에이에이씨케이"
													data-company-index="8" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.76da8a9b.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="에이에이씨케이"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">에이에이씨케이</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">건설</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="43929"
																data-company-index="8" data-company-name="에이에이씨케이"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/16578" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="16578" data-company-name="잉글리시에그"
													data-company-index="9" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.e9540fc6.png&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="잉글리시에그"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">잉글리시에그</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">교육</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="16578"
																data-company-index="9" data-company-name="잉글리시에그"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/6982" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="6982" data-company-name="롯데e커머스(롯데ON)"
													data-company-index="10" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.b2b65bcb.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="롯데e커머스(롯데ON)"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">롯데e커머스(롯데ON)</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">판매,
																		유통</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="6982"
																data-company-index="10" data-company-name="롯데e커머스(롯데ON)"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
															</button>
														</div></a></li>
												<li class="ListCard_List__TSLsH"><a
													href="/company/33486" data-attribute-id="company__click"
													data-tag-id="10409" data-tag-name="설립10년이상"
													data-company-id="33486" data-company-name="스마틱스"
													data-company-index="11" data-domain="attractionTag"
													data-base-action="popular"><div
															class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__I8_s2">
															<div
																class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Grid_Grid__align-content_space-between___rrOw Grid_Grid__wrap_nowrap__4r_cp ListCard_ListCard__Contents__dgPMo">
																<img
																	src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.5248d126.jpg&amp;w=110&amp;q=100"
																	fetchpriority="low" alt="스마틱스"
																	class="ListCard_ListCard__Contents__Image__AUrG_"
																	decoding="async" loading="lazy">
																<div
																	class="ListCard_ListCard__Contents__Information__VjUyX">
																	<p
																		class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql ListCard_ListCard__Contents__Information_companyName__wpZMI">스마틱스</p>
																	<span
																		class="Typography_Typography__root__xYuMs Typography_Typography__caption1__yT_ty Typography_Typography__weightRegular__JSBt3 Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Contents__Information_industryName__8DJZ3">IT,
																		컨텐츠</span>
																</div>
															</div>
															<button
																class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo ListCard_ListCard__Button__UHSXJ"
																data-attribute-id="company__follow__click"
																data-domain="attractionTag" data-tag-id="10409"
																data-tag-name="설립10년이상" data-company-id="33486"
																data-company-index="11" data-company-name="스마틱스"
																data-kind="add" data-base-action="popular">
																<span class="Button_Button__label__1Kk0v"><span
																	class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi Typography_Typography__displayBlock__Sa_eB ListCard_ListCard__Button__Text__FiULs">팔로우</span></span><span
																	class="Button_Button__interaction__kkYaa"></span>
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
		<article class="ThemeArea_ThemeArea__RPPH2">
			<div class="CarouselContainer_CarouselContainer__95CM6">
				<aside class="CarouselHeader_CarouselHeader__d4DeW">
					<h4
						class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql ">테마로
						모아보기</h4>
					<div class="CarouselHeader_CarouselHeader__action__C_6l_">
						<div class="CarouselNavigation_CarouselNavigation__V89Z_">
							<button
								class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__normalDisabled__qd8D_ IconButton_IconButton__disabled__C0cqb CarouselNavigation_CarouselNavigation__left__MtZCF"
								aria-label="이전" disabled="" style="font-size: 15px">
								<span class="IconButton_IconButton__label__ZcWfp"><svg
										width="12" height="12" viewBox="0 0 12 12">
										<path fill="#e1e2e4"
											d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg></span>
							</button>
							<button
								class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx CarouselNavigation_CarouselNavigation__right__2qsYe"
								aria-label="다음" style="font-size: 15px">
								<span class="IconButton_IconButton__label__ZcWfp"><svg
										width="12" height="12" viewBox="0 0 12 12">
										<path fill="#70737C"
											d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg></span><span
									class="IconButton_IconButton__interaction__I48Mv"></span>
							</button>
						</div>
					</div>
				</aside>
				<div class="CarouselContainer_CarouselContainer__slider__zf_Yl">
					<div class="slick-slider slick-initialized" dir="ltr">
						<div class="slick-list">
							<div class="slick-track"
								style="width: 4320px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
								<div data-index="0"
									class="slick-slide slick-active slick-current" tabindex="-1"
									aria-hidden="false" style="outline: none; width: 360px;">
									<div>
										<div role="img" aria-label="테마로 모아보기"
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div
												class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__align-items_flex-start__PA0JE ThemeCard_ThemeCard__LoN59"
												data-attribute-id="jobs__theme__click"
												data-theme-title="신입 포지션 모음 원한다면"
												data-landing-uri="/themes/newcomer">
												<a class="ThemeCard_ThemeCard__Link__IvX5j"
													href="/themes/newcomer"><div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE Thumbnail_Thumbnail__eN58Y">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F287_49bf0c6b.jpg&amp;w=520&amp;q=100"
															fetchpriority="auto" alt="신입 포지션 모음 원한다면">
														<h6
															class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql Thumbnail_Thumbnail__Title__ifA47">신입
															포지션 모음 원한다면</h6>
													</div>
													<div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Contents_Contents__ALSL4">
														<div
															class="AvatarGroup_AvatarGroup__root__Pcsuz Contents_Contents__CompanyLogoList__E06zf">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.8fbbbed4.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt="엘리스"
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 5;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.9a528984.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt="이디엠에듀케이션"
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 6;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.0ad64c7d.png&amp;w=64&amp;q=100"
																fetchpriority="auto" alt="매스프레소(Mathpresso)"
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 7;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.c7b4f0a6.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt="에임(AIM)"
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 8;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d1238d64.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 9;">
														</div>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql Contents_Contents__MoreCount__yLrat">+171</span>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div
												class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__align-items_flex-start__PA0JE ThemeCard_ThemeCard__LoN59"
												data-attribute-id="jobs__theme__click"
												data-theme-title="재택근무 원한다면"
												data-landing-uri="/themes/workathome">
												<a class="ThemeCard_ThemeCard__Link__IvX5j"
													href="/themes/workathome"><div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE Thumbnail_Thumbnail__eN58Y">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F262_7ee78e93.jpg&amp;w=520&amp;q=100"
															fetchpriority="auto" alt="재택근무 원한다면">
														<h6
															class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql Thumbnail_Thumbnail__Title__ifA47">재택근무
															원한다면</h6>
													</div>
													<div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Contents_Contents__ALSL4">
														<div
															class="AvatarGroup_AvatarGroup__root__Pcsuz Contents_Contents__CompanyLogoList__E06zf">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.2b61adb2.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 5;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.930139fe.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 6;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.d18636d6.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt="미리디아이에이치"
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 7;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.bebe4adc.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 8;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.98199e95.png&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 9;">
														</div>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql Contents_Contents__MoreCount__yLrat">+15</span>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div
												class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__align-items_flex-start__PA0JE ThemeCard_ThemeCard__LoN59"
												data-attribute-id="jobs__theme__click"
												data-theme-title="신규 포지션 모음 원한다면"
												data-landing-uri="/themes/newposition">
												<a class="ThemeCard_ThemeCard__Link__IvX5j"
													href="/themes/newposition"><div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE Thumbnail_Thumbnail__eN58Y">
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fbanners%2Fthemes%2F439_20ede613.jpg&amp;w=520&amp;q=100"
															fetchpriority="auto" alt="신규 포지션 모음 원한다면">
														<h6
															class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql Thumbnail_Thumbnail__Title__ifA47">신규
															포지션 모음 원한다면</h6>
													</div>
													<div
														class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH Contents_Contents__ALSL4">
														<div
															class="AvatarGroup_AvatarGroup__root__Pcsuz Contents_Contents__CompanyLogoList__E06zf">
															<img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.13abbc81.png&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 5;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.26bbd0fa.jpg&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 6;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.7affd299.png&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 7;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.0b77dde8.png&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 8;"><img
																src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_4.9c73b5c8.png&amp;w=64&amp;q=100"
																fetchpriority="auto" alt=""
																class="AvatarGroup_AvatarGroup__avatar__NXsee Contents_Contents__CompanyLogoList__CompanyLogo__0Qh9F"
																style="z-index: 9;">
														</div>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql Contents_Contents__MoreCount__yLrat">+61</span>
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
		<article class="FeaturedJobArea_FeaturedJobArea__jUhHm">
			<div class="CarouselContainer_CarouselContainer__95CM6">
				<aside class="CarouselHeader_CarouselHeader__d4DeW">
					<h4
						class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql ">요즘
						뜨는 포지션</h4>
					<div class="CarouselHeader_CarouselHeader__action__C_6l_"></div>
				</aside>
				<div
					class="CarouselContainer_CarouselContainer__slider__zf_Yl CarouselContainer_CarouselContainer__slider__isEnd__HY0WT">
					<div class="slick-slider slick-initialized">
						<div class="slick-list">
							<div class="slick-track"
								style="width: 1080px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
								<div data-index="0"
									class="slick-slide slick-active slick-current" tabindex="-1"
									aria-hidden="false" style="outline: none; width: 270px;">
									<div>
										<div
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/223426" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="336" data-company-name="브로드씨엔에스"
													data-position-id="223426"
													data-position-name="AI Cloud service 웹 개발자"
													data-response-rate="97" data-ai-score=""
													data-ai-score-status=""
													data-recommend-model-status="notBase" data-domain="popular"
													data-position-index="0"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F336%2F9t8tdtm3rez8ufcy__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="low" alt="AI Cloud service 웹 개발자"
															decoding="async" loading="lazy">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="336" data-company-name="브로드씨엔에스"
															data-position-id="223426"
															data-position-name="AI Cloud service 웹 개발자"
															data-response-rate="97" data-ai-score=""
															data-ai-score-status=""
															data-recommend-model-status="notBase"
															data-domain="popular" data-position-index="0"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">AI
															Cloud service 웹 개발자</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">브로드씨엔에스</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/207248" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="886" data-company-name="넥슨코리아(NEXON)"
													data-position-id="207248"
													data-position-name="[인텔리전스랩스] 빌링 서비스 백엔드 개발자 (Java/C#)"
													data-response-rate="75" data-ai-score=""
													data-ai-score-status=""
													data-recommend-model-status="notBase" data-domain="popular"
													data-position-index="1"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F886%2Fbx7zxeirqqeboq0q__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="low"
															alt="[인텔리전스랩스] 빌링 서비스 백엔드 개발자 (Java/C#)" decoding="async"
															loading="lazy">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="886" data-company-name="넥슨코리아(NEXON)"
															data-position-id="207248"
															data-position-name="[인텔리전스랩스] 빌링 서비스 백엔드 개발자 (Java/C#)"
															data-response-rate="75" data-ai-score=""
															data-ai-score-status=""
															data-recommend-model-status="notBase"
															data-domain="popular" data-position-index="1"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">[인텔리전스랩스]
															빌링 서비스 백엔드 개발자 (Java/C#)</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">넥슨코리아(NEXON)</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/46155" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="15580" data-company-name="코보시스"
													data-position-id="46155"
													data-position-name="Windows Developer (C#, WPF)"
													data-response-rate="99" data-ai-score=""
													data-ai-score-status=""
													data-recommend-model-status="notBase" data-domain="popular"
													data-position-index="2"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F15580%2Fbsiuhyqptcq0t6mc__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="low" alt="Windows Developer (C#, WPF)"
															decoding="async" loading="lazy">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="15580" data-company-name="코보시스"
															data-position-id="46155"
															data-position-name="Windows Developer (C#, WPF)"
															data-response-rate="99" data-ai-score=""
															data-ai-score-status=""
															data-recommend-model-status="notBase"
															data-domain="popular" data-position-index="2"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">Windows
															Developer (C#, WPF)</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">코보시스</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
											class="CarouselContainer_CarouselContainer__slider__item__TJ0cf"
											tabindex="-1" style="width: 100%; display: inline-block;">
											<div data-cy="job-card" class="JobCard_JobCard__oZL4d">
												<a href="/wd/120117" data-attribute-id="position__click"
													data-job-category-id="518" data-job-category="IT"
													data-company-id="9734" data-company-name="앤서스랩코리아"
													data-position-id="120117"
													data-position-name="[Plus]Backend" data-response-rate="85"
													data-ai-score="" data-ai-score-status=""
													data-recommend-model-status="notBase" data-domain="popular"
													data-position-index="3"><div
														class="JobCard_JobCard__thumb__iNW6E">
														<div class="JobCard_JobCard__thumb__reward__lEvO4">
															<span
																class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightBold__e15ql JobCard_JobCard__thumb__reward__text__rXmLF">합격보상금
																100만원</span>
														</div>
														<img
															src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F9734%2Fgjzqhclx1aufsr4z__400_400.jpg&amp;w=400&amp;q=75"
															fetchpriority="low" alt="[Plus]Backend" decoding="async"
															loading="lazy">
														<button
															class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx IconButton_IconButton__disableGutters__lxsfN bookmarkBtn"
															aria-label="bookmark button"
															data-attribute-id="position__bookmark__click"
															data-job-category-id="518" data-job-category="IT"
															data-company-id="9734" data-company-name="앤서스랩코리아"
															data-position-id="120117"
															data-position-name="[Plus]Backend"
															data-response-rate="85" data-ai-score=""
															data-ai-score-status=""
															data-recommend-model-status="notBase"
															data-domain="popular" data-position-index="3"
															data-kind="add" style="font-size: 22px;">
															<span class="IconButton_IconButton__label__ZcWfp"><span
																class="SvgIcon_SvgIcon__root__8vwon"><svg
																		class="SvgIcon_SvgIcon__root__svg__DKYBi"
																		viewBox="0 0 24 24">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																			d="M7.36628 2.6001C7.37735 2.6001 7.38846 2.6001 7.39961 2.6001L16.6329 2.6001C17.0245 2.60008 17.3709 2.60006 17.6581 2.62353C17.9639 2.64851 18.2807 2.70452 18.5892 2.86168C19.0408 3.09178 19.4079 3.45893 19.638 3.91052C19.7952 4.21898 19.8512 4.53583 19.8762 4.84161C19.8996 5.12877 19.8996 5.47526 19.8996 5.86676L19.8996 21.5001C19.8996 21.8252 19.7243 22.125 19.441 22.2844C19.1577 22.4439 18.8104 22.4381 18.5325 22.2694L11.9996 18.303L5.46669 22.2694C5.18881 22.4381 4.84154 22.4439 4.55823 22.2844C4.27492 22.125 4.09961 21.8252 4.09961 21.5001V5.9001C4.09961 5.88895 4.09961 5.87784 4.09961 5.86677C4.09959 5.47526 4.09958 5.12877 4.12304 4.84161C4.14802 4.53583 4.20403 4.21898 4.3612 3.91052C4.59129 3.45893 4.95845 3.09178 5.41003 2.86168C5.71849 2.70452 6.03534 2.64851 6.34113 2.62353C6.62828 2.60006 6.97477 2.60008 7.36628 2.6001ZM6.4877 4.41755C6.29323 4.43344 6.23963 4.45917 6.22722 4.4655C6.11432 4.52302 6.02253 4.61481 5.96501 4.72771C5.95868 4.74012 5.93295 4.79372 5.91706 4.98819C5.90031 5.19317 5.89961 5.46521 5.89961 5.9001V19.9008L11.5325 16.4808C11.8195 16.3065 12.1797 16.3065 12.4667 16.4808L18.0996 19.9008V5.9001C18.0996 5.46521 18.0989 5.19317 18.0822 4.98819C18.0663 4.79372 18.0405 4.74012 18.0342 4.72771C17.9767 4.61481 17.8849 4.52302 17.772 4.4655C17.7596 4.45917 17.706 4.43344 17.5115 4.41755C17.3065 4.4008 17.0345 4.4001 16.5996 4.4001H7.39961C6.96472 4.4001 6.69268 4.4008 6.4877 4.41755Z"
																			fill="#ffffff"></path></svg></span></span>
														</button>
													</div>
													<div>
														<p
															class="Typography_Typography__root__xYuMs Typography_Typography__body1__UmyQW Typography_Typography__weightBold__e15ql JobCard_JobCard__body__position__P8R0W">[Plus]Backend</p>
														<span
															class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi JobCard_JobCard__body__company__F6XoH">앤서스랩코리아</span>
														<div class="JobCard_JobCard__body__badge__yXjNu"></div>
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
</body>
</html>