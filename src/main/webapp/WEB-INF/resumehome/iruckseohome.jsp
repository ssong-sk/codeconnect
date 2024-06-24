<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
  /* 전체 틀 레이아웃 */
  .all {
      height: 100%;
  }
  
  .center {
      margin: 0 auto;
      width: 100%;
      height: 100%;
      max-width: 1200px;
  }
  
  #wrap {
      margin-top: 100px; /* 헤더 들어갈 부분 */
      font-family: 'IBM Plex Sans KR', sans-serif;
  }
  .all-form {
      display: flex; /* Flexbox로 배치 */
      align-items: flex-start; /* 상단 정렬 */
      padding: 20px; /* 전체 여백 */
      margin: 0 auto; /* 가운데 정렬 */
      border: 0px solid #ddd; /* 외곽선 */
  }
  
  /* 왼쪽 메뉴바 스타일 */
  .leftmenu {
      
  }
  
  .title-section {
     margin-top: 30%;
  }
  
  .leftmenu li {
      padding: 2px 0;
  }
  
  .menu-item {
      font-size: 0.9em;
  }
  
  /*오른쪽 스타일*/
  .
  .mylist-area {
      margin-left: 15%;/* 메뉴바와의 간격 */
  }
  
  .mylist-img {
    border: 0.5px solid gray;
    width: 100px;
    height: 100px;
    border-radius: 50%;
  }
  
  .mylist-state {
     display: flex; /* Flexbox 적용 */
      justify-content: space-around; /* 항목들을 균등하게 분배 */
      margin-top: 5%;
  }
  
  /* 추천 공고 섹션 스타일 */
  .mylist-chu {
      margin-top: 5%; /* 상단 여백 */
      padding: 10px 0; /* 상하 여백 */
  }
  
  .chu-img {
    width: 100%; /* 이미지를 부모의 폭에 맞춤 */
    height: 100px;; /* 비율을 유지하며 높이 조절 */
    border-radius: 8px; /* 모서리 둥글게 */
    object-fit: cover; /* 이미지가 박스에 맞게 조정 */
  }
  
  .mylist-chuimg {
    display: flex;
    flex-wrap: wrap; /* 줄바꿈 허용 */
    gap: 16px; /* 항목 간의 간격 */
    justify-content: space-between; /* 항목을 균등하게 분배 */
  }
  
  .chu-item {
    flex: 1 0 21%; /* 기본 크기: 21% (4개씩 배치), 필요 시 축소 */
    box-sizing: border-box; /* 패딩과 보더 포함 */
    margin-bottom: 24px; /* 아래 여백 */
    display: flex; /* 내부 요소를 flex로 변경 */ 
    flex-direction: column; /* 내부 요소를 세로로 배치 */
  }
  
  .chu-info {
    margin-top: 8px; /* 이미지와 텍스트 사이의 여백 */
    flex-grow: 1; /* 내부 요소가 가능한한 같은 공간을 차지하도록 */
  }

</style>
</head>
<body>
    <div class="all">
        <div id="wrap">
            <div class="center">
              <div class="all-form">
<!-- 왼쪽 메뉴바------------------------------------------------------------------------------------------------------- -->
              <div class="leftmenubar" style="width: 20%;">
                  <ul class="leftmenu">
				    <li>
				      <div class="menu-home">
				        <a href="/resumehome/home"><b>My Home</b></a>
				      </div>
				    </li>
				    
				    <li class="title-section">
				      <div class="menu-section">
				        <span><b>이력서 관리</b></span>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/form">이력서 등록</a>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/conditionform">이력서 현황</a>
				      </div>
				    </li>
				    
				    <li class="title-section">
				      <div class="menu-section">
				        <span><b>입사지원 관리</b></span>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/supportform">입사지원 현황</a>
				      </div>
				    </li>
				    
				    <li class="title-section">
				      <div class="menu-section">
				        <span><b>스크랩/관심기업</b></span>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/scrapform">스크랩공고</a>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/interestform">관심기업</a>
				      </div>
				    </li>
				  </ul>
              </div>

<!-- 오른쪽 레이아웃 작업----------------------------------------------------------------------------------------------- -->
              <div class="mylist-area" style="width: 80%;">
                <div style="margin-left: 4%;">
	                <img class="mylist-img" src="">
	                <span style="margin-left: 3%;"><b>${rdto.r_name } 님</b></span>
                </div>
                
                <div class="mylist-state">
	                <div>
	                  <ul class="circle-list">
	                    <li>이력서 현황 
	                    <a href="/resumehome/conditionform"><span>${totalCount}</span></a></li>
	                  </ul>
	                </div>
	                
	                <div>
	                  <ul>
	                    <li>지원 완료
	                    <a href="#"><span>${totalCount}</span></a></li>
	                  </ul>
	                </div>
	                
	                <div>
	                  <ul>
	                    <li>이력서 열람
	                    <a href="#"></a><span>${totalCount}</span></li>
	                  </ul>
	                </div>
	                
	                <div>
	                  <ul>
	                    <li>스크랩 공고
	                    <a href="#"><span>${totalCount}</span></a></li>
	                  </ul>
	                </div>
	                
	                <div>
	                  <ul>
	                    <li>관심기업 공고
	                    <a href="#"><span>${totalCount}</span></a></li>
	                  </ul>
	                </div>
	              </div>    
	              
	              <hr>
	              <!-- 배너----------------------------------------------------------------------- -->
	              <div>
	                <img alt="" src="../iruckseobanner.JPG" style="width: 100%; margin-top: 2%;">
	              </div>  
	              
	              
	              <!-- 추천공고 -->
	              <div class="mylist-chu">
	                <span style="font-size: 1.2em;"><b>추천공고</b></span>
	                <span style="font-size: 0.9em; float: right; color: gray; margin-top: 1%;"><a href="/hire/main">더보기 ></a></span>
	                <hr>
	              </div>   
	              
	              <div class="mylist-chuimg">
					    <c:forEach items="${hlist}" var="h" varStatus="loop">
					      <c:if test="${loop.index < 24 }">
					        <div class="chu-item">
					            <a href="#"><img alt="" src="../companyintro_uploads/${hdto.ci_image}" class="chu-img"></a>
					            <div class="chu-info">
					                <span class="chu-title"><a href="#">${hdto.c_name}</a></span>
					                <i class="bi bi-heart"></i><br><br>
					                <span class="chu-company"><a href="#"><b>${hdto.h_title}</b></a></span><br><br>
					                <span style="font-size: 0.8em; color: gray;">${hdto.h_job }</span><br>
					                <span style="font-size: 0.8em; color: gray;">${hdto.h_tech }</span><br>
					                <span style="font-size: 0.8em; color: gray;">${hdto.h_deadline }</span><br>
					                <span style="font-size: 0.8em; color: gray;">${hdto.h_location }</span><br>
					            </div>
					        </div>
					      </c:if> 
					    </c:forEach>
				   </div>
              </div>            
              
              </div>
            </div>
        </div>
    </div>    
</body>
</html>