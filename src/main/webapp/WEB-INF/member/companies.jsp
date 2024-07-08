<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" type="text/css" href="/css/companies.css">
<title>Insert title here</title>
</head>
<body>
	<div class="FollowingCompanyLayout_FollowingCompanyLayout__M_zpo">
		<div
			class="FollowingCompanyLayout_FollowingCompanyLayout__root__IfCBd">
			<h1 style="margin-top: 44px;"
				class="Typography_Typography__root__RdAI1 Typography_Typography__heading2__U5p46 Typography_Typography__weightBold__KkJEY FollowingCompanyLayout_FollowingCompanyLayout__title__ZhJ_D">관심회사</h1>
			<div>
				<section
					class="FollowingCompanySection_FollowingCompanySection__H_nIa">
					<c:forEach var="c" items="${chlist }">
					<c:set var="isScraped"
					value="${fn:contains(userScraps2, c.c_num) }"/>
					<c:if test="${isScraped}">
					<li class="SearchCompanyCard_container__HIPPs"><a
						href="/company/showimsiCom?c_num=${c.c_num }" class="SearchCompanyCard_inner__kZD3m">
						<div class="SearchCompanyCard_itemHead__rSGGm">
								<div class="SearchCompanyCard_logoGroup__BDYnT">
									<div class="SearchCompanyCard_logoClassName__975MZ"
										data-testid="SearchCompanyCardLogo"
										style="background-image: url('../../companyintro_uploads/${c.ci_image}');"></div>
									<div class="SearchCompanyCard_textClassName__ftyqF">
										<h5
											class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightBold__KkJEY">${c.c_name}</h5>
										<h6
											class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck">
											${c.c_category}</h6>
									</div>
								</div>
								<button
									class="Button_Button__root__m1NGq Button_Button__outlined__0HnEd Button_Button__outlinedAssistive__JKDyz Button_Button__outlinedSizeSmall__PllaZ SearchCompanyCard_followButton__isFollow__aM_WG"
									aria-pressed="true" data-testid="SearchCompanyCardFollowButton"
									data-attribute-id="company__follow__click"
									data-company-id="179" data-company-name="버킷플레이스(오늘의집)"
									data-company-index="0" data-kind="remove">
									<span class="Button_Button__label__K0sBs">팔로잉</span><span
										class="Button_Button__interaction__1LUyr"></span>
								</button>
							</div>
							<div class="SearchCompanyCard_description__Ca4r2"
								data-testid="SearchCompanyCardDescription">
								<p
									class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightRegular__jzmck">"
									${c.ci_soge }</div>
							<div class="SearchCompanyCard_confirmedPositionMessage__cbbTI">
								<p
									class="Typography_Typography__root__RdAI1 Typography_Typography__body2__5Mmhi Typography_Typography__weightBold__KkJEY SearchCompanyCard_hasConfirmedPosition__Ywnjh"
									data-testid="SearchCompanyNudgeMessage1"></p>
							</div></a></li>

					
							</c:if>
						</c:forEach>
				</section>
				<div class="scrollObserver"></div>
			</div>
		</div>
	</div>
</body>
</html>