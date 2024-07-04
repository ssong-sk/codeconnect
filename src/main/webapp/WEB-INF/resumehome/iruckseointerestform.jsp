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
      max-width: 1060px;
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

.condition-notice {
    background-color: #F4F6FA;
    font-size: 0.7em;
    margin-top: 8%;
    margin-bottom: 5%;
    padding: 10px 20px;
  }
</style>
</head>
<body>
    <div class="all">
        <div id="wrap">
            <div class="center">
              <div class="all-form">
<!-- 왼쪽 메뉴바------------------------------------------------------------------------------------------------------- -->
              <div class="leftmenubar" style="width: 20%; margin-bottom: 10%;">
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
				        <a href="/resumehome/interestform" style="color: #5494DB; background-color: rgba(84, 148, 219, 0.2);">관심기업</a>
				      </div>
				    </li>
				  </ul>
              </div>

<!-- 오른쪽 레이아웃 작업----------------------------------------------------------------------------------------------- -->
	              <div class="condition-area" style="width: 80%;">
	              
	                <span style="font-size: 1.2em;"><b>관심기업</b></span>
	                
	                <div class="condition-total" style="margin-top: 5%;">
	                  <table style="width: 100%;">
                          <div>
                            <tr>
                             <input type="checkbox" id="allselect"><span style="font-size: 0.8em;">&nbsp;전체선택</span>
                            </tr>
                            <hr>
                          </div>
                        
                          
                          <!-- 스크랩 공고가 없는 경우 -->
			              <c:if test="${totalCount==0 }">
			                <tr>
			                  <td colspan="4" align="center"></td>
			                  <p><b>등록된 스크랩 공고가 없습니다</b></p>
			                </tr>
			              </c:if>
			              
			              <!-- 스크랩 공고가 있는 경우 -->
			          
			                <c:forEach var="c" items="${clist}">
							  <div class="list-item">
							    <div class="left-section">
							      <div><input type="checkbox" class="oneselect" name="oneselect" data-s-num="${c.s_num}"></div>
							       <div class="company-info">
						                <div style="display: flex; align-items: center;">
						                    <a href="/company/showimsiCom?c_num=${c.c_num }" style="font-size: 1.2em; margin-right: 10px;"><b>${c.c_name}</b></a>
						                    <span class="info" style="font-size: 0.8em; color: gray;">
						                        <c:out value="${c.c_addr.length() > 7 ? c.c_addr.substring(0, 7) : c.c_addr}" />
						                    </span>
						                </div>
						            </div>
							     </div>
							    <div class="right-section">
							      <div class="button-container">
							        <span style="font-size: 0.8em;"><a href="/company/showimsiCom?c_num=${c.c_num }">상세보기 ></a></span>
							      </div>
							    </div>
							  </div>
							  <hr>
							</c:forEach>
							
							<div>
							  <span id="deleteBtn" class="btn btn-outline-primary deleteBtn" style="width: 100px; float: right;" 
							  s_num="${c.s_num}">삭제</button>
							</div>
		              </table>
		            </div>
		            
		            <!-- 페이징 -->
				     <div style="width: 100%; margin-top: 7%; margin-bottom: 5%;">
				       <ul class="pagination justify-content-center">
				          <!--  이전-->
				          <c:if test="${startPage>1 }">
				             <li class="page-item ">
				           <a class="page-link" href="interestform?currentPage=${startPage-1 }" style="color: black;">이전</a>
				          </li>
				          </c:if>
				          
				          <!--페이지번호  -->
				          <c:forEach var="pp"  begin="${startPage }"  end="${endPage }">
				            <c:if test="${currentPage==pp }">
				                 <li class="page-item active">
				               <a class="page-link" href="interestform?currentPage=${pp }">${pp }</a>
				              </li>
				            </c:if>
				            
				            <c:if test="${currentPage!=pp }">
				               <li class="page-item">
				               <a class="page-link" href="interestform?currentPage=${pp }">${pp }</a>
				               </li>
				            </c:if>
				          </c:forEach>
				          
				          
				          <!-- 다음 -->
				          <c:if test="${endPage<totalPage }">
				             <li class="page-item">
				               <a  class="page-link" href="interestform?currentPage=${endPage+1 }"
				               style="color: black;">다음</a>
				            </li>
				          </c:if>
				       </ul>
				     </div>
				     
                    <div class="condition-notice">
		              <div style="padding: 10px 10px;">
			              <div><i class="bi bi-exclamation-circle"></i>&nbsp;&nbsp;<b>유의사항</b></div><br>
			              <div style="font-size: 0.8em;">- 기업을 스크랩할 경우 제한 및 기간 상관없이 리스트에 추가 가능합니다.</div>
			              <div style="font-size: 0.8em;">- 상세보기를 누르면 해당 기업의 정보를 확인하실 수 있습니다.</div>
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
				var chbox = $("input[name='oneselect']:checked");
	        	 console.log("선택된 체크박스 개수:", chbox.length);
	            
	            if (chbox.length === 0) {
	                alert("지원 취소할 항목을 선택해주세요.");
	                return;
	            }
	
	            var s_num_array = [];
	            chbox.each(function () {
	            	s_num_array.push($(this).data("s-num"));
	            })
	            console.log("전송할 s_num 배열:", s_num_array);
			    //alert(s_num_array);
			   //확인 창 띄우기
			   var checkConfirm = confirm("정말 삭제하시겠습니까?");
			   if(checkConfirm) {
				   
				   $.ajax ({
					   
					   type: "post",
		               url: "scrapdelete",  // 실제 업데이트를 처리할 URL
		               traditional: true,  // 배열 형태의 데이터 전송을 위해 필요
		               data: { "s_num": s_num_array },  // 배열 형태로 데이터 전송
           			   success : function (response) {
						
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