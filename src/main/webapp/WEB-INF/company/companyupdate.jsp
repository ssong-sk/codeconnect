<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>기업 마이페이지</title>

<style>
/*전체 너비에 맞게 수정 */
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f8f9fa;
	margin: 0;
}

.wrapper {
	display: flex;
	justify-content: center;
	padding: 20px 420px;
	
}

.container {
	display: flex;
	width: 1060px; /* 전체 너비를 1060px로 설정 */
}

.sidebar {
	width: 200px; /* 사이드바 너비 조정 */
	height: 460px;
	border: 1px solid #E0E0E0;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	margin-right: 20px;
	flex-shrink: 0;
	overflow-y: auto;
	margin-bottom: 50px;
	margin-top: 15px;
}

.sidebar h5 {
	text-align: center;
	font-weight: bold;
	margin-bottom: 20px;
}

.sidebar .btn {
	width: 100%;
	margin-bottom: 10px;
	background-color: #f0f4ff;
	color: #007bff;
	border: 1px solid #d0e2ff;
	border-radius: 5px;
	font-weight: bold;
	padding: 10px;
	text-align: left;
	transition: background-color 0.3s, color 0.3s;
}

.sidebar .btn:hover {
	background-color: #007bff;
	color: #fff;
}

.sidebar .menu-section {
	margin-top: 20px;
}

.sidebar .menu-item {
	padding: 10px 0;
	cursor: pointer;
	display: flex;
	justify-content: space-between;
	align-items: center;
	color: #000;
}

.sidebar .menu-item:hover {
	color: #007bff;
}

.sidebar .menu-item+.menu-item {
	border-top: none;
}

.menu-divider {
	border-top: 1px solid #E0E0E0;
	margin: 10px 0;
}

.main-content-wrapper {
	display: flex;
	flex-direction: column;
	flex-grow: 1;
	background-color: #fff;
	border-radius: 10px;
	padding: 10px;
	overflow-y: auto;
	width: calc(100% - 240px); /* 사이드바 너비를 뺀 나머지 공간 */
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

.header h1 {
	font-size: 24px;
}
/*여기까지 복붙*/

.container.mt-4 .row {
	margin-bottom: 20px;
}

.table-responsive {
	margin-top: 20px;
}

#map {
	width: 100%;
	height: 400px;
	margin-top: 20px;
	display: none;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="sidebar">
                <h5>기업 채용 솔루션</h5>
                <button class="btn" onclick="location.href='/hire/hirewrite'">+ 공고 등록하기</button>
                <!-- <button class="btn">🔍 인재풀 탐색하기</button>-->
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='jiwon'">전체 지원자 관리</div>
                <div class="menu-item" onclick="location.href='companyhire'">
                    <span>채용공고 관리</span> <span>+</span>
                </div>
                <!-- <div class="menu-item"  onclick="location.href='injae'">제안 보낸 인재풀 관리</div>-->
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='companyupdate'" style="font-weight: bold;">기업 정보 수정</div>
                <div class="menu-item" onclick="location.href='intromain'">기업 소개 하기</div>
                <div class="menu-divider"></div>
                <div class="menu-item" onclick="location.href='account'">계정 관리</div>
                <div class="menu-item" onclick="location.href='logoutprocess'">로그아웃</div>
            </div>
			<div class="main-content-wrapper">
				<div class="header">
					<h1>기업 정보 수정</h1>
				</div>
				<div class="container mt-4">
					<form id="companyForm" action="update" method="post"
						enctype="multipart/form-data">
						<input type="hidden" name="c_num" id="c_num" value="${dto.c_num}">
						<div class="row">
							<div class="col-md-6">
								<div class="mb-4">
									<label for="c_name" class="form-label">기업명</label> <input
										type="text" class="form-control" id="c_name" name="c_name"
										value="${dto.c_name}" disabled>
								</div>
								<div class="mb-4">
									<label for="c_phone" class="form-label">기업 대표 전화번호</label> <input
										type="text" class="form-control" id="c_phone" name="c_phone"
										value="${dto.c_phone}">
								</div>
								<div class="mb-4">
									<label for="c_postnum" class="form-label">우편번호</label>
									<div class="input-group">
										<input type="text" class="form-control" id="c_postnum"
											name="c_postnum" value="${dto.c_postnum}" readonly>
										<button type="button" class="btn btn-link"
											onclick="openPostcodePopup()">주소찾기</button>
									</div>
								</div>
								<div class="mb-4">
									<label for="c_addr" class="form-label">대표 주소</label> <input
										type="text" class="form-control" id="c_addr" name="c_addr"
										value="${dto.c_addr}" readonly>
								</div>
								<div class="mb-4">
									<label for="c_addrdetail" class="form-label">상세 주소</label> <input
										type="text" class="form-control" id="c_addrdetail"
										name="c_addrdetail" value="${dto.c_addrdetail}">
								</div>
								<div id="map"></div>
								<div class="mb-4">
									<label for="c_local" class="form-label">대표 지역</label> <select
										class="form-select" id="c_local" name="c_local"
										required="required">
										<option value="">대표 지역 선택</option>
										<option value="서울"
											<c:if test="${dto.c_local == '서울'}">selected</c:if>>서울</option>
										<option value="경기"
											<c:if test="${dto.c_local == '경기'}">selected</c:if>>경기</option>
										<option value="인천"
											<c:if test="${dto.c_local == '인천'}">selected</c:if>>인천</option>
										<option value="부산"
											<c:if test="${dto.c_local == '부산'}">selected</c:if>>부산</option>
										<option value="대구"
											<c:if test="${dto.c_local == '대구'}">selected</c:if>>대구</option>
										<option value="광주"
											<c:if test="${dto.c_local == '광주'}">selected</c:if>>광주</option>
										<option value="대전"
											<c:if test="${dto.c_local == '대전'}">selected</c:if>>대전</option>
										<option value="울산"
											<c:if test="${dto.c_local == '울산'}">selected</c:if>>울산</option>
										<option value="세종"
											<c:if test="${dto.c_local == '세종'}">selected</c:if>>세종</option>
										<option value="강원"
											<c:if test="${dto.c_local == '강원'}">selected</c:if>>강원</option>
										<option value="충북"
											<c:if test="${dto.c_local == '충북'}">selected</c:if>>충북</option>
										<option value="충남"
											<c:if test="${dto.c_local == '충남'}">selected</c:if>>충남</option>
										<option value="전북"
											<c:if test="${dto.c_local == '전북'}">selected</c:if>>전북</option>
										<option value="전남"
											<c:if test="${dto.c_local == '전남'}">selected</c:if>>전남</option>
										<option value="경북"
											<c:if test="${dto.c_local == '경북'}">selected</c:if>>경북</option>
										<option value="경남"
											<c:if test="${dto.c_local == '경남'}">selected</c:if>>경남</option>
										<option value="제주"
											<c:if test="${dto.c_local == '제주'}">selected</c:if>>제주</option>
									</select>
								</div>
								<div class="mb-4">
									<label for="c_reginum" class="form-label">사업자 등록번호</label> <input
										type="text" class="form-control" id="c_reginum"
										name="c_reginum" value="${dto.c_reginum}" disabled>
								</div>
								<div class="mb-4">
									<label for="c_registration_file" class="form-label">사업자
										등록증 파일</label> <input type="file" class="form-control"
										id="c_registration_file" name="c_registration_file"
										accept=".pdf, .png, .jpg"> <small class="form-text">파일
										형식: PDF, PNG, JPG (10MB 이하로 가능합니다.)</small>
									<div>현재 파일 : ${dto.c_regi_file }</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="mb-4">
									<label for="c_money" class="form-label">매출액</label>
									<div class="input-group">
										<input type="text" class="form-control" id="c_money"
											name="c_money" value="${dto.c_money}"> <span
											class="input-group-text">억</span>
									</div>
								</div>
								<div class="mb-4">
									<label for="c_salary" class="form-label">평균임금</label>
									<div class="input-group">
										<input type="text" class="form-control" id="c_salary"
											name="c_salary" value="${dto.c_salary}"> <span
											class="input-group-text">만</span>
									</div>
								</div>
								<div class="mb-4">
									<label for="c_size" class="form-label">기업 규모</label> <select
										class="form-select" id="c_size" name="c_size">
										<option value="">기업 규모 선택</option>
										<option value="대기업"
											<c:if test="${dto.c_size == '대기업'}">selected</c:if>>대기업</option>
										<option value="중견기업"
											<c:if test="${dto.c_size == '중견기업'}">selected</c:if>>중견기업</option>
										<option value="중소기업"
											<c:if test="${dto.c_size == '중소기업'}">selected</c:if>>중소기업</option>
										<option value="공기업"
											<c:if test="${dto.c_size == '공기업'}">selected</c:if>>공기업</option>
									</select>
								</div>
								<div class="mb-4">
									<label for="c_category" class="form-label">산업군</label> <select
										class="form-select" id="c_category" name="c_category">
										<option value="">산업군 선택</option>
										<option value="정보통신/IT"
											<c:if test="${dto.c_category == '정보통신/IT'}">selected</c:if>>정보통신/IT</option>
										<option value="제조업"
											<c:if test="${dto.c_category == '제조업'}">selected</c:if>>제조업</option>
										<option value="건설/토목업"
											<c:if test="${dto.c_category == '건설/토목업'}">selected</c:if>>건설/토목업</option>
										<option value="개인/가사/서비스"
											<c:if test="${dto.c_category == '개인/가사/서비스'}">selected</c:if>>개인/가사/서비스</option>
										<option value="금융/보험"
											<c:if test="${dto.c_category == '금융/보험'}">selected</c:if>>금융/보험</option>
										<option value="교육/도서"
											<c:if test="${dto.c_category == '교육/도서'}">selected</c:if>>교육/도서</option>
										<option value="공공/의료/사회기반"
											<c:if test="${dto.c_category == '공공/의료/사회기반'}">selected</c:if>>공공/의료/사회기반</option>
										<option value="법률/회계"
											<c:if test="${dto.c_category == '법률/회계'}">selected</c:if>>법률/회계</option>
										<option value="연구/과학기술"
											<c:if test="${dto.c_category == '연구/과학기술'}">selected</c:if>>연구/과학기술</option>
										<option value="방송/광고/문화"
											<c:if test="${dto.c_category == '방송/광고/문화'}">selected</c:if>>방송/광고/문화</option>
										<option value="여행/숙박/음식점"
											<c:if test="${dto.c_category == '여행/숙박/음식점'}">selected</c:if>>여행/숙박/음식점</option>
										<option value="도매/소매"
											<c:if test="${dto.c_category == '도매/소매'}">selected</c:if>>도매/소매</option>
										<option value="유통/물류/무역업"
											<c:if test="${dto.c_category == '유통/물류/무역업'}">selected</c:if>>유통/물류/무역업</option>
										<option value="운수업"
											<c:if test="${dto.c_category == '운수업'}">selected</c:if>>운수업</option>
										<option value="부동산/임대업"
											<c:if test="${dto.c_category == '부동산/임대업'}">selected</c:if>>부동산/임대업</option>
										<option value="사업시설/지원서비스업"
											<c:if test="${dto.c_category == '사업시설/지원서비스업'}">selected</c:if>>사업/인력지원서비스업</option>
										<option value="기타"
											<c:if test="${dto.c_category == '기타'}">selected</c:if>>기타</option>
									</select>
								</div>


								<div class="mb-4">
									<label for="c_peoplesu" class="form-label">직원수</label> <select
										class="form-select" id="c_peoplesu" name="c_peoplesu"
										required="required">
										<option value="">직원 수 선택</option>
										<option value="1-10"
											<c:if test="${dto.c_peoplesu == '1-10'}">selected</c:if>>1-10</option>
										<option value="11-50"
											<c:if test="${dto.c_peoplesu == '11-50'}">selected</c:if>>11-50</option>
										<option value="51-100"
											<c:if test="${dto.c_peoplesu == '51-100'}">selected</c:if>>51-100</option>
										<option value="101-500"
											<c:if test="${dto.c_peoplesu == '101-500'}">selected</c:if>>101-500</option>
										<option value="501-1000"
											<c:if test="${dto.c_peoplesu == '501-1000'}">selected</c:if>>501-1000</option>
										<option value="1001+"
											<c:if test="${dto.c_peoplesu == '1001+'}">selected</c:if>>1001+</option>
									</select>
								</div>
								<div class="mb-4">
									<label for="c_birthyear" class="form-label">설립년도</label> <input
										type="text" class="form-control" id="c_birthyear"
										name="c_birthyear" value="${dto.c_birthyear}">
								</div>
								<div class="mb-4">
									<label for="c_insa_phone" class="form-label">인사담당자 전화번호</label>
									<input type="text" class="form-control" id="c_insa_phone"
										name="c_insa_phone" value="${dto.c_insa_phone}">
								</div>
								<div class="mb-4">
									<label for="c_insa_email" class="form-label">인사담당자 이메일</label>
									<input type="email" class="form-control" id="c_insa_email"
										name="c_insa_email" value="${dto.c_insa_email}">
								</div>
								<div class="mb-4">
									<button type="button" class="btn btn-outline-primary"
										onclick="saveFormWithAlert()">저장</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c2a4c379a7f83fd166976b93258be7f&libraries=services"></script>
	<script>
		function openPostcodePopup() {
			new daum.Postcode({
				oncomplete : function(data) {
					var roadAddr = data.roadAddress;
					var extraRoadAddr = '';
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}
					var fullAddr = roadAddr + extraRoadAddr;
					document.getElementById('c_postnum').value = data.zonecode;
					document.getElementById('c_addr').value = fullAddr;
					document.getElementById('c_addrdetail').focus();

					// 지도 표시
					//displayMap(fullAddr);
				}
			}).open();
		}

		function displayMap(address) {
			var mapContainer = document.getElementById('map'), mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667),
				level : 3
			};

			var map = new kakao.maps.Map(mapContainer, mapOption);

			var geocoder = new kakao.maps.services.Geocoder();

			geocoder
					.addressSearch(
							address,
							function(result, status) {
								if (status === kakao.maps.services.Status.OK) {
									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									map.setCenter(coords);

									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									document.getElementById('map').style.display = 'block';
								}
							});
		}

		function saveFormWithAlert() {
			alert('저장되었습니다!');
			document.getElementById('companyForm').submit();
		}
	</script>
</body>
</html>