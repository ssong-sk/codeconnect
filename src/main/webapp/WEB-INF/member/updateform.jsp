<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style type="text/css">
.modal {
	--bs-modal-zindex: 1055;
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 500px;
}

.modal-header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: var(--bs-modal-header-padding);
	border-bottom: var(--bs-modal-header-border-width) solid
		var(--bs-modal-header-border-color);
}

.modal-body {
	padding: 0 !important;
	overflow-y: auto; /* 세로 스크롤 추가 */
	max-height: 300px; /* 최대 높이 설정 (필요에 따라 조절 가능) */
}

.modal-actions {
	border-top: var(--bs-modal-header-border-width) solid
		var(--bs-modal-header-border-color);
	border-radius: inherit;
	background-color: var(--button-color);
	-webkit-transition: opacity .2s ease;
	transition: opacity .2s ease;
	will-change: opacity;
	text-align: center;
}

.modal-actions:hover {
	background-color: var(--button-color-hover); /* hover 시 배경색 변경 */
}

.job-list label {
	display: flex; /* 라벨 내부 요소들을 수평으로 정렬하기 위해 */
	align-items: center; /* 세로 방향에서 중앙 정렬 */
	padding: 12px 20px; /* 원하는 패딩값으로 조정 */
}

.job-list label:hover {
	text-decoration: none;
	background-color: #f7f7f8;
}

.job-list label input[type="checkbox"] {
	float: right;
	margin-left: auto; /* 체크박스를 라벨의 오른쪽으로 이동 */
}

.job-item {
	display: block;
	width: 100%;
	padding: 10px;
	margin-bottom: 5px;
	background-color: #f9f9f9;
	border: 1px solid #ccc;
	cursor: pointer;
}

.modal-body .job-list label {
	display: block;
	margin-bottom: 5px;
}

.modal-body .job-list label input[type="radio"] {
	float: right; /* Align radio button to the right */
	margin-right: 5px;
}

.job-item:hover {
	background-color: #e9e9e9;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.save-button {
	background: #06f;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
}

.save-button:hover {
	background: #45a049;
}

button {
	padding: 10px 20px;
	cursor: pointer;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div style="padding-bottom: 50px;">
		<div
			class="Grid_Grid__item__4GoIZ Grid_Grid__justify_center__zw3BU Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__grid__xs__12__wtorY Grid_Grid__grid__md__6__d5R_j">
			<div
				class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 ProfileEdit_ProfileEdit__root__EurEF">
				<section
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH ProfileEdit_ProfileEdit__breadcrumb__wFoFY">
					<ol class="Breadcrumb_Breadcrumb__root__mReih">
						<li><a href="/member/mypage?page=profile"><span
								class="Typography_Typography__root__RdAI1 Typography_Typography__label1-reading__WLIqp Typography_Typography__weightMedium__GXnOM Breadcrumb_Breadcrumb__item__jn4fr">프로필</span></a></li>
						<li class="Breadcrumb_Breadcrumb__separator__ee7Zi"><span
							class="SvgIcon_SvgIcon__root__OHiSO"><svg
									class="SvgIcon_SvgIcon__root__svg__ohdSc" viewBox="0 0 24 24">
								<path
										d="M7.86346 3.36272C7.51199 3.7142 7.51199 4.28405 7.86346 4.63552L15.2271 11.9991L7.86346 19.3627C7.51199 19.7142 7.51199 20.284 7.86346 20.6355C8.21493 20.987 8.78478 20.987 9.13625 20.6355L17.1362 12.6355C17.4877 12.284 17.4877 11.7142 17.1362 11.3627L9.13625 3.36272C8.78478 3.01125 8.21493 3.01125 7.86346 3.36272Z"></path></svg></span></li>
						<li><span
							class="Typography_Typography__root__RdAI1 Typography_Typography__label1-reading__WLIqp Typography_Typography__weightBold__KkJEY Breadcrumb_Breadcrumb__endItem__jAYc_">프로필
								편집</span></li>
					</ol>
				</section>

				<section
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH ProfileEdit_ProfileEdit__avatar__ykcjx">
					<div
						class="Grid_Grid__container__43uvK Grid_Grid__direction_column__z_Dv0 Grid_Grid__align-items_flex-start__nEOiH">

						<div
							class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH Grid_Grid__align-self_stretch__Vyi4Z ProfileEditHeader_ProfileEditHeader__container__hWp_0">
							<span
								class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListItem_ListItem__label__0m2Cd">이름</span>
							<button
								class="ListItem_ListItem__root__4HTKO ListItem_ListItem__divider__KWrpp ListItem_ListItem__button__cVygs"
								data-attribute-id="profileEdit__nickname__click">
								<div class="ListItemText_ListItemText__root__j76to">
									<p
										class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ProfileEditHeader_ProfileEditHeader__name__p40_q">${r_name}</p>
								</div>
								<div class="ListItemIcon_ListItemIcon__root__XbBcy">
									<span class="SvgIcon_SvgIcon__root__OHiSO"></span>
								</div>
							</button>
						</div>
					</div>
				</section>


				<section
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH">
					<span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListItem_ListItem__label__0m2Cd">한줄
						소개글</span>
					<button id="openDesModal"
						class="ListItem_ListItem__root__4HTKO ListItem_ListItem__divider__KWrpp ListItem_ListItem__button__cVygs ProfileEditJobCategory_ProfileEditJobCategory__listItem__V9f5Q"
						data-attribute-id="profileEdit__jobCategory__click">
						<div class="ListItemText_ListItemText__root__j76to">
							<p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ProfileEditJobCategory_ProfileEditJobCategory__title__hNeVc">${r_sogae }</p>
						</div>
					</button>
				</section>



				<section
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH">
					<span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListItem_ListItem__label__0m2Cd">직무</span>
					<button id="openModalBtn"
						class="ListItem_ListItem__root__4HTKO ListItem_ListItem__divider__KWrpp ListItem_ListItem__button__cVygs ProfileEditJobCategory_ProfileEditJobCategory__listItem__V9f5Q"
						data-attribute-id="profileEdit__jobRole__click">
						<div class="ListItemText_ListItemText__root__j76to">
							<p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ProfileEditJobCategory_ProfileEditJobCategory__title__hNeVc">
								${r_job}</p>
						</div>
						<div class="ListItemIcon_ListItemIcon__root__XbBcy">
							<span class="SvgIcon_SvgIcon__root__OHiSO"> </span>
						</div>
					</button>
				</section>
				<section
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH">
					<span
						class="Typography_Typography__root__RdAI1 Typography_Typography__label2__svmAA Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ListItem_ListItem__label__0m2Cd">총
						경력</span>
					<button id="opencareerModal"
						class="ListItem_ListItem__root__4HTKO ListItem_ListItem__divider__KWrpp ListItem_ListItem__button__cVygs"
						data-attribute-id="profileEdit__annual__click">
						<div class="ListItemText_ListItemText__root__j76to">
							<p
								class="Typography_Typography__root__RdAI1 Typography_Typography__body1__q3AOP Typography_Typography__weightMedium__GXnOM Typography_Typography__displayBlock__A3AK8 ProfileEditAnnual_ProfileEditAnnual__title__TBaFG">${r_exp }</p>
						</div>
						<div class="ListItemIcon_ListItemIcon__root__XbBcy">
							<span class="SvgIcon_SvgIcon__root__OHiSO"></span>
						</div>
					</button>
				</section>
				<section
					class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH">

				</section>
			</div>
		</div>
	</div>


	<div id="jobCategoryModal" class="modal">
		<div class="modal-content"
			style="padding: 0; width: 342px; height: 450px;">
			<input type="hidden" name="r_num" id="r_num" value="${r_num }">
			<div class="modal-header">
				<h6>직무 선택</h6>
				<button class="close">&times;</button>
			</div>
			<div class="modal-body">
				<div class="job-list">
					<label>웹 개발자 <input type="checkbox" name="job"
						value="웹 개발자"></label> <label>서버 개발자 <input
						type="checkbox" name="job" value="서버 개발자">
					</label> <label>프론트엔드 개발자 <input type="checkbox" name="job"
						value="프론트엔드 개발자"></label> <label>백엔드 개발자 <input
						type="checkbox" name="job" value="백엔드 개발자"></label> <label>시스템
						개발자 <input type="checkbox" name="job" value="시스템 개발자 ">
					</label> <label>데이터 엔지니어 <input type="checkbox" name="job"
						value="데이터 엔지니어"></label> <label>머신러닝 엔지니어 <input
						type="checkbox" name="job" value="머신러닝 엔지니어"></label> <label>데브옵스
						엔지니어 <input type="checkbox" name="job" value="데브옵스 엔지니어">
					</label> <label>풀스택 개발자 <input type="checkbox" name="job"
						value="풀스택 개발자"></label> <label>시스템 아키텍트 <input
						type="checkbox" name="job" value="시스템 아키텍트"></label> <label>네트워크
						엔지니어 <input type="checkbox" name="job" value="네트워크 엔지니어">
					</label>
				</div>
			</div>
			<div class="modal-actions">
				<button id="saveJobBtn">저장</button>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		// Modal 열기
		document
				.getElementById('openModalBtn')
				.addEventListener(
						'click',
						function() {
							document.getElementById('jobCategoryModal').style.display = 'block';
						});

		// Modal 닫기
		document
				.querySelector('#jobCategoryModal .close')
				.addEventListener(
						'click',
						function() {
							document.getElementById('jobCategoryModal').style.display = 'none';
						});

		$("#saveJobBtn").click(function() {

			var selectedJobs = [];
			$("input[name='job']:checked").each(function() {
				selectedJobs.push($(this).val());
			});
			var r_num = $('#r_num').val();

			var data = "r_num=" + r_num + "&r_job=" + selectedJobs;

			$.ajax({
				url : '/updateJob',
				type : 'POST',
				dataType : 'json',
				data : data,
				success : function(res) {
					location.reload();

				},
				error : function(xhr, status, error) {
					console.error('경력 업데이트 중 오류가 발생했습니다:', error);
					history.back();
				}
			});

		});
	</script>


	<div id="careerModal" class="modal">
		<div class="modal-content"
			style="padding: 0; width: 342px; height: 450px;">
			<input type="hidden" name="r_num" id="r_num" value="${r_num }">
			<div class="modal-header">
				<h6>경력 선택</h6>
				<button class="close">&times;</button>
			</div>
			<div class="modal-body">
				<div class="job-list">
					<label> <input type="radio" name="career" value="신입">
						신입
					</label> <label> <input type="radio" name="career" value="1년">
						1년
					</label> <label> <input type="radio" name="career" value="2년">
						2년
					</label> <label> <input type="radio" name="career" value="3년">
						3년
					</label> <label> <input type="radio" name="career" value="4년">
						4년
					</label> <label> <input type="radio" name="career" value="5년">
						5년
					</label> <label> <input type="radio" name="career" value="6년">
						6년
					</label> <label> <input type="radio" name="career" value="7년">
						7년
					</label> <label> <input type="radio" name="career" value="8년">
						8년
					</label> <label> <input type="radio" name="career" value="9년">
						9년
					</label> <label> <input type="radio" name="career" value="10년">
						10년
					</label> <label> <input type="radio" name="career" value="11년">
						11년
					</label> <label> <input type="radio" name="career" value="12년">
						12년
					</label> <label> <input type="radio" name="career" value="13년">
						13년
					</label> <label> <input type="radio" name="career" value="14년">
						14년
					</label> <label> <input type="radio" name="career" value="15년">
						15년
					</label>
				</div>
			</div>
			<div class="modal-actions">
				<button id="saveCareerBtn">저장</button>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		// Modal 열기
		document
				.getElementById('opencareerModal')
				.addEventListener(
						'click',
						function() {
							document.getElementById('careerModal').style.display = 'block';
						});

		// Modal 닫기
		document
				.querySelector('#careerModal .close')
				.addEventListener(
						'click',
						function() {
							document.getElementById('careerModal').style.display = 'none';
						});

		$("#saveCareerBtn").click(function() {

			var Career = $("input[name='career']:checked").val();
			var r_num = document.getElementById('r_num').value;

			var data = "r_num=" + r_num + "&r_exp=" + Career;

			$.ajax({
				url : '/updateExp',
				type : 'POST',
				dataType : 'json',
				data : data,
				success : function(res) {
					alert("수정완료");
					location.reload();

				},
				error : function(xhr, status, error) {
					console.error('경력 업데이트 중 오류가 발생했습니다:', error);
					history.back();
				}
			});

		});
	</script>


	<div class="modal" id="descriptionModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">한줄 소개 작성</h5>
					<button class="close">&times;</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<textarea class="form-control" id="message-text" maxlength="150"
								row="5" placeholder="한 줄 소개를 입력해 주세요." style="height: 225px;"></textarea>
						</div>
					</form>
					<div
						class="Grid_Grid__item__4GoIZ Grid_Grid__align-items_flex-start__nEOiH">
						<span id="char-count"
							class="Typography_Typography__root__RdAI1 Typography_Typography__caption2__114s_ Typography_Typography__weightMedium__GXnOM ProfileEditDescription_ProfileEditDescription__actions__primary__xbA2s">0</span><span
							class="Typography_Typography__root__RdAI1 Typography_Typography__caption2__114s_ Typography_Typography__weightMedium__GXnOM ProfileEditDescription_ProfileEditDescription__actions__has__LF0qI">
							/ 150</span>
					</div>
				</div>
				<div class="modal-footer">
					<button id="DesCancel" type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="button" id="DesSave" class="btn btn-primary">저장</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function() {
			const textarea = document.getElementById("message-text");
			const charCountSpan = document.getElementById("char-count");

			textarea.addEventListener("input", function() {
				const currentLength = textarea.value.length;
				charCountSpan.textContent = currentLength;
			});
		});
		// Modal 열기
		document
				.getElementById('openDesModal')
				.addEventListener(
						'click',
						function() {
							document.getElementById('descriptionModal').style.display = 'block';
						});

		// Modal 닫기
		document
				.querySelector('#descriptionModal .close')
				.addEventListener(
						'click',
						function() {
							document.getElementById('descriptionModal').style.display = 'none';
						});

		// 취소 버튼을 클릭했을 때
		document.getElementById('DesCancel').onclick = function() {
			document.getElementById('descriptionModal').style.display = "none";
		}

		$("#DesSave").click(function() {
			var r_sogae = $("#message-text").val();
			$.ajax({
			    url: '/updateDescription',
			    type: 'POST',
			    dataType: 'html',
			    data: {"r_sogae": r_sogae},
			    success: function(res) {
			        alert("업데이트 완료");
                    location.reload(); // 페이지 새로고침
			    }
			});
		});
	</script>

</body>
</html>