
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
<title>헤더</title>
<link rel="stylesheet" type="text/css" href="/css/header.css">
<style type="text/css">
</style>
</head>
<body>
	<div role="presentation" class="NavBar_className__y2qGg"
		style="position: fixed;">
		<div class="NavBar_background__SQmnx"></div>
		<div class="MainBar_MainBar__40DX7" role="presentation">
			<nav class="MainBar_MainBarNav__pVhal" style="height: 60px;">
				<div class="MainBar_MainBarNavLogo__caIek">
					<a href="/"><img src="/image/mainlogo.png"
						alt="codeconnect Logo" class="logo"></a>
				</div>
				<ul class="Menu_MenuNav__EOf3X" style="margin-bottom: 0px;">
					<li class="Menu_MenuItem__wI1yA"><a href="/hire/main"
						class="Menu_jobListLink__GYHAI"><span>채용</span></a></li>
					<li class="Menu_MenuItem__wI1yA"><a href="#"><span>커리어</span></a></li>
					<li class="Menu_MenuItem__wI1yA"><a href="#"><span>소셜</span></a></li>


					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="resume"><a href="/resumehome/home"><span>이력서</span></a></li>
					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="community"><a href="/community/homelist"><span>커뮤니티</span></a></li>

				</ul>

				<aside class="Aside_aside__f0SVC">
					<ul class="Aside_asideList__3WNyu" style="margin-bottom: 0px;">
						<div class="SearchInput_SearchInputContainer__wGe1Q">
							<li><button type="button" onclick="location.href='allsearch/main'"
							class="Aside_searchButton__rajGo Aside_isNotMobileDevice__hTNEe"
							   aria-label="검색" aria-haspopup="dialog" aria-expanded="false"
							   aria-controls="nav_searchbar" data-attribute-id="gnb"
							   data-gnb-kind="search">
							   <span class="SvgIcon_SvgIcon__root__OHiSO"><svg
							         class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
							         <path fill-rule="evenodd" clip-rule="evenodd"
							            d="M9.99949 2.1001C5.63644 2.1001 2.09949 5.63705 2.09949 10.0001C2.09949 14.3631 5.63644 17.9001 9.99949 17.9001C11.8568 17.9001 13.5644 17.2592 14.9132 16.1864L19.8632 21.1365C20.2147 21.4879 20.7846 21.4879 21.136 21.1365C21.4875 20.785 21.4875 20.2151 21.136 19.8637L16.186 14.9136C17.2586 13.5648 17.8995 11.8573 17.8995 10.0001C17.8995 5.63705 14.3625 2.1001 9.99949 2.1001ZM3.89949 10.0001C3.89949 6.63116 6.63055 3.9001 9.99949 3.9001C13.3684 3.9001 16.0995 6.63116 16.0995 10.0001C16.0995 13.369 13.3684 16.1001 9.99949 16.1001C6.63055 16.1001 3.89949 13.369 3.89949 10.0001Z"></path></svg></span>
							</button></li>
						</div>
						<li class="Aside_signUpButtonContainer___0wTS">
						
						<c:if
								test="${sessionScope.loginok==null and sessionScope.c_loginok==null}">
								<button
									class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Aside_signUpButton__pY721"
									type="button" onclick="location.href='/login/main'">
									<span class="Button_Button__label__1Kk0v"> <span
										class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql">
											회원가입/로그인 </span>
									</span> <span class="Button_Button__interaction__kkYaa"></span>
								</button>
							</c:if> 
						
							
							<c:if test="${sessionScope.loginok!=null }">
								<button
									class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Aside_signUpButton__pY721"
									type="button" onclick="location.href='/member/mypage?page=profile'">
									<span class="Button_Button__label__1Kk0v"> <span
										class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql">
											${sessionScope.myid}님</span>
									</span> 
									
									
						
									<span class="Button_Button__interaction__kkYaa"></span></button>
							</c:if>
							<c:if test="${sessionScope.c_loginok!=null }">
								<button
									class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Aside_signUpButton__pY721"
									type="button" onclick="location.href='/company/main'">
									<span class="Button_Button__label__1Kk0v"> <span
										class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql">
											${sessionScope.c_loginname}님</span>
									</span> 
									
									
						
									<span class="Button_Button__interaction__kkYaa"></span></button>
							</c:if>
							
							
							
							</li>
						<li><a
							class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Aside_dashboardButton__WUch3"
							type="button" href="/company/main" data-attribute-id="gnb"
							data-gnb-kind="forEmployers"><span
								class="Button_Button__label__1Kk0v"><span
									class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi">기업
										서비스</span></span><span class="Button_Button__interaction__kkYaa"></span></a></li>
					</ul>
				</aside>
			</nav>
		</div>
	</div>
	<div class="Padding_padding___Nyki"></div>
</body>
</html>
