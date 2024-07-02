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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" type="text/css" href="/css/bookmarks.css">
<title>Insert title here</title>
</head>
<body>
	<div class="Container_Profile__1N5jZ">
		<nav role="presentation" class="Nav_Nav__xLwgq">
			<h2 class="Nav_Nav_title__tJm9D">
				<p>북마크</p>
				<button type="button" class="Nav_Nav_button__PjBi5">북마크</button>
			</h2>
		</nav>
		<div class="Bookmark_container__lrBg4">
			<div class="List_List__tslVL">
				<div class="List_List_container__yHC_n">
					<ul data-cy="job-list">
						<c:forEach items="${rlist}" var="r">
							<c:set var="isScraped"
								value="${fn:contains(userScraps, r.h_num)}" />
							<c:if test="${isScraped}">

								<li>
									<div data-cy="job-card" class="Card_className__BQveA">
										<a href="/hire/detail?h_num=${r.h_num}" class=""
											data-attribute-id="position__click"
											data-company-id="${r.h_num}" data-company-name="${r.c_name}"
											data-position-id="${r.h_num}"
											data-position-name="${r.h_title}"> <header
												style="background-image: url('../../companyintro_uploads/${r.ci_image}');">
												<button
													class="IconButton_IconButton__root__IJlt6 IconButton_IconButton__normal__Twwsf IconButton_IconButton__disableGutters__F_K1l bookmarkBtn"
													aria-label="bookmark button"
													data-attribute-id="position__bookmark__click"
													data-company-id="${r.h_num}"
													data-company-name="${r.c_name}"
													data-position-id="${r.h_num}"
													data-position-name="${r.h_title}" data-kind="remove"
													onclick="deleteScrap(${sessionScope.r_num}, ${r.h_num})"
													style="font-size: 22px;">
													<span class="IconButton_IconButton__label__o4AtY"> <span
														class="SvgIcon_SvgIcon__root__OHiSO"> <svg
																class="SvgIcon_SvgIcon__root__svg__ohdSc"
																viewBox="0 0 24 24">
											<path
																	d="M8.16445 2.59985C7.6346 2.59984 7.1834 2.59983 6.81297 2.63009C6.42381 2.66189 6.04522 2.73152 5.68328 2.91594C5.13761 3.19397 4.69397 3.63761 4.41594 4.18328C4.23152 4.54522 4.16189 4.92381 4.13009 5.31297C4.09983 5.6834 4.09984 6.13457 4.09985 6.66442V21.4999C4.09985 21.8249 4.27517 22.1248 4.55848 22.2842C4.84179 22.4436 5.18905 22.4379 5.46694 22.2692L11.9999 18.3027L18.5328 22.2692C18.8107 22.4379 19.1579 22.4436 19.4412 22.2842C19.7245 22.1248 19.8999 21.8249 19.8999 21.4999V6.66445C19.8999 6.13458 19.8999 5.6834 19.8696 5.31297C19.8378 4.92381 19.7682 4.54522 19.5838 4.18328C19.3057 3.63761 18.8621 3.19397 18.3164 2.91594C17.9545 2.73152 17.5759 2.66189 17.1867 2.63009C16.8163 2.59983 16.3651 2.59984 15.8353 2.59985H8.16445Z"
																	fill="#3366ff"></path>
										</svg>
													</span>
													</span>
												</button>
											</header>
											<div class="body">
												<div class="job-card-position">${r.h_title}</div>
												<div class="job-card-company-name">${r.c_name}</div>
												<div class="job-card-company-location">
													<span>${fn:substring(r.h_location, 0, 7)}</span>
												</div>
											</div>
										</a>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>

			<script type="text/javascript">
   



					function addScrapRes(r_num, h_num) {
					    // AJAX 요청을 통해 서버에 북마크 추가 요청을 보냅니다.
					    $.ajax({
					        type: "POST",
					        url: "/addScrapRes",  // 실제 서버에서 처리할 URL을 입력합니다.
					        data: {
					            r_num: r_num,
					            h_num: h_num
					        },
					        success: function(response) {
					            // 성공적으로 처리된 경우, 버튼의 상태를 업데이트합니다.
					            $('[data-position-id="' + h_num + '"]').attr('aria-pressed', 'true');
					            $('[data-position-id="' + h_num + '"] svg path').attr('fill', '#3366ff');  // 아이콘 색상 변경 예시
					        },
					        error: function(xhr, status, error) {
					            // 오류 처리
					            console.error("Error adding scrap:", error);
					        }
					    });
					}

					function deleteScrapRes(r_num, h_num) {
					    // AJAX 요청을 통해 서버에 북마크 삭제 요청을 보냅니다.
					    $.ajax({
					        type: "POST",
					        url: "/deleteScrapRes",  // 실제 서버에서 처리할 URL을 입력합니다.
					        data: {
					            r_num: r_num,
					            h_num: h_num
					        },
					        success: function(response) {
					            // 성공적으로 처리된 경우, 버튼의 상태를 업데이트합니다.
					            $('[data-position-id="' + h_num + '"]').attr('aria-pressed', 'false');
					            $('[data-position-id="' + h_num + '"] svg path').attr('fill', '#000');  // 아이콘 색상 변경 예시
					        },
					        error: function(xhr, status, error) {
					            // 오류 처리
					            console.error("Error deleting scrap:", error);
					        }
					    });
					}

	
	
	</script>
</body>
</html>