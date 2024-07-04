<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<style>
.modal {
	display: none; /* 초기에는 숨겨진 상태 */
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4); /* 배경에 어둡게 */
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 600px;
	overflow: auto;
}

/* Close button */
.close {
	color: #aaa;
	position: absolute; /* Position the close button */
	top: 10px;
	right: 20px;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

/* Form styles */
form.css-zs70mi {
	text-align: left;
}

fieldset {
	border: none;
	padding: 0;
	margin: 0;
}

legend.css-ab001d {
	font-size: 1.2em;
	font-weight: bold;
}

ul.css-18aoahz {
	list-style-type: none;
	padding: 0;
}

ul.css-18aoahz li {
	margin-bottom: 15px;
}

p[data-testid="Typography"] {
	margin: 5px 0;
}

hr.css-6cy68w {
	border: 0;
	height: 1px;
	background-color: #e0e0e0;
	margin: 20px 0;
}

div.css-4ipaya {
	margin-top: 20px;
}

h2[data-testid="Typography"] {
	margin-bottom: 10px;
	font-size: 1.1em;
}

div.css-1a6geu {
	display: flex;
	align-items: center;
}

div.css-ivxv03 img {
	border-radius: 50%;
	margin-right: 10px;
}

p.css-r2b3v7 {
	margin: 0;
}

/* Button styles */
div.css-9as5im {
	display: flex;
	justify-content: space-between;
	margin-top: 20px;
}

button[data-testid="Button"] {
	padding: 10px 20px;
	border: none;
	cursor: pointer;
	border-radius: 5px;
}

button.css-1yzn4b {
	background-color: #06f;
	color: white;
}

button.css-dcv812 {
	background-color: #9e9e9e;
	color: white;
}

.css-1krggrv {
	background: none;
	border: none;
	cursor: pointer;
	float: right;
}

/* Button styles */
button {
	cursor: pointer;
}

.css-dcv812 {
	width: 100%;
	border-radius: 10px;
	font-size: 16px;
	cursor: pointer;
	background-color: rgb(255, 255, 255);
	border: none;
	height: fit-content;
	min-height: unset;
	padding: 4px 0px;
}

.css-htgykj {
	color: rgb(0, 0, 0);
	font-weight: var(--text-weight-subhead-bold);
	text-align: left;
	letter-spacing: var(--text-spacing-subhead);
	font-size: var(--text-size-subhead);
	line-height: var(--text-height-subhead);
}

.css-dcv812>span {
	color: rgba(55, 56, 60, 0.61);
}

button[data-testid="Button"]:disabled {
	background-color: #e0e0e0;
	cursor: not-allowed;
}

button[data-testid="Button"]:not(:disabled):hover {
	opacity: 0.8;
}

.css-zs70mi {
	display: flex;
	flex-direction: column;
	-webkit-box-align: center;
	align-items: center;
	gap: 30px;
	max-width: 628px;
	width: 100%;
	height: 100%;
	margin: 80px 0px;
	padding: 0px 15px;
}

.css-zs70mi fieldset {
	border: none;
	display: flex;
	flex-direction: column;
	gap: 30px;
	width: 100%;
}

.css-ab001d {
	text-align: center;
}

.css-ab001d h1 {
	font-size: 20px;
}

.css-zs70mi h2 {
	font-size: 17px;
}

.css-1nhn4wl {
	color: rgb(0, 0, 0);
	font-weight: var(--text-weight-headline-bold);
	text-align: left;
	letter-spacing: var(--text-spacing-headline);
	font-size: var(--text-size-headline);
	line-height: var(--text-height-headline);
}

.css-1a6geu {
	display: flex;
	height: 50px;
	padding: 12px;
	-webkit-box-pack: start;
	justify-content: flex-start;
	-webkit-box-align: center;
	align-items: center;
	gap: 8px;
	border-radius: 10px;
	background: rgba(112, 115, 124, 0.05);
}

.css-32bob6 {
	color: rgb(0, 0, 0);
	font-weight: var(--text-weight-heading-bold);
	text-align: center;
	letter-spacing: var(--text-spacing-heading);
	font-size: var(--text-size-heading);
	line-height: var(--text-height-heading);
}

.css-18aoahz {
	display: flex;
	flex-direction: column;
	gap: 20px;
	list-style: none;
	margin-top: 30px;
	padding: 0px 5px;
}

.css-18aoahz li {
	display: flex;
	flex-direction: column;
	gap: 8px;
}

.css-1qlp7s7 {
	color: rgb(23, 23, 25);
	font-weight: var(--text-weight-subhead-bold);
	text-align: left;
	letter-spacing: var(--text-spacing-subhead);
	font-size: var(--text-size-subhead);
	line-height: var(--text-height-subhead);
}

.css-1cadzwq {
	color: rgb(23, 23, 25);
	font-weight: var(--text-weight-body-normal);
	text-align: left;
	letter-spacing: var(--text-spacing-body);
	font-size: var(--text-size-body);
	line-height: var(--text-height-body);
	text-indent: -8px;
	margin-left: 8px;
}

.css-zs70mi hr {
	margin: 15px 0px;
}

.css-6cy68w {
	border-top: none;
	border-right: none;
	border-left: none;
	border-image: initial;
	width: 100%;
	border-bottom: 1px solid rgba(112, 115, 124, 0.22);
}

.css-4ipaya {
	display: flex;
	flex-direction: column;
	gap: 20px;
	padding: 0px 5px;
}

.css-9as5im {
	display: flex;
	flex-direction: column;
	gap: 15px;
}

.css-1yzn4b:disabled {
	color: rgba(55, 56, 60, 0.16);
	background-color: rgb(244, 244, 245);
	border: none;
	cursor: default;
}

.css-1yzn4b {
	width: 100%;
	height: 48px;
	min-height: 48px;
	border-radius: 10px;
	font-size: 16px;
	cursor: pointer;
	background-color: #0066ff;
	border: none;
}

.css-kfktv3 {
	color: white;
	font-weight: var(--text-weight-body-bold);
	text-align: left;
	letter-spacing: var(--text-spacing-body);
	font-size: var(--text-size-body);
	line-height: var(--text-height-body);
}

.css-1vw00ct {
	width: 100%;
	max-width: 440px;
	min-height: 200px;
	border-radius: 8px;
	background-color: rgb(255, 255, 255);
}

.css-igfsh2 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	height: 64px;
	min-height: 64px;
}

.css-1nm9gyu {
	height: fit-content;
	flex: 0 0 auto;
	width: 100%;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	padding: 0px 20px;
}

.css-oan6e {
	visibility: hidden;
	min-width: 64px;
}

.css-1iooy02 {
	display: flex;
	flex: 1 1 0%;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	font-size: 28px;
	font-weight: 700;
	color: rgb(23, 23, 25);
}

.css-14qpgc6 {
	text-align: center;
	letter-spacing: var(--text-spacing-headline);
	line-height: var(--text-height-headline);
	display: flex;
	flex: 1 1 0%;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	font-size: 28px;
	font-weight: 700;
	color: rgb(23, 23, 25);
}

.css-1jxi7lq {
	display: flex;
	min-width: 64px;
	-webkit-box-pack: end;
	justify-content: flex-end;
	-webkit-box-align: center;
	align-items: center;
}

.css-1krggrv {
	border: none;
	background: none;
	cursor: pointer;
	padding: 8px;
	margin: -8px;
	fill: rgb(0, 0, 0);
}

.css-1ihsymv {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-align-items: inherit;
	-webkit-box-align: inherit;
	align-items: inherit;
	-webkit-box-pack: inherit;
	-webkit-justify-content: inherit;
	justify-content: inherit;
}

.css-1krggrv svg {
	fill: inherit;
}

.css-t07f4u {
	user-select: none;
	width: 1em;
	height: 1em;
	display: inline-block;
	fill: currentcolor;
	flex-shrink: 0;
	font-size: 24px;
}

.css-1bgr1f2 {
	padding: 0px 20px 18px;
}

.css-1o7ygxq {
	margin: 30px 0px;
}

.css-1sbrczv {
	width: 100%;
	height: 48px;
	min-height: 48px;
	padding: 0px 16px;
	outline: none;
	background-color: transparent;
	border: 1px solid rgba(112, 115, 124, 0.22);
	color: rgb(23, 23, 25);
	border-radius: 10px;
	font-size: 16px;
	font-weight: 400;
}

.css-xuwcvx {
	display: flex;
	justify-content: right;
}

.css-1gfeuwe span {
	color: var(--theme-palette-primary-normal);
}

.css-1n6wxjg span {
	color: rgb(255, 255, 255);
}

.css-1gfeuwe {
	height: 48px;
	min-height: 48px;
	border-radius: 10px;
	font-size: 16px;
	cursor: pointer;
	background-color: rgb(255, 255, 255);
	border: 1px solid rgba(112, 115, 124, 0.22);
	width: auto;
	padding: 0px 32px;
	margin-left: 8px;
}

.css-1n6wxjg {
	height: 48px;
	min-height: 48px;
	border-radius: 10px;
	font-size: 16px;
	cursor: pointer;
	background-color: #0066ff;
	border: none;
	width: auto;
	padding: 0px 32px;
	margin-left: 8px;
}

.css-18pqgvb {
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	z-index: 1000;
	background: rgba(0, 0, 0, 0.4);
}
</style>
</head>
<body>
	<section class="css-1e20gl8">
		<article class="css-nhgqg9">
			<p data-testid="Typography" color="#000000" class="css-8nybna">${r_name}님,
				환영해요.</p>
		</article>
		<article class="css-dnwsdj">
			<div class="css-9as5im">
				<p data-testid="Typography" color="#000000" class="css-dk1ca0">계정
					관리</p>
				<p data-testid="Typography" color="rgba(55, 56, 60, 0.61)"
					class="css-1b12nwt">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
			</div>
			<ul class="css-14jv0iu">
				<li data-list-type="EMAIL_CHANGE" tabindex="0" class="css-1f5onls"><p
						data-testid="Typography" color="#000000" class="css-9dug5j">이메일</p>
					<p data-testid="Typography" color="#171719" class="css-j2itip">${r_email }</p></li>
				<li id="NameChangeBtn" data-list-type="NAME_CHANGE" tabindex="0" class="css-15hfbq8">
					<p data-testid="Typography" color="#000000" class="css-9dug5j">이름</p>
					<p data-testid="Typography" color="#171719" class="css-j2itip"
						id="currentName">${r_name}</p> <span class="css-1ihsymv"> <svg
							viewBox="0 0 12 24" color="rgba(55, 56, 60, 0.61)"
							class="css-tcbcjk">
            <path fill="rgba(55, 56, 60, 0.61)"
								d="M2.86395 4.86346C2.51247 5.21493 2.51247 5.78478 2.86395 6.13625L8.72755 11.9999L2.86395 17.8635C2.51247 18.2149 2.51247 18.7848 2.86395 19.1362C3.21542 19.4877 3.78527 19.4877 4.13674 19.1362L10.6367 12.6362C10.9882 12.2848 10.9882 11.7149 10.6367 11.3635L4.13674 4.86346C3.78527 4.51199 3.21542 4.51199 2.86395 4.86346Z">
            </path>
        </svg>
				</span>
				</li>
				<li id="HpChangeButton" data-list-type="PHONE_CHANGE" tabindex="0"
					class="css-xr5rwo"><p data-testid="Typography" color="#000000"
						class="css-9dug5j">휴대폰 번호</p>
					<p data-testid="Typography" color="#171719" class="css-j2itip">+82
						${r_hp }</p> <span class="css-1ihsymv"><svg viewBox="0 0 12 24"
							color="rgba(55, 56, 60, 0.61)" class="css-tcbcjk">
							<path fill="rgba(55, 56, 60, 0.61)"
								d="M2.86395 4.86346C2.51247 5.21493 2.51247 5.78478 2.86395 6.13625L8.72755 11.9999L2.86395 17.8635C2.51247 18.2149 2.51247 18.7848 2.86395 19.1362C3.21542 19.4877 3.78527 19.4877 4.13674 19.1362L10.6367 12.6362C10.9882 12.2848 10.9882 11.7149 10.6367 11.3635L4.13674 4.86346C3.78527 4.51199 3.21542 4.51199 2.86395 4.86346Z"></path></svg></span></li>

			</ul>
		</article>
		<article class="css-dnwsdj">
			<div class="css-9as5im">
				<p data-testid="Typography" color="#000000" class="css-dk1ca0">개인
					정보 보호</p>
				<p data-testid="Typography" color="rgba(55, 56, 60, 0.61)"
					class="css-1b12nwt">내 계정을 안전하게 보호하기 위한 정보를 관리할 수 있습니다.</p>
			</div>
			<ul class="css-14jv0iu">
				<li data-list-type="MEMBER_EXIT" tabindex="0"
					data-attribute-id="accountSetting__leave" class="css-15hfbq1">
					<p data-testid="Typography" color="#000000" class="css-9dug5j">회원
						탈퇴</p>
					<p data-testid="Typography" color="#171719" class="css-j2itip"></p>
					<span class="css-1ihsymv"> <svg viewBox="0 0 12 24"
							color="rgba(55, 56, 60, 0.61)" class="css-tcbcjk">
                    <path fill="rgba(55, 56, 60, 0.61)"
								d="M2.86395 4.86346C2.51247 5.21493 2.51247 5.78478 2.86395 6.13625L8.72755 11.9999L2.86395 17.8635C2.51247 18.2149 2.51247 18.7848 2.86395 19.1362C3.21542 19.4877 3.78527 19.4877 4.13674 19.1362L10.6367 12.6362C10.9882 12.2848 10.9882 11.7149 10.6367 11.3635L4.13674 4.86346C3.78527 4.51199 3.21542 4.51199 2.86395 4.86346Z"></path>
                </svg>
				</span>
				</li>
			</ul>




			<!-- 				회원 탈퇴 모달  -->
			<div id="deleteModal" class="modal" style="display: none;">
				<div class="modal-content" style="width: 542px; height: 362px;">
					<form class="css-zs70mi" style="margin-top: 0px; margin-bottom: 0px; height: 800px;">
					<input type="hidden" name="r_num" id="r_num" value="${r_num}" >
						<fieldset>
							<legend class="css-ab001d">
								<h1 data-testid="Typography" color="#000000" class="css-32bob6">회원
									탈퇴 시 주의사항</h1>
							</legend>
							<span class="close"></span>
							<ul class="css-18aoahz">
								<li><p data-testid="Typography" color="#171719"
										class="css-1qlp7s7">탈퇴하기 전에</p>
									<p data-testid="Typography" color="#171719" class="css-1cadzwq">
										· 탈퇴 시 '코드커넥트'를 통해 등록한 서비스의 <strong>모든 정보가 영구적으로
											삭제되며, 복구가 불가능합니다.</strong>
									</p></li>
								<li><p data-testid="Typography" color="#171719"
										class="css-1qlp7s7">미리 백업하기</p>
									<p data-testid="Typography" color="#171719" class="css-1cadzwq">
										· '원티드 통합 로그인'으로 등록한 <strong>서비스의 정보 백업은 탈퇴 이전에 진행</strong>해
										주세요.
									</p></li>
								<li><p data-testid="Typography" color="#171719"
										class="css-1qlp7s7">미리 관리하기</p>
									<p data-testid="Typography" color="#171719" class="css-1cadzwq">
										· 서비스 이용 중 '원티드 통합 로그인' 계정에 귀속되지 않는 정보는 삭제되지 않으며, 탈퇴 시 수정이나
										삭제가 불가능합니다. <strong>'원티드 통합 로그인' 계정에 귀속되지 않은 정보의 경우
											회원 탈퇴 이전에 수정 또는 삭제해 주세요.</strong>
									</p></li>
							</ul>
							<hr class="css-6cy68w">
							<div class="css-4ipaya">
									
								<h2 data-testid="Typography" color="#000000" class="css-1nhn4wl">탈퇴하려는
									계정</h2>
								<div class="css-1a6geu">

									<p data-testid="Typography" color="#171719" class="css-r2b3v7">${r_email }</p>
								</div>
							</div>
							<div class="css-9as5im">
								<button type="button" data-testid="Button" id="confirmBtn"
									data-attribute-id="accountSetting__leave__button"
									class="css-1yzn4b">
									<span data-testid="Typography" color="#000000"
										class="css-kfktv3">회원 탈퇴</span>
								</button>
								<button type="button" data-testid="Button" id="cancelBtn"
									data-attribute-id="accountSetting__leave__cancel"
									class="css-dcv812">
									<span data-testid="Typography" color="#000000"
										class="css-htgykj">회원 탈퇴 취소</span>
								</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

			<script type="text/javascript">
				// 회원탈퇴 모달
				document.querySelector('.css-15hfbq1').onclick = function() {
					document.getElementById('deleteModal').style.display = "block";
				}

				// Modal 닫기 버튼을 클릭했을 때
				document.getElementsByClassName('close')[0].onclick = function() {
					document.getElementById('deleteModal').style.display = "none";
				}
				
				// Modal 외부를 클릭했을 때 닫기
				window.onclick = function(event) {
					if (event.target == document.getElementById('myModal')) {
						document.getElementById('deleteModal').style.display = "none";
					}
				}
				
				//회원탈퇴 버튼을 클릭 했을 시
				document.getElementById('confirmBtn').onclick = function() {
					var r_num = document.getElementById('r_num').value;

					$.ajax({
				        url: '/deleteRegister',
				        type: 'GET',
				        data: { r_num: r_num },
				        success: function(response) {
				            alert('회원 탈퇴가 완료되었습니다.');
				            document.getElementById('deleteModal').style.display = "none";

				            // 로그아웃 요청
				            $.ajax({
				                url: '/login/logoutprocess',
				                type: 'GET',
				                success: function() {
				                   location.href='/';
				                },
				            });
				        },
				        error: function(xhr, status, error) {
				            console.error('Error deleting member:', error);
				            alert('회원 탈퇴 중 오류가 발생했습니다.');
				        }
				    });
					
			
				}
				
				// 취소 버튼을 클릭했을 때
				document.getElementById('cancelBtn').onclick = function() {
					document.getElementById('deleteModal').style.display = "none";
				}
			</script>



					<!--이름 변경 모달 -->
			<div id="nameModal" class="modal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">이름 변경</h5>
						</div>
						<div class="modal-body">
							<form>
							<input type="hidden" name="r_name" id="r_name" value="${r_name }">
								<div class="mb-3">
									<label for="nameInput" class="form-label">새로운 이름</label> <input
										type="text" class="form-control" id="nameInput" value="${r_name }">
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" id="NamecloseBtn"
								data-bs-dismiss="modal">취소</button>
							<button type="button" id="NameSaveBtn" class="btn btn-primary">저장</button>
						</div>
					</div>
				</div>
			</div>

				
			<script type="text/javascript">
				document.getElementById("NameChangeBtn").addEventListener(
								"click",
								function() {
									document.getElementById("nameModal").style.display = "block";
								});
				
				// 저장 버튼 클릭 시
				    $("#NameSaveBtn").click(function() {
				    	var r_num = document.getElementById('r_num').value;
				        var newName = $("#nameInput").val();
				        
				        var data = "r_num="+r_num+"&r_name="+newName;
				        
				        
				        $.ajax({
				        	type: 'POST',
				        	dataType:"html",
					        url: '/updateName',
					        data: data,
					        success: function(response) {
					            alert('수정완료');
					            location.reload();
					           

					        },
					        error: function(xhr, status, error) {
					            console.error('Error deleting member:', error);
					            alert('수정중 오류발생');
					        }
					    });
				        
				    });

				
				//취소 버튼을 클릭했을 때
				document.getElementById('NamecloseBtn').onclick = function() {
					document.getElementById('nameModal').style.display = "none";
				}
			</script>

	



			<!-- 			휴대폰 번호 변경 모달 -->
			<div id="hpModal" class="modal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">휴대번호 변경</h5>
						</div>
						<div class="modal-body">
							<form>
								<input type="hidden" name="r_hp" id="r_hp" value="${r_hp }">
								<div class="mb-3">
									<label for="hpInput" class="form-label">새로운 휴대전화</label> <input
										type="text" class="form-control" id="hpInput" value="${r_hp }">
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" id="HpcloseBtn"
								data-bs-dismiss="modal">취소</button>
							<button type="button" id="HpSaveBtn" class="btn btn-primary">저장</button>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				document
						.getElementById("HpChangeButton")
						.addEventListener(
								"click",
								function() {
									document.getElementById("hpModal").style.display = "block";
								});

				// 저장 버튼 클릭 시 이벤트 리스너 추가
				document
						.getElementById("HpSaveBtn")
						.addEventListener(
								"click",
								function() {
									// 새로운 이름을 가져오기
									var newHp = document
											.getElementById("newHpInput").value;

									// 현재 이름 업데이트
									document.getElementById("currentHp").textContent = newHp;

									// 모달 닫기
									document.getElementById("hpModal").style.display = "none";
								});
				
				// 저장 버튼 클릭 시
				$('#hpModal').on('click', '#HpSaveBtn', function() {
					var r_num = document.getElementById('r_num').value;
					var newHp = $('#hpInput').val();
					
					var data = "r_num="+r_num+"&r_hp="+newHp;
					
					 $.ajax({
				        	type: 'POST',
				        	dataType:"html",
					        url: '/updateHp',
					        data: data,
					        success: function(response) {
					            alert('수정완료');
					            session.
					            location.reload();
					           

					        },
					        error: function(xhr, status, error) {
					            console.error('Error deleting member:', error);
					            alert('수정중 오류 발생');
					        }
					    });
				});
				//취소 버튼을 클릭했을 때
				document.getElementById('HpcloseBtn').onclick = function() {
					document.getElementById('hpModal').style.display = "none";
				}
			</script>
		</article>

	</section>
	</div>
	</div>
	</div>



</body>
</html>