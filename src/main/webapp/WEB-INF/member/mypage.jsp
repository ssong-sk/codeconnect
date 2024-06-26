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
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="profile"
								href="?page=profile"><span
									class="Button_Button__label__1Kk0v">
										<h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightBold__e15ql">프로필</h6>
								</span><span class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="myActivity"
								href="?page=myActivity"><span
									class="Button_Button__label__1Kk0v">
										<h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi">내
											활동</h6>
								</span><span class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><a
								class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
								data-attribute-id="myActivity__snb" data-snb-kind="settings"
								href="?page=settings"><span
									class="Button_Button__label__1Kk0v">
										<h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi">설정</h6>
								</span><span class="Button_Button__interaction__kkYaa"></span></a></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><hr
									class="Divider_Divider__root__f2LD0 LnbDesktop_LnbDesktop__divider__UoHLu"></li>
							<li class="LnbDesktop_LnbDesktop__item__sZEI4"><button
									class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeMedium__KekFB Button_Button__fullWidth__RU4tf LnbDesktop_LnbDesktop__text__2eGDD"
									type="button" onclick="location.href='/login/logoutprocess'">
									<span class="Button_Button__label__1Kk0v">
										<h6
											class="Typography_Typography__root__xYuMs Typography_Typography__headline1__R9fZk Typography_Typography__weightMedium__O0Rdi LnbDesktop_LnbDesktop__logout__PwOFY">로그아웃</h6>
									</span><span class="Button_Button__interaction__kkYaa"></span>
								</button></li>
						</ul>
					</div>
				</div>

				<div>
					<c:choose>
						<c:when test="${param.page == 'profile'}">
							<jsp:include page="profile.jsp" />
						</c:when>
						<c:when test="${param.page == 'myActivity'}">
							<jsp:include page="myActivity.jsp" />
						</c:when>
						<c:when test="${param.page == 'settings'}">
							<jsp:include page="settings.jsp" />
						</c:when>
						<c:when test="${param.page == 'updateform' }">
							<jsp:include page="updateform.jsp"/>
						</c:when>
					</c:choose>
				</div>
</body>
</html>