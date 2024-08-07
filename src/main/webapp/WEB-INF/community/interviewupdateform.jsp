<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>인터뷰 수정</title>
<style>
    body {
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f8f9fa;
        font-family: 'IBM Plex Sans KR', sans-serif;
    }
    .interdiv {
	    justify-content: center;
	    align-items: center;
	    margin: 50px auto; /* 수평 마진을 auto로 설정하여 중앙 정렬합니다. */
	    max-width: 700px;
	}
    .form-container {
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        max-width: 700px;
        width: 100%;
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
        background-color: #0D6CF9;
        color: #fff;
        font-size: 16px;
    }

    @media (max-width: 768px) {
        .form-container {
            padding: 20px;
        }
    }
    .image-preview {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        justify-content: center; /* 이미지 가운데 정렬 */
    }
    .image-preview img {
        max-width: 100px;
        max-height: 100px;
        cursor: pointer;
        border: 2px solid transparent;
    }
    .image-preview img.selected {
        border-color: #0D6CF9;
    }
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<div class="interdiv">
<div class="form-container ">
<form action="/community/interviewupdate" method="post" enctype="multipart/form-data">
  <input type="hidden" name="com_num" value="${dto.com_num}">
  <input type="hidden" name="existingPhotos" value="${dto.com_photo}">
  <input type="hidden" name="existingMainPhoto" value="${dto.com_main_photo}">
  <input type="hidden" name="com_user_id" value="${dto.com_user_id}">
  <input type="hidden" name="com_nickname" value="${sessionScope.userNickname}">
  <input type="hidden" name="com_post_type" value="interview">
  <table class="table table-bordered">
     <tr>
       <th class="table-light">직무</th>
         <td>
           <select name="com_category">
               <option ${dto.com_category == '서버/백엔드 개발자' ? 'selected' : ''}>서버/백엔드 개발자</option>
               <option ${dto.com_category == '프론트엔드 개발자' ? 'selected' : ''}>프론트엔드 개발자</option>
               <option ${dto.com_category == '웹 풀스택 개발자' ? 'selected' : ''}>웹 풀스택 개발자</option>
               <option ${dto.com_category == '안드로이드 개발자' ? 'selected' : ''}>안드로이드 개발자</option>
               <option ${dto.com_category == 'IOS 개발자' ? 'selected' : ''}>IOS 개발자</option>
               <option ${dto.com_category == '크로스플랫폼 앱 개발자' ? 'selected' : ''}>크로스플랫폼 앱 개발자</option>
               <option ${dto.com_category == '게임 클라이언트 개발자' ? 'selected' : ''}>게임 클라이언트 개발자</option>
               <option ${dto.com_category == '게임 서버 개발자' ? 'selected' : ''}>게임 서버 개발자</option>
               <option ${dto.com_category == 'DBA' ? 'selected' : ''}>DBA</option>
               <option ${dto.com_category == '빅데이터 엔지니어' ? 'selected' : ''}>빅데이터 엔지니어</option>
               <option ${dto.com_category == '인공지능/머신러닝' ? 'selected' : ''}>인공지능/머신러닝</option>
               <option ${dto.com_category == 'devops/시스템 엔지니어' ? 'selected' : ''}>devops/시스템 엔지니어</option>
               <option ${dto.com_category == '정보보안 담당자' ? 'selected' : ''}>정보보안 담당자</option>
               <option ${dto.com_category == 'QA 엔지니어' ? 'selected' : ''}>QA 엔지니어</option>
               <option ${dto.com_category == '개발 PM' ? 'selected' : ''}>개발 PM</option>
               <option ${dto.com_category == 'HW/임베디드' ? 'selected' : ''}>HW/임베디드</option>
               <option ${dto.com_category == 'SW/솔루션' ? 'selected' : ''}>SW/솔루션</option>
               <option ${dto.com_category == '웹퍼블리셔' ? 'selected' : ''}>웹퍼블리셔</option>
               <option ${dto.com_category == 'VR/AR/3D' ? 'selected' : ''}>VR/AR/3D</option>
               <option ${dto.com_category == '블록체인' ? 'selected' : ''}>블록체인</option>
               <option ${dto.com_category == '기술지원' ? 'selected' : ''}>기술지원</option>
           </select>
         </td>
     </tr>
     <tr>
       <th class="table-light">회사명</th>
         <td>
         	<input type="text" name="com_companyname" class="form-control" value="${dto.com_companyname}">
         </td>
     </tr>
     <tr>
       <th class="table-light">이름</th>
         <td>
           <input type="text" name="com_name" class="form-control" value="${dto.com_name}" readonly="readonly">
         </td>
     </tr>
     <tr>
       <th class="table-light">제목</th>
         <td>
           <input type="text" name="com_title" class="form-control" value="${dto.com_title}" required="required">
         </td>
     </tr>
     <tr>
       <th class="table-light">내용</th>
         <td>
           <textarea name="com_content" id="content" rows="10" class="form-control" required="required">${dto.com_content}</textarea>
         </td>
     </tr>
     <tr>
       <th class="table-light">이미지</th>
         <td>
           <input type="file" id="upload" name="upload" class="form-control" multiple="multiple">
           <div class="image-preview" id="image-preview">
                <c:forEach items="${fn:split(dto.com_photo, ',')}" var="photo">
                    <img src="/communityimage/${photo}" class="${photo eq dto.com_main_photo ? 'selected' : ''}" onclick="selectMainPhoto('${photo}')">
                </c:forEach>
           </div>
         </td>
     </tr>
     <tr>
	   <td colspan="2" class="text-center">
	     <button type="submit" class="btn btn-outline-primary btn-sm" onclick="submitContents(this);" style="display: inline-block; width: auto;">저장</button>
	     <button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='/community/interviewlist'" style="display: inline-block; width: auto;">목록</button>
	   </td>
	</tr>
  </table>
</form>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    //SmartEditor2 초기화
    var oEditors = [];
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "content",
        sSkinURI: "${pageContext.request.contextPath}/resources/smarteditor2/SmartEditor2Skin.html",
        fCreator: "createSEditor2"
    });

    //폼 제출 시 내용 업데이트
    window.submitContents = function(elClickedObj) {
        oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터 내용 업데이트
        elClickedObj.form.submit();
    }

    //이미지 선택 시 메인 사진 설정
    window.selectMainPhoto = function(photo) {
        $('#image-preview img').removeClass('selected'); // 기존 선택된 이미지 해제
        $('img[src="/communityimage/' + photo + '"]').addClass('selected'); // 선택된 이미지 표시
        $('#com_main_photo').val(photo); // 메인 사진 값 설정
    }

    //파일 업로드 시 이미지 미리보기 생성 및 클릭 이벤트 추가
    $('#upload').change(function(event) {
        var files = event.target.files;
        var previewContainer = $('#image-preview');
        previewContainer.empty(); // 기존 미리보기 초기화

        $.each(files, function(i, file) {
            var reader = new FileReader();
            reader.onload = function(e) {
                var img = $('<img>').attr('src', e.target.result).click(function() {
                    selectMainPhoto(file.name);
                });
                previewContainer.append(img); // 미리보기 컨테이너에 이미지 추가
                oEditors.getById["content"].exec("PASTE_HTML", ["<img src='" + e.target.result + "' style='display: block; margin: 0 auto;'/>"]); // 중앙 정렬 스타일 추가
            }
            reader.readAsDataURL(file);
        });
    });
});
</script>

</body>
</html>