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
<title>Insert title here</title>

<style type="text/css">

.gap{
width:55px;

}

#schooltext {
	/* 기본 텍스트 색상 설정 */
	color: black; /* 원하는 기본 색상으로 설정하세요 */
}

</style>
</head>
<body>
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
						
						<div class="gap"></div>
						
						<div
							class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__4__d_Dih">
							<a href="/member/bookmarks"
								class="CountSummary_CountSummary__mm865"><h6
									class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY "> ${rScrap }</h6>
								<span
								class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">북마크</span></a>
						</div>
						
						<div class="gap"></div>
						
						<div
							class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__4__d_Dih">
							<a class="CountSummary_CountSummary__mm865"
								href="/member/companies"><h6
									class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">0</h6>
								<span
								class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">관심회사</span></a>
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
						</div>
						<div class="Grid_Grid__container__43uvK ApplySummary_ApplySummary__container_counterContainer__SiBuu">
						
						
						<div class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
							<a class="CountSummary_CountSummary__mm865" data-attribute-id="myActivity__applicationStatus" data-status-kind="applyDone" href="/resumehome/updateForm?pe_num=${pe_num }">
							
							<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY " id="schooltext">미작성</h6>
								
								<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">학력
									</span></a>
						</div>
						
						
						<div class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
							<a class="CountSummary_CountSummary__mm865" data-attribute-id="myActivity__applicationStatus" data-status-kind="pass" href="/resumehome/updateForm?pe_num=${pe_num }">
							
							<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY " id="careertext">미작성</h6>
								
								<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">경력
									</span></a>
						</div>
						
						
						<div class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
							<a class="CountSummary_CountSummary__mm865" data-attribute-id="myActivity__applicationStatus" data-status-kind="hire" href="/resumehome/updateForm?pe_num=${pe_num }">
							
							<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">미작성</h6>
								
								<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">경험/활동/교육
									</span></a>
						</div>
						
						
						<div class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__3__Ao_Ex">
							<a class="CountSummary_CountSummary__mm865" data-attribute-id="myActivity__applicationStatus" data-status-kind="rejected" href="/resumehome/updateForm?pe_num=${pe_num }">
							
							<h6 class="Typography_Typography__root__RdAI1 Typography_Typography__headline1__oRteu Typography_Typography__weightBold__KkJEY ">미작성</h6>
								
								<span class="Typography_Typography__root__RdAI1 Typography_Typography__caption1__P91eH Typography_Typography__weightRegular__jzmck Typography_Typography__alignCenter__HDWWj CountSummary_CountSummary_summaryTitle__lDXC6">자격/어학/수상</span></a>
						</div>
						
						
					</div>
						
						
						
						<button onclick="location.href='/resumehome/updateForm?pe_num=${pe_num }'"
							class="Button_Button__root__m1NGq Button_Button__contained__qyP2s Button_Button__containedPrimary__kCB60 Button_Button__containedSizeMedium__xBgIW Button_Button__fullWidth__zAnDP BasicResume_BasicResume__container__wantedResume__button__FnCW7"
							data-attribute-id="myActivity__profile__update"
							data-profile-level="2">
							<span class="Button_Button__label__K0sBs">이력서 업데이트 하기</span><span
								class="Button_Button__interaction__1LUyr"></span>
						</button>
					</div>
					
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
								data-status-kind="applyDone" href="/member/apply"><h6
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


<script type="text/javascript">
/* 이력서 작성 상태 조회(학력) */
// 서버에서 midcount 값을 가져와서 설정
var midcount = ${midcount}; // 서버에서 전달된 midcount 값을 여기에 설정
var unicount = ${unicount}; // 서버에서 전달된 midcount 값을 여기에 설정
var carcount = ${carcount};

//midcount 조건 처리
if (midcount >= 6 || unicount >= 8) {
    $("#schooltext").text("작성완료").css("color", "#06f");
} else if (midcount === 0 || unicount === 0) {
    $("#schooltext").text("미작성").css("color", "red");
} else {
    $("#schooltext").text("작성중").css("color", "");
}

/* 이력서 작성 상태 조회(경력) */
if (carcount >= 6) {
    $("#careertext").text("작성완료").css("color", "#06f");
} else if (carcount === 0) {
    $("#careertext").text("미작성").css("color", "red");
} else {
    $("#careertext").text("작성중").css("color", "");
}
</script>	
</body>
</html>