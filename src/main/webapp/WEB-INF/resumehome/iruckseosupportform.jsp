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
      margin-top: 60px; /* 헤더 들어갈 부분 */
      font-family: 'IBM Plex Sans KR', sans-serif;
  }
  .all-form {
      display: flex; /* Flexbox로 배치 */
      align-items: flex-start; /* 상단 정렬 */
      padding: 20px; /* 전체 여백 */
      margin: 0 auto; /* 가운데 정렬 */
      border: 0px solid #ddd; /* 외곽선 */
       margin-top: 60px;
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
    
  }
  
  /*오른쪽 스타일*/
   .condition-area {
       width: 80%;
       margin: auto;
   }

   .condition-area .condition-total {
       margin-top: 5%;
   }

   .list-item {
       display: flex;
       justify-content: space-between;
       align-items: center;
       padding: 10px 0;
   }

   .left-section {
       display: flex;
       gap: 25px; /* 요소들 간의 간격 조정 */
   }

   .left-section .company-details {
       display: flex;
       flex-direction: column; /* 회사명과 제목을 수직으로 정렬 */
       gap: 5px; /* 요소들 간의 간격 조정 */
   }

   .right-section {
       display: flex;
       flex-direction: column;
       justify-content: center;
       text-align: right;
       margin-right: 25px;
   }

   .right-section div {
       margin: 5px 0;
   }

   .btn-outline-primary {
       border: 1px solid #007bff;
       color: #007bff;
       background-color: transparent;
       padding: 5px 10px;
       cursor: pointer;
   }

   .btn-outline-primary:hover {
       background-color: #007bff;
       color: #fff;
   }
   
    .condition-notice {
    background-color: #F4F6FA;
    font-size: 0.7em;
    margin-top: 8%;
    margin-bottom: 5%;
    padding: 10px 20px;
  }
  
    /* 이미지 */
	.image-container {
	    position: relative;
	    display: inline-block;
	}
	
	.centered-text {
	    position: absolute;
	    top: 90%;
	    left: 20%;
	    transform: translate(-50%, -50%);
	    color: white;
	    font-weight: bold;
	    text-align: center;
	} 
</style>
</head>
<body>
    <div class="all">
        <div id="wrap">
            <div class="center">
             <div class="image-container">
	            <img alt="" src="../image/resume.PNG" style="width: 1060px; border-radius: 10px;">
	            <h4 class="centered-text">이력서 작성 하고 합격률 높이자!</h4>
	         </div>
              <div class="all-form">
<!-- 왼쪽 메뉴바------------------------------------------------------------------------------------------------------- -->
              <div class="leftmenubar" style="width: 20%; margin-bottom: 10%;">
                  <ul class="leftmenu">
				    <li>
				      <div class="menu-home" style="font-size: 1.2em;">
				        <a href="/resumehome/home"><b>My Home</b></a>
				      </div>
				    </li>
				    
				    <li class="title-section" >
				      <div class="menu-section">
				        <span style="font-size: 1.2em;"><b>이력서 관리</b></span>
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
				        <span style="font-size: 1.2em;"><b>입사지원 관리</b></span>
				      </div>
				    </li>
				    
				    <li>
				      <div class="menu-item">
				        <a href="/resumehome/supportform" style="color: #0D6CF9; background-color: rgba(84, 148, 219, 0.2);">입사지원 현황</a>
				      </div>
				    </li>
				    
				    <li class="title-section">
				      <div class="menu-section">
				        <span style="font-size: 1.2em;"><b>스크랩/관심기업</b></span>
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
	              <span style="font-size: 1.2em;"><b>입사지원 현황</b></span>
	              
	                <div class="condition-total" style="margin-top: 5%;">
	                  <table style="width: 100%;">

                          <!--  입사지원이 없는 경우 -->
			              <c:if test="${totalCount==0 }">
			                <tr>
			                  <hr>
			                  <td colspan="4" align="center"></td>
			                  <p><b>지원한 공고가 없습니다</b></p>
			                </tr>
			              </c:if>
			              
			              <!-- 입사지원이 있는 경우 -->
			          
			                <c:forEach var="su" items="${sulist}">
			                   <hr>
							  <div class="list-item">
							    <div class="left-section">
							      <div><input type="checkbox" class="oneselect" name="oneselect" data-st-num="${su.st_num}"></div>
   						          <div>${su.st_write}</div>
							      <div class="company-details">
							        <div style="font-size: 1.2em;"><a href="#"><b>${su.c_name }&nbsp;</b></a></div><br>
							        <div class="title"><a href="/hire/detail?h_num=${su.h_num }">[${su.c_name }]&nbsp;&nbsp;&nbsp;${su.h_title }</a></div>
							      </div>
							    </div>
							    <div class="right-section">
							     <div style="font-size: 1.2em;"><b>${su.st_support }</b></div>
							     <div>${su.st_open }</div>
							    </div>
							  </div>
							</c:forEach>
							<hr>
							<div style="float: right;">
							  <button class="btn btn-outline-primary deleteBtn" st_num="${su.st_num}">삭제</button>
							  <button class="btn btn-outline-primary updateBtn" st_num="${su.st_num}">지원취소</button>
							</div>
		              </table>
		            </div>
		            
		            
		            
		            <!-- 페이징 -->
				     <div style="width: 100%; margin-top: 7%; margin-bottom: 5%;">
				       <ul class="pagination justify-content-center">
				          <!--  이전-->
				          <c:if test="${startPage>1 }">
				             <li class="page-item ">
				           <a class="page-link" href="supportform?currentPage=${startPage-1 }" style="color: black;">이전</a>
				          </li>
				          </c:if>
				          
				          <!--페이지번호  -->
				          <c:forEach var="pp"  begin="${startPage }"  end="${endPage }">
				            <c:if test="${currentPage==pp }">
				                 <li class="page-item active">
				               <a class="page-link" href="supportform?currentPage=${pp }">${pp }</a>
				              </li>
				            </c:if>
				            
				            <c:if test="${currentPage!=pp }">
				               <li class="page-item">
				               <a class="page-link" href="supportform?currentPage=${pp }">${pp }</a>
				               </li>
				            </c:if>
				          </c:forEach>
				          
				          
				          <!-- 다음 -->
				          <c:if test="${endPage<totalPage }">
				             <li class="page-item">
				               <a  class="page-link" href="supportform?currentPage=${endPage+1 }"
				               style="color: black;">다음</a>
				            </li>
				          </c:if>
				       </ul>
				     </div>
				     
				     <!-- 유의사항 -->
				     <div class="condition-notice">
		              <div style="padding: 10px 10px;">
			              <div ><i class="bi bi-exclamation-circle"></i>&nbsp;&nbsp;<b>유의사항</b></div><br>
			              <div style="font-size: 0.8em;">- 최근 2년간의 지원내역에 대한 확인이 가능합니다.</div>
			              <div style="font-size: 0.8em;">- 지원취소는 최근 1년간의 지원에 대해서만 가능하며, 공고가 삭제된 경우 지원취소를 제공하지 않습니다.</div>
			              <div style="font-size: 0.8em;">- 지원하신 기업에서 '사람인 결과발표'를 이용할 경우 지원 현황에서 결과를 확인하실 수 있으나, 코드커넥트를 통해 발표하지 않는 경우 지원 현황에 표기되지 않습니다.
			              정확한 발표 방식 및 일정에 대해서는 지원하신 기업에 문의해주세요.</div>
			              <div style="font-size: 0.8em;">- 기업이 이미 이력서를 열람한 경우, 채용 서류는 별도로 반환하지 아니하며 채용 종료 시 개인정보보호법을 준수하여 채용 서류를 즉시 파기합니다.</div>
		              </div>
		            </div>
				     
	              </div>   
	              
              </div>
            </div>
        </div>
    </div>    
    
    
    <script type="text/javascript">
    
     //지원취소시 업데이트하기
     $(document).ready(function () {
        $(".updateBtn").click(function () {
        	
        	var chbox = $("input[name='oneselect']:checked");
        	 //console.log("선택된 체크박스 개수:", checkedBoxes.length);
            
            if (chbox.length === 0) {
                alert("지원 취소할 항목을 선택해주세요.");
                return;
            }

            var st_num_array = [];
            chbox.each(function () {
                st_num_array.push($(this).data("st-num"));
            })
            //console.log("전송할 st_num 배열:", st_num_array);

            $.ajax({
                type: "post",
                url: "supportupdate",  // 실제 업데이트를 처리할 URL
                traditional: true,  // 배열 형태의 데이터 전송을 위해 필요
                data: { "st_num": st_num_array },  // 배열 형태로 데이터 전송
                success: function (response) {
                	
                    alert("지원이 취소되었습니다.");
                    // 여기에 추가적인 작업을 수행할 수 있습니다.
                    location.reload();
                }
            });
        });
        
        
        //삭제하기
        $(".deleteBtn").click(function () {
        	
        	var chbox = $("input[name='oneselect']:checked");
        	 //console.log("선택된 체크박스 개수:", checkedBoxes.length);
            
            if (chbox.length === 0) {
                alert("삭제 할 항목을 선택해주세요.");
                return;
            }

            var st_num_array = [];
            chbox.each(function () {
                st_num_array.push($(this).data("st-num"));
            })
            //console.log("전송할 st_num 배열:", st_num_array);

            $.ajax({
                type: "post",
                url: "Supportdelete",  // 실제 업데이트를 처리할 URL
                traditional: true,  // 배열 형태의 데이터 전송을 위해 필요
                data: { "st_num": st_num_array },  // 배열 형태로 데이터 전송
                success: function (response) {
                	
                    alert("삭제가 완료되었습니다");
                    // 여기에 추가적인 작업을 수행할 수 있습니다.
                    location.reload();
                }
            });
        });
    });
    </script>
    
    
    
    

    
</body>
</html>