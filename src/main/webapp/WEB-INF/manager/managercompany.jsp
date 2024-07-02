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

.comlist{
	cursor: pointer;
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
			        		<a href="edit" role="tab" id="block" tabindex="0" class="menu_item" aria-selected="false" aria-controls="block">
			        		<span class="menu_text">BLOCK</span>
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
			                		<td colspan="6">
			                			<div style="border: 1px solid #ddd; border-radius: 5px; padding: 20px; margin-bottom: 15px;">
			                				<h3 style="margin-top: 9px;"><span style="color: #0176ED;">${c_count }</span> 개의 기업이 있습니다.</h3>
			                			</div>
			                		</td>
			                	</tr>
			                	<tr align="center">
			                		<td>NO</td>
			                		<td>NAME</td>
			                		<td>CATE / SIZE</td>
			                		<td>ADDR</td>
			                		<td>EMAIL</td>
			                		<td>BLOCK</td>
			                	</tr>
			                	</thead>
			                	<tbody>
								<c:if test="${c_count==0 }">
								<tr height="50">
								  <td colspan="5" align="center">
								     <h5><b>등록된 기업이 없습니다</b></h5>
								  </td>
								</tr>
								</c:if>
			                	<c:if test="${c_count>0 }">
			                	<c:forEach var="c" items="${clist }">
								    <tr align="center" class="comlist" onclick="location.href='companyedit?c_num=${c.c_num}'">
								       <td valign="middle">${no }</td><c:set var="no" value="${no-1 }"/>
								       <td valign="middle" width="150px">
											<span style="color: #0176ED; font-weight: bold;">${c.c_name }</span>
									   </td>
								       <td valign="middle" width="170px">${c.c_category } <br> ${c.c_size }</td>
								       <td valign="middle" width="500px">
									       	${c.c_addr}
								    	</td>
								        <td valign="middle">${c.c_insa_email }</td>
								        <td valign="middle">
								           <input type="checkbox" num="${c.c_num }" class="del">
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
								   <a class="page-link" href="company?currentPage=${startPage-1 }" style="color: black;">이전</a>
								  </li>
							     </c:if>
							     
							     <!--페이지번호  -->
							     <c:forEach var="pp"  begin="${startPage }"  end="${endPage }">
							       <c:if test="${currentPage==pp }">
							       	  <li class="page-item active">
							    		<a class="page-link" href="company?currentPage=${pp }">${pp }</a>
							    	  </li>
							       </c:if>
							       
							       <c:if test="${currentPage!=pp }">
							          <li class="page-item">
							    		<a class="page-link" href="company?currentPage=${pp }">${pp }</a>
							    		</li>
							       </c:if>
							     </c:forEach>
							     
							     
							     <!-- 다음 -->
							     <c:if test="${endPage<totalPage }">
							        <li class="page-item">
							    		<a  class="page-link" href="company?currentPage=${endPage+1 }"
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