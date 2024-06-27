<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=Noto+Sans+Korean&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Insert title here</title>
<style type="text/css">
.all {
	height: 100%;
}

.center {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	max-width: 1080px;
}

#wrap {
	margin-top: 100px;
	font-family: IBM Plex Sans KR;
	margin-bottom: 100px;
}

.menu_container:before {
    width: 90%;
}

.menu_container:before {
    display: block;
    position: absolute;
    bottom: 0;
    left: 50%;
    width: 100%;
    max-width: 1080px;
    height: 1px;
    margin: 0 auto;
    background-color: rgba(0, 0, 0, .05);
    -webkit-transform: translateX(-50%);
    transform: translateX(-50%);
    content: "";
}

.menu_container {
	margin-top: 30px;
    overflow: hidden;
    position: sticky;
    top: 60px;
    z-index: 11;
    text-align: left;
    background: hsla(0, 0%, 100%, .88);
    -webkit-backdrop-filter: saturate(150%) blur(32px);
    backdrop-filter: saturate(150%) blur(32px);
}

.menu_item {
    display: inline-block;
    position: relative;
    z-index: 1;
    padding: 0 16px;
    font-weight: 500;
    vertical-align: top;
}

.menu_item:first-of-type {
    margin-left: -16px;
}

.menu_item[aria-selected=true] .menu_text {
    color: #171719;
}

.menu_text {
    display: block;
    position: relative;
    padding: 16px 0;
    font-size: 16px;
    font-weight: 600;
    color: rgba(55, 56, 60, .28);
    letter-spacing: .09px;
    line-height: 150%;
    -webkit-transition: color .2s ease;
    transition: color .2s ease;
}

.menu_text:before {
    display: none;
    position: absolute;
    right: 0;
    left: 0;
    bottom: 0;
    z-index: 1;
    height: 2px;
    background-color: #171719;
    content: "";
}

.menu_text:hover{
    color: gray;
}

.menu_item[aria-selected=true] .menu_text:before {
    display: block;
}

a, a:active, a:hover, a:visited {
    color: inherit;
}

.dashboard {
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-top: 20px;
}

table.custom-table{
	background-color: #f9f9f9;
}

.comlist{
	cursor: pointer;
}

.main-content-wrapper {
	display: flex;
	flex-direction: column;
	flex-grow: 1;
	background-color: #fff;
	border-radius: 10px;
	overflow-y: auto;
	position: relative;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px;
}

.header h1 {
	font-size: 24px;
}

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
<div class="all">
	<div id="wrap">
		<div class="center">
			<div class="manager">
			    <div class="container-main">
			        <a class="" href="#"><h1 style="font-weight: 600;">관리자 페이지</h1></a>
			        <div class="menu_container">
			        	<div role="tablist" class="menu_menu" aria-label="검색 분류">
			        		<a href="main" role="tab" id="home" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="home">
			        		<span class="menu_text">HOME</span>
			        		</a>
			        		<a href="member" role="tab" id="member" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="member">
			        		<span class="menu_text">MEMBER</span>
			        		</a>
			        		<a href="company" role="tab" id="company" tabindex="-1" class="menu_item" aria-selected="true" aria-controls="company">
			        		<span class="menu_text">COMPANY</span>
			        		</a>
			        		<a href="info" role="tab" id="info" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="info">
			        		<span class="menu_text">INFO</span>
			        		</a>
			        		<a href="event" role="tab" id="event" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="event">
			        		<span class="menu_text">EVENT</span>
			        		</a>
			        		<a href="edit" role="tab" id="edit" tabindex="0" class="menu_item" aria-selected="false" aria-controls="edit">
			        		<span class="menu_text">EDIT</span>
			        		</a>
			        	</div>
			        </div>
			    </div>
			</div>
			
			<div class="container-bottom">
			    <div class="row">
			        <main id="content" class="">
			            <div class="dashboard">
			                <div class="main-content-wrapper">
								<div class="header">
									<h1>기업 정보 수정</h1>
								</div>
								<div class="container mt-4">
									<form id="companyForm" action="companyupdate" method="post" enctype="multipart/form-data">
										<input type="hidden" name="c_num" id="c_num" value="${cdto.c_num}">
										<div class="row">
											<div class="col-md-6">
												<div class="mb-4">
													<label for="c_name" class="form-label">기업명</label> <input
														type="text" class="form-control" id="c_name" name="c_name"
														value="${cdto.c_name}" disabled>
												</div>
												<div class="mb-4">
													<label for="c_phone" class="form-label">기업 대표 전화번호</label> <input
														type="text" class="form-control" id="c_phone" name="c_phone"
														value="${cdto.c_phone}">
												</div>
												<div class="mb-4">
													<label for="c_postnum" class="form-label">우편번호</label>
													<div class="input-group">
														<input type="text" class="form-control" id="c_postnum"
															name="c_postnum" value="${cdto.c_postnum}" readonly>
														<button type="button" class="btn btn-link"
															onclick="openPostcodePopup()">주소찾기</button>
													</div>
												</div>
												<div class="mb-4">
													<label for="c_addr" class="form-label">대표 주소</label> <input
														type="text" class="form-control" id="c_addr" name="c_addr"
														value="${cdto.c_addr}" readonly>
												</div>
												<div class="mb-4">
													<label for="c_addrdetail" class="form-label">상세 주소</label> <input
														type="text" class="form-control" id="c_addrdetail"
														name="c_addrdetail" value="${cdto.c_addrdetail}">
												</div>
												<div id="map"></div>
												<div class="mb-4">
													<label for="c_local" class="form-label">대표 지역</label> <select
														class="form-select" id="c_local" name="c_local"
														required="required">
														<option value="">대표 지역 선택</option>
														<option value="서울"
															<c:if test="${cdto.c_local == '서울'}">selected</c:if>>서울</option>
														<option value="경기"
															<c:if test="${cdto.c_local == '경기'}">selected</c:if>>경기</option>
														<option value="인천"
															<c:if test="${cdto.c_local == '인천'}">selected</c:if>>인천</option>
														<option value="부산"
															<c:if test="${cdto.c_local == '부산'}">selected</c:if>>부산</option>
														<option value="대구"
															<c:if test="${cdto.c_local == '대구'}">selected</c:if>>대구</option>
														<option value="광주"
															<c:if test="${cdto.c_local == '광주'}">selected</c:if>>광주</option>
														<option value="대전"
															<c:if test="${cdto.c_local == '대전'}">selected</c:if>>대전</option>
														<option value="울산"
															<c:if test="${cdto.c_local == '울산'}">selected</c:if>>울산</option>
														<option value="세종"
															<c:if test="${cdto.c_local == '세종'}">selected</c:if>>세종</option>
														<option value="강원"
															<c:if test="${cdto.c_local == '강원'}">selected</c:if>>강원</option>
														<option value="충북"
															<c:if test="${cdto.c_local == '충북'}">selected</c:if>>충북</option>
														<option value="충남"
															<c:if test="${cdto.c_local == '충남'}">selected</c:if>>충남</option>
														<option value="전북"
															<c:if test="${cdto.c_local == '전북'}">selected</c:if>>전북</option>
														<option value="전남"
															<c:if test="${cdto.c_local == '전남'}">selected</c:if>>전남</option>
														<option value="경북"
															<c:if test="${cdto.c_local == '경북'}">selected</c:if>>경북</option>
														<option value="경남"
															<c:if test="${cdto.c_local == '경남'}">selected</c:if>>경남</option>
														<option value="제주"
															<c:if test="${cdto.c_local == '제주'}">selected</c:if>>제주</option>
													</select>
												</div>
												<div class="mb-4">
													<label for="c_reginum" class="form-label">사업자 등록번호</label> <input
														type="text" class="form-control" id="c_reginum"
														name="c_reginum" value="${cdto.c_reginum}" disabled>
												</div>
												<div class="mb-4">
													<label for="c_registration_file" class="form-label">사업자
														등록증 파일</label> <input type="file" class="form-control"
														id="c_registration_file" name="c_registration_file"
														accept=".pdf, .png, .jpg"> <small class="form-text">파일
														형식: PDF, PNG, JPG (10MB 이하로 가능합니다.)</small>
													<div>현재 파일 : ${cdto.c_regi_file }</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="mb-4">
													<label for="c_money" class="form-label">매출액</label>
													<div class="input-group">
														<input type="text" class="form-control" id="c_money"
															name="c_money" value="${cdto.c_money}"> <span
															class="input-group-text">억</span>
													</div>
												</div>
												<div class="mb-4">
													<label for="c_salary" class="form-label">평균임금</label>
													<div class="input-group">
														<input type="text" class="form-control" id="c_salary"
															name="c_salary" value="${cdto.c_salary}"> <span
															class="input-group-text">만</span>
													</div>
												</div>
												<div class="mb-4">
													<label for="c_size" class="form-label">기업 규모</label> <select
														class="form-select" id="c_size" name="c_size">
														<option value="">기업 규모 선택</option>
														<option value="대기업"
															<c:if test="${cdto.c_size == '대기업'}">selected</c:if>>대기업</option>
														<option value="중견기업"
															<c:if test="${cdto.c_size == '중견기업'}">selected</c:if>>중견기업</option>
														<option value="중소기업"
															<c:if test="${cdto.c_size == '중소기업'}">selected</c:if>>중소기업</option>
														<option value="공기업"
															<c:if test="${cdto.c_size == '공기업'}">selected</c:if>>공기업</option>
													</select>
												</div>
												<div class="mb-4">
													<label for="c_category" class="form-label">산업군</label> <select
														class="form-select" id="c_category" name="c_category">
														<option value="">산업군 선택</option>
														<option value="IT"
															<c:if test="${cdto.c_category == 'IT'}">selected</c:if>>IT</option>
														<option value="제조"
															<c:if test="${cdto.c_category == '제조'}">selected</c:if>>제조</option>
														<option value="건설"
															<c:if test="${cdto.c_category == '건설'}">selected</c:if>>건설</option>
														<option value="서비스"
															<c:if test="${cdto.c_category == '서비스'}">selected</c:if>>서비스</option>
														<option value="금융"
															<c:if test="${cdto.c_category == '금융'}">selected</c:if>>금융</option>
														<option value="교육"
															<c:if test="${cdto.c_category == '교육'}">selected</c:if>>교육</option>
														<option value="의료"
															<c:if test="${cdto.c_category == '의료'}">selected</c:if>>의료</option>
														<option value="기타"
															<c:if test="${cdto.c_category == '기타'}">selected</c:if>>기타</option>
													</select>
												</div>
												<div class="mb-4">
													<label for="c_peoplesu" class="form-label">직원수</label> <select
														class="form-select" id="c_peoplesu" name="c_peoplesu"
														required="required">
														<option value="">직원 수 선택</option>
														<option value="1-10"
															<c:if test="${cdto.c_peoplesu == '1-10'}">selected</c:if>>1-10</option>
														<option value="11-50"
															<c:if test="${cdto.c_peoplesu == '11-50'}">selected</c:if>>11-50</option>
														<option value="51-100"
															<c:if test="${cdto.c_peoplesu == '51-100'}">selected</c:if>>51-100</option>
														<option value="101-500"
															<c:if test="${cdto.c_peoplesu == '101-500'}">selected</c:if>>101-500</option>
														<option value="501-1000"
															<c:if test="${cdto.c_peoplesu == '501-1000'}">selected</c:if>>501-1000</option>
														<option value="1001+"
															<c:if test="${cdto.c_peoplesu == '1001+'}">selected</c:if>>1001+</option>
													</select>
												</div>
												<div class="mb-4">
													<label for="c_birthyear" class="form-label">설립년도</label> <input
														type="text" class="form-control" id="c_birthyear"
														name="c_birthyear" value="${cdto.c_birthyear}">
												</div>
												<div class="mb-4">
													<label for="c_insa_phone" class="form-label">인사담당자 전화번호</label>
													<input type="text" class="form-control" id="c_insa_phone"
														name="c_insa_phone" value="${cdto.c_insa_phone}">
												</div>
												<div class="mb-4">
													<label for="c_insa_email" class="form-label">인사담당자 이메일</label>
													<input type="email" class="form-control" id="c_insa_email"
														name="c_insa_email" value="${cdto.c_insa_email}">
												</div>
												<div class="mb-6" style="margin-left: 323px;">
													<button type="button" class="btn btn-outline-primary" onclick="saveFormWithAlert()">수정</button>
													<button type="button" class="btn btn-outline-danger" onclick="deleteAlert(${cdto.c_num})">삭제</button>
													<button type="button" class="btn btn-outline-dark" onclick="history.back()">취소</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
			            </div>
			        </main>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c2a4c379a7f83fd166976b93258be7f&libraries=services"></script>
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
       var mapContainer = document.getElementById('map'), 
           mapOption = { 
               center: new kakao.maps.LatLng(33.450701, 126.570667),
               level: 3 
           };  

       var map = new kakao.maps.Map(mapContainer, mapOption);

       var geocoder = new kakao.maps.services.Geocoder();

       geocoder.addressSearch(address, function(result, status) {
           if (status === kakao.maps.services.Status.OK) {
               var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

               map.setCenter(coords);

               var marker = new kakao.maps.Marker({
                   map: map,
                   position: coords
               });
               
               document.getElementById('map').style.display = 'block';
           } 
       });
   }

   function saveFormWithAlert() {
       alert('저장되었습니다!');
       document.getElementById('companyForm').submit();
   }
   
   function deleteAlert(c_num) {
       if (confirm("정말 삭제하시겠습니까?")) {
           location.href = 'companydelete?c_num=' + c_num;
       }
   }
</script>
<script type="text/javascript">
	$("a.menu_item").click(function() {
		$("a.menu_item").attr('aria-selected', 'false');
        $(this).attr('aria-selected', 'true');
	})
</script>
</html>