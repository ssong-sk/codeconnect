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
    width: 200px;
    height: 230px;
    border: 0.5px solid gray;
    border-radius: 10px;
  }
  
  .mylist-chuimg {
    margin-top: 1%;
  }
  
  /*이력서 현황*/
  .condition-total {
    margin-top: 4%;
  }
  
  .condition-notice {
    width: 100%;
    height: 200px;
    background-color: #F4F6FA;
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
				        <a href="/resumehome/form">입사지원 현황</a>
				      </div>
				    </li>
				    
				    <li class="title-section">
				      <div class="menu-section">
				        <span><b>스크랩/관심기업</b></span>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/form">스크랩공고</a>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/form">관심기업</a>
				      </div>
				    </li>
				  </ul>
              </div>

<!-- 오른쪽 레이아웃 작업----------------------------------------------------------------------------------------------- -->
	              <div class="condition-area" style="width: 80%;">
	                <span style="font-size: 1.2em;"><b>이력서 현황</b></span>
	                
	                <div class="condition-total">
	                  <span>이력서</span>
	                  <hr>
		            </div>  
		            
		            <div></div>
		            
		            <div class="condition-notice">
		              <span><i class="bi bi-exclamation-circle"></i>&nbsp;&nbsp;<b>유의사항</b></span>
		              <p>·이력서는 최대 10개까지 등록 가능합니다.</p>
		              <p>·'입사지원 내역'건수는 최근 1년간 내역에 대해 확인 가능합니다.</p>
		              <p>·수정, 삭제 기능은 이력서 우측 버튼을 누르면 확인하실 수 있습니다.(이력서는 부분 삭제 불가)</p>
		            </div>
		            
	              </div>   
              </div>
            </div>
        </div>
    </div>    
</body>
</html>