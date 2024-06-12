<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>사용자 등록</title>

<script type="text/javascript">
	$(function() {
		//아이디 중복체크
		$("#btnIdCheck").click(function() {

			var mem_id = $("#mem_id").val();

			$.ajax({
				type : "get",
				url : "./SemiLogin/idCheck.jsp",
				dataType : "json",
				data : {
					"mem_id" : mem_id
				},
				success : function(res) {
					if (res.count == 1) {
						alert("이미 가입된 아이디입니다.\n");
						$("span.idsuccess").text("not ok!!");
						$("#mem_id").val("");
					} else {
						alert("사용 가능한 아이디입니다.");
						$("span.idsuccess").text("ok!!");
					}
				}
			});
		});

		$("#btnNicknameCheck").click(function() {

			var mem_nickname = $("#mem_nickname").val();

			$.ajax({
				type : "get",
				url : "./SemiLogin/nicknameCheck.jsp",
				dataType : "json",
				data : {
					"mem_nickname" : mem_nickname
				},
				success : function(res) {
					if (res.count == 1) {
						alert("이미 사용중인 닉네임입니다.\n");
						$("#mem_nickname").val("");
					} else {
						alert("사용 가능한 닉네임입니다.");
					}
				}
			});
		});

		$("#selemail").change(function() {
			var email = $(this).val();
			if (email != "-") {
				$("#email2").val(email);
			} else {
				$("#email2").val("");
			}
		});
	})

	
</script>
</head>
<h1 class="page-title">CodeConnect</h1>

<div class="page-title-sub">코드커넥트에 오신걸 환영합니다.</div>


<body>
	<div class="container">
		<form id="signupForm" action="index.jsp?main=SemiLogin/MainAction.jsp" method="post"
			onsubmit="return validateForm(event)">
			<div class="row">

				<!--  고객 입력사항 { -->
				<div class="section">
					<div class="ttl-join">
					</div>
					<div class="form-group row">
						<label for="id" class="col-sm-2 col-form-label">아이디<span
							class="required">*</span></label>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" name="mem_id" id="mem_id" maxlength="16"
									class="form-control" onblur="validateId()">
								<button type="button" class="btn btn-outline-info btn-orange"
									id="btnIdCheck">중복체크</button>
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label for="pass" class="col-sm-2 col-form-label">비밀번호<span
							class="required">*</span></label>
						<div class="col-sm-5">
							<div class="input-group">
								<input type="password" name="mem_password" id="mem_password"
									class="form-control" onblur="validatePass()">
								<div class="input-group-append">
									<button type="button" class="btn_show">
										<span class="blind">비밀번호 숨기기</span>
									</button>
								</div>
							</div>
							<div class="password_info">
								<em class="how_secure" id="secureLevel"></em>
							</div>
						</div>
					</div>


					<div class="form-group row">
						<label for="pass2" class="col-sm-2 col-form-label">비밀번호 확인<span
							class="required">*</span></label>
						<div class="col-sm-5">
							<div class="input-group">
								<input type="password" name="mem_password2" id="mem_password2"
									class="form-control" onblur="validatePass2()">
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label for="nickname" class="col-sm-2 col-form-label">닉네임<span
							class="required">*</span></label>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" name="mem_nickname" id="mem_nickname"
									maxlength="8" class="form-control">
								<button type="button" class="btn btn-outline-info btn-orange"
									id="btnNicknameCheck">중복체크</button>
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label for="birthday" class="col-sm-2 col-form-label">생년월일<span
							class="required">*</span></label>
						<div class="col-sm-5">
							<div class="input-group">
								<input type="text" name="mem_birth" id="mem_birth"
									class="form-control" placeholder="ex)20010203"
									onblur="validateBirthday()">
							</div>
						</div>
					</div>

					<div class="form-group">
						<div>
							<span id="idError" style="color: red;"></span>
						</div>
						<div>
							<span id="passError" style="color: red;"></span>
						</div>
						<div>
							<span id="pass2Error" style="color: red;"></span>
						</div>
						<div>
							<span id="passError" style="color: red;"></span>
						</div>
						<div>
							<span id="birthdateError" style="color: red;"></span>
						</div>
					</div>

				</div>

				<div class="ttl-join">
				<div class="form-group row">
					<label for="name" class="col-sm-2 col-form-label">이름<span
						class="required">*</span></label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" name="mem_name" id="mem_name"
								class="form-control" onblur="validateName()">
						</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="mem_zipcode" class="col-sm-2 col-form-label">주소<span
						class="required">*</span></label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" name="mem_zipcode" id="mem_zipcode"
								placeholder="우편번호" class="form-control">
							<button type="button" onclick="sample6_execDaumPostcode()"
								class="btn btn-outline-info btn-orange">우편번호 찾기</button>
						</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="mem_address" class="col-sm-2 col-form-label"></label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" name="mem_address" id="mem_address"
								placeholder="주소" class="form-control" onblur="validateAddr()">
						</div>
					</div>
				</div>
				<div class="form-group row">
					<label for="mem_address_detail" class="col-sm-2 col-form-label"></label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" name="mem_address_detail"
								id="mem_address_detail" placeholder="상세 주소" class="form-control"
								onblur="validateAddr()">
						</div>
					</div>
				</div>



				<div class="form-group row">
					<label for="hp" class="col-sm-2 col-form-label">휴대전화<span
						class="required">*</span></label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" name="mem_hp" id="mem_hp" class="form-control"
								onblur="validateHp()">
						</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">이메일<span
						class="required">*</span></label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" name="mem_email" id="mem_email"
								class="form-control" onblur="validateEmail()">
						</div>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-2 col-form-label">성별</label>
					<div class="col-sm-10">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="mem_gender"
								id="male" value="남자"> <label class="form-check-label"
								for="male">남자</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="mem_gender"
								id="female" value="여자"> <label class="form-check-label"
								for="female">여자</label>
						</div>
					</div>
				</div>
				<input type="hidden" id="mem_is_active" name="mem_is_active"
					value="Y">

			</div>

			<div class="form-group">
				<div>
					<span id="nameError" style="color: red;"></span>
				</div>
				<div>
					<span id="addressError" style="color: red;"></span>
				</div>
				<div>
					<span id="addrDetailError" style="color: red"></span>
				</div>
				<div>
					<span id="phoneError" style="color: red;"></span>
				</div>
				<div>
					<span id="emailError" style="color: red;"></span>
				</div>
			</div>
			<br> <br>
			<!-- } 주소지 입력사항 -->
			<div class="form-group" align="center">
				<button type="submit" class="btn btn-outline-info btn-orange"
					style="width: 150px; height: 50px;" value="가입">가입하기</button>
			</div>
		</form>
	</div>

	<script src="./SemiLogin/validation.js"></script>
</body>

</html>
