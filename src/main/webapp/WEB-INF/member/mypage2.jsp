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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" type="text/css" href="/css/mypage2.css">
<title>Insert title here</title>
</head>
<body>
	<div class="MainLayout_MainLayout__shOxU">
		<div class="MainLayout_MainLayout__root__HPQqc">
			<div class="Grid_Grid__container__43uvK Grid_Grid__spacing__5__2f6bw">
				<div
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__12__wtorY Grid_Grid__grid__md__4__AihNY MainLayout_MainLayout__sidebar__paSI7">
					<div
						class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH LnbDesktop_LnbDesktop__root__ac_hF MainLayout_MainLayout__pcLnb___avSz">
						<ul class="LnbDesktop_LnbDesktop__menus__b_7nM">
							<li class="LnbDesktop_LnbDesktop__item__4_0_r"><a
								class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm Button_Button__fullWidth__zAnDP LnbDesktop_LnbDesktop__text__jRj30"
								data-attribute-id="myActivity__snb" data-snb-kind="profile"
								href="/my/profile"><span class="Button_Button__label__K0sBs"><h6
											class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightMedium__GXnOM">프로필</h6></span><span
									class="Button_Button__interaction__1LUyr"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__4_0_r"><a
								class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm Button_Button__fullWidth__zAnDP LnbDesktop_LnbDesktop__text__jRj30 LnbDesktop_LnbDesktop__activeLink__4PF3C"
								data-attribute-id="myActivity__snb" data-snb-kind="myActivity"
								href="/my/activity"><span
									class="Button_Button__label__K0sBs"><h6
											class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY">내
											활동</h6></span><span class="Button_Button__interaction__1LUyr"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__4_0_r"><a
								class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm Button_Button__fullWidth__zAnDP LnbDesktop_LnbDesktop__text__jRj30"
								data-attribute-id="myActivity__snb" data-snb-kind="settings"
								href="/profile/settings?type=referral"><span
									class="Button_Button__label__K0sBs"><h6
											class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightMedium__GXnOM">설정</h6></span><span
									class="Button_Button__interaction__1LUyr"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__4_0_r"><hr
									class="Divider_Divider__root__vpedr LnbDesktop_LnbDesktop__divider__0BR8n"></li>
							<li class="LnbDesktop_LnbDesktop__item__4_0_r"><button
									class="Button_Button__root__m1NGq Button_Button__text__tIDdK Button_Button__textAssistive__AQpOp Button_Button__textSizeMedium__uBHGm Button_Button__fullWidth__zAnDP LnbDesktop_LnbDesktop__text__jRj30"
									data-attribute-id="myActivity__snb" data-snb-kind="logout">
									<span class="Button_Button__label__K0sBs"><h6
											class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightMedium__GXnOM LnbDesktop_LnbDesktop__logout__85mYF">로그아웃</h6></span><span
										class="Button_Button__interaction__1LUyr"></span>
								</button></li>
						</ul>
					</div>
				</div>
				<div
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__md__1__Wzfhp MainLayout_MainLayout__space__vN0G7"></div>
				<div
					class="Grid_Grid__item__4GoIZ Grid_Grid__justify_center__zw3BU Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__12__wtorY Grid_Grid__grid__md__6__d5R_j">

					<div class="ActivityPage_ActivityPage__ta_Rp">
						<section class="FavoriteSummary_FavoriteSummary__pOUPg">
							<h2
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM">내
								관심사</h2>
							<div class="FavoriteSummary_FavoriteSummary__container__cEWK2">
								<div
									class="Grid_Grid__container__43uvK FavoriteSummary_FavoriteSummary__container_counterContainer__idP5S">
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__4__d_Dih">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__exploreStatus"
											data-status-kind="bookmark" href="/profile/bookmarks"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">북마크</span></a>
									</div>
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__4__d_Dih">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__exploreStatus"
											data-status-kind="follows" href="/my/following-companies"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">관심회사</span></a>
									</div>
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__4__d_Dih">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__exploreStatus"
											data-status-kind="followingTags" href="/my/following-tags"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">관심태그</span></a>
									</div>
								</div>
							</div>
						</section>
						<section class="BasicResume_BasicResume__ROQNx">
							<h2
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM">기본
								이력서</h2>
							<div class="BasicResume_BasicResume__container__9Fg__">
								<div class="BasicResume_BasicResume__container__progress__04eAk">
									<div
										class="BasicResume_BasicResume__container__progress__content__j639k">
										<div
											class="BasicResume_BasicResume__container__progress__content__descriptions__xQNnH">
											<p
												class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightBold__KkJEY BasicResume_BasicResume__container__progress__content__descriptions__rate__zaN_7">
												이력서 완성률<span class="">40%</span>
											</p>
											<span
												class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightMedium__GXnOM BasicResume_BasicResume__container__wantedResume__notice__kH_RE">간단한
												소개만 작성해도 면접 제안을 받을 수 있어요!</span>
										</div>
									</div>
									<div class="ProgressBar_ProgressBar__gHqfi">
										<div class="ProgressBar_ProgressBar__progress__sYNhQ"
											style="width: 60%;"></div>
									</div>
									<button
										class="Button_Button__root__m1NGq Button_Button__contained__qyP2s Button_Button__containedPrimary__kCB60 Button_Button__containedSizeMedium__xBgIW Button_Button__fullWidth__zAnDP BasicResume_BasicResume__container__wantedResume__button__FnCW7"
										data-attribute-id="myActivity__profile__update"
										data-profile-level="2">
										<span class="Button_Button__label__K0sBs">이력서 업데이트 하기</span><span
											class="Button_Button__interaction__1LUyr"></span>
									</button>
								</div>
								<button type="button"
									class="BasicResume_BasicResume__container__wantedResume__A8d5Z">
									<span
										class="Typography_Typography__root__RdAI1 Typography_Typography__label1__hNiv5 Typography_Typography__weightMedium__GXnOM">김태윤
										1</span><span
										class="SvgIcon_SvgIcon__root__OHiSO BasicResume_BasicResume__container__wantedResume__arrow__hrUJC"><svg
											class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
											<path
												d="M7.86346 3.36272C7.51199 3.7142 7.51199 4.28405 7.86346 4.63552L15.2271 11.9991L7.86346 19.3627C7.51199 19.7142 7.51199 20.284 7.86346 20.6355C8.21493 20.987 8.78478 20.987 9.13625 20.6355L17.1362 12.6355C17.4877 12.284 17.4877 11.7142 17.1362 11.3627L9.13625 3.36272C8.78478 3.01125 8.21493 3.01125 7.86346 3.36272Z"></path></svg></span>
								</button>
							</div>
						</section>
						<section class="ApplySummary_ApplySummary__WuQPZ">
							<h2
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM">지원
								현황</h2>
							<div class="ApplySummary_ApplySummary__container__NTH3o">
								<div
									class="Grid_Grid__container__43uvK ApplySummary_ApplySummary__container_counterContainer__SiBuu">
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__applicationStatus"
											data-status-kind="applyDone"
											href="/status/applications/applied?status=complete"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">지원
												완료</span></a>
									</div>
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__applicationStatus"
											data-status-kind="pass"
											href="/status/applications/applied?status=pass"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">서류
												통과</span></a>
									</div>
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__applicationStatus"
											data-status-kind="hire"
											href="/status/applications/applied?status=hire"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">최종
												합격</span></a>
									</div>
									<div
										class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
										<a class="CountSummary_CountSummary__mm865"
											data-attribute-id="myActivity__applicationStatus"
											data-status-kind="rejected"
											href="/status/applications/applied?status=reject"><h6
												class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
											<span
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">불합격</span></a>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__md__1__Wzfhp MainLayout_MainLayout__space__vN0G7"></div>
			</div>
		</div>
	</div>
</body>
</html>