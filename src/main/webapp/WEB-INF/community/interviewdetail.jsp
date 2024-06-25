<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Interview Detail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
    .custom-img {
        width: 190px;
        height: 190px;
        object-fit: cover;
        border: none; /* 테두리 제거 */
    }
</style>
<script>
	function deleteInterview(comNum) {
	    if (confirm("정말 삭제하시겠습니까?")) {
	        location.href = "${pageContext.request.contextPath}/community/interviewdelete?com_num=" + comNum;
	    }
	}
</script>

</head>
<body>
<div class="container" style="margin-top: 100px;">
    <div class="row">
        <!-- 왼쪽 이미지 섹션 -->
        <div class="col-md-4">
            <c:if test="${dto.com_main_photo ne 'no'}">
                <img src="<c:url value='/communityimage/${dto.com_main_photo}'/>" alt="Interview Image" class="custom-img">
            </c:if>
            <c:if test="${dto.com_main_photo eq 'no'}">
                <p>이미지가 없습니다.</p>
            </c:if>
        </div>
        <!-- 오른쪽 내용 섹션 -->
        <div class="col-md-8">
            <div class="detail">
                <p>${dto.com_companyname}</p>
            </div>
            <div class="detail">
                <h4><b>${dto.com_title}</b></h4>
            </div>
            <div class="detail" style="margin-top: 50px;">
                <p>${dto.com_name}</p>
            </div>
            <div class="detail" style="display: flex; align-items: center;">
                <span style="margin-right: 10px;"><fmt:formatDate value="${dto.com_writetime}" pattern="yyyy-MM-dd"/></span>
                <span><i class="bi bi-eye"></i>&nbsp;${dto.com_readcount }</span>
            </div>
            <div class="detail" style="margin-top: 20px;">
                <p>${dto.com_content}</p>
            </div>
        </div>
    </div>
    <div class="btns" style="margin-bottom: 30px; margin-top: 30px;">
        <!-- 로그인한 회원만 글쓰기 가능 -->
        <c:if test="${sessionScope.loginok != null}">
            <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/community/interviewform'">글쓰기</button>
        </c:if>
        <!-- 해당 글을 작성한 회원만 수정, 삭제 가능 -->
        <c:if test="${sessionScope.myid eq dto.com_user_id}">
            <button type="button" class="btn btn-secondary" onclick="location.href='interviewupdateform?com_num=${dto.com_num}&com_photo=${dto.com_photo}'">수정</button>
            <button type="button" class="btn btn-secondary" onclick="deleteInterview(${dto.com_num})">삭제</button>
        </c:if>
        <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/community/interviewlist'">목록</button>
    </div>
</div>
</body>
</html>
