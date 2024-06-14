<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    .company-info {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
    }
    .company-header {
        display: flex;
        align-items: center;
    }
    .company-header img {
        border-radius: 50%;
        margin-right: 10px;
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
</style>
<title>Company Profile</title>
</head>
<body>
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
                <img src="../companyintro_uploads/${dto.ci_logo}" alt="Company Logo" class="company-logo" width="50" height="50">
            </c:when>
            <c:otherwise>
                <img src="../companyintro_uploads/companyintrodefault_logo.png" alt="Default Company Logo" class="company-logo" width="50" height="50">
            </c:otherwise>
        </c:choose>
        <div>
            <h1 class="company-name">${cdto.c_name}</h1>
            <p class="company-info-extra">${cdto.c_category} - ${cdto.c_local} - 5년차 (${cdto.c_birthyear})</p>
        </div>
    </div>
    <p class="company-description">
    <c:choose>
    <c:when test="${not empty dto.ci_soge}">${dto.ci_soge}</c:when>
    	<c:otherwise>${cdto.c_category}전문, ${cdto.c_name}입니다.</c:otherwise>
    </c:choose>
        
    </p>
    <p>[중간에 채용공고 이어가는 화면, 지도, 별점 들어감]</p>
</div>
<div class="company-details">
    <h2>기업 정보</h2>
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
                    <c:when test="${not empty cdto.c_birthyear}">4년 (${cdto.c_birthyear}년 설립)</c:when>
                    <c:otherwise>―</c:otherwise>
                </c:choose>
            </td>
        </tr>
        <tr>
            <th>매출</th>
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
            <td><c:choose>
                    <c:when test="${not empty cdto.c_postnum and not empty cdto.c_addr}">${cdto.c_postnum} ${cdto.c_addr} ${cdto.c_addrdetail}</c:when>
                    <c:otherwise>―</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</div>
</body>
</html>