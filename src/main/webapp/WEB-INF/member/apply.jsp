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
<link rel="stylesheet" type="text/css" href="/css/apply.css">
<title>Insert title here</title>

<style type="text/css">

.Summary_Summary_list__Z6ikA dl {
    color: inherit; /* 기본 텍스트 색상을 상속 */
}

/* dl 요소에 hover 상태일 때의 스타일 */
.Summary_Summary_list__Z6ikA:hover dt {
    color: #06f; /* 텍스트 색상을 #06f로 변경 */
}

Summary_Summary_list__Z6ikA:hover dd {
color: #06f;	
}

</style>

</head>
<body>
	<section>
		<div class="Wrapper_Wrapper__YIoSL">
			<nav role="presentation" class="Nav_Nav__xLwgq">
				<h2 class="Nav_Nav_title__tJm9D">
					<p>지원 현황</p>
					<button type="button" class="Nav_Nav_button__PjBi5">
						지원 현황<span class="Nav_Nav_subTitle__zEMtx">지원한 포지션</span><span
							class="Nav_Nav_open_icon__yxgc5"></span>
					</button>
				</h2>
				<ul class="Nav_Nav_list__w2C7w">
					<li><a href="/status/recommendations?status=application_hire"
						class="">추천보상금 대상자</a></li>
					<li><a href="/status/applications/write" class="">작성 중</a></li>
					<li><a href="/status/applications/applied"
						class="Nav_Nav_list_active__WWrsC">지원한 포지션</a></li>
				</ul>
			</nav>
			<div class="Wrapper_Wrapper_container___g7_P">
				<div class="Aside_className__FJWzI">

					<dl>
						<dt>지원</dt>
						<dd>
							<ul>
								<li class="active"><a href="/status/applications/applied"
									class="">지원한 포지션</a></li>
							</ul>
						</dd>
					</dl>
				</div>
				<section class="Body_Body__lyHIo">
					<ul class="Summary_Summary__wbpVe">
						<li
							class="Summary_Summary_list__Z6ikA Summary_Summary_list_active__yEySM"><a
							href="/member/apply" class=""><dl>
									<dt>0</dt>
									<dd>전체</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/member/apply?status=complete" class=""><dl>
									<dt>0</dt>
									<dd>지원 완료</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/status/applications/applied?status=pass" class=""><dl>
									<dt>0</dt>
									<dd>서류 통과</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/status/applications/applied?status=hire" class=""><dl>
									<dt>0</dt>
									<dd>최종 합격</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/status/applications/applied?status=reject" class=""><dl>
									<dt>0</dt>
									<dd>불합격</dd>
								</dl></a></li>
					</ul>
					<div class="Search_Search__BET2N">
						<div>
							<div>
								<div class="Search_Search_search__tw37b">
									<span class="SvgIcon_SvgIcon__root__OHiSO"><svg
											class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M9.99966 2.09961C5.63662 2.09961 2.09967 5.63656 2.09967 9.99961C2.09967 14.3627 5.63662 17.8996 9.99966 17.8996C11.857 17.8996 13.5646 17.2587 14.9134 16.1859L19.8634 21.136C20.2149 21.4874 20.7847 21.4874 21.1362 21.136C21.4877 20.7845 21.4877 20.2146 21.1362 19.8632L16.1861 14.9131C17.2588 13.5643 17.8997 11.8568 17.8997 9.99961C17.8997 5.63656 14.3627 2.09961 9.99966 2.09961ZM3.89967 9.99961C3.89967 6.63067 6.63073 3.89961 9.99966 3.89961C13.3686 3.89961 16.0997 6.63067 16.0997 9.99961C16.0997 13.3685 13.3686 16.0996 9.99966 16.0996C6.63073 16.0996 3.89967 13.3685 3.89967 9.99961Z"></path></svg></span><input
										type="text" placeholder="회사 / 포지션명 검색" value="">
								</div>
								<div class="CalendarBtn_CalendarBtn__noU2E">
									<button type="button">
										<span class="SvgIcon_SvgIcon__root__OHiSO"><svg
												class="SvgIcon_SvgIcon__root__svg__ohdSc"
												viewBox="0 0 24 24">
												<path fill-rule="evenodd" clip-rule="evenodd"
													d="M9.4 1.75022C9.4 1.25316 8.99706 0.85022 8.5 0.85022C8.00294 0.85022 7.6 1.25316 7.6 1.75022V2.85H6.91482C6.38496 2.84999 5.93376 2.84997 5.56334 2.88024C5.17418 2.91203 4.79558 2.98167 4.43365 3.16608C3.88798 3.44412 3.44434 3.88776 3.1663 4.43343C2.98189 4.79536 2.91226 5.17396 2.88046 5.56312C2.8502 5.93353 2.85021 6.38468 2.85022 6.91452V17.0854C2.85021 17.6152 2.8502 18.0665 2.88046 18.4369C2.91226 18.826 2.98189 19.2046 3.1663 19.5666C3.44434 20.1122 3.88798 20.5559 4.43365 20.8339C4.79558 21.0183 5.17418 21.088 5.56334 21.1198C5.93375 21.15 6.3849 21.15 6.91472 21.15H17.0856C17.6155 21.15 18.0667 21.15 18.4371 21.1198C18.8263 21.088 19.2049 21.0183 19.5668 20.8339C20.1125 20.5559 20.5561 20.1122 20.8341 19.5666C21.0186 19.2046 21.0882 18.826 21.12 18.4369C21.1503 18.0665 21.1502 17.6153 21.1502 17.0855V6.9146C21.1502 6.38477 21.1503 5.93353 21.12 5.56312C21.0882 5.17396 21.0186 4.79536 20.8341 4.43343C20.5561 3.88776 20.1125 3.44412 19.5668 3.16608C19.2049 2.98167 18.8263 2.91203 18.4371 2.88024C18.0667 2.84997 17.6155 2.84999 17.0857 2.85H16.4V1.75024C16.4 1.25319 15.9971 0.850244 15.5 0.850244C15.0029 0.850244 14.6 1.25319 14.6 1.75024V2.85H9.4V1.75022ZM14.6 5.75024V4.65H9.4V5.75022C9.4 6.24728 8.99706 6.65022 8.5 6.65022C8.00294 6.65022 7.6 6.24728 7.6 5.75022V4.65H6.55024C5.73568 4.65 5.54185 4.6611 5.41032 4.70383C5.07544 4.81264 4.81289 5.0752 4.70408 5.41008C4.66135 5.5416 4.65024 5.73543 4.65024 6.55V8.59998H19.3502V6.55C19.3502 5.73543 19.3391 5.5416 19.2964 5.41008C19.1876 5.0752 18.925 4.81264 18.5902 4.70383C18.4586 4.6611 18.2648 4.65 17.4502 4.65H16.4V5.75024C16.4 6.2473 15.9971 6.65024 15.5 6.65024C15.0029 6.65024 14.6 6.2473 14.6 5.75024ZM19.3502 10.4H4.65024V17.45C4.65024 18.2646 4.66135 18.4584 4.70408 18.5899C4.81289 18.9248 5.07544 19.1873 5.41032 19.2962C5.54185 19.3389 5.73568 19.35 6.55024 19.35H17.4502C18.2648 19.35 18.4586 19.3389 18.5902 19.2962C18.925 19.1873 19.1876 18.9248 19.2964 18.5899C19.3391 18.4584 19.3502 18.2646 19.3502 17.45V10.4Z"></path></svg></span>
										<p>전체 기간</p>
									</button>
									<div></div>
								</div>
							</div>

						</div>
					</div>
					<div>
						<div class="List_List_table__G1RDe">

							<ul>
								<dl class="List_List_empty__B4abc">
									<dd>요청하신 결과가 없습니다.</dd>
								</dl>
							</ul>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>

</body>
</html>