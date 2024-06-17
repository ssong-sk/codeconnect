<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<title>Insert title here</title>
</head>
<body>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<div class="MainLayout_MainLayout__2EBgM">
		<div class="MainLayout_MainLayout__root__p6itg">
			<div class="Grid_Grid__container__J9CcC Grid_Grid__spacing__5__ZwgDV">
				<div
					class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__xs__12__rVqKh Grid_Grid__grid__md__4__YPyIl MainLayout_MainLayout__sidebar__G8teL"
					style="padding-top: 59px; padding-left: 50px;">
					<div
						class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__align-items_flex-start__PA0JE LnbDesktop_LnbDesktop__root__yg5QP MainLayout_MainLayout__pcLnb___mU9a">
						<ul class="LnbDesktop_LnbDesktop__menus____3yL">
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD LnbDesktop_LnbDesktop__activeLink__A05_V"
								data-attribute-id="myActivity__snb" data-snb-kind="profile"
								href="${root }/member/mypage"><span class="Button_Button__label__1Kk0v">
								<h6 class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql">프로필</h6></span><span
									class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="myActivity"
								href="#"><span
									class="Button_Button__label__1Kk0v">
									<h6 class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi">내
											활동</h6></span><span class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="settings"
								href="#"><span
									class="Button_Button__label__1Kk0v">
									<h6 class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi">설정</h6></span><span
									class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><hr
									class="Divider_Divider__root__f2LD0 LnbDesktop_LnbDesktop__divider__UoHLu"></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><button
									class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
									type="button" onclick="location.href='/login/logoutprocess'">
									<span class="Button_Button__label__1Kk0v">
									<h6 class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi LnbDesktop_LnbDesktop__logout__PwOFY">로그아웃</h6></span><span
										class="Button_Button__interaction__kkYaa"></span>
								</button></li>
						</ul>
					</div>
				</div>
				<div
					class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__md__1__aOHPk MainLayout_MainLayout__space__8eQvZ"></div>
				<div
					class="Grid_Grid__item__FUkSS Grid_Grid__justify_center__QJu2X Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__xs__12__rVqKh Grid_Grid__grid__md__6__9g_JE">

					<div
						class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__wrap_nowrap__4r_cp ProfileView_ProfileView__root__eOS_q">
						<section
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE">
							<div
								class="Grid_Grid__container__J9CcC Grid_Grid__align-items_flex-start__PA0JE ProfileViewHeader_ProfileViewHeader__root__PjH6q">
								<div
									class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__align-self_stretch__awciG">
									<div
										class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__root__OR4Te">
										<div
											class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__info__dUe_s">
											<h4
												class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql Typography_Typography__noWrap__ovbzF Typography_Typography__alignLeft__fYbY6 ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__info__title__KuxZF">${sessionScope.myid}</h4>
											<p
												class="Typography_Typography__root__xYuMs Typography_Typography__body2-reading__1wjEy Typography_Typography__weightMedium__O0Rdi ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__info__subText__QIJLo">개발</p>
										</div>
									</div>
								</div>
								<div
									class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileViewHeader_ProfileViewHeader__actions__q2udg">
									<div
										class="Grid_Grid__container__J9CcC Grid_Grid__item__FUkSS Grid_Grid__align-items_center__VEikH ProfileViewHeaderActions_ProfileViewHeaderActions__root__MMI7E">
										<button
											class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeMedium__k3ora ProfileViewHeaderActions_ProfileViewHeaderActions__btnSetting__5erq0">
											<span class="Button_Button__label__1Kk0v">설정</span><span
												class="Button_Button__interaction__kkYaa"></span>
										</button>

									</div>
								</div>
							</div>
						</section>
						<div
							class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__root__TSJnS">
							<button
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeLarge__H3V3d ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__buttonStyle__kcgeU">
								<span class="Button_Button__label__1Kk0v"><span
									class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightMedium__O0Rdi ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__label__6UCt6">팔로워
										<strong>0</strong>
								</span></span><span class="Button_Button__interaction__kkYaa"></span>
							</button>
							<span
								class="SvgIcon_SvgIcon__root__8vwon ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__dotDivider__JxHAJ"><svg
									class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M17.9999 12C17.9999 15.312 15.3119 18.0001 11.9999 18.0001C8.68794 18.0001 5.99994 15.312 5.99994 12C5.99994 8.68801 8.68794 6 11.9999 6C15.3119 6 17.9999 8.68801 17.9999 12Z"></path></svg></span>
							<button
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeLarge__H3V3d ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__buttonStyle__kcgeU">
								<span class="Button_Button__label__1Kk0v"><span
									class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightMedium__O0Rdi ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__label__6UCt6">팔로잉
										<strong>0</strong>
								</span></span><span class="Button_Button__interaction__kkYaa"></span>
							</button>
						</div>
						<section
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE"></section>
						<section
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileView_ProfileView__borderSection__VkDe7">
							<hr
								class="Divider_Divider__root__f2LD0 Divider_Divider__colorAlternative__nElS3">
						</section>
						<section
							class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH">
							<div
								class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__root__YtecC">
								<div
									class="Box_Box__root__WZu52 ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__guideText__dfNDx">
									<span
										class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__DK3Qa">나에게
										맞는 커리어 기회를 찾을 수 있게 <br>
									<strong>경력 / 학력을 추가</strong>하고 <strong>이력서를 완성</strong>해 주세요.
									</span>
								</div>
								<button class="Box_Box__root__WZu52"
									data-attribute-id="profile__addCareer__click"
									data-career-count="0">
									<div
										class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh">
										<p
											class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightBold__KkJEY ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__DK3Qa">경력
											추가</p>
										<button
											class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__DK3Qa"
											aria-label="경력 추가" style="font-size: 20px;">
											<span class="IconButton_IconButton__label__o4AtY"><span
												class="SvgIcon_SvgIcon__root__OHiSO"><svg
														class="SvgIcon_SvgIcon__root__svg__ohdSc"
														viewBox="0 0 24 24">
														<path
															d="M11.9997 3.10254C12.4968 3.10254 12.8997 3.50548 12.8997 4.00254V11.1025H19.9997C20.4968 11.1025 20.8997 11.5055 20.8997 12.0025C20.8997 12.4996 20.4968 12.9025 19.9997 12.9025H12.8997V20.0025C12.8997 20.4996 12.4968 20.9025 11.9997 20.9025C11.5027 20.9025 11.0997 20.4996 11.0997 20.0025V12.9025H3.99973C3.50268 12.9025 3.09973 12.4996 3.09973 12.0025C3.09973 11.5055 3.50268 11.1025 3.99973 11.1025H11.0997V4.00254C11.0997 3.50548 11.5027 3.10254 11.9997 3.10254Z"></path></svg></span></span><span
												class="IconButton_IconButton__interaction__7RjPt"></span>
										</button>
									</div>
								</button>
								<button class="Box_Box__root__WZu52"
									data-attribute-id="profile__addEducation__click"
									data-education-count="0">
									<div
										class="Grid_Grid__container__43uvK Grid_Grid__justify_space-between__xzhoO Grid_Grid__align-items_center__2CxBh">
										<p
											class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightBold__KkJEY ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__DK3Qa">학력
											추가</p>
										<button
											class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__DK3Qa"
											aria-label="학력 추가" style="font-size: 20px;">
											<span class="IconButton_IconButton__label__o4AtY"><span
												class="SvgIcon_SvgIcon__root__OHiSO"><svg
														class="SvgIcon_SvgIcon__root__svg__ohdSc"
														viewBox="0 0 24 24">
														<path
															d="M11.9997 3.10254C12.4968 3.10254 12.8997 3.50548 12.8997 4.00254V11.1025H19.9997C20.4968 11.1025 20.8997 11.5055 20.8997 12.0025C20.8997 12.4996 20.4968 12.9025 19.9997 12.9025H12.8997V20.0025C12.8997 20.4996 12.4968 20.9025 11.9997 20.9025C11.5027 20.9025 11.0997 20.4996 11.0997 20.0025V12.9025H3.99973C3.50268 12.9025 3.09973 12.4996 3.09973 12.0025C3.09973 11.5055 3.50268 11.1025 3.99973 11.1025H11.0997V4.00254C11.0997 3.50548 11.5027 3.10254 11.9997 3.10254Z"></path></svg></span></span><span
												class="IconButton_IconButton__interaction__7RjPt"></span>
										</button>
									</div>
								</button>
							</div>
						</section>
					</div>

				</div>

				<section
					class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE"></section>
			</div>
		</div>
		<div
			class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__md__1__aOHPk MainLayout_MainLayout__space__8eQvZ"></div>
	</div>
</body>
</html>