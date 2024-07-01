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

.back_button {
    background-color: #ffffff;
    color: #5c667b;
    font-size: 15px;
    border: 1px solid #ddd;
    padding: 5px 10px;
    border-radius: 5px;
    text-decoration: none;
    display: inline-block;
    margin-bottom: 8px;
    margin-left: -694px;
}

.form-container {
    background: #fff;
    border-radius: 10px;
    max-width: 800px;
    width: 100%;
    margin: 0 auto;
    padding-bottom: 40px;
    padding-top: 40px;
}

.form-container h2 {
    margin-bottom: 20px;
}

.form-container select, 
.form-container input[type="text"], 
.form-container textarea {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border-radius: 5px;
    border: 1px solid #ced4da;
    font-size: 14px;
}

.form-container input[type="file"] {
    margin-top: 10px;
}

.form-container button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #2D65F2;
    color: #fff;
    font-size: 16px;
}

.form-container button:hover {
    background-color: #1E4BB8;
}

@media (max-width: 768px) {
    .form-container {
        padding: 20px;
    }
}

.custom-file-upload {
    display: inline-block;
    padding: 6px 12px;
    cursor: pointer;
    border: 1px solid #ced4da;
    border-radius: 5px;
    background-color: #f8f9fa;
    color: #495057;
    font-size: 14px;
}

#upload {
    display: none;
}

#image-container img {
    max-width: 100%;
    height: auto;
    margin-top: 10px;
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
			        		<a href="company" role="tab" id="company" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="company">
			        		<span class="menu_text">COMPANY</span>
			        		</a>
			        		<a href="info" role="tab" id="info" tabindex="-1" class="menu_item" aria-selected="false" aria-controls="info">
			        		<span class="menu_text">INFO</span>
			        		</a>
			        		<a href="event" role="tab" id="event" tabindex="-1" class="menu_item" aria-selected="true" aria-controls="event">
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
							<div class="form-container">
							    <h2>게시글 작성</h2>
							    <form action="eventinsert" method="post" enctype="multipart/form-data">
							        <input type="hidden" id="cus_user_id" name="cus_user_id" value="${sessionScope.myid}">
							        <input type="hidden" id="cus_top_type" name="cus_top_type" value="notice">
							        <div>
							            <label for="category">카테고리</label>
							            <select id="category" name="cus_category" required>
							                <option value="진행중 이벤트">진행중 이벤트</option>
							                <option value="마감된 이벤트">마감된 이벤트</option>
							                <option value="당첨자 발표">당첨자 발표</option>
							            </select>
							        </div>
							        <div>
							            <label for="title">제목</label>
							            <input type="text" id="title" name="cus_title" required placeholder="제목을 입력해주세요">
							        </div>
							        <div>
							            <label for="content">내용</label>
							            <textarea id="content" name="cus_content" style="height: 360px; border: 1px solid #ced4da; padding: 10px; margin-top: 10px; overflow-y: auto;" placeholder="내용을 입력해주세요"></textarea>
							        </div>
							        <div style="margin-top: 10px;">
							            <label for="upload" class="custom-file-upload"><i class="bi bi-images"></i> 이미지 첨부</label>
							            <input type="file" id="upload" name="upload" multiple>&nbsp;
							            <span id="file-status" style="font-size: 14px;">이미지 첨부 없음</span>
							        </div>
							        <div id="image-container" style="margin-top: 10px;"></div>
							        <div style="margin-top: 25px;">
							            <button type="submit">게시글 등록</button>
							        </div>
							    </form>
							</div>
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
    /* 이미지파일 첨부 관련 js */
    $(document).ready(function(){
        $('#upload').change(function(){
            var fileName = $(this).val().split('\\').pop();
            if (fileName) {
                $('#file-status').text(fileName);
            } else {
                $('#file-status').text('이미지 첨부 없음');
            }
            
            /* content 하단에 첨부이미지 미리보기 */
            var files = this.files;
            var imageContainer = $('#image-container');
            imageContainer.empty();
            
            for (var i = 0; i < files.length; i++) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var image = $('<img>').attr('src', e.target.result);
                    imageContainer.append(image);
                }
                reader.readAsDataURL(files[i]);
            }
        });
    });
    
    /* 이전페이지 클릭시 상단으로 이동 */
    function scrollToTop() {
        window.scrollTo(0, 0);
    }
</script>
</html>