<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 상세보기</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    /* 최상단 카테고리 nav */
    .nav {
        margin-top: 5px;
        margin-left: 270px;
    }
    .nav ul {
        list-style-type: none;
        display: flex;
        gap: 20px;
        padding: 0;
        justify-content: flex-start;
        margin-top: 40px;
        margin-left: 100px;
    }
    .nav ul a {
        display: block;
        color: gray;
        text-decoration: none;
        font-weight: 700;
        font-size: 17px;
        line-height: 32px;
        padding: 0 15px;
    }
    .nav ul .active {
        color: blue;
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
        font-size: 22px;
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
        white-space: pre-wrap; /* 유지하기 위해 */
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
    .answer-section {
        margin-top: 30px;
        border-top: 1px solid #ddd;
        padding-top: 20px;
    }
    .answer-content {
        white-space: pre-line; /* 답변의 불필요한 공백 제거 및 엔터 적용 */
    }
</style>
<script type="text/javascript">
	$(document).ready(function() {
	    var currentUrl = window.location.pathname;
	    if (currentUrl.includes('/customer/noticelist') || currentUrl.includes('/customer/noticedetail')) {
	        $('#noticeLink').addClass('active');
	    } else if (currentUrl.includes('/customer/eventlist')) {
	        $('#eventLink').addClass('active');
	    } else if (currentUrl.includes('/customer/inquirylist') || currentUrl.includes('/customer/inquirydetail')) {
	        $('#inquiryLink').addClass('active');
	    }
	});
	
	function confirmDelete() {
        return confirm("정말 삭제하시겠습니까?");
    }
</script>
</head>
<body>
<div style="max-width: 1000px; margin-top: 70px; margin-left: 370px; width: 80%;">
    <h4 style="color: gray; font-weight: bold;">고객센터</h4>
</div>
<nav class="nav">
    <ul>
        <li><a class="nav-link" id="noticeLink" href="${pageContext.request.contextPath}/customer/noticelist">공지사항</a></li>
        <li><a class="nav-link" id="eventLink" href="${pageContext.request.contextPath}/customer/eventlist">이벤트</a></li>
        <li><a class="nav-link" id="inquiryLink" href="${pageContext.request.contextPath}/customer/inquirylist">1:1문의</a></li>
    </ul>
</nav>
<div class="container" style="width: 1000px;">
    <div class="detail-title">
        ${dto.cus_title}
    </div>
    <div class="detail-info">
        <span>등록일 : <fmt:formatDate value="${dto.cus_writetime}" pattern="yyyy-MM-dd"/></span>
    </div>
    <div class="detail-content">
        ${dto.cus_content}
        <c:if test="${not empty dto.cus_photo}">
            <img src="${pageContext.request.contextPath}/customerimage/${dto.cus_photo}" alt="첨부 이미지" />
        </c:if>
    </div>

    <c:if test="${not empty dto.cus_answer}">
        <div class="answer-section">
            <b style="font-size: 19px;">관리자 답변</b>
            <c:if test="${sessionScope.myid != null && sessionScope.myid == 'manager'}">
                <form action="${pageContext.request.contextPath}/customer/answerupdate" method="post">
                    <input type="hidden" name="cus_num" value="${dto.cus_num}">
                    <textarea name="answer" rows="5" style="width: 100%;">${dto.cus_answer}</textarea>
                    <button type="submit" class="btn btn-secondary btn-sm" style="margin-top: 10px;">답변 수정</button>
                </form>
                <form action="${pageContext.request.contextPath}/customer/answerdelete" method="post" onsubmit="return confirmDelete();" style="margin-top: 10px;">
                    <input type="hidden" name="cus_num" value="${dto.cus_num}">
                    <button type="submit" class="btn btn-secondary btn-sm">답변 삭제</button>
                </form>
            </c:if>
            <div style="margin-top: 15px;">
                <div class="answer-content">
                    ${dto.cus_answer}
                </div>
            </div>
        </div>
    </c:if>

    <c:if test="${sessionScope.myid != null && sessionScope.myid == 'manager' && empty dto.cus_answer}">
        <div class="answer-section">
            <b style="font-size: 19px;">관리자 답변</b>
            <form action="${pageContext.request.contextPath}/customer/answerinsert" method="post">
                <input type="hidden" name="cus_num" value="${dto.cus_num}">
                <textarea name="answer" rows="5" style="width: 100%;"></textarea>
                <button type="submit" class="btn btn-secondary btn-sm" style="margin-top: 10px;">답변 등록</button>
            </form>
        </div>
    </c:if>

    <%-- <div class="footer">
        <c:if test="${sessionScope.myid == dto.cus_user_id}">
            <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/inquiryupdateform/${dto.cus_num}'">수정</button>
            <form action="${pageContext.request.contextPath}/customer/inquirydelete/${dto.cus_num}" method="get" style="display:inline;" onsubmit="return confirmDelete();">
			    <button type="submit" class="btn btn-secondary btn-sm">삭제</button>
			</form>
        </c:if>
        <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/inquirylist'">목록</button>
    </div> --%>
    
    <!-- 글 작성자가 관리자 답글이 달린 글을 수정, 삭제할 수 없도록 -->
    <div class="footer">
	    <c:if test="${sessionScope.myid == dto.cus_user_id && empty dto.cus_answer}">
	        <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/inquiryupdateform/${dto.cus_num}'">수정</button>
	        <form action="${pageContext.request.contextPath}/customer/inquirydelete/${dto.cus_num}" method="get" style="display:inline;" onsubmit="return confirmDelete();">
	            <button type="submit" class="btn btn-secondary btn-sm">삭제</button>
	        </form>
	    </c:if>
	    <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='${pageContext.request.contextPath}/customer/inquirylist'">목록</button>
	</div>
    
</div>
</body>
</html>
