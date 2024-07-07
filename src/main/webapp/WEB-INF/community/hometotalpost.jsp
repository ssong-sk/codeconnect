<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>${category} 게시글</title>
<style>
    body {
        font-family: 'IBM Plex Sans KR';
    }
    
    /* 최상단 카테고리 nav */
    /*.nav {
        margin-top: 40px;
        margin-left: 250px;
    }*/
    .nav ul {
    list-style-type: none;
    display: flex;
    gap: 20px;
    padding: 0;
    justify-content: flex-start;
    margin-top: 40px;
}

.nav ul a {
    display: block;
    color: gray;
    text-decoration: none;
    font-weight: 700;
    font-size: 17px;
    line-height: 32px;
}

.nav ul .active {
    color: #0D6CF9;
}

/* 포스트 리스트 래퍼 */
.post_list_wrap {
    margin: 50px auto;
    max-width: 800px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    background-color: #fff;
}

.post_list_wrap h2 {
    margin-bottom: 20px;
}

.post_list_wrap .post_item {
    margin-bottom: 20px;
}

/* 컨테이너 */
.container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 20px;
    max-width: 1200px;
    margin: 50px auto;
}

.container h4 {
    display: inline-block;
    color: black;
}

.linkgo {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
}

.inpbox.line.filter {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.filter-box {
    border: 1px solid #d7dce5;
    padding: 10px;
    border-radius: 5px;
}

.list_qna {
    max-width: 1200px;
    margin: 30px auto;
}

.qna-list, .s-qna-list {
    list-style: none;
    padding: 0;
}

.qna-list li, .s-qna-list li {
    padding: 20px 0;
    border-bottom: 1px solid #eaeaea;
}

.qna-item {
    display: flex;
    justify-content: space-between;
}

.qna-title {
    text-decoration: none;
    color: #000;
    font-size: 18px;
    font-weight: bold;
}

.qna-description {
    margin: 10px 0 0 0;
    color: #555;
}

.qna-meta {
    text-align: right;
    color: #999;
}

.qna-meta span {
    display: block;
}

.hot-label {
    color: #ff7f50;
    font-weight: bold;
}

.writebtn {
    background-color: #2D65F2;
}

/* 주제별 커뮤니티 상단 */
ul.list_category {
    display: flex;
    gap: 15px;
    padding: 0;
    justify-content: center;
    flex-wrap: wrap;
}

ul.list_category li {
    text-align: center;
    border: 1px solid #d7dce5;
    border-radius: 10px;
    height: 65px;
    width: 164px;
    display: flex;
    justify-content: center;
    align-items: center;
    list-style: none;
}

.list_category a {
    text-decoration: none;
    color: #373f57;
    display: block;
    line-height: 40px;
    font-size: 17px;
}

.post_list a {
    text-decoration: none;
    color: #373f57;
    display: block;
    line-height: 40px;
}

.content_text {
    overflow: hidden; /* 내용이 넘칠 경우 숨기기 */
    text-overflow: ellipsis; /* 넘치는 내용 줄임표 처리 */
    white-space: nowrap; /* 줄바꿈 없이 한 줄로 처리 */
}


/* 페이징 스타일 */
.pagination {
    display: flex;
    justify-content: center;
    margin-top: 40px;
    margin-bottom: 50px;
}

.pagination a {
    padding: 10px 15px;
    margin: 0 5px;
    color: gray;
    text-decoration: none;
    transition: background-color 0.3s;
    border-radius: 5px;
    border: none;
}

.pagination a:hover {
    background-color: #e9ecef;
}

.pagination a.active {
    border: 1px solid #0D6CF9;
    background-color: white;
    color: #0D6CF9;
    pointer-events: none;
    box-shadow: none;
}

/* 선택된 li a 효과 */
.list_category a.active {
    color: #0D6CF9;
}

/* HOT 레이블 */
.hot-label {
    color: #0D6CF9;
    font-weight: bold;
    font-size: 17px;
}
</style>
<script type="text/javascript">
    $(document).ready(function(){
        // content 말줄임표 처리
        $('.content_text').each(function(){
            var maxLength = 90;
            var text = $(this).text();
            if (text.length > maxLength) {
                var cut = text.substring(0, maxLength) + '...';
                $(this).text(cut);
            }
        });
        
     	//체크박스 클릭 이벤트
        $('.btn_sort').on('change', function() {
            //모든 체크박스를 해제
            $('.btn_sort').prop('checked', false);
            //현재 클릭한 체크박스만 체크
            $(this).prop('checked', true);
            var sortBy = $(this).val();
            var category = "${category}";
            window.location.href = "${root}/community/hometotalpost?category=" + encodeURIComponent(category) + "&sortBy=" + sortBy;
        });

        //체크박스 상태 설정
        var urlParams = new URLSearchParams(window.location.search);
        var sortBy = urlParams.get('sortBy') || 'new'; // 기본값은 'new'
        $('#' + sortBy).prop('checked', true);

    });
</script>
</head>

<body>
<div style="max-width: 1060px; margin: 60px auto;">
<nav class="nav">
    <ul>
        <li><a class="nav-link" href="${root}/community/homelist" id="homeLink">소셜</a></li>
        <li><a class="nav-link" href="${root}/community/interviewlist" id="interviewLink">현직자 인터뷰</a></li>
    </ul>
</nav>
    <div class="container2">
        <div class="linkgo" style="width: 100%;">
            <div>
                <h2><b class="catename">${category} 방</b></h2>
                <span style="display: block; margin-top: 10px; color: #5c667b;" class="catename2">현재까지 등록된 ${category} 게시글입니다.</span>
            </div>
            <img src="/communityimage/communitytwo.png" style="height: 250px;">
        </div>
        <div class="category" style="margin-top: -13px;">
            <ul class="list_category js-category">
                <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("전체글", "UTF-8") %>" id="all" class="${category == '전체글' ? 'active' : ''}">전체글</a></li>
			    <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("신입", "UTF-8") %>" class="${category == '신입' ? 'active' : ''}">신입</a></li>
			    <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("취준", "UTF-8") %>" class="${category == '취준' ? 'active' : ''}">취준</a></li>
			    <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("자소서", "UTF-8") %>" class="${category == '자소서' ? 'active' : ''}">자소서</a></li>
			    <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("면접", "UTF-8") %>" class="${category == '면접' ? 'active' : ''}">면접</a></li>
			    <li><a href="${root}/community/hometotalpost?category=<%= java.net.URLEncoder.encode("Q&A", "UTF-8") %>" class="${category == 'Q&A' ? 'active' : ''}">Q&A</a></li>
            </ul>
        </div>
    </div>
</div>


<div class="commutitle" style="max-width: 1060px; margin: 50px auto;">
    <div class="container" style="padding: 0px 0px;">
        <div class="linkgo d-flex justify-content-between" style="width: 100%;">
            <a href="${root}/community/hometotalpost">
                <h4>
                    <span>전체 <b class="allcount">${totalCount}</b>건</span>
                </h4>
            </a>
            <div class="d-flex search" style="margin-right: 1px;">
                <input class="form-control me-2" type="search" placeholder="다른 사람들은 어떤 이야기를 할까?" aria-label="Search"
                style="width: 350px;" name="searchword">
                <button type="button" class="btn btn-outline-primary" id="btnsearch" style="margin-right: 0px;">
                    <span class="blind">검색</span>
                </button>
            </div>
        </div>
    </div>
    <div class="inpbox line filter d-flex justify-content-between align-items-center" style="margin-top: -20px;">
	    <div class="filter-box">
	        <span class="chk">
	            <input type="checkbox" id="popular" class="btn_sort" value="popular">
	            <label class="lbl" for="popular">인기순</label>
	        </span>&nbsp;
	        <span class="chk">
	            <input type="checkbox" id="new" class="btn_sort" value="new">
	            <label class="lbl" for="new">최신순</label>
	        </span>&nbsp;
	        <span class="chk">
	            <input type="checkbox" id="maxlike" class="btn_sort" value="maxlike">
	            <label class="lbl" for="maxlike">공감 많은 순</label>
	        </span>&nbsp;
	        <span class="chk">
	            <input type="checkbox" id="maxcomment" class="btn_sort" value="maxcomment">
	            <label class="lbl" for="maxcomment">댓글 많은 순</label>
	        </span>
	    </div>
	    <!-- 로그인한 회원만 버튼 나타나도록 -->
	    <c:if test="${sessionScope.loginok != null}">
	        <button type="button" class="btn btn-primary writebtn" style="width: 200px;"
	        onclick="location.href='homeform'">게시글 작성</button>
	    </c:if>
	</div>
</div>

<div class="list_qna" style="max-width: 1060px; margin: 30px auto;">
	<div id="s-qna-list">
    <ul class="qna-list">
        <c:if test="${topPost != null}">
            <li style="border-top: 1px solid #eaeaea;">
                <div class="qna-item">
                    <div class="post_list">
                        <a href="${root}/community/homedetail?com_num=${topPost.com_num}">
                            <span class="hot" style="color: #0D6CF9; font-weight: bold; font-size: 17px;">HOT</span>&nbsp;&nbsp;<b style="font-size: 20px;">${topPost.com_title}</b><br>
                            <span class="content_text">${topPost.com_content}</span>
                            <div>
                                &nbsp;<span><i class="bi bi-hand-thumbs-up"></i>&nbsp;${topPost.com_likes}</span>&nbsp;&nbsp;&nbsp;
                                <span><i class="bi bi-chat-left"></i>&nbsp;${topPost.com_commentcount}</span>&nbsp;&nbsp;
                                <span><i class="bi bi-eye"></i>&nbsp;${topPost.com_readcount}</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                <br>
                                <span>'${topPost.com_nickname }'님&nbsp;&nbsp;<fmt:formatDate value="${topPost.com_writetime}" pattern="yyyy-MM-dd HH:mm" />&nbsp;작성</span>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
        </c:if>
        <c:forEach var="dto" items="${otherPosts}">
            <li style="border-top: 1px solid #eaeaea;">
                <div class="qna-item">
                    <div class="post_list">
                        <a href="${root}/community/homedetail?com_num=${dto.com_num}">
                            <h5><b>${dto.com_title}</b></h5>
                            <span class="content_text">${dto.com_content}</span>
                            <div>
                                &nbsp;<span><i class="bi bi-hand-thumbs-up"></i>&nbsp;${dto.com_likes}</span>&nbsp;&nbsp;&nbsp;
                                <span><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>&nbsp;&nbsp;
                                <span><i class="bi bi-eye"></i>&nbsp;${dto.com_readcount}</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                <br>
                                <span>'${dto.com_nickname }'님&nbsp;&nbsp;<fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd HH:mm" />&nbsp;작성</span>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
        </c:forEach>
    </ul>
    </div>
</div>


<div class="pagination">
    <c:if test="${startPage > 1}">
        <a href="?category=${category}&pageNum=${startPage - 1}" class="page-link"><i class="bi bi-chevron-left"></i>이전</a>
    </c:if>
    <c:forEach begin="${startPage}" end="${endPage}" var="i">
        <a href="?category=${category}&pageNum=${i}" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
    </c:forEach>
    <c:if test="${endPage < totalPage}">
        <a href="?category=${category}&pageNum=${endPage + 1}" class="page-link">다음<i class="bi bi-chevron-right"></i></a>
    </c:if>
</div>

<script type="text/javascript">
//엔터 키 눌렀을 때 검색 버튼 클릭 이벤트 처리
$('.me-2').keypress(function(e) {
    if (e.which == 13) { // 엔터 키를 눌렀을 때
        $('#btnsearch').click(); // 검색 버튼 클릭
    }
});


/* 검색 기능 */
$('#btnsearch').click(function() {
	$("div.pagination").hide();
    var searchword = $('.me-2').val().trim(); // 입력 필드의 값 가져오기
    $.ajax({
        type: "GET",
        url: "commuAllSearch", // 실제 검색을 처리하는 서버의 URL로 변경해야 합니다.
        dataType: "json",
        data: {
            "searchword": searchword
        },
        success: function(res) {
            comsearch(res);
            $("b.allcount ").text(res.length);
            
         	// '전체글'을 활성화하고 다른 항목을 비활성화
            $('ul li a').removeClass('active'); // 모든 링크에서 active 클래스 제거
            $('#all').addClass('active'); // '전체글' 링크에 active 클래스 추가
            
            // '전체글 방'과 '현재까지 등록된 전체글 게시글입니다' 텍스트 변경
            $('.catename').text('전체글 방');
            $('.catename2').text('현재까지 등록된 전체글 게시글입니다.');
            
            $('.content_text').each(function(){
                var maxLength = 96;
                var text = $(this).text();
                if (text.length > maxLength) {
                    var cut = text.substring(0, maxLength) + '...';
                    $(this).text(cut);
                }
            });
        }
    });
});
 
/* 리스트 출력 함수 */
function comsearch(res) {
	$(".qna-list").hide();

	if (res.length === 0) {
		$("ul.s-qna-list").hide();
		$(".qna-list").show();
		$('.qna-list').html('<p>검색 결과가 없습니다.</p>');
		return;
	}
	var s = "<ul class='s-qna-list'>";
    $.each(res, function(index, h) {
        s += "<li style='border-top: 1px solid #eaeaea;'>";
        s += "<div class='qna-item'>";
        s += "<div class='post_list'>";
        s += "<a href='/community/homedetail?com_num=" + h.com_num + "'>";
        s += "<h5><b>" + h.com_title + "</b></h5>";
        s += "<span class='content_text'>" + h.com_content + "</span>";
        s += "<div>";
        s += "&nbsp;<span><i class='bi bi-hand-thumbs-up'></i>&nbsp;" + h.com_likes + "</span>&nbsp;&nbsp;&nbsp;";
        s += "<span><i class='bi bi-chat-left'></i>&nbsp;" + h.com_commentcount + "</span>&nbsp;&nbsp;";
        s += "<span><i class='bi bi-eye'></i>&nbsp;" + h.com_readcount + "</span>&nbsp;&nbsp;&nbsp;&nbsp;<br>";
        s += "<span>'" + h.com_nickname + "'님&nbsp;&nbsp;" + new Date(h.com_writetime).toLocaleString() + "&nbsp;작성</span>"; // 날짜 형식 변환
        s += "</div>";
        s += "</a>";
        s += "</div>";
        s += "</div>";
        s += "</li>";
    });
	s += "</ul>";
	
	$('#s-qna-list').html(s); // 업데이트할 요소의 ID를 지정
}
</script>
</body>
</html>
