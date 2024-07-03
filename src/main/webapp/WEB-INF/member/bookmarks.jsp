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
												<c:set var="isScraped" value="${fn:contains(userScraps, h.h_num)}" />
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
			</div>

			
</body>
</html>