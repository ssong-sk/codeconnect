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
}

.mainhire {
	position: relative;
	width: 630px;
}

.mainhire h1{
	font-weight: 700;
    font-size: 36px;
    margin-bottom: 12px;
    line-height: 1.25;
}

/* 공고이름 */
.name{
	color: rgb(68, 68, 68);
	font-size: 18px;
}

.name:hover span, .name:hover i{
	text-decoration-line: underline;
    text-underline-position: under;
    color: rgb(1, 118, 237);
}

/* 카테고리 */
.category{
	display: flex;
    flex-flow: wrap;
    gap: 8px;
    margin-top: 16px;
}

.category_style{
	border: 1px solid rgb(228, 228, 228);
	background-color: rgb(255, 255, 255);
	padding: 6px 16px;
    border-radius: 100px;
    color: rgb(68, 68, 68);
    font-size: 13px;
    font-weight: 500;
    line-height: 20px;
    width: auto;
    display: inline-block;
}

/* 기술스택 */
.sm_name{
	padding-bottom: 12px;
	font-size: 18px;
    color: rgb(0, 0, 0);
    line-height: 32px;
    font-weight: bold;
}

.tech_style{
	display: inline-block;
    position: relative;
    margin: 6px 6px 6px 0px;
    font-size: 12px;
    font-family: __Montserrat_08d7fe, __Montserrat_Fallback_08d7fe;
    font-weight: 500;
    line-height: 32px;
    color: rgb(0, 0, 0);
    padding: 0px 12px 0px 12px;
    background: rgb(244, 244, 244);
    border-radius: 4px;
}

.pre{
	margin: 0px;
    padding: 0px;
    white-space: pre-line;
    word-break: break-all;
    overflow-wrap: break-word;
    font-family: inherit;
    font-size: 16px;
    color: rgb(68, 68, 68);
    line-height: 28px;
}

/* 경력,학력,마감일,근무지역 */
.content{
	padding: 32px 0px;
    border-top: 1px solid rgb(234, 234, 234);
    border-bottom: 1px solid rgb(234, 234, 234);
}

.content_detail{
	position: relative;
    font-size: 15px;
    color: rgb(68, 68, 68);
    line-height: 20px;
    letter-spacing: 0px;
    margin: 10px 0px;
    display: flex;
    align-items: baseline;
}

span.sub{
	line-height: 24px;
    color: rgb(0, 0, 0);
    font-weight: 500;
    width: 90px;
    min-width: 90px;
}

span.con{
	display: block;
    margin-inline-start: 40px;
    unicode-bidi: isolate;
}

/* 기업/서비스 소개 */
.soge_title{
	margin: 48px 0px 16px;
    font-size: 18px;
    line-height: 28px;
    font-weight: bold;
}

.container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.title_link{
    display: inline-block; /* 인라인 요소를 블록 요소로 변환 */
    margin-left: auto; /* 왼쪽 여백을 최대로 확장하여 오른쪽 끝으로 이동 */
    align-items: center;
    gap: 4px;
    font-size: 14px;
    line-height: 20px;
    text-decoration: underline;
    text-underline-position: under;
    color: rgb(1, 118, 237);
    margin: 48px 0px 16px;
}

.title_link:visited {
    color: rgb(1, 118, 237); /* 방문한 링크의 색상을 초기 색상으로 유지 */
}

.title_link:hover {
    color: rgb(1, 118, 237);
}

.soge_pre{
	padding: 0px;
    font-size: 16px;
    color: rgb(68, 68, 68);
    line-height: 28px;
    word-break: break-all;
    white-space: pre-line;
    overflow-wrap: break-word;
    font-family: inherit;
    max-height: 168px;
    overflow: hidden;
}

.plus_soge{
	display: flex;
    align-items: center;
    justify-content: center;
    gap: 4px;
    margin-top: 16px;
    padding: 0px 16px;
    font-size: 15px;
    font-weight: 700;
    line-height: 24px;
    height: 48px;
    border-radius: 8px;
    color: rgb(0, 0, 0);
    border: 1px solid rgb(212, 212, 212);
    background-color: rgb(255, 255, 255);
    width: 100%;
    min-width: 100%;
}

.plus_soge:hover{
	background-color: rgb(248, 248, 248);
}

.soge-con{
	position: absolute;
    bottom: 64px;
    width: 100%;
    height: 32px;
    background: linear-gradient(rgba(255, 255, 255, 0.5) 0%, rgb(255, 255, 255) 100%);
}

.soge-intro {
	background: linear-gradient(rgba(255, 255, 255, 0.5) 0%, rgb(255, 255, 255) 100%);
}
</style>
</head>
<body>
<div class="all">
	<div id="wrap">
		<div class="center">
			<div class="mainhire">
				<h1>${hdto.h_title }</h1>
				<a class="name" target="_blank">
					<span>${hdto.c_name }</span> <i class="bi bi-chevron-right"></i>
				</a>
				
				<div class="category">
					<c:forEach var="cate" items="${hdto.h_category }">
						<c:forTokens var="c" items="${cate }" delims="|">
							<div class="category_style">${c }</div>
						</c:forTokens>
					</c:forEach>
				</div>
				
				<br><br>
				<span class="sm_name">기술스택</span>
				<div class="tech">
					<c:forEach var="tech" items="${hdto.h_tech }">
						<c:forTokens var="t" items="${tech }" delims=",">
							<div class="tech_style">${t }</div>
						</c:forTokens>
					</c:forEach>
				</div>
				
				<br><br>
				<span class="sm_name">주요업무</span>
				<div class="major">
					<pre class="pre">${hdto.h_major }</pre>
				</div>
				
				<br><br>
				<span class="sm_name">자격요건</span>
				<div class="require">
					<pre class="pre">${hdto.h_require }</pre>
				</div>
				
				<br><br>
				<span class="sm_name">우대사항</span>
				<div class="preference">
					<pre class="pre">${hdto.h_preference }</pre>
				</div>
				
				<br><br>
				<span class="sm_name">복지 및 혜택</span>
				<div class="benefit">
					<pre class="pre">${hdto.h_benefit }</pre>
				</div>
				
				<br><br>
				<c:if test="${hdto.h_process!='' }">
					<span class="sm_name">채용절차 및 지원 유의사항</span>
					<div class="process">
						<pre class="pre">${hdto.h_process }</pre>
					</div>
				</c:if>
				
				<br><br>
				<!-- 경력,학력,마감일,근무지역 -->
				<div class="content">
					<div class="content_detail">
						<span class="sub">경력</span>
						<span class="con">${hdto.h_career }년</span>
					</div>
					<div class="content_detail">
						<span class="sub">학력</span>
						<span class="con">${hdto.h_grade }</span>
					</div>
					<div class="content_detail">
						<span class="sub">마감일</span>
						<span class="con">${hdto.h_deadline }</span>
					</div>
					<div class="content_detail">
						<span class="sub">근무지역</span>
						<span class="con">${hdto.h_location }</span>
					</div>
				</div>
				
				<!-- 기업/서비스 소개 -->
				<div style="display: block; unicode-bidi: isolate;">
					<div class="container">
					    <h2 class="soge_title">기업/서비스 소개</h2>
					    <a class="title_link" target="_blank" href="#">
					        기업 상세정보로 이동 <i class="bi bi-chevron-right"></i>
					    </a>
					</div>
					<img src="../../companyintro_uploads/${hdto.ci_image }" height="441" width="630">
					<div class="soge-intro">
						<pre class="soge_pre">${hdto.ci_soge }</pre>
						<button aria-expanded="false" class="plus_soge">
							더 보기 <i class="bi bi-chevron-down"></i>
						</button>
						<div aria-hidden="true" class="soge-con"></div>
					</div>
				</div>
			</div>
			<div>
			   <jsp:include page="detailaside.jsp"></jsp:include>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
//더 보기 버튼 클릭 시 이벤트 핸들러
// 초기 로드 시 숨기기 처리
$(".soge-con").hide();
$(".soge_pre").css("max-height", "168px");

// 더 보기 버튼 클릭 시 이벤트 핸들러
$(".plus_soge").click(function() {
    var expanded = $(this).attr("aria-expanded") === "true";
    $(this).attr("aria-expanded", !expanded);
    var sogePre = $(".soge_pre");
    var sogeCon = $(".soge-con");
    
    if (!expanded) {
        sogePre.css("max-height", "none");
        $(this).html('접기 <i class="bi bi-chevron-up"></i>');
    } else {
        sogePre.css("max-height", "168px"); // 초기 높이로 설정
        sogeCon.show(); // 추가 컨텐츠 보이기
        $(this).html('더 보기 <i class="bi bi-chevron-down"></i>');
    }
});

// 초기 로드 시 배경 그라디언트 적용
$(".soge-intro").css({
    "background": "linear-gradient(rgba(255, 255, 255, 0.5) 0%, rgb(255, 255, 255) 100%)",
});
</script>

</body>
</html>