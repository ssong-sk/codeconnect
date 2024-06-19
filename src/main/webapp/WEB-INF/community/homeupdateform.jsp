<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>게시글 수정</title>
<style>
    body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f8f9fa;
        font-family: 'IBM Plex Sans KR', sans-serif;
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
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        max-width: 800px;
        width: 100%;
        margin: 0 auto;
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
    .image-preview {
        margin-top: 10px;
        max-width: 100%;
        height: auto;
    }
</style>
<script type="text/javascript">
    $(document).ready(function(){
        $('#upload').change(function(){
            var fileName = $(this).val().split('\\').pop();
            if (fileName) {
                $('#file-status').text(fileName);
            } else {
                $('#file-status').text('이미지 첨부 없음');
            }
        });

        //이미지 미리보기
        $('#upload').change(function(){
            var files = this.files;
            var imageContainer = $('#image-container');
            imageContainer.empty();
            
            for (var i = 0; i < files.length; i++) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var image = $('<img>').attr('src', e.target.result).addClass('image-preview');
                    imageContainer.append(image);
                }
                reader.readAsDataURL(files[i]);
            }
        });

        //페이지가 로드될 때 기존 이미지 파일명을 표시하도록 jQuery 사용
        //파일을 선택할 때마다 선택된 파일명을 표시하도록 함
        var existingPhoto = '${dto.com_photo}';
        if (existingPhoto && existingPhoto !== 'no') {
            $('#file-status').text(existingPhoto.split(',').map(function(name) {
                return name.substring(name.indexOf('_') + 1);
            }).join(', '));
        }
    });

    function scrollToTop() {
        window.scrollTo(0, 0);
    }
    
    function showSuccessModal() {
        $('#successModal').modal('show');
    }

    function submitForm(event) {
        event.preventDefault();
        var form = $(event.target);
        var formData = new FormData(form[0]);

        $.ajax({
            type: 'POST',
            url: form.attr('action'),
            data: formData,
            processData: false,
            contentType: false,
            success: function() {
                showSuccessModal();
            }
        });
    }
</script>
</head>
<body>
<a href="${pageContext.request.contextPath}/community/homelist" onclick="scrollToTop()" class="back_button"><i class="bi bi-chevron-left"></i>&nbsp;이전페이지</a>
<div class="form-container">
    <h2>게시글 수정</h2>
    <form action="${pageContext.request.contextPath}/community/homeupdate" method="post" enctype="multipart/form-data" onsubmit="submitForm(event)">
        <input type="hidden" id="num" name="com_num" value="${dto.com_num}">
        <input type="hidden" id="id" name="com_user_id" value="${dto.com_user_id}">
        <input type="hidden" id="name" name="com_name" value="${dto.com_name}">
        <input type="hidden" id="existingPhoto" name="existingPhoto" value="${dto.com_photo}">
        <div>
            <label for="nickname">닉네임</label>
            <input type="text" id="nickname" name="com_nickname" value="${dto.com_nickname}" readonly>
        </div>
        <div>
            <label for="category">카테고리</label>
            <input type="text" id="category" name="com_category" value="${dto.com_category}" readonly>
        </div>
        <div>
            <label for="title">제목</label>
            <input type="text" id="title" name="com_title" required placeholder="제목을 입력해주세요" value="${dto.com_title}">
        </div>
        <div>
            <label for="content">내용</label>
            <textarea id="content" name="com_content" style="height: 360px; border: 1px solid #ced4da; padding: 10px; margin-top: 10px; overflow-y: auto;" placeholder="내용을 입력해주세요">${dto.com_content}</textarea>
        </div>
        <div style="margin-top: 10px;">
            <label for="upload" class="custom-file-upload"><i class="bi bi-images"></i> 이미지 첨부</label>
            <input type="file" id="upload" name="upload" multiple>&nbsp;
            <span id="file-status" style="font-size: 14px;">
                <c:choose>
                    <c:when test="${not empty dto.com_photo && dto.com_photo != 'no'}">
                        ${fn:substringAfter(dto.com_photo, '_')}
                    </c:when>
                    <c:otherwise>
                        이미지 첨부 없음
                    </c:otherwise>
                </c:choose>
            </span>
        </div>
        <div id="image-container" class="image-container" style="margin-top: 10px;">
            <c:if test="${not empty dto.com_photo && dto.com_photo != 'no'}">
                <img src="${pageContext.request.contextPath}/communityimage/${dto.com_photo}" class="image-preview">
            </c:if>
        </div>
        <div style="margin-top: 25px;">
            <button type="submit" class="btn btn-primary">게시글 수정</button>
        </div>
    </form>
  
</div>

<!-- Success Modal -->
<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="successModalLabel">게시글 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        수정이 완료되었습니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/community/homedetail?com_num=${dto.com_num}'">확인</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
