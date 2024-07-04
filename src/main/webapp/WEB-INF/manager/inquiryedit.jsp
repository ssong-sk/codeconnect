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

.container {
	margin: 0px;
	margin-bottom: 10px;
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
			        		<span class="menu_text">1:1문의</span>
			        		</a>
			        	</div>
			        </div>
			    </div>
			</div>
		<div class="container-bottom">
		    <div class="row">
		    	<main id="content">
		            <div class="dashboard">
						<div class="container" style="width: 1030px;">
						    <div class="detail-title">
						        ${indto.cus_title}
						    </div>
						    <div class="detail-info">
						        <span>등록일 : <fmt:formatDate value="${indto.cus_writetime}" pattern="yyyy-MM-dd HH:mm"/></span>
						    </div>
						    <div class="detail-content">
						        ${indto.cus_content}
						        <c:if test="${not empty indto.cus_photo}">
						            <img src="../customerimage/${indto.cus_photo}" alt="첨부 이미지" />
						        </c:if>
						    </div>
						
						    <c:if test="${not empty indto.cus_answer}">
						        <div class="answer-section">
						            <b style="font-size: 19px;">관리자 답변</b>
						                    <div style="margin-top: 10px;">
						                    	<form action="inquiryupdate" method="post">
						                    	<input type="hidden" name="cus_num" value="${indto.cus_num}">
						                    	<textarea name="cus_answer" rows="5" style="width: 100%;">${indto.cus_answer}</textarea>
							                    <button type="submit" class="btn btn-outline-primary btn-sm" style="margin-top: 10px; margin-right: 10px;">답변 수정</button>
							                    </form>
							                    <form action="inquirydelete" method="post" onsubmit="return confirmDelete()">
							                    <input type="hidden" name="cus_num" value="${indto.cus_num}">
							                    <button type="submit" class="btn btn-outline-danger btn-sm" style="margin-top: 10px; margin-left: 80px; margin-top: -56px;">답변 삭제</button>
							                    </form>
						                    </div>
						            <div style="margin-top: 15px; margin-bottom: 40px;">
						                <div class="answer-content">
						                    ${indto.cus_answer}
						                </div>
						            </div>
						        </div>
						    </c:if>
						    <c:if test="${empty indto.cus_answer}">
					        <div class="answer-section">
					            <b style="font-size: 19px;">관리자 답변</b>
					            <form action="inquiryupdate" method="post">
					            	<input type="hidden" name="cus_num" value="${indto.cus_num}">
					                <textarea name="cus_answer" rows="5" style="width: 100%;"></textarea>
					                <button type="submit" class="btn btn-primary btn-sm" style="margin-top: 10px;">답변 등록</button>
					            </form>
					        </div>
					        </c:if>
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
<script type="text/javascript">
    function confirmDelete() {
            return confirm("정말 삭제하시겠습니까?");
    }
</script>
</html>