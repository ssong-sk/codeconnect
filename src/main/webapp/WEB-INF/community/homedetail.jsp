<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
<title>게시글 상세</title>
<style>
    body {
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .post_view_wrap .title {
        color: #666;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .title_left {
        display: flex;
        align-items: center;
    }
    .title_right {
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .post_view_wrap {
        margin: 20px auto;
        max-width: 800px;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
        background-color: #fff;
    }
    .post_view_wrap h2 {
        margin-bottom: 20px;
    }
    .post_view_wrap .content {
        margin-bottom: 20px;
        margin-top: 30px;
        min-height: 200px;
    }
    .post_view_wrap .meta {
        color: #666;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center.
    }
    .meta-left {
        display: flex;
        align-items: center;
    }
    .meta-left .memberimage {
        width: 45px;
        height: 45px;
        margin-right: 10px;
    }
    .meta-left .details {
        display: flex;
        flex-direction: column;
    }
    .meta-right {
        display: flex;
        align-items: center;
        gap: 10px.
    }
    .totalpostgo a {
        margin-top: 20px;
        margin-left: 560px;
        background-color: #ffffff;
        color: #5c667b;
        border: 1px solid #ddd;
        font-size: 13.5px;
        width: 120px;
        text-align: center;
        padding: 5px 10px;
        border-radius: 5px;
        text-decoration: none;
        display: inline-block;
    }
    .post_emoticom {
        text-align: center;
        margin-top: 20px;
    }
    .post_emoticom button:hover {
        color: red;
    }
    .post_emoticom button:hover img {
        filter: invert(35%) sepia(82%) saturate(5778%) hue-rotate(357deg) brightness(96%) contrast(110%);
    }
    .post_emoticom button.liked {
        color: red;
    }
    .post_emoticom button.liked img {
        filter: invert(35%) sepia(82%) saturate(5778%) hue-rotate(357deg) brightness(96%) contrast(110%);
    }
    .post_emoticom button {
        background: none;
        border: none;
        cursor: pointer;
        display: inline-block;
        text-align: center;
    }
    .post_emoticom button img {
        margin-top: 20px;
        width: 30px;
        height: 30px;
    }
    .post_emoticom button span {
        display: block;
        margin-top: 10px;
        font-size: 10px;
    }
    .homelistgo a {
        margin-top: 10px;
        margin-left: 1283px;
        background-color: #ffffff;
        color: #5c667b;
        border: 1px solid #ddd;
        font-size: 13.5px;
        width: 80px;
        text-align: center;
        padding: 5px 10px;
        border-radius: 5px;
        text-decoration: none;
        display: inline-block;
    }
    .comment-section {
        margin: 20px auto; /* 중앙 정렬을 위해 auto 사용 */
        max-width: 800px; /* 게시글 상세 페이지와 동일한 너비 */
    }
    .comment-list {
        margin-top: 10px;
    }
    .comment {
        margin-bottom: 10px;
    }
    .comment .day {
        color: gray;
        font-size: 0.9em;
    }
    /* 댓글 수정 모달 스타일 추가 */
    .modal-dialog {
        max-width: 600px; /* 모달 너비 설정 */
        margin: 1.75rem auto; /* 중앙 정렬을 위해 auto 사용 */
    }
</style>
<script type="text/javascript">
    $(document).ready(function() {
        // 좋아요 버튼 클릭 이벤트
        $('#like_button').click(function() {
            const com_num = ${dto.com_num};
            const isLiked = $(this).hasClass('liked');
            const actionUrl = isLiked ? "${pageContext.request.contextPath}/community/removeLike" : "${pageContext.request.contextPath}/community/updateLike";
            
	            $.ajax({
	                url: actionUrl,
	                type: "POST",
	                data: { com_num: com_num },
	                success: function() {
	                    let likeCount = parseInt($('#like_button span:last-child').text());
	                    let metaLikeCount = parseInt($('.meta-right span i').next().text());
	                    
	                    if (isLiked) {
	                        $('#like_button').removeClass('liked');
	                        $('#like_button span:last-child').text(likeCount - 1);
	                        $('.meta-right span i').next().text(metaLikeCount - 1);
	                    } else {
	                        $('#like_button').addClass('liked');
	                        $('#like_button span:last-child').text(likeCount + 1);
	                        $('.meta-right span i').next().text(metaLikeCount + 1);
	                    }
	                }
	            });
        });

        // 초기 로드 시 좋아요 상태 확인
        if (sessionStorage.getItem('likedPosts')) {
            let likedPosts = JSON.parse(sessionStorage.getItem('likedPosts'));
            if (likedPosts.includes(${dto.com_num})) {
                $('#like_button').addClass('liked');
            }
        }

        // 댓글 등록 버튼 클릭
        $("#btnCommentAdd").click(function() {
            var content = $("#content").val();
            var cc_num = ${dto.com_num}; // 게시글 번호를 cc_num으로 매핑

            if (content.trim().length == 0) {
                alert("댓글 내용을 입력해주세요.");
                return;
            }
            $.ajax({
                type: "post",
                dataType: "html",
                url: "${pageContext.request.contextPath}/community/ainsert",
                data: {
                    cc_num: cc_num,
                    cc_content: content
                },
                success: function() {
                    listComments();
                    $("#content").val("");
                }
            });
        });

        

        // 게시글 삭제 버튼 클릭
        $("#btnDelete").click(function() {
            $("#confirmPostDeleteModal").modal("show");

            $("#btnConfirmPostDelete").off("click").on("click", function() {
                location.href = 'delete?com_num=${dto.com_num}';
            });
        });

        // 댓글 수정 모달 표시
        $(document).on("click", "i.ccMod", function() {
            cc_idx = $(this).attr("cc_idx");
            $.ajax({
                type: "get",
                dataType: "json",
                url: "${pageContext.request.contextPath}/community/adata",
                data: { cc_idx: cc_idx },
                success: function(data) {
                    $("#ucontent").val(data.cc_content);
                    $("#myUpdateContentModal").modal("show");
                }
            });
        });

        //댓글 수정
        $("#btnUpdateOk").click(function() {
            var content = $("#ucontent").val();
            $.ajax({
                type: "post",
                dataType: "html",
                url: "${pageContext.request.contextPath}/community/aupdate",
                data: {
                    cc_idx: cc_idx,
                    cc_content: content
                },
                success: function() {
                    //alert("수정 완료!");
                    listComments();
                }
            });
        });
        
     	//댓글 삭제
        $(document).on("click", "i.ccDel", function() {
            var cc_idx = $(this).attr("cc_idx");
            $("#confirmDeleteModal").modal("show");

            $("#btnConfirmDelete").off("click").on("click", function() {
                $.ajax({
                    type: "get",
                    dataType: "html",
                    url: "${pageContext.request.contextPath}/community/adelete",
                    data: { cc_idx: cc_idx, cc_num: ${dto.com_num} },
                    success: function() {
                        //alert("삭제 완료!");
                        listComments();
                        $("#confirmDeleteModal").modal("hide");
                    }
                });
            });
        });

        //초기 로드 시 댓글 목록 불러오기
        listComments();
    });
    
	//댓글 목록
    function listComments() {
        var cc_num = ${dto.com_num};
        $.ajax({
            type: "get",
            dataType: "json",
            url: "${pageContext.request.contextPath}/community/alist",
            data: { cc_num: cc_num },
            success: function(data) {
                var s = "";
                $.each(data, function(i, dto) {
                    s += "<div class='comment'><b>" + dto.cc_nickname + "</b>: " + dto.cc_content;
                    s += "&nbsp;&nbsp;<span class='day'>" + dto.cc_writetime + "</span>&nbsp;";
                    if ("${sessionScope.loginok}" == 'yes' && "${sessionScope.myid}" == dto.cc_user_id) {
                        s += "&nbsp;<i class='bi bi-pencil-square ccMod' cc_idx='" + dto.cc_idx + "'></i>&nbsp;";
                        s += "<i class='bi bi-trash-fill ccDel' cc_idx='" + dto.cc_idx + "'></i>";
                    }
                    s += "</div>";
                });
                $("div.comment-list").html(s);
            }
        });
    }
</script>

</head>
<body>

<div class="totalpostgo">
    <a href="${pageContext.request.contextPath}/community/hometotalpost"><span><i class="bi bi-chevron-left"></i>전체 게시글</span></a>
</div>
<div class="post_view_wrap" style="margin-top: 15px;">
    <!-- 게시글 상단 -->
    <div class="title" style="margin-top: 15px;">
        <div class="title_left">
            <h5><b>${dto.com_title}</b></h5>
        </div>
        <!-- 글 작성한 본인만 수정, 삭제 가능하도록 -->
        <div class="title_right">
		    <c:if test="${sessionScope.loginok == 'yes' && sessionScope.myid == dto.com_user_id}">
		        <button type="button" class="btn btn-outline-primary btn-sm"
		            onclick="location.href='homeupdateform?com_num=${dto.com_num}&com_photo=${dto.com_photo}'">수정</button>
		        <button type="button" class="btn btn-outline-secondary btn-sm" id="btnDelete">삭제</button>
		    </c:if>
		</div>
    </div>
    <!-- 게시글 메타 정보 -->
    <div class="meta" style="margin-top: 30px;">
        <div class="meta-left">
            <img class="memberimage" src="/communityimage/no_image.png" alt="User Image">
            <div class="details">
                <span>${userNickname }</span>
                <span><fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd HH:mm" /></span>
            </div>
        </div>
        <div class="meta-right">
            <input type="hidden" id="readcount" name="com_readcount" value="">
            <span><i class="bi bi-hand-thumbs-up"></i>&nbsp;<span>${dto.com_likes}</span></span>&nbsp;&nbsp;&nbsp;
            <span><i class="bi bi-chat-left"></i>&nbsp;${dto.com_commentcount}</span>
        </div>
    </div>
    <!-- 게시글 내용 -->
    <div class="content">
        <%-- <p>${dto.com_content}</p> --%>
        <c:out value="${dto.com_content}" escapeXml="false"/>
    </div>
    <!-- 게시글 이미지 -->
    <c:if test="${not empty dto.com_photo && dto.com_photo != 'no'}">
        <div class="images">
            <img src="${pageContext.request.contextPath}/communityimage/${dto.com_photo}" class="img-fluid">
        </div>
    </c:if>
    <c:if test="${sessionScope.loginok == 'yes'}">
    <div class="post_emoticom" style="margin-bottom: 20px;">
        <c:choose>
            <c:when test="${sessionScope.likedPosts != null && sessionScope.likedPosts.contains(dto.com_num)}">
                <!-- 이미 좋아요를 누른 경우 -->
                <button id="like_button" class="liked">
                    <img src="/communityimage/likeimg4.png" alt="좋아요">
                    <span>이 글이 좋아요</span>
                    <span style="margin-top: 5px;">${dto.com_likes}</span>
                </button>
            </c:when>
            <c:otherwise>
                <!-- 아직 좋아요를 누르지 않은 경우 -->
                <button id="like_button">
                    <img src="/communityimage/likeimg4.png" alt="좋아요">
                    <span>이 글이 좋아요</span>
                    <span style="margin-top: 5px;">${dto.com_likes}</span>
                </button>
            </c:otherwise>
        </c:choose>
    </div>
	</c:if>

</div>

<!-- comment board -->
<div class="comment-section" style="width: 900px;">
    <h5>댓글</h5>
    <div class="input-group mb-3">
        <c:choose>
        <c:when test="${sessionScope.loginok == 'yes'}">
            <input type="text" class="form-control" placeholder="댓글을 입력하세요" id="content" aria-describedby="button-addon2">
            <button class="btn btn-outline-primary" type="button" id="btnCommentAdd">등록</button>
        </c:when>
        <c:otherwise>
            <input type="text" class="form-control" placeholder="회원만 작성 가능합니다." id="content" aria-describedby="button-addon2" disabled>
            <button class="btn btn-outline-primary" type="button" id="btnCommentAdd" disabled>등록</button>
        </c:otherwise>
    </c:choose>
    </div>
    <!-- 댓글 리스트 -->
    <div class="comment-list"></div>
</div>

<!-- The 댓글 수정 Modal -->
<div class="modal" id="myUpdateContentModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">댓글수정</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <input type="text" id="ucontent" class="form-control">
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-bs-dismiss="modal" id="btnUpdateOk">수정</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<!-- The 게시글 삭제 확인 Modal -->
<div class="modal" id="confirmPostDeleteModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">게시글 삭제</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
        정말 삭제하시겠습니까?
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" id="btnConfirmPostDelete">네</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
      </div>
    </div>
  </div>
</div>

<!-- The 댓글 삭제 확인 Modal -->
<div class="modal" id="confirmDeleteModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">댓글 삭제</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
        정말 삭제하시겠습니까?
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" id="btnConfirmDelete">네</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
      </div>
    </div>
  </div>
</div>

<div class="homelistgo" style="margin-bottom: 30px;">
    <a href="${pageContext.request.contextPath}/community/homelist"><span>목록<i class="bi bi-chevron-right"></i></span></a>
</div>
</body>
</html>