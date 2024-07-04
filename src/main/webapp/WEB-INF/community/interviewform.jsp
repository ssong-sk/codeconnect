<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>인터뷰 작성</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f8f9fa;
        font-family: 'IBM Plex Sans KR', sans-serif;
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
        background-color: #28a745;
        color: #fff;
        font-size: 16px;
    }
    .form-container button:hover {
        background-color: #218838;
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
    }
    .image-preview img {
        max-width: 100px;
        max-height: 100px;
        cursor: pointer;
        border: 2px solid transparent;
    }
    .image-preview img.selected {
        border-color: #28a745;
    }
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<div style="margin: 50px 100px; width: 700px;">
<form action="/community/interviewinsert" method="post" enctype="multipart/form-data">
  <input type="hidden" name="com_user_id" value="${sessionScope.myid}">
  <input type="hidden" name="com_nickname" value="${sessionScope.userNickname}">
  <input type="hidden" name="com_main_photo" id="com_main_photo">
	<table class="table table-bordered">
     <tr>
       <th class="table-light">직무</th>
         <td>
           <select name="com_category">
               <option>서버/백엔드 개발자</option>
               <option>프론트엔드 개발자</option>
               <option>웹 풀스택 개발자</option>
               <option>안드로이드 개발자</option>
               <option>IOS 개발자</option>
               <option>크로스플랫폼 앱 개발자</option>
               <option>게임 클라이언트 개발자</option>
               <option>게임 서버 개발자</option>
               <option>DBA</option>
               <option>빅데이터 엔지니어</option>
               <option>인공지능/머신러닝</option>
               <option>devops/시스템 엔지니어</option>
               <option>정보보안 담당자</option>
               <option>QA 엔지니어</option>
               <option>개발 PM</option>
               <option>HW/임베디드</option>
               <option>SW/솔루션</option>
               <option>웹퍼블리셔</option>
               <option>VR/AR/3D</option>
               <option>블록체인</option>
               <option>기술지원</option>
           </select>
         </td>
     </tr>
     <tr>
       <th class="table-light">회사명</th>
         <td>
         	<input type="text" name="com_companyname" class="form-control">
         </td>
     </tr>
     <tr>
       <th class="table-light">이름</th>
         <td>
           <input type="text" name="com_name" class="form-control" value="${username}" readonly="readonly">
         </td>
     </tr>
     <tr>
       <th class="table-light">제목</th>
         <td>
           <input type="text" name="com_title" class="form-control" required="required">
         </td>
     </tr>
     <tr>
       <th class="table-light">내용</th>
         <td>
           <textarea name="com_content" id="content" rows="10" class="form-control" required="required"></textarea>
         </td>
     </tr>
     <tr>
       <th class="table-light">이미지</th>
         <td>
           <input type="file" id="upload" name="upload" class="form-control" multiple="multiple">
           <div class="image-preview" id="image-preview"></div>
         </td>
     </tr>
     <tr>
       <td colspan="2" align="center">
         <button type="submit" class="btn btn-success" onclick="submitContents(this);">저장</button>
         <button type="button" class="btn btn-success" onclick="location.href='/community/interviewlist'">목록</button>
       </td>
     </tr>
  </table>
</form>
</div>

<script type="text/javascript">
var oEditors = [];

nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "content",
    sSkinURI: "${pageContext.request.contextPath}/resources/smarteditor2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
}); 

function submitContents(elClickedObj) {
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
    try {
        elClickedObj.form.submit();
    } catch(e) {}
}

$(document).ready(function() {
    $('#upload').change(function(event) {
        var files = event.target.files;
        var previewContainer = $('#image-preview');
        previewContainer.empty();
        
        for (var i = 0; i < files.length; i++) {
            var reader = new FileReader();
            reader.onload = function(e) {
                var img = $('<img>').attr('src', e.target.result).click(function() {
                    $('#image-preview img').removeClass('selected');
                    $(this).addClass('selected');
                    $('#com_main_photo').val($(this).attr('src'));
                });
                if (i == 0) {
                    img.addClass('selected');
                    $('#com_main_photo').val(e.target.result);
                }
                previewContainer.append(img);
                oEditors.getById["content"].exec("PASTE_HTML", [ "<img src='" + e.target.result + "'/>" ]);
            }
            reader.readAsDataURL(files[i]);
        }
    });
});
</script>
</body>
</html>