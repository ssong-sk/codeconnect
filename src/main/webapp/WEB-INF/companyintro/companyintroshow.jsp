<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Calendar" %>
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
    }
    .container {
        padding-left: 20px;
        padding-right: 20px;
    }
    .company-info {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
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
    .company-details {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        border: 1px solid #ddd;
    }
    .company-details h2 {
        font-size: 22px;
        font-weight: bold;
    }
    .company-details table {
        width: 100%;
        border-collapse: collapse;
    }
    .company-details th, .company-details td {
        text-align: left;
        padding: 10px;
    }
    .company-details th {
        font-weight: bold;
    }
    .company-details tr:not(:last-child) {
        border-bottom: 1px solid #ddd;
    }
    #map {
        width: 100%;
        height: 400px;
        margin-top: 20px;
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
        <div id="map"></div>
    </div>
    <div class="company-details">
        <h2>기업 정보</h2>
        <br>
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
                <td><c:choose>
                        <c:when test="${not empty cdto.c_money}">${cdto.c_money}억</c:when>
                        <c:otherwise>―</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>기업 유형</th>
                <td>기타 법인</td>
            </tr>
            <tr>
                <th>평균연봉</th>
                <td><c:choose>
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
                <td><c:choose>
                        <c:when test="${not empty dto.ci_link}"><a href="${dto.ci_link}">${dto.ci_link}</a></c:when>
                        <c:otherwise>―</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>사원수</th>
                <td><c:choose>
                        <c:when test="${not empty cdto.c_peoplesu}">${cdto.c_peoplesu}명</c:when>
                        <c:otherwise>―</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>본사 주소</th>
                <td>
                    <c:choose>
                        <c:when test="${not empty cdto.c_postnum and not empty cdto.c_addr}">
                            ${cdto.c_postnum} ${cdto.c_addr} ${cdto.c_addrdetail}
                        </c:when>
                        <c:otherwise>―</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </div>
</div>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c2a4c379a7f83fd166976b93258be7f&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch('${cdto.c_addr}', function(result, status) {
        // 정상적으로 검색이 완료됐으면 
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 지도의 중심으로 설정합니다
            map.setCenter(coords);

            // 마커를 생성하고 지도에 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 마커 클릭 이벤트 추가
            kakao.maps.event.addListener(marker, 'click', function() {
                window.open('https://map.kakao.com/link/map/' + encodeURIComponent('${cdto.c_name}') + ',' + result[0].y + ',' + result[0].x);
            });

            // 지도 클릭 이벤트 추가
            kakao.maps.event.addListener(map, 'click', function() {
                window.open('https://map.kakao.com/link/map/' + encodeURIComponent('${cdto.c_name}') + ',' + result[0].y + ',' + result[0].x);
            });
        } 
    });
</script>

<br>
</body>
</html>
