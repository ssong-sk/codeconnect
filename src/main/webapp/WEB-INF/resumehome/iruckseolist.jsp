<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=IBM+Plex+Sans+KR&family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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
      max-width: 1000px;
  }
  
  #wrap {
      margin-top: 100px; /* 헤더 들어갈 부분 */
      font-family: 'IBM Plex Sans KR', sans-serif;
  }
  
  .form-caption {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
  }
  
 .form-group {
        display: flex; /* 내용을 가로로 배치 */
        gap: 5px; /* 간격을 5px로 설정 (원하는 만큼 조절 가능) */
        margin-top: 5px;
        align-items: center; /* 요소를 세로로 가운데 정렬 */
    }
  
  /* 인정사항 css */
  .personal {
      margin-top: 8%;
  }
    
  #showimg{
    margin: 10px 10px;
    width: 130px;
    height: 160px;
    border: 0px solid gray;
    
  }
  #modal_showImg{
    margin: 10px 10px;
    width: 130px;
    height: 160px;
    border: 0px solid gray;
    
  }  
  /*학력*/
  .school {
    margin-top: 8%;
  
  }
  
  /*경력*/
  .career {
    margin-top: 8%;
  }
  
  /*경험*/
  .activity {
    margin-top: 8%;
  }
  
  /*경험 활동 교육*/
  .qualification {
    margin-top: 8%;
  }
  
  /*포트폴리오*/
  .portfolio {
    margin-top: 8%;
  }
  
  /*자기소개*/
  .self {
    margin-top: 8%;
  }
  
  /*희망근무*/
  .hope  {
    margin-top: 8%;
  }
  
  .areaSelect {
     width: 100%; /* 원하는 너비로 설정 */
     height: 150px; /* 원하는 높이로 설정 */
     padding: 10px;
     border: 1px solid #ccc;
     overflow-y: scroll; /* 내용이 많을 경우 스크롤 가능하게 설정 */
  }
  
  .areaSelect ul {
    list-style-type: none; /* 불렛 제거 */
    padding: 0;
    margin: 0;
    display: flex;
    flex-wrap: wrap; /* 넘치는 요소들을 줄바꿈하여 배치 */
    gap: 25px;
    justify-content: space-between; /* 요소들을 각 행당으로 최대한 분산 배치 */
    
  }
  
  .areaSelect li {
    font-size: 0.9em;
    margin: 5px 0;
    flex-basis: calc(25% - 50px); /* 요소 너비 설정 (한 행당 4개씩 배치하도록 설정) */
    padding: 5px; /* 내용 주변에 여백 추가 */
    transition: outline-color 0.3s, color 0.3s; /* 부드러운 전환 효과를 위해 추가 */
    outline: 1px solid transparent; /* 초기에는 투명한 아웃라인 적용 */
 }
 
 .areaSelect li:hover {
    outline-color: #0D6EFD; /* 마우스를 올렸을 때 아웃라인 색상을 블루로 변경 */
    color: #000000; /* 마우스를 올렸을 때 글자색을 블랙으로 변경 */
    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
    border-radius: 12px;
    padding: 8px;
  }
  
  .areaStyle {
    display: inline-block;
    padding: 8px 15px;
    margin: 5px;
    border-radius: 12px;
    background-color: #0D6EFD;
    color: white;
    font-size: 0.9em;
   }
   
   .areaStyle i {
    cursor: pointer;
   }

  .jobSelect {
     width: 100%; /* 원하는 너비로 설정 */
     height: 150px; /* 원하는 높이로 설정 */
     padding: 10px;
     border: 1px solid #ccc;
     overflow-y: scroll; /* 내용이 많을 경우 스크롤 가능하게 설정 */
  }
  
  .jobSelect ul {
    list-style-type: none; /* 불렛 제거 */
    padding: 0;
    margin: 0;
    display: flex;
    flex-wrap: wrap; /* 넘치는 요소들을 줄바꿈하여 배치 */
    gap: 25px;
    justify-content: space-between; /* 요소들을 각 행당으로 최대한 분산 배치 */
    
  }
  
  .jobSelect li {
    font-size: 0.9em;
    margin: 5px 0;
    flex-basis: calc(25% - 50px); /* 요소 너비 설정 (한 행당 4개씩 배치하도록 설정) */
    padding: 5px; /* 내용 주변에 여백 추가 */
    transition: outline-color 0.3s, color 0.3s; /* 부드러운 전환 효과를 위해 추가 */
    outline: 1px solid transparent; /* 초기에는 투명한 아웃라인 적용 */
 }
 
 .jobSelect li:hover {
    outline-color: #0D6EFD; /* 마우스를 올렸을 때 아웃라인 색상을 블루로 변경 */
    color: #000000; /* 마우스를 올렸을 때 글자색을 블랙으로 변경 */
    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
    border-radius: 12px;
    padding: 8px;
  }
  
  .jobStyle {
    display: inline-block;
    padding: 8px 15px;
    margin: 5px;
    border-radius: 12px;
    background-color: #0D6EFD;
    color: white;
    font-size: 0.9em;
   }
   
   .jobStyle i {
    cursor: pointer;
   }
  
  /*동의서*/
  .consent {
    margin-top: 12%;
  }
  
  /*동의서 모달창*/
  .modal-content, .modal-header, .modal-body {
    border: none;
  }
  
  .modal-content {
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  }
  
  .modal-fullsize {
  width: 600px !important;
  height: 350px !important;
  max-width: none !important; /* 최대 크기를 무제한으로 설정 */
  max-height: none !important; /* 최대 크기를 무제한으로 설정 */
  margin: 0 auto; /* 화면 중앙에 위치하도록 설정 */
  }
  
  /*미리보기 모달창*/
   .modal-fullsize1 {
  width: 1000px !important;
  max-width: none !important; /* 최대 크기를 무제한으로 설정 */
  max-height: none !important; /* 최대 크기를 무제한으로 설정 */
  margin: 0 auto; /* 화면 중앙에 위치하도록 설정 */
  }
    
  /*최종저장 버튼*/
  .fixed_final {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: white;
    padding: 10px;
    box-sizing: border-box;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
</style>
</head>
<body>
    <div class="all">
        <div id="wrap">
            <div class="center">
  <form action="personalupdate" id="pe_form" method="post" enctype="multipart/form-data" >
    <input type="hidden"   name="pe_title" id="pe_title">
    <input type="hidden" name="pe_num" id="pe_num" value="${pedto.pe_num }">
                
<!-- 인정사항 폼 -------------------------------------------------------------------------------------------------------------------------->
                <div class="personal">
                        <div class="form-caption">
                            <h5><b>인적사항</b></h5>&nbsp;&nbsp;&nbsp;
                        </div>
                        <hr style="width: 100%;">
                        <table class="" style="width: 100%;">
                          <tr>
                      <td class="form-group">
                          <span>${rdto.r_name }</span>&nbsp;&nbsp;
                          <span style="width: 120px;" name="pe_category">${pedto.pe_category}</span>
                      </td>
                      
                      <td rowspan="4">
                          <div style="position: relative;  display: inline-block;" id="photo_img">
                            <img id="showimg" src="../iruckseoimage/${pedto.pe_image}">
                          </div>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <span>성별 (${rdto.r_gender })</span>&nbsp;&nbsp;&nbsp;
                        <span>${rdto.r_birthday}</span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <span><i class="bi bi-envelope"></i>${rdto.r_email}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span><i class="bi bi-telephone"></i>${rdto.r_hp}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span><i class="bi bi-phone"></i>${rdto.r_hp}</span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <span><i class="bi bi-house"></i>${rdto.r_addr}${rdto.r_addr_detail}</span>
                      </td>
                    </tr>
                    
                  </table>
                   
                </div>
           </form>              
                
<!-- 학력 폼 ---------------------------------------------------------------------------------------------------------------------->
                <div class="school">
                    <div class="form-caption">
                        <h5><b>학력</b></h5>&nbsp;&nbsp;&nbsp;
                    </div>
                    <hr style="width: 100%;">

                    <div id="schoolList">
                    
                    <c:if test="${fn:length(sclist) != 0}" >
                    <c:forEach items="${sclist }" var="scdto">
                   	<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">
           				<tr>
                    		<td class="form-group">
                            <span style="font-size: 1.3em;"><b>${scdto.sc_category}</b></span>&nbsp;
                            <c:if test="${scdto.sc_category ne '고등학교 졸업'}" > 
                            	<b>${scdto.sc_uni_category}</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            </c:if>
                            <span>${scdto.sc_iphack} ~ ${scdto.sc_jolup} ( ${scdto.sc_transfer } ${scdto.sc_check})</span><br>
                              </td>
                                <td class="form-group">
                                <span>${scdto.sc_major}</span>
                                </td>
                            <c:if test="${scdto.sc_category ne '고등학교 졸업'}" > 
	                                <td class="form-group">
	                                <span>학점</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                                <span>${scdto.sc_uni_grade} / ${scdto.sc_uni_sum}</span>
	                                </td>
                            </c:if>
                                </tr>
                              	</table>
                    </c:forEach>
                    </c:if>
                    </div>
               </div>
<!-- 경력 ------------------------------------------------------------------------------------------------------------------------>
            <div class="career">
                    <div class="form-caption">
                        <h5><b>경력</b></h5>&nbsp;&nbsp;&nbsp;
                    </div>
                    <hr style="width: 100%;">
                    <div id="careerList"></div>
                    <!-- 리스트 출력 -->

                    <c:if test="${fn:length(calist) != 0}" >
                    <c:forEach items="${calist}" var="cadto">
                      <table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">
                  		<tr>
                  	   	  <td class="form-group">
                  			<span style="font-size: 1.3em;"><b>${cadto.ca_name}</b></span>&nbsp;
                  			<span>${cadto.ca_ipsa} ~ ${cadto.ca_resign}</span>
                  		  </td>
                  		  <td class="form-group">
                  			<span>${cadto.ca_work}팀  ${cadto.ca_position}</span>
                  		  </td>
                  		  <td class="form-group" style="margin-top:1%;">
                  			<span>${cadto.ca_content}</span>
                  		  </td>
                  		</tr>
                  	   </table>
                    </c:forEach>
                    </c:if>
            </div>
            
                
<!-- 경험, 활동, 교육 ----------------------------------------------------------------------------------------------------------->
                <div class="activity">
                        <div class="form-caption">
                            <h5><b>경험 / 활동 / 교육</b></h5>&nbsp;&nbsp;&nbsp;
                        </div>
                        <hr style="width: 100%;">
                        <div id="activityList">
                         <c:if test="${fn:length(aclist) != 0}" >
                          <c:forEach items="${aclist }" var="acdto">
                           <table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">
                    		 <tr>
                    			<td class="form-group">
                    			  <span style="font-size: 1.3em;"><b>${acdto.ac_category} -> ${acdto.ac_name}</b></span>&nbsp;
                    			  <span>${acdto.ac_start} ~ ${acdto.ac_end}</span>
                    			</td>
                    			<td class="form-group" style="margin-top:1%;">
                    			  <span>${acdto.ac_content}</span>
                    			</td>
                    	      </tr>
                   			</table>
                   		  </c:forEach>	
                   		  </c:if>
                   		  </div>
                   		  
                        <div id="activityform"></div>
                </div>
                
<!-- 자격/어학/수상----------------------------------------------------------------------------------------------------------- -->
                <div class="qualification">
                    <div class="form-caption">
                        <h5><b>자격 / 어학 / 수상</b></h5>&nbsp;&nbsp;&nbsp;
                    </div>
                    <hr style="width: 100%;">
                   <div id="qualificationList">
                     <c:if test="${fn:length(splist) != 0}" >
				     <c:forEach items="${splist}" var="spdto">
					    <table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">
					        <tr>
					            <td class="form-group">
					                <span style="font-size: 1.2em;"><b>${spdto.sp_name}</b></span>&nbsp;
					                <span>${spdto.sp_passday}</span>&nbsp;&nbsp;&nbsp;&nbsp;
					            </td>
					            
					            <!-- 카테고리별 정보 출력 -->
					            <c:choose>
					                <c:when test="${spdto.sp_category eq '자격증·면허증'}">
					                    <td class="form-group">
					                        <span>${spdto.sp_ce_organization}</span>&nbsp;
					                        <span>${spdto.sp_ce_pass}</span>
					                    </td>
					                </c:when>
					                
					                <c:when test="${spdto.sp_category eq '어학시험'}">
					                    <td class="form-group">
					                        <span>점수&nbsp;&nbsp;${spdto.sp_la_grade}점</span>
					                    </td>
					                </c:when>
					                
					                <c:when test="${spdto.sp_category eq '수상내역·공모전'}">
					                    <td class="form-group">
					                        <span>${spdto.sp_aw_organization}</span>
					                    </td>
					                </c:when>
					            </c:choose>
					        </tr>
					    </table>
					</c:forEach>
					</c:if> 
				   </div>
                </div>
                
<!-------------- 포트폴리오/기타문서---------------------------------------------------------------------------------------------- -->
                <div class="portfolio">
                    <div class="form-caption">
                        <h5><b>포트폴리오 / 기타문서</b></h5>&nbsp;&nbsp;&nbsp;
                    </div>
                    <hr style="width: 100%;">
                    <div id="portfolioList">
                      <c:if test="${fn:length(polist) != 0}" >
                       <c:forEach items="${polist}" var="podto">
					      <table>
					          <tr>
					              <td class="form-group">
					                  <c:if test="${not empty podto.po_file}">
					                      <c:set var="filePath" value="../iruckseoportfolio/${podto.po_file}" />
					                      <a id="download" url="${filePath}" fileName="${podto.po_file}">
					                          <span><b>${podto.po_file}</b></span>
					                      </a>
					                  </c:if>
					              </td>
					          </tr>
					      </table>
					  </c:forEach>
					  </c:if>
                    </div>
              </div>
            
<!-- 자기소개서 ---------------------------------------------------------------------------------------------------------------->
                <div class="self">
                        <div class="form-caption">
                            <h5><b>자기소개서</b></h5>&nbsp;&nbsp;&nbsp;
                        </div>
                        <hr style="width: 100%;">
                        <div id="selfList">
                           <c:forEach items="${selist}" var="sedto">
							    <table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">
							        <tr>
							            <td class="form-group">
							                <span style="font-size: 1.3em;"><b>${sedto.se_subject}</b></span>&nbsp;
							            </td>
							            <td class="form-group" style="margin-top: 1%;">
							                <span>${sedto.se_content}</span>
							            </td>
							        </tr>
							    </table>
							</c:forEach>
                        </div>
                </div>
                
 <!-- 희망근무조건 ---------------------------------------------------------------------------------------------------------------->
            <div class="hope">
             <c:choose>
             	<c:when test="${hodto != null}"> 	
                	<input type="hidden" name="ho_num" id="ho_num" value="${hodto.ho_num }">
                </c:when>
                <c:otherwise> 
                	<input type="hidden" name="ho_num" id="ho_num" />
                </c:otherwise>
             </c:choose>	
                    <div class="form-caption">
                        <h5><b>희망근무조건</b></h5>
                    </div>
                    <hr style="width: 100%;">
                    <div id="hopeList"></div>
                    <div id="hopeform"></div>
                    
                    <table id="hopeclick" style="width: 100%;">
                     <tr>
                       <td class="form-group">
                       <c:if test="${hodto != null}">
                       	<span> ${hodto.ho_category} </span>
                       	<c:choose>
			            	<c:when test="${hodto.ho_money != ''}"> 	
		                        <span> ${hodto.ho_money } </span>
			                </c:when>
			                <c:otherwise> 
			                	<span>면접 후 결정</span>
			                </c:otherwise>
			             </c:choose>
                       </c:if>
                       </td>
                     </tr>
                     
                     <!-- 희망근무지------------------------------------------------------------------------------------------------------------------ -->
                      <tr>
                        <td class="form-group" style="margin-top: 2%;">
                            &nbsp;<span style="font-size: 0.8em; display: inline-block;">희망 근무지</span>&nbsp;&nbsp;&nbsp;
                        </td>
                      </tr>
                      
                      <tr>
                           <td class="form-group" style="margin-top: 1%;">
                             <div id="areaform" ></div>
                           </td>
                      </tr>   
                      
                      <tr>
                           <td class="form-group" style="margin-top: 1%;">
                               <div id="areaClick" style="display: none;">
                                 <div class="areaSelect">
                                    <ul style="text-align: center;">
                                       <li value="서울특별시 전지역">서울특별시 전지역</li>
                                       <li value="부산광역시 전지역">부산광역시 전지역</li>
                                       <li value="대구광역시 전지역">대구광역시 전지역</li>
                                       <li value="인천광역시 전지역">인천광역시 전지역</li>
                                       <li value="광주광역시 전지역">광주광역시 전지역</li>
                                       <li value="대전광역시 전지역">대전광역시 전지역</li>
                                       <li value="울산광역시 전지역">울산광역시 전지역</li>
                                       <li value="세종특별자치시 전지역">세종특별자치시 전지역</li>
                                       <li value="경기도 전지역">경기도 전지역</li>
                                       <li value="강원특별자치시 전지역">강원특별자치시 전지역</li>
                                       <li value="충청북도 전지역">충청북도 전지역</li>
                                       <li value="충청남도 전지역">충청남도 전지역</li>
                                       <li value="전라북도 전지역">전라북도 전지역</li>
                                       <li value="전라남도 전지역">전라남도 전지역</li>
                                       <li value="경상북도 전지역">경상북도 전지역</li>
                                       <li value="경상남도 전지역">경상남도 전지역</li>
                                       <li value="제주특별자치도 전지역">제주특별자치도 전지역</li>
                                    </ul>
                                 </div>
                              </div>
                           </td>
                      </tr>      
                             


                        <!-- 직무 --------------------------------------------------------------------------------------------------------->
                        <tr>
                           <td class="form-group" style="margin-top: 2%;">
                            &nbsp;<span style="font-size: 0.8em; display: inline-block;">직무 키워드</span>&nbsp;&nbsp;&nbsp;
                           </td>
                         </tr>
                         
                       <tr>
                           <td class="form-group" style="margin-top: 1%;">
                             <div id="jobform"></div>
                           </td>
                        </tr>   
                      
                      <tr>
                          <td class="form-group" style="margin-top: 1%;">
                             <div id="jobClick" style="display: none;">
                              <div class="jobSelect">
                                 <ul style="text-align: center;">
                                       <li value="서버/백엔드 개발자">서버/백엔드 개발자</li>
                                       <li value="프론트엔드 개발자">프론트엔드 개발자</li>
                                       <li value="웹 풀스택 개발자">웹 풀스택 개발자</li>
                                       <li value="안드로이드 개발자">안드로이드 개발자</li>
                                       <li value="IOS 개발자">IOS 개발자</li>
                                       <li value="크로스플랫폼 앱개발자">크로스플랫폼 앱개발자</li>
                                       <li value="게임 클라이언트 개발자">게임 클라이언트 개발자</li>
                                       <li value="게임 서버 개발자">게임 서버 개발자</li>
                                       <li value="DBA">DBA</li>
                                       <li value="빅데이터 엔지니어">빅데이터 엔지니어</li>
                                       <li value="인공지능/머신러닝">인공지능/머신러닝</li>
                                       <li value="devops/시스템 엔지니어">devops/시스템 엔지니어</li>
                                       <li value="정보보안 담당자">정보보안 담당자</li>
                                       <li value="QA 엔지니어">QA 엔지니어</li>
                                       <li value="개발 PM">개발 PM</li>
                                       <li value="HW/임베디드">HW/임베디드</li>
                                       <li value="SW/솔루션">SW/솔루션</li>
                                       <li value="웹퍼블리셔">웹퍼블리셔</li>
                                       <li value="VR/AR/3D">VR/AR/3D</li>
                                       <li value="블록체인">블록체인</li>
                                       <li value="기술지원">기술지원</li>
                                 </ul>
                              </div>
                            </div>
                          </td>
                      </tr> 

                    </table>        
                </div>
                
                

                <script type="text/javascript">

                $(function () {
                	var hoCategory = "${hodto.ho_category}"; // 고용형태
                	var hoCheck    = "${hodto.ho_check}";    // 면접 후 결제 체크 여부
                	var hoAddr     = "${hodto.ho_addr}";     // 희망 근무지           
                	var hoKeyword  = "${hodto.ho_keyword}";  // 희망 키워드
                	
                	if( hoCategory != ""){
	                	$("select[name=ho_category]").val(hoCategory).prop("selected",true);
                	}
                	
                	if( hoCheck != ""){
                		$("#ho_check").prop('checked', true);
                		$("#ho_money").prop("disabled", true); 
                	}
                	
                	if( hoAddr != ""){
                		
                		hoAddr = hoAddr.split(","); // ',' 기준으로 나누기 -> hoAddr 이 배열 타입으로 변경됨ㄴ
                		for( var i = 0; i < hoAddr.length; i++){ // hoAddr 배열 반복
                			var area = hoAddr[i]; // 반복 횟수에 따른 값 추출
                			// 지역명 li 정보 가져오기
                			var val = $(".areaSelect ul li[value='"+area+"']"); 
                			// 지역명 li 정보의 인덱스 가져오기
                			var valIndex = $(".areaSelect ul li[value='"+area+"']").index(); 
							
                			// 지역명 표기 
                			var total = '<div class="areaStyle" style="border: 1px solid #4876EF; border-radius: 12px; padding: 8px;" value="'+area+'">' + area + '</div>';
                			$("#areaform").append(total);
                            // 해당 지역 아웃라인컬러 변경
                            val.css({
                                 "outline": "1px solid #4876EF",
                                 "border-radius": "12px",
                                 "padding": "8px"
                            });
                		}
                	}
                	
					if( hoKeyword != ""){
						hoKeyword = hoKeyword.split(","); // ',' 기준으로 나누기 -> hoKeyword 이 배열 타입으로 변경됨
                		for( var i = 0; i < hoKeyword.length; i++){ // hoAddr 배열 반복
                			
                			var job = hoKeyword[i]; // 반복 횟수에 따른 값 추출
                			
                			// 직무 li 정보 가져오기
                			var val = $(".jobSelect ul li[value='"+job+"']"); 
                			// 직무 li 정보의 인덱스 가져오기
                			var valIndex = $(".jobSelect ul li[value='"+job+"']").index(); 
                            
 							var total = '<div class="jobStyle" style="border: 1px solid #4876EF; border-radius: 12px; padding: 8px;" value="'+job+'">' + job + '</div>';
                            $("#jobform").append(total);
                            
                            // 직무 아웃라인컬러 변경
                            val.css({
                                "outline": "1px solid #4876EF",
                                "border-radius": "12px",
                                "padding": "8px"
                            });
                            
                		}
                	}
                    
                });
                </script>
                
<!-- 최종 저장 및 미리보기 --------------------------------------------------------------------------------------------------------->
                  
                  <div class="fixed_final">
                      <span id="pe_title_temp" style="height: 40px; font-size: 1.2em;
                      width: 43%;"><b>${pedto.pe_title }</b></span>&nbsp;&nbsp;&nbsp;&nbsp;
                      <button type="button" id="allDataUpdate" onclick="location.href='updateForm?pe_num=${pedto.pe_num}'" 
                      style="width: 180px;" class="btn btn-primary">수정하기</button>
                  </div>

</body>
</html>
