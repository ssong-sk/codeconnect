<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
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
					class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__xs__12__rVqKh Grid_Grid__grid__md__4__YPyIl MainLayout_MainLayout__sidebar__G8teL">
					<div
						class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__align-items_flex-start__PA0JE LnbDesktop_LnbDesktop__root__yg5QP MainLayout_MainLayout__pcLnb___mU9a">
						<ul class="LnbDesktop_LnbDesktop__menus____3yL">
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD LnbDesktop_LnbDesktop__activeLink__A05_V"
								data-attribute-id="myActivity__snb" data-snb-kind="profile"
								href="/my/profile"><span class="Button_Button__label__1Kk0v"><h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql">프로필</h6></span><span
									class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="myActivity"
								href="/my/activity"><span
									class="Button_Button__label__1Kk0v"><h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi">내
											활동</h6></span><span class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="settings"
								href="/profile/settings?type=referral"><span
									class="Button_Button__label__1Kk0v"><h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi">설정</h6></span><span
									class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><hr
									class="Divider_Divider__root__f2LD0 LnbDesktop_LnbDesktop__divider__UoHLu"></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><button
									class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
									data-attribute-id="myActivity__snb" data-snb-kind="logout">
									<span class="Button_Button__label__1Kk0v"><h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi LnbDesktop_LnbDesktop__logout__PwOFY">로그아웃</h6></span><span
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
											class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE"></div>
										<div
											class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__info__dUe_s">
											<h4
												class="Typography_Typography__root__xYuMs Typography_Typography__heading1__bVyRs Typography_Typography__weightBold__e15ql Typography_Typography__noWrap__ovbzF Typography_Typography__alignLeft__fYbY6 ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__info__title__KuxZF">김태윤</h4>
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
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileView_ProfileView__responsive__mobile__WO3T6">
							<div
								class="Grid_Grid__container__J9CcC Grid_Grid__item__FUkSS Grid_Grid__align-items_center__VEikH ProfileViewHeaderActions_ProfileViewHeaderActions__root__MMI7E">
								<button
									class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeMedium__k3ora ProfileViewHeaderActions_ProfileViewHeaderActions__btnSetting__5erq0">
									<span class="Button_Button__label__1Kk0v">설정</span><span
										class="Button_Button__interaction__kkYaa"></span>
								</button>
								<button
									class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__outlined__vTWfA ProfileViewHeaderActions_ProfileViewHeaderActions__iconButton__7TOPE"
									aria-label="공유하기" style="font-size: 20px;">
									<span class="IconButton_IconButton__label__ZcWfp"><span
										class="SvgIcon_SvgIcon__root__8vwon"><svg
												class="SvgIcon_SvgIcon__root__svg__DKYBi"
												viewBox="0 0 24 24">
												<path fill-rule="evenodd" clip-rule="evenodd"
													d="M16.2725 7.1267C15.9272 7.48428 15.3574 7.49428 14.9999 7.14902L12.9 5.12157V14.5008C12.9 14.9978 12.4971 15.4008 12 15.4008C11.5029 15.4008 11.1 14.9978 11.1 14.5008V5.12157L9.00014 7.14902C8.64255 7.49428 8.07279 7.48428 7.72754 7.1267C7.38229 6.76911 7.39228 6.19935 7.74987 5.8541L11.3749 2.3541C11.7236 2.01738 12.2764 2.01738 12.6251 2.3541L16.2501 5.8541C16.6077 6.19935 16.6177 6.76911 16.2725 7.1267ZM20.9 9.99941L20.9 19.4298C20.9001 19.6841 20.9001 19.9261 20.8834 20.1301C20.8652 20.3525 20.8229 20.6076 20.6929 20.8626C20.5108 21.2201 20.2201 21.5108 19.8626 21.6929C19.6076 21.8228 19.3525 21.8652 19.1301 21.8834C18.9262 21.9001 18.6841 21.9 18.4298 21.9H5.57028C5.31598 21.9 5.0739 21.9001 4.86995 21.8834C4.64754 21.8652 4.39243 21.8228 4.13746 21.6929C3.77995 21.5108 3.48929 21.2201 3.30713 20.8626C3.17721 20.6076 3.13482 20.3525 3.11665 20.1301C3.09999 19.9261 3.10001 19.6841 3.10004 19.4298V9.99941H4.90004V19.9997C4.90004 20.0549 4.94481 20.0997 5.00004 20.0997H19C19.0553 20.0997 19.1 20.0549 19.1 19.9997V9.99941H20.9Z"></path></svg></span></span><span
										class="IconButton_IconButton__interaction__I48Mv"></span>
								</button>
							</div>
						</section>
						<section
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileView_ProfileView__borderSection__VkDe7">
							<hr
								class="Divider_Divider__root__f2LD0 Divider_Divider__colorAlternative__nElS3">
						</section>
						<section
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE">
							<div
								class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__root__YhmF0">
								<button class="Box_Box__root__haR8X"
									data-attribute-id="profile__addCareer__click"
									data-career-count="0">
									<div
										class="Grid_Grid__container__J9CcC Grid_Grid__justify_space-between__SsVJS Grid_Grid__align-items_center__VEikH">
										<p
											class="Typography_Typography__root__xYuMs Typography_Typography__body2__EpxWz Typography_Typography__weightBold__e15ql ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__Cad9U">경력
											추가</p>
										<button
											class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__Cad9U"
											aria-label="경력 추가" style="font-size: 20px;">
											<span class="IconButton_IconButton__label__ZcWfp"><span
												class="SvgIcon_SvgIcon__root__8vwon"><svg
														class="SvgIcon_SvgIcon__root__svg__DKYBi"
														viewBox="0 0 24 24">
														<path
															d="M11.9996 2.3501C12.4967 2.3501 12.8996 2.75304 12.8996 3.2501V11.1001H20.7496C21.2467 11.1001 21.6496 11.503 21.6496 12.0001C21.6496 12.4972 21.2467 12.9001 20.7496 12.9001H12.8996V20.7501C12.8996 21.2472 12.4967 21.6501 11.9996 21.6501C11.5026 21.6501 11.0996 21.2472 11.0996 20.7501V12.9001H3.24961C2.75255 12.9001 2.34961 12.4972 2.34961 12.0001C2.34961 11.503 2.75255 11.1001 3.24961 11.1001H11.0996V3.2501C11.0996 2.75304 11.5026 2.3501 11.9996 2.3501Z"></path></svg></span></span><span
												class="IconButton_IconButton__interaction__I48Mv"></span>
										</button>
									</div>
								</button>
								<button class="Box_Box__root__haR8X"
									data-attribute-id="profile__addEducation__click"
									data-education-count="0">
									<div
										class="Grid_Grid__container__J9CcC Grid_Grid__justify_space-between__SsVJS Grid_Grid__align-items_center__VEikH">
										<p
											class="Typography_Typography__root__xYuMs Typography_Typography__body2__EpxWz Typography_Typography__weightBold__e15ql ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__Cad9U">학력
											추가</p>
										<button
											class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__Cad9U"
											aria-label="학력 추가" style="font-size: 20px;">
											<span class="IconButton_IconButton__label__ZcWfp"><span
												class="SvgIcon_SvgIcon__root__8vwon"><svg
														class="SvgIcon_SvgIcon__root__svg__DKYBi"
														viewBox="0 0 24 24">
														<path
															d="M11.9996 2.3501C12.4967 2.3501 12.8996 2.75304 12.8996 3.2501V11.1001H20.7496C21.2467 11.1001 21.6496 11.503 21.6496 12.0001C21.6496 12.4972 21.2467 12.9001 20.7496 12.9001H12.8996V20.7501C12.8996 21.2472 12.4967 21.6501 11.9996 21.6501C11.5026 21.6501 11.0996 21.2472 11.0996 20.7501V12.9001H3.24961C2.75255 12.9001 2.34961 12.4972 2.34961 12.0001C2.34961 11.503 2.75255 11.1001 3.24961 11.1001H11.0996V3.2501C11.0996 2.75304 11.5026 2.3501 11.9996 2.3501Z"></path></svg></span></span><span
												class="IconButton_IconButton__interaction__I48Mv"></span>
										</button>
									</div>
								</button>
							</div>
						</section>
						<section
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE"></section>
					</div>
				</div>
				<div
					class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__md__1__aOHPk MainLayout_MainLayout__space__8eQvZ"></div>
			</div>
		</div>
	</div>
	 <button type="button" class="btn btn-danger" style="width: 100px;"
     onclick="location.href='${root}/login/logoutprocess'">Logout</button>
</body>
</html>