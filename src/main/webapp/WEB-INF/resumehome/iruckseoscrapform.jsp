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

  .list-item {
  display: flex;
  justify-content: space-between; /* 좌우 섹션을 공간에 따라 나눕니다. */
  align-items: center; /* 좌우 섹션을 수직으로 가운데 정렬합니다. */
  padding: 10px 0; /* 항목 간의 간격을 추가합니다. */
}

.left-section {
  display: flex;
  align-items: center; /* 수평 정렬에서 중앙에 배치합니다. */
}

.left-section > div {
  margin-right: 45px; /* 요소 간의 간격을 추가합니다. */
}

.left-section .title {
  font-size: 1.2em;
}

.right-section {
  display: flex;
  flex-direction: column; /* 버튼과 마감일을 수직으로 정렬합니다. */
  align-items: center; /* 요소들을 수평 중앙에 정렬합니다. */
  margin-right: 25px;
}

.button-container {
  display: flex;
  flex-direction: column;
  align-items: center; /* 버튼과 마감일을 수평 중앙에 정렬합니다. */
}

.button-container .btn {
  width: 150px;
}

.button-container .deadline {
  margin-top: 5px; /* 버튼과 마감일 사이에 간격을 추가합니다. */
  font-size: 0.8em;
  color: gray;
  text-align: center; /* 마감일을 중앙 정렬합니다. */
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
	              <div class="condition-area" style="width: 80%;">
	              
	                <span style="font-size: 1.2em;"><b>스크랩 공고</b></span>
	                
	                <div class="condition-total" style="margin-top: 5%;">
	                  <table style="width: 100%;">
                          <div>
                             <input type="checkbox" id="allselect"><span style="font-size: 0.8em;">&nbsp;전체선택</span>
                          </div>
		                  <hr>

                          <!-- 스크랩 공고가 없는 경우 -->
			              <c:if test="${totalCount==0 }">
			                <tr>
			                  <td colspan="4" align="center"></td>
			                  <p><b>등록된 스크랩 공고가 없습니다</b></p>
			                </tr>
			              </c:if>
			              
			              <!-- 스크랩 공고가 있는 경우 -->
			          
			                <c:forEach var="sh" items="${shlist}">
							  <div class="list-item">
							    <div class="left-section">
							      <input type="hidden" name = "r_num" value="${sh.r_num }" id="r_num">
							      <input type="hidden" name = "h_num" value="${sh.h_num }">
							      <div><input type="checkbox" class="oneselect"  value="${sh.r_num}"></div>
							      <div>
							        <div><a href="#">${sh.c_name }&nbsp;</a><i class="bi bi-heart"></i></div><br>
							        <div class="title"><a href="/hire/detail?h_num=${sh.h_num }"><b>[${sh.c_name }]&nbsp;&nbsp;&nbsp;${sh.h_title }</b></a></div>
							        <div class="info" style="font-size: 0.8em; color: gray;">
							          ${sh.h_grade}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							          <c:out value="${sh.h_location.length() > 7 ? sh.h_location.substring(0, 7) : sh.h_location}" />
							        </div>
							      </div>
							    </div>
							    <div class="right-section">
							      <div class="button-container">
							        <button class="btn btn-primary" style="width: 130px;"
							        onclick="location.href='/hire/detail?h_num=${sh.h_num }'">지원하러 가기</button>
							      </div>
							      <div class="deadline" style="font-size: 0.8em; color: gray;">~${sh.h_deadline}</div>
							    </div>
							  </div>
							  <hr>
							</c:forEach>
							
							<div>
							  <button id="deleteBtn" class="btn btn-outline-primary" style="width: 100px;" r_num="${sh.r_num}" h_num="${sh.h_num }">삭제</button>
							</div>
		              </table>
		            </div>

		            <div class="condition-notice">
		              <div style="margin: 30px 30px;">
			              <span><i class="bi bi-exclamation-circle"></i>&nbsp;&nbsp;<b>유의사항</b></span><br>
			              <p>- 이력서는 최대 10개까지 등록 가능합니다.</p>
			              <p>- '입사지원 내역'건수는 최근 1년간 내역에 대해 확인 가능합니다.</p>
			              <p>- 수정, 삭제 기능은 이력서 우측 버튼을 누르면 확인하실 수 있습니다.(이력서는 부분 삭제 불가)</p>
		              </div>
		            </div>
		            
	              </div>   
              </div>
            </div>
        </div>
    </div>    
    
    <script type="text/javascript">
	    
		$(document).ready(function() {
			//체크박스 전체선택 체크 및 해제
			$("#allselect").click(function() {
				
				var allcheck = $(this).is(":checked");
	
					$(".oneselect").prop('checked', allcheck);

			});
			
			//삭제하기
			$("#deleteBtn").click(function() {
				//선택된 항목 내용 수집
				var selectCheck = [];
				$(".oneselect:checked").each(function (index, value) {
					selectCheck.push(value);
				});
				
				console.log(selectCheck);
				
				
			   //선택되지 않았으면 경고 메세지
			   if(selectCheck.length == 0) {
				   alert("삭제할 항목을 선택해주세요");
				   return;
			   }
			   
			   //확인 창 띄우기
			   var r_num = $(this).attr("r_num");
			   var h_num = $(this).attr("h_num");
			   
			   var checkConfirm = confirm("정말 삭제하시겠습니까?");
			   if(checkConfirm) {
				   
				   $.ajax ({
					   
					   type : "post",
           		       dataType : "html",
           			   url : "scrapdelete",
           			   data : {"r_num":r_num, "h_num":h_num },
           			   success : function () {
						
           				   alert("삭제가 완료되었습니다");
           				   location.reload();
					 }
           			   
				   })
			   }
			})
		})
    
    </script>
    
</body>
</html>