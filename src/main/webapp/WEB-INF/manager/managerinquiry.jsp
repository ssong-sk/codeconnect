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
    text-decoration: none;
}

.dashboard {
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-top: 20px;
}

.cuslist{
	cursor: pointer;
}

#eventCategory {
    appearance: none; /* appearance 속성으로 기본 스타일을 없앰 (크로스 브라우징 고려) */
    -webkit-appearance: none; /* WebKit 기반 브라우저 (Safari, Chrome 등) */
    -moz-appearance: none; /* Firefox */
    -ms-appearance: none; /* IE/Edge */
    background-color: transparent; /* 배경색을 투명으로 설정 */
    border: none; /* 테두리 제거 */
    padding: 0; /* 패딩 제거 */
    font-size: inherit; /* 폰트 사이즈 상속 */
    cursor: pointer; /* 커서 모양을 포인터로 설정 */
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="12" height="8"><path fill="%23000" d="M0 0l6 8 6-8H0z"/></svg>'); /* 화살표 이미지 추가 */
    background-repeat: no-repeat; /* 배경 이미지 반복 설정 */
    background-position: right 0px bottom 10px; /* 화살표 이미지 위치 설정 (오른쪽으로 10px 이동, 아래로 10px 이동) */
    padding: 0px 15px 0px 0px;
}

.tabs {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

.tabs button.active {
    background-color: #f0f4ff;
    color: #000000;
    border-bottom: 2px solid #007bff;
    font-weight: bold;
}

.tabs button.active2 {
    background-color: #FAFAFA;
    color: #000000;
    border-bottom: 2px solid #000000;
    font-weight: bold;
}

.tabs button.active3 {
    background-color: #F8E0E0;
    color: #000000;
    border-bottom: 2px solid #FF0000;
    font-weight: bold;
}

.tabs button {
    flex-grow: 1;
    padding: 10px;
    border: 1px solid #ddd;
    background-color: #fff;
    cursor: auto;
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
			        		<a href="member" role="tab" id="member" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="member">
			        		<span class="menu_text">회원</span>
			        		</a>
			        		<a href="company" role="tab" id="company" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="company">
			        		<span class="menu_text">기업</span>
			        		</a>
			        		<a href="info" role="tab" id="info" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="info">
			        		<span class="menu_text">공지사항</span>
			        		</a>
			        		<a href="event" role="tab" id="event" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="event">
			        		<span class="menu_text">이벤트</span>
			        		</a>
			        		<a href="inquiry" role="tab" id="inquiry" tabindex="0" class="menu_item" aria-selected="true" aria-controls="block">
			        		<span class="menu_text">1:1 문의</span>
			        		</a>
			        	</div>
			        </div>
			    </div>
			</div>
			
			<div class="container-bottom">
			    <div class="row">
			        <main id="content" class="">
			            <div class="dashboard">
			                <table class="table table-hover custom-table">
			                <thead>
			                	<tr>
			                		<td colspan="7">
		                				<div class="tabs">
											<button class="active btn btn-light">총 <span style="color: #007bff;">${all_count }</span> 개의 문의글</button>
											<button class="active2 btn btn-light"><span style="color: #000000;">${success_count }</span> 개 답변완료</button>
											<button class="active3 btn btn-light"><span style="color: #FF0000;">${standby_count }</span> 개 답변대기</button>
										</div>
			                		</td>
			                	</tr>
			                	<tr align="center">
			                		<td>번호</td>
			                		<td>제목</td>
			                		<td>작성날짜</td>
			                		<td>답변상태</td>
			                	</tr>
			                	</thead>
			                	<tbody id="eventTableBody">
								<c:if test="${all_count==0 }">
								<tr height="50">
								  <td colspan="5" align="center">
								     <h5><b>등록된 문의가 없습니다</b></h5>
								  </td>
								</tr>
								</c:if>
			                	<c:if test="${all_count>0 }">
			                	<c:forEach var="in" items="${inlist }">
								    <tr style="height: 50px;" align="center" class="cuslist" data-category="${in.cus_category}" onclick="location.href='inquiryedit?cus_num=${in.cus_num}'">
								       <td valign="middle">${no }</td><c:set var="no" value="${no-1 }"/>
								       <td valign="middle">${in.cus_title }</td>
								       <td valign="middle"><fmt:formatDate value="${in.cus_writetime}" pattern="yyyy-MM-dd HH:mm"/></td>
								       <td valign="middle">
								       		<c:choose>
										        <c:when test="${in.cus_answer_status == '답변 완료'}">
										            <span style="color: #007bff;">${in.cus_answer_status}</span>
										        </c:when>
										        <c:when test="${in.cus_answer_status == NULL}">
										            <button type="button" class="btn btn-outlint-primary" style="border: 1px solid #FF0000; color: #FF0000;">답변 작성</button>
										        </c:when>
									    	</c:choose>
								       </td>
								    </tr>
								</c:forEach>
								</c:if>
								</tbody>
			                </table>
			                <!-- 페이징 -->
							<div style="width: 1000px;">
							  <ul class="pagination justify-content-center">
							     <!--  이전-->
							     <c:if test="${startPage>1 }">
							        <li class="page-item ">
								   <a class="page-link" href="inquiry?currentPage=${startPage-1 }" style="color: black;">이전</a>
								  </li>
							     </c:if>
							     
							     <!--페이지번호  -->
							     <c:forEach var="pp"  begin="${startPage }"  end="${endPage }">
							       <c:if test="${currentPage==pp }">
							       	  <li class="page-item active">
							    		<a class="page-link" href="inquiry?currentPage=${pp }">${pp }</a>
							    	  </li>
							       </c:if>
							       
							       <c:if test="${currentPage!=pp }">
							          <li class="page-item">
							    		<a class="page-link" href="inquiry?currentPage=${pp }">${pp }</a>
							    		</li>
							       </c:if>
							     </c:forEach>
							     
							     
							     <!-- 다음 -->
							     <c:if test="${endPage<totalPage }">
							        <li class="page-item">
							    		<a  class="page-link" href="inquiry?currentPage=${endPage+1 }"
							    		style="color: black;">다음</a>
							    	</li>
							     </c:if>
							  </ul>
							</div>
			            </div>
			        </main>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	$("a.menu_item").click(function() {
		$("a.menu_item").attr('aria-selected', 'false');
        $(this).attr('aria-selected', 'true');
	})
</script>

</html>