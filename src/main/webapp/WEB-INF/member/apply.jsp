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
								<li class="active"><a href="/member/apply" class="">지원한
										포지션</a></li>
							</ul>
						</dd>
					</dl>
				</div>
				<section class="Body_Body__lyHIo">
				
				<ul class="Summary_Summary__wbpVe">
						<li
							class="Summary_Summary_list__Z6ikA Summary_Summary_list_active__yEySM"><a
							href="/member/apply" class=""><dl>
									<dt>${count }</dt>
									<dd>전체</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/member/apply?status=complete" class=""><dl>
									<dt>${apply }</dt>
									<dd>지원 완료</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/member/apply?status=pass" class=""><dl>
									<dt>${applySuc }</dt>
									<dd>서류 통과</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/member/apply?status=hire" class=""><dl>
									<dt>${applyFin }</dt>
									<dd>최종 합격</dd>
								</dl></a></li>
						<li class="Summary_Summary_list__Z6ikA"><a
							href="/member/apply?status=reject" class=""><dl>
									<dt>${applyFail }</dt>
									<dd>불합격</dd>
								</dl></a></li>
					</ul>
				
					<div class="Search_Search__BET2N">
					</div>
					<div>
						<div class="List_List_table__G1RDe">
							<div class="table-header List_List_table_tr__kfQ7j">
								<span
									class="table-header List_List_table_td__C8YQe List_List_table_td_company_name__xwoY9">지원
									회사</span><span
									class="table-header List_List_table_td__C8YQe List_List_table_td_position__RCnTM">지원
									포지션</span><span
									class="table-header List_List_table_td__C8YQe List_List_table_td_create_time__9aOhL">작성시간</span><span
									class="table-header List_List_table_td__C8YQe List_List_table_td_status__ZCt7y">진행상태</span><span
									class="table-header List_List_table_td__C8YQe List_List_table_td_recommendation__4uMRC">추천
									현황</span>
							</div>
							<ul>
							
								<c:if test="${count == 0 }">
									<dl class="List_List_empty__B4abc">
										<dd>요청하신 결과가 없습니다.</dd>
									</dl>
								</c:if>
								<c:if test="${count != 0 }">
									<c:forEach var="su" items="${sulist}">
										<section class="Body_Body__lyHIo">
											<div class="Search_Search__BET2N">
											</div>

										</section>
										<li class="List_List_table_tr__kfQ7j"><div>
												<a href="#"
													class="List_List_table_td__C8YQe List_List_table_td_company_name__xwoY9">${su.c_name }</a>
												<a href="#"
													class="List_List_table_td__C8YQe List_List_table_td_position__RCnTM">${su.h_title }</a>
												<a href="#"
													class="List_List_table_td__C8YQe List_List_table_td_create_time__9aOhL">${su.st_write }</a>
												<a href="#"
													class="List_List_table_td__C8YQe List_List_table_td_status__ZCt7y">${su.st_support }</a>
												<a href="#"
													class="List_List_table_td__C8YQe List_List_table_td_status__ZCt7y">${su.st_result }</a>
											</div></li>
									</c:forEach>
								</c:if>

								<li class="List_List_sensor__QUZV4"></li>
								
								
								
								<li class="List_List_sensor__QUZV4"></li>
							</ul>
						</div>
					</div>
				</section>





















			</div>
		</div>
	</section>

</body>
</html>