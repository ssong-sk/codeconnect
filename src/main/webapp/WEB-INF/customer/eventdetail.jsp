<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상세보기</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
.all {
	height: 100%;
}

.center {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	max-width: 1060px;
	margin-bottom: 100px;
}

#wrap {
	margin-top: 45px; /* 헤더 들어갈 부분 */
	font-family: IBM Plex Sans KR;
}

body {
    font-family: 'IBM Plex Sans KR', sans-serif;
}

.backimg {
   width: 28px;
   height: 28px;
   padding-top: 2px;
   cursor: pointer;
}
    
.container {
    max-width: 1000px;
    margin: 50px auto;
    padding: 20px;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.detail-title {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
}

.detail-info {
    margin-bottom: 20px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
}

.detail-info span {
    display: inline-block;
    margin-right: 10px;
}

.detail-content {
    margin-bottom: 20px;
    white-space: pre-wrap;
    line-height: 1.6;
}

.btn-secondary {
    background-color: #6c757d;
    border: none;
}

.btn-secondary:hover {
    background-color: #5a6268;
}

.footer {
    text-align: right;
    margin-top: 20px;
}
</style>
<script type="text/javascript">
	function confirmDelete(url) {
	    if (confirm("정말 삭제하시겠습니까?")) {
	        location.href = url;
	    }
	}
	
	$(document).ready(function() {
	    var currentUrl = window.location.pathname;
	    if (currentUrl.includes('/customer/noticelist') || currentUrl.includes('/customer/noticedetail')) {
	        $('#noticeLink').addClass('active');
	    } else if (currentUrl.includes('/customer/eventlist') || currentUrl.includes('/customer/eventdetail')) {
	        $('#eventLink').addClass('active');
	    } else if (currentUrl.includes('/customer/inquirylist') || currentUrl.includes('/customer/inquirydetail')) {
	        $('#inquiryLink').addClass('active');
	    }
	});
</script>
</head>
<body>
<div class="all">
	<div id="wrap">
		<div class="center">
			<a href="javascript:history.back();" style="font-weight: bold; display: flex;">
				<img src="../../hire_img/chevron.png" class="backimg"">
				<h4 style="font-weight: bold; margin-top: 4px; font-size: 20px;">돌아가기</h4> 
			</a>
			<div class="container" style=" max-width: 1060px; margin-top: 25px;">
			    <div class="detail-title">
			        ${dto.cus_title}
			    </div>
			    <div class="detail-info">
			        <span>대상 : ${dto.cus_target}</span><br>
			        <span>이벤트 기간 : <fmt:formatDate value="${dto.cus_startday}" pattern="yyyy-MM-dd"/></span>~&nbsp;
			        <span><fmt:formatDate value="${dto.cus_endday}" pattern="yyyy-MM-dd"/></span><br>
			        <span>등록일 : <fmt:formatDate value="${dto.cus_writetime}" pattern="yyyy-MM-dd"/></span>
			    </div>
			    <div class="detail-content">
				    ${dto.cus_content}
				    <c:if test="${not empty dto.cus_photo}">
				        <img src="../../customerimage/${dto.cus_photo}" alt="첨부 이미지" style="display: block; max-width: 940px; width: 92%; height: auto; margin: 0 auto;"/>
				    </c:if>
				</div>
			    <div class="footer">
			        <c:if test="${sessionScope.myid == 'manager'}">
			        	<button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='eventform'">글쓰기</button>
			            <button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='eventupdateform/${dto.cus_num}'">수정</button>
			        	<button type="button" class="btn btn-outline-primary btn-sm" onclick="confirmDelete('eventdelete/${dto.cus_num}')">삭제</button>
			        </c:if>
			       -
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
