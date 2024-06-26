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
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
div.searchdiv {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px 0 24px;
}

div.input-container {
    position: relative;
    width: 530px;
}

div.input-container i {
    position: absolute;
    top: 50%;
    left: 20px;
    transform: translateY(-50%);
    color: #171719;
    font-weight: bold; /* 아이콘 굵기 추가 */
}

input.searchinput {
    width: 100%;
    padding-left: 40px; /* 아이콘 오른쪽에 여백 추가 */
    height: 52px;
    margin: 0;
    padding: 0 55px 0 52px;
    border: 1px solid hsla(225, 5%, 46%, .22);
    border-radius: 12px;
    font-size: 18px;
    font-weight: 500;
    color: #171719;
    background: #fff;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    appearance: none;
    box-sizing: border-box;
}

input.searchinput:focus {
    border-color: #0d6efd;
    outline: none; /* 기본 브라우저 테두리 제거 */
}

input.searchinput::placeholder {
    color: rgba(23, 23, 25, 0.5); /* 연한 글자색 */
}

span.searchicon{
	position: absolute;
    top: 50%;
    left: 100px;
    transform: translateY(-50%);
    pointer-events: none;
	display: flex;
}

span.searchicon i{
    width: 20px;
    height: 20px;
    user-select: none;
	display: inline-block;
    fill: #171719;
	flex-shrink: 0;
}

div.searchTabmenu{
	overflow: hidden;
    position: sticky;
    top: 60px;
    z-index: 11;
    text-align: left;
    background: hsla(0, 0%, 100%, .88);
    backdrop-filter: saturate(150%) blur(32px);
}

div.searchTabmenu:before{
    width: 90%;
	display: block;
    position: absolute;
    bottom: 0;
    left: 50%;
    max-width: 1080px;
    height: 1px;
    margin: 0 auto;
    background-color: rgba(0, 0, 0, .05);
    transform: translateX(-50%);
    content: "";
}

.search_tab{
	display: inline-block;
    position: relative;
    z-index: 1;
    padding: 0 16px;
    font-weight: 500;
    vertical-align: top;
    text-decoration: none;
}

.search_tab:first-of-type{
	margin-left: -16px;
}

.search_tab[aria-selected=true] .searchtabmenu_text{
	color: #171719;
}

.search_tab[aria-selected=true] .searchtabmenu_text:before {
    display: block;
}

.searchtabmenu_text{
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

.searchtabmenu_text:hover {
	color: rgba(55, 56, 60, .61);
}

.searchtabmenu_text:before{
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

a, a:active, a:hover, a:visited {
    color: inherit;
}

.searchcontent{
	width: 90%;
    margin: 0 auto;
    padding-bottom: 80px;
    max-width: 1080px;
}

.searchcontent2{
	position: relative;
    padding-top: 32px;
}

.searchtitle{
	display: flex;
    margin-bottom: 24px;
}

.searchtitle_text{
	font-size: 20px;
    font-weight: 600;
    line-height: 130%;
    color: #171719;
}

.searchtitle_text span{
	margin-left: 8px;
    font-weight: 400;
}

.searchtitle_text_span{
	color: rgba(55, 56, 60, .61);
}
</style>
</head>
<body>
<div style="background: #fff;">
	<div class="searchdiv">
	    <div class="input-container">
	        <i class="bi bi-search"></i>
	        <input class="searchinput" type="search" placeholder="검색어를 입력해 주세요.">
	    </div>
	</div>

	<div class="searchTabmenu">
		<div style="width: 1080px; margin: 0 auto;">
			<a href="#" class="search_tab" tabindex="0" aria-selected="true" aria-controls="search_tabpanel_all">
				<span class="searchtabmenu_text">전체</span>
			</a>
			<a href="#" class="search_tab" tabindex="-1" aria-selected="false" aria-controls="search_tabpanel_hire">
				<span class="searchtabmenu_text">채용공고(갯수)</span>
			</a>
			<a href="#" class="search_tab" tabindex="-1" aria-selected="false" aria-controls="search_tabpanel_company">
				<span class="searchtabmenu_text">회사(갯수)</span>
			</a>
		</div>
	</div>
	
	<div class="searchcontent">
		<div class="searchcontent2">
			<div>
				<div class="searchtitle">
					<h2 class="searchtitle_text">
					채용공고<span class="searchtitle_text_span">갯수</span>
					</h2>
				</div>
			</div>
		</div>
	</div>
	
</div>

<script type="text/javascript">
$(".search_tab").click(function() {
   $(".search_tab").attr('aria-selected', 'false');
   $(this).attr('aria-selected', 'true');
})
</script>

<script type="text/javascript">
$()
</script>
</body>
</html>