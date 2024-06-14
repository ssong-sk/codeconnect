<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<title>기업 정보 수정</title>
<style>
    body {
        font-family: 'Noto Sans KR', sans-serif;
        background-color: #ffffff;
    }
    .container {
        max-width: 800px;
        margin-top: 50px;
        padding: 20px;
    }
    .form-label {
        font-weight: bold;
    }
    .form-control:disabled, .form-control[readonly] {
        background-color: #e9ecef;
    }
    .form-text {
        font-size: 0.875em;
        color: #6c757d;
    }
    .input-group-text {
        border-radius: 0;
    }
    .btn-link {
        padding: 0;
        font-weight: bold;
    }
    .btn-danger {
        width: 100px;
    }
</style>
<script>
    function openPostcodePopup() {
        new daum.Postcode({
            oncomplete: function(data) {
                var roadAddr = data.roadAddress; 
                var extraRoadAddr = ''; 
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                document.getElementById('c_addr').value = roadAddr + extraRoadAddr;
            }
        }).open();
    }
</script>
</head>
<body>
    <div class="container">
        <h1 class="mb-4">기업 정보 수정</h1>
        
          <form action="update" method="post">
            <input type="hidden" name="c_num" id="c_num" value="${dto.c_num}">
            <div class="mb-3">
                <label for="c_name" class="form-label">기업명</label>
                <input type="text" class="form-control" id="c_name" name="c_name" value="${dto.c_name }" disabled>
            </div>
            <div class="mb-3">
                <label for="c_phone" class="form-label">기업 대표 전화번호</label>
                <input type="text" class="form-control" id="c_phone" name="c_phone" value="${dto.c_phone}">
            </div>
            <div class="mb-3">
                <label for="companyAddress" class="c_addr">대표 주소</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="c_addr" name="c_addr" value="${dto.c_addr}">
                    <button type="button" class="btn btn-link" onclick="openPostcodePopup()">주소찾기</button>
                </div>
            </div>
            <div class="mb-3">
                <label for="c_local" class="form-label">대표 지역</label>
                <select class="form-select" id="c_local" name="c_local" required="required">
                    <option value="">대표 지역 선택</option>
                    <option value="서울" <c:if test="${dto.c_local == '서울'}">selected</c:if>>서울</option>
                    <option value="경기" <c:if test="${dto.c_local == '경기'}">selected</c:if>>경기</option>
                    <option value="인천" <c:if test="${dto.c_local == '인천'}">selected</c:if>>인천</option>
                    <option value="부산" <c:if test="${dto.c_local == '부산'}">selected</c:if>>부산</option>
                    <option value="대구" <c:if test="${dto.c_local == '대구'}">selected</c:if>>대구</option>
                    <option value="광주" <c:if test="${dto.c_local == '광주'}">selected</c:if>>광주</option>
                    <option value="대전" <c:if test="${dto.c_local == '대전'}">selected</c:if>>대전</option>
                    <option value="울산" <c:if test="${dto.c_local == '울산'}">selected</c:if>>울산</option>
                    <option value="세종" <c:if test="${dto.c_local == '세종'}">selected</c:if>>세종</option>
                    <option value="강원" <c:if test="${dto.c_local == '강원'}">selected</c:if>>강원</option>
                    <option value="충북" <c:if test="${dto.c_local == '충북'}">selected</c:if>>충북</option>
                    <option value="충남" <c:if test="${dto.c_local == '충남'}">selected</c:if>>충남</option>
                    <option value="전북" <c:if test="${dto.c_local == '전북'}">selected</c:if>>전북</option>
                    <option value="전남" <c:if test="${dto.c_local == '전남'}">selected</c:if>>전남</option>
                    <option value="경북" <c:if test="${dto.c_local == '경북'}">selected</c:if>>경북</option>
                    <option value="경남" <c:if test="${dto.c_local == '경남'}">selected</c:if>>경남</option>
                    <option value="제주" <c:if test="${dto.c_local == '제주'}">selected</c:if>>제주</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="c_reginum" class="form-label">사업자 등록번호</label>
                <input type="text" class="form-control" id="c_reginum" name="c_reginum" value="${dto.c_reginum}" disabled>
            </div>
            <div class="mb-3">
                <label for="c_money" class="form-label">매출액</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="c_money" name="c_money" value="${dto.c_money}">
                    <span class="input-group-text">억</span>
                </div>
            </div>
           <div class="mb-3">
                <label for="c_salary" class="form-label">평균임금</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="c_salary" name="c_salary" value="${dto.c_salary}">
                    <span class="input-group-text">만</span>
                </div>
            </div>
            <div class="mb-3">
                <label for="c_category" class="form-label">산업군</label>
                <select class="form-select" id="c_category" name="c_category">
                    <option value="">산업군 선택</option>
                    <option value="IT" <c:if test="${dto.c_category == 'IT'}">selected</c:if>>IT</option>
                    <option value="제조" <c:if test="${dto.c_category == '제조'}">selected</c:if>>제조</option>
                    <option value="건설" <c:if test="${dto.c_category == '건설'}">selected</c:if>>건설</option>
                    <option value="서비스" <c:if test="${dto.c_category == '서비스'}">selected</c:if>>서비스</option>
                    <option value="금융" <c:if test="${dto.c_category == '금융'}">selected</c:if>>금융</option>
                    <option value="교육" <c:if test="${dto.c_category == '교육'}">selected</c:if>>교육</option>
                    <option value="의료" <c:if test="${dto.c_category == '의료'}">selected</c:if>>의료</option>
                    <option value="기타" <c:if test="${dto.c_category == '기타'}">selected</c:if>>기타</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="c_peoplesu" class="form-label">직원수</label>
                <select class="form-select" id="c_peoplesu" name="c_peoplesu" required="required">
                    <option value="">직원 수 선택</option>
                    <option value="1-10" <c:if test="${dto.c_peoplesu == '1-10'}">selected</c:if>>1-10</option>
                    <option value="11-50" <c:if test="${dto.c_peoplesu == '11-50'}">selected</c:if>>11-50</option>
                    <option value="51-100" <c:if test="${dto.c_peoplesu == '51-100'}">selected</c:if>>51-100</option>
                    <option value="101-500" <c:if test="${dto.c_peoplesu == '101-500'}">selected</c:if>>101-500</option>
                    <option value="501-1000" <c:if test="${dto.c_peoplesu == '501-1000'}">selected</c:if>>501-1000</option>
                    <option value="1001+" <c:if test="${dto.c_peoplesu == '1001+'}">selected</c:if>>1001+</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="c_birthyear" class="form-label">설립년도</label>
                <input type="text" class="form-control" id="c_birthyear" name="c_birthyear" value="${dto.c_birthyear}">
            </div>

            <div class="mb-3">
                <label for="c_insa_phone" class="form-label">인사담당자 전화번호</label>
                <input type="text" class="form-control" id="c_insa_phone" name="c_insa_phone" value="${dto.c_insa_phone}">
            </div>
            <div class="mb-3">
                <label for="c_insa_email" class="form-label">인사담당자 이메일</label>
                <input type="email" class="form-control" id="c_insa_email" name="c_insa_email" value="${dto.c_insa_email}">
            </div>
            <button type="submit" class="btn btn-danger">저장</button>
            <button type="button" class="btn btn-back" onclick="location.href='main'">뒤로가기</button>
        </form>
    </div>
</body>
</html>
