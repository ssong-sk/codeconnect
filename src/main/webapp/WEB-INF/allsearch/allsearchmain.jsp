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
div.searchdiv{
	display: flex;
	justify-content: center;
	align-items: center;
    padding: 30px 0 24px;
}

input.searchinput{
	height: 52px;
    width: 100%;
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
    box-shadow: none !important;
    outline: none !important;
}

span.searchicon{
	position: absolute;
    top: 50%;
    left: 20px;
    transform: translateY(-50%);
    pointer-events: none;
	display: flex;
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
#search_tab_all:first-of-type{
	margin-left: -16px;
}

#search_tab_all{
	display: inline-block;
    position: relative;
    z-index: 1;
    padding: 0 16px;
    font-weight: 500;
    vertical-align: top;
}

#search_tab_all[aria-selected=true] .searchtabmenu_text{
	color: #171719;
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
    transition: color .2s ease;
}
</style>
</head>
<body>
<div style="background: #fff;">
	<div class="searchdiv">
		<input class="searchinput" type="search" placeholder="검색어를 입력해 주세요.">
		<span class="searchicon"><i class="bi bi-search"></i></span>
	</div>
	<div class="searchTabmenu">
		<div style="width: 1080px; margin: 0 auto;">
			<a href="#" id="search_tab_all" tabindex="0" aria-selected="true">
				<span class="searchtabmenu_text">전체</span>
			</a>
			<a href="#" id="search_tab_hire" tabindex="-1" aria-selected="false">
				<span class="searchtabmenu_text">채용공고(갯수)</span>
			</a>
			<a href="#" id="search_tab_company" tabindex="-1" aria-selected="false">
				<span class="searchtabmenu_text">회사(갯수)</span>
			</a>
		</div>
	</div>
</div>
</body>
</html>