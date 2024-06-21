<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
        padding: 20px;
        background-color: #f7f7f7;
    }
    .container {
        padding-left: 20px;
        padding-right: 20px;
    }
    .company-info, .company-details {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
    }
    .company-details-wrapper {
        border: 1px solid #ddd; /* 연한 회색 테두리 */
        padding: 0 auto;
        border-radius: 8px;
    }
    .header-img {
        width: 100%;
        height: auto;
        max-height: 300px;
        object-fit: cover;
        border-radius: 8px;
        margin-bottom: 20px;
    }
    .company-header {
        display: flex;
        align-items: center;
    }
    .company-logo {
        border-radius: 50%;
        margin-right: 10px;
        width: 80px;
        height: 80px;
    }
    .company-header .company-name {
        font-family: 'Black Han Sans', sans-serif;
        font-size: 24px;
        margin: 0;
    }
    .company-header .company-info-extra {
        color: grey;
        font-size: 14px;
    }
    .company-description {
        margin-top: 20px;
        font-size: 16px;
    }
    .section-title {
        font-size: 22px;
        font-weight: bold;
        margin-bottom: 10px;
    }
    .company-details table {
        width: 100%;
        border-collapse: collapse;
    }
    .company-details th, .company-details td {
        text-align: left;
        padding: 10px;
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .company-details th {
        font-weight: bold;
    }
    .company-details tr:not(:last-child) {
        border-bottom: 1px solid #ddd;
    }
    .map-container {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .map-section {
        width: 66.66%;
    }
    #map {
        width: 100%;
        height: 400px;
        border-radius: 8px;
    }
    .address-section {
        font-size: 14px;
        color: grey;
        margin-top: 10px;
    }
    .ratings-container {
        width: 30%;
        background-color: white;
        border-radius: 8px;
        padding: 20px;
    }
    .ratings {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }
    .ratings .score {
        font-size: 28px;
        font-weight: bold;
        margin-right: 10px;
    }
    .ratings .stars {
        color: #f39c12;
    }
    .ratings .stars i {
        font-size: 24px; /* Increase this value to make the stars bigger */
        margin-right: 5px; /* Adjust spacing between stars if needed */
    }
    .ratings-list {
        list-style: none;
        padding: 0;
        margin: 0;
        width: 100%;
    }
    .ratings-list li {
        display: flex;
        justify-content: space-between;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }
    .review-date {
        position: absolute;
        top: 10px;
        right: 20px;
        font-size: 0.875em;
        color: #6c757d;
    }
</style>
<title>Company Profile</title>
</head>
<%
    int currentYear = Calendar.getInstance().get(Calendar.YEAR);
    request.setAttribute("currentYear", currentYear);
%>
<body>
<div class="container">
    <div class="company-info">
        <c:choose>
            <c:when test="${not empty dto.ci_image}">
                <img src="../companyintro_uploads/${dto.ci_image}" alt="Header Image" class="header-img">
            </c:when>
            <c:otherwise>
                <img src="../companyintro_uploads/companyintrodefault_image.png" alt="Default Header Image" class="header-img">
            </c:otherwise>
        </c:choose>
        <div class="company-header">
            <c:choose>
                <c:when test="${not empty dto.ci_logo}">
                    <img src="../companyintro_uploads/${dto.ci_logo}" alt="Company Logo" class="company-logo">
                </c:when>
                <c:otherwise>
                    <img src="../companyintro_uploads/companyintrodefault_logo.png" alt="Default Company Logo" class="company-logo">
                </c:otherwise>
            </c:choose>
            <div>
                <h1 class="company-name">${cdto.c_name}</h1>
                <p class="company-info-extra">${cdto.c_category} - ${cdto.c_local} - ${currentYear - cdto.c_birthyear}년차 (${cdto.c_birthyear})</p>
            </div>
        </div>
        <p class="company-description">
            <c:choose>
                <c:when test="${not empty dto.ci_soge}">${dto.ci_soge}</c:when>
                <c:otherwise>${cdto.c_category}전문, ${cdto.c_name}입니다.</c:otherwise>
            </c:choose>
        </p>
        <div class="map-container">
            <div class="map-section">
                <h2 class="section-title">위치</h2>
                <div id="map"></div>
                <p class="address-section">
                    <c:choose>
                        <c:when test="${not empty cdto.c_postnum and not empty cdto.c_addr}">
                            ${cdto.c_postnum} ${cdto.c_addr} ${cdto.c_addrdetail}
                        </c:when>
                        <c:otherwise>―</c:otherwise>
                    </c:choose>
                </p>
            </div>
            <div class="ratings-container">
                <h2 class="section-title">전체 리뷰 및 통계</h2>
                <div class="ratings">
                    <div class="score">3.5</div>
                    <div class="stars">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-half"></i>
                        <i class="bi bi-star"></i>
                    </div>
                </div>
                <ul class="ratings-list">
                    <li><span>복지 및 급여:</span> <span>4.0</span></li>
                    <li><span>근무환경:</span> <span>4.5</span></li>
                    <li><span>사내문화:</span> <span>3.5</span></li>
                    <li><span>승진 기회 및 가능성:</span> <span>2.5</span></li>
                    <li><span>경영진:</span> <span>2.5</span></li>
                </ul>
                <c:if test="${sessionScope.loginok != null}">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reviewModal">자세히 보기</button>
                </c:if>
                <c:if test="${sessionScope.loginok == null}">
                    <button type="button" class="btn btn-primary" onclick="alert('로그인이 필요합니다.');">자세히 보기</button>
                </c:if>
            </div>
        </div>
    </div>
    <div class="map-container2">
        <h2 class="section-title">기업 정보</h2>
        <div class="company-details-wrapper">
            <div class="company-details">
                <table>
                    <tr>
                        <th>산업군</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cdto.c_category}">${cdto.c_category}</c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th>연혁</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cdto.c_birthyear}">${currentYear - cdto.c_birthyear}년 (${cdto.c_birthyear}년 설립)</c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th>매출(연)</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cdto.c_money}">${cdto.c_money}억</c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th>기업 유형</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cdto.c_size}">${cdto.c_size}</c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th>평균연봉</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cdto.c_salary}">${cdto.c_salary}만원</c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th>고용보험 사업장 수</th>
                        <td>1개</td>
                    </tr>
                    <tr>
                        <th>홈페이지</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty dto.ci_link}">
                                    <a href="${dto.ci_link}">${dto.ci_link}</a>
                                </c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th>사원수</th>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cdto.c_peoplesu}">${cdto.c_peoplesu}명</c:when>
                                <c:otherwise>―</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- 모달 시작 -->

<!-- 전체 리뷰 및 통계 Modal -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 전체 리뷰 및 통계 Modal -->
<div class="modal fade" id="reviewModal" tabindex="-1"
    aria-labelledby="reviewModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="reviewModalLabel">전체 리뷰 및 통계</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                    aria-label="Close"></button>
            </div>

            <div class="modal-body">
                <form id="reviewForm" action="companyreviewSave" method="post">
                    <!-- 평균점수 별점 계산 라인 -->

                    <!-- 로그인한 해당 회원이 해당 기업의 리뷰 작성+저장 -->
                    <!-- 기업 넘버 -->
                    <input type="hidden" name="c_num" value="${dto.c_num}">
                    
                    <!--  
                    기업넘버 : ${dto.c_num}
                    내 아이디 : ${myid }
                    로그인여부: ${loginok }
                    -->

                    <!-- 복지 및 급여 -->
                    <label for="cr_happy">복지 및 급여 (1-10):</label> 
                    <input type="number" id="cr_happy" name="cr_happy" min="1" max="10" class="form-control mb-3">
                    
                    <!-- 근무환경 -->
                    <label for="cr_environment">근무환경 (1-10):</label> 
                    <input type="number" id="cr_environment" name="cr_environment" min="1" max="10" class="form-control mb-3">
                    
                    <!-- 사내문화 -->
                    <label for="cr_culture">사내문화 (1-10):</label> 
                    <input type="number" id="cr_culture" name="cr_culture" min="1" max="10" class="form-control mb-3">
                    
                    <!-- 승진 기회 및 가능성 -->
                    <label for="cr_possibility">승진 기회 및 가능성 (1-10):</label> 
                    <input type="number" id="cr_possibility" name="cr_possibility" min="1" max="10" class="form-control mb-3">
                    
                    <!-- 경영진 -->
                    <label for="cr_heads">경영진 (1-10):</label> 
                    <input type="number" id="cr_heads" name="cr_heads" min="1" max="10" class="form-control mb-3">
                    
                    <!-- 코멘트 -->
                    <label for="cr_comment">코멘트:</label> 
                    <textarea id="cr_comment" name="cr_comment" class="form-control mb-3"></textarea>

                    <button type="submit" class="btn btn-primary w-100">저장하기</button>
                    
                    <hr>
                    
                    <!-- 기존의 리뷰 보여주기 : rlist -->
                    <div class="reviews-container">
                        <c:forEach var="a" items="${rlist}">
                            <div class="card mb-3 position-relative">
                                <div class="card-body">
                                    <h5 class="card-title">익명</h5>
                                    <p class="card-text">
                                        <strong>복지 및 급여:</strong> ${a.cr_happy} <br>
                                        <strong>근무환경:</strong> ${a.cr_environment} <br>
                                        <strong>사내문화:</strong> ${a.cr_culture} <br>
                                        <strong>승진 기회 및 가능성:</strong> ${a.cr_possibility} <br>
                                        <strong>경영진:</strong> ${a.cr_heads}<br>
                                        <hr>
                                        <strong>한줄평:</strong> ${a.cr_comment}<br>
                                    </p>
                                    <p class="card-text review-date"><small class="text-muted">작성일: ${a.cr_writeday}</small></p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<!-- 모달 끝 -->

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c2a4c379a7f83fd166976b93258be7f&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), 
        level: 3 
    };  

var map = new kakao.maps.Map(mapContainer, mapOption);

var geocoder = new kakao.maps.services.Geocoder();

geocoder.addressSearch('${cdto.c_addr}', function(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        map.setCenter(coords);
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        kakao.maps.event.addListener(marker, 'click', function() {
            window.open('https://map.kakao.com/link/map/' + encodeURIComponent('${cdto.c_name}') + ',' + result[0].y + ',' + result[0].x);
        });

        kakao.maps.event.addListener(map, 'click', function() {
            window.open('https://map.kakao.com/link/map/' + encodeURIComponent('${cdto.c_name}') + ',' + result[0].y + ',' + result[0].x);
        });
    } 
});
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<br>
</body>
</html>
