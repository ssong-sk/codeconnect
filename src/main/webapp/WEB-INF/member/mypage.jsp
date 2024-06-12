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
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>

	<c:set var="root" value="<%=request.getContextPath()%>" />
<body>
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
						class="Grid_Grid__container__J9CcC Grid_Grid__justify_space-between__SsVJS Grid_Grid__align-items_center__VEikH LnbMobile_LnbMobile__root__ER6GY MainLayout_MainLayout__mobileLnb__pdbsA">
						<div
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE">
							<ul class="LnbMobile_LnbMobile__menus__zCKwk">
								<li
									class="LnbMobile_LnbMobile__item__ebvjy LnbMobile_LnbMobile__activeLink__TUGVW"
									data-attribute-id="myActivity__snb" data-snb-kind="profile"><a
									class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__textDisableGutters__xo2we LnbMobile_LnbMobile__item__button__ajeXV"
									href="/my/profile"><span
										class="Button_Button__label__1Kk0v"><span
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql">프로필</span></span></a></li>
								<li class="LnbMobile_LnbMobile__item__ebvjy"
									data-attribute-id="myActivity__snb" data-snb-kind="myActivity"><a
									class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__textDisableGutters__xo2we LnbMobile_LnbMobile__item__button__ajeXV"
									href="/my/activity"><span
										class="Button_Button__label__1Kk0v"><span
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql LnbMobile_LnbMobile__text__OZbiJ">내
												활동</span></span><span class="Button_Button__interaction__kkYaa"></span></a></li>
							</ul>
						</div>
						<div
							class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE">
							<a
								class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx LnbMobile_LnbMobile__setting__5ZhuI"
								href="/profile/settings?type=referral" style="font-size: 24px;"><span
								class="IconButton_IconButton__label__ZcWfp"><span
									class="SvgIcon_SvgIcon__root__8vwon"><svg
											class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M9.60754 2.06574C10.3769 1.89163 11.1779 1.7998 11.9997 1.7998C12.8215 1.7998 13.6225 1.89165 14.3919 2.06578C15.2885 2.26868 15.7249 3.04131 15.8957 3.58605C16.0281 4.00838 16.3212 4.39132 16.762 4.6377C17.1748 4.86852 17.6401 4.93603 18.0793 4.85837C18.6446 4.75841 19.5004 4.80625 20.0794 5.48269C20.8156 6.3426 21.41 7.32341 21.826 8.39142C22.2102 9.37777 21.6421 10.2545 21.1697 10.6938C20.8081 11.0301 20.5918 11.493 20.5918 11.9998C20.5918 12.5066 20.8081 12.9694 21.1697 13.3057C21.6421 13.7451 22.2102 14.6218 21.826 15.6081C21.4102 16.6758 20.8159 17.6564 20.0801 18.5161C19.501 19.1928 18.645 19.2406 18.0795 19.1405C17.6402 19.0628 17.1749 19.1303 16.7619 19.3611C16.3211 19.6076 16.0278 19.9907 15.8955 20.4131C15.7249 20.958 15.2884 21.731 14.3916 21.9339C13.6223 22.108 12.8214 22.1998 11.9997 22.1998C11.1779 22.1998 10.3769 22.108 9.60756 21.9339C8.71097 21.731 8.27452 20.9583 8.10377 20.4136C7.9714 19.9912 7.67821 19.6083 7.23749 19.3619C6.82461 19.1311 6.35934 19.0636 5.9201 19.1412C5.35473 19.2412 4.49894 19.1934 3.91987 18.5169C3.18377 17.657 2.58932 16.6763 2.17334 15.6083C1.78914 14.6219 2.35731 13.7451 2.82974 13.3058C3.19135 12.9695 3.40763 12.5066 3.40763 11.9998C3.40763 11.4929 3.19135 11.0301 2.82975 10.6938C2.35732 10.2544 1.78916 9.37768 2.17336 8.39128C2.58932 7.32336 3.18374 6.34263 3.91979 5.48277C4.49887 4.80629 5.35468 4.75847 5.92005 4.85846C6.35929 4.93614 6.82456 4.86863 7.23745 4.6378C7.67818 4.39141 7.97137 4.00845 8.10374 3.5861C8.27448 3.04133 8.71093 2.26864 9.60754 2.06574ZM10.0437 3.9151C10.0402 3.91842 10.0351 3.92356 10.0286 3.93117C9.99544 3.97007 9.95117 4.04463 9.91678 4.15433C9.64147 5.03276 9.03555 5.80932 8.1646 6.29623C7.35252 6.75023 6.44029 6.87994 5.58918 6.72942C5.48778 6.71149 5.4109 6.7168 5.36792 6.72711C5.36081 6.72881 5.35554 6.73038 5.35182 6.73164C4.7614 7.42428 4.28609 8.20934 3.95215 9.05952C3.95342 9.06397 3.95533 9.06988 3.95817 9.07742C3.97866 9.13177 4.03133 9.21659 4.12369 9.30249C4.84802 9.97614 5.30763 10.9335 5.30763 11.9998C5.30763 13.0661 4.84801 14.0234 4.12368 14.6971C4.03131 14.783 3.97865 14.8678 3.95815 14.9222C3.95531 14.9297 3.95341 14.9356 3.95214 14.94C4.28609 15.7903 4.76142 16.5754 5.35188 17.268C5.35561 17.2693 5.36087 17.2709 5.36799 17.2726C5.41097 17.2829 5.48784 17.2882 5.58923 17.2703C6.44034 17.1197 7.35257 17.2495 8.16464 17.7035C9.03557 18.1904 9.64148 18.9669 9.9168 19.8453C9.95119 19.955 9.99546 20.0295 10.0287 20.0684C10.0351 20.0761 10.0402 20.0812 10.0437 20.0845C10.6711 20.2252 11.3258 20.2998 11.9997 20.2998C12.6735 20.2998 13.3281 20.2252 13.9555 20.0845C13.959 20.0812 13.964 20.0761 13.9705 20.0685C14.0037 20.0295 14.048 19.955 14.0824 19.8452C14.3576 18.9665 14.9636 18.1897 15.8348 17.7027C16.647 17.2486 17.5594 17.119 18.4106 17.2696C18.512 17.2875 18.5889 17.2822 18.6319 17.2719C18.639 17.2702 18.6443 17.2686 18.648 17.2674C19.2382 16.5748 19.7134 15.7899 20.0472 14.9399C20.0459 14.9355 20.044 14.9296 20.0412 14.922C20.0207 14.8677 19.968 14.7829 19.8757 14.697C19.1514 14.0233 18.6918 13.066 18.6918 11.9998C18.6918 10.9336 19.1514 9.97623 19.8757 9.3026C19.968 9.2167 20.0207 9.13188 20.0412 9.07753C20.044 9.07 20.0459 9.06409 20.0472 9.05964C19.7132 8.20939 19.2379 7.42426 18.6474 6.73158C18.6437 6.73032 18.6384 6.72874 18.6313 6.72704C18.5883 6.71674 18.5115 6.71143 18.4101 6.72935C17.559 6.87983 16.6468 6.7501 15.8348 6.29613C14.9639 5.80924 14.358 5.03273 14.0827 4.15434C14.0483 4.04465 14.004 3.9701 13.9708 3.9312C13.9643 3.92359 13.9593 3.91845 13.9557 3.91513C13.3283 3.77442 12.6736 3.6998 11.9997 3.6998C11.3257 3.6998 10.6711 3.77441 10.0437 3.9151ZM20.0496 9.04879C20.0496 9.04879 20.0496 9.04917 20.0495 9.04997L20.0496 9.04879ZM3.94972 14.9509C3.9497 14.9509 3.94972 14.9505 3.94985 14.9497L3.94972 14.9509ZM8.04979 11.9998C8.04979 9.81828 9.81827 8.0498 11.9998 8.0498C14.1813 8.0498 15.9498 9.81828 15.9498 11.9998C15.9498 14.1813 14.1813 15.9498 11.9998 15.9498C9.81827 15.9498 8.04979 14.1813 8.04979 11.9998ZM11.9998 9.9498C10.8676 9.9498 9.94979 10.8676 9.94979 11.9998C9.94979 13.132 10.8676 14.0498 11.9998 14.0498C13.132 14.0498 14.0498 13.132 14.0498 11.9998C14.0498 10.8676 13.132 9.9498 11.9998 9.9498Z"></path></svg></span></span><span
								class="IconButton_IconButton__interaction__I48Mv"></span></a>
						</div>
					</div>
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
											class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE">
											<div
												class="Avatar_Avatar__root__5Xq6z Avatar_Avatar__sizeXlarge__cwS_g ProfileViewHeaderAvatar_ProfileViewHeaderAvatar__avatar__d0_38">
											</div>
										</div>
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
							<hr
								class="Divider_Divider__root__f2LD0 Divider_Divider__vertical__BDdji ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__divider__AZUdR">
							<a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeLarge__H3V3d ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__buttonStyle__kcgeU"
								href="/wpoint/mypoint" data-attribute-id="profile__point__click"><span
								class="Button_Button__label__1Kk0v"><span
									class="Typography_Typography__root__xYuMs Typography_Typography__label1__TCYoE Typography_Typography__weightMedium__O0Rdi ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__label__6UCt6">포인트
										<strong>0P<span
											class="SvgIcon_SvgIcon__root__8vwon ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__chevronRightIcon__YjCRo"><svg
													class="SvgIcon_SvgIcon__root__svg__DKYBi"
													viewBox="0 0 24 24">
													<path
														d="M7.5812 3.08022C7.07352 3.58791 7.07352 4.41102 7.5812 4.9187L14.662 11.9995L7.5812 19.0802C7.07352 19.5879 7.07352 20.411 7.5812 20.9187C8.08888 21.4264 8.912 21.4264 9.41968 20.9187L17.4197 12.9187C17.9274 12.411 17.9274 11.5879 17.4197 11.0802L9.41968 3.08022C8.912 2.57254 8.08888 2.57254 7.5812 3.08022Z"></path></svg></span></strong>
								</span></span><span class="Button_Button__interaction__kkYaa"></span></a>
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
								<div
									class="Box_Box__root__haR8X ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__guideText__u5qOB">
									<img
										src="https://static.wanted.co.kr/images/community/speech-bubbles.svg"
										width="51" height="26"
										alt="나에게 맞는 커리어 기회를 찾을 수 있게 경력/학력을 추가하고 이력서를 완성해 주세요."
										class="ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__img__4YvSM"><span
										class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi ProfileViewCareerEducationAdd_ProfileViewCareerEducationAdd__text__Cad9U">나에게
										맞는 커리어 기회를 찾을 수 있게 <br>
									<strong>경력 / 학력을 추가</strong>하고 <strong>이력서를 완성</strong>해 주세요.
									</span>
								</div>
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
</body>
</html>