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
<link rel="stylesheet" type="text/css" href="/css/memberform.css">
<title>사용자 등록</title>
<script type="text/javascript">
	
</script>

</head>
<body>

	<div class="page-title-sub"></div>
	<div id="ent_container">
		<div class="content">
			<div class="jBox-Layout">
				<div class="pg_step_wrap">
					<div class="pg_step_title">
						<h1>회원 정보 입력</h1>
					</div>

				</div>
				<div class="joinv2_Wrap">
					<div class="j_page_Container">
						<form action="insert" method="POST"
							onsubmit="return validateForm()">
							<!-- 아이디 입력 필드 -->
							<dl>
								<dt>아이디</dt>
								<dd class="j_nameWrap">
									<input type="text" maxlength="20" title="" value="" id="r_id"
										name="r_id" placeholder="4~20자의 영문 소문자, 숫자 사용 가능"
										autocomplete="off" tabindex="1" oninput="validateId()"
										onblur="validateId()"> <span id="error_id"
										class="input_error_t hide"></span> <span
										id="duplicate_id_message" class="input_error_t hide"
										style="color: red;">아이디가 이미 존재합니다.</span>
								</dd>
							</dl>

							<!-- 비밀번호 입력 필드 -->
							<dl>
								<dt>비밀번호</dt>
								<dd class="j_nameWrap">
									<input type="password" maxlength="20" title="" value=""
										id="r_pass" name="r_pass" placeholder="8~20자의 영문, 숫자, 특수문자 조합"
										autocomplete="new-password" tabindex="2" required="required"
										onblur="validatePass()" oninput="validatePass()">
								</dd>
								<dd class="j_nameWrap pw_2mt">
									<input type="password" maxlength="20" title="" value=""
										id="r_pass2" name="r_pass2" placeholder="비밀번호 확인"
										autocomplete="new-password" tabindex="3" required=""
										onblur="validatePass()" oninput="validatePass()"> <span
										id="error_pass2" class="input_error_t hide"></span> <span
										id="error_pass" class="input_error_t hide"></span>
								</dd>
							</dl>

							<!-- 이름 입력 필드 -->
							<dl>
								<dt>이름</dt>
								<dd class="j_nameWrap">
									<input type="text" placeholder="이름(실명)" class="" name="r_name"
										id="r_name" value="" autocomplete="off" maxlength="50"
										tabindex="4" oninput="validateName()" onblur="validateName()"> 
										<span id="error_name" class="input_error_t hide"></span>
								</dd>
							</dl>

							<!-- 닉네임 입력 필드 -->
							<dl>
								<dt>닉네임(별명)</dt>
								<dd class="j_nameWrap">
									<input type="text" maxlength="20" title="" value=""
										id="r_nickname" name="r_nickname" placeholder="별명"
										onblur="validateNickname()" auth="false" autocomplete="off"
										tabindex="1"> <span id="error_nickname"
										class="input_error_t hide"></span> <span
										id="duplicate_nickname_message" class="input_error_t hide"
										style="color: red;">닉네임이 이미 존재합니다.</span>
								</dd>
							</dl>

							<!-- 생년월일 입력 필드 -->
							<dl>
								<dt>생년월일</dt>
								<dd class="j_birthWrap">
									<input type="tel" placeholder="숫자 8자리 (ex. 19980909)" class=""
										maxlength="8" id="r_birthday" name="r_birthday" onblur="validateBirthday()"
										oninput="validateBirthday()"
										onkeyup="phoneNumChk(this);" value="" tabindex="7"> <span
										id="error_birth" class="input_error_t hide">필수 입력
										사항입니다.</span>
								</dd>
							</dl>

							<!-- 이메일 입력 필드 -->
							<dl id="IpEmail_Kr">
								<dt>이메일</dt>
								<dd class="posBtn_R j_emailWrap">
									<input type="email" name="r_email" id="r_email" value=""
										class="" maxlength="50" placeholder="이메일" autocomplete="off"
										onblur="validateEmail()" oninput="validateEmail()" tabindex="8"> <span
										id="error_email" class="input_error_t hide">이메일 형식이
										올바르지 않습니다.</span>
								</dd>
							</dl>

							<!-- 휴대폰 번호 입력 필드 -->
							<dl id="IpAddr_Phone">
								<dt>휴대폰 번호</dt>
								<dd id="IpAddr_Kr" class="phone_num_wrap">
									<input type="tel" class="j_phone_num" name="r_hp" id="r_hp"
										value="" maxlength="15" placeholder="- 없이 숫자만 입력"
										onblur="validateHp()" oninput="validateHp()" tabindex="12"> 
										<span id="error_hp" class="input_error_t hide"></span> 
								</dd>
							</dl>

							<!-- 주소 입력 필드 -->
							<dl id="IpAddress">
								<dt>주소</dt>
								<dd id="IpAddr_Kr" class="" style="margin-bottom: 15px;">
									<input type="addr" class="" name="r_zipcode" id="r_zipcode"
										value="" maxlength="15" autocomplete="off" placeholder="우편번호"
										onblur="validateAddr()" oninput="validateAddr()"
										tabindex="12">
									<button type="button" class="certifi_num_btn" id="btn_authsend"
										onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
								</dd>
								<dd id="IpAddr_Kr" class="" style="margin-bottom: 15px;">
									<input type="addr_detail" class="" name="r_addr" id="r_addr"
										onblur="validateAddr_detail()" oninput="validateAddr_detail()"
										placeholder="기본 주소">	
								</dd>
								<dd id="IpAddr_Kr" class="" style="margin-top: 15px;">
									<input type="addr_detail" class="" name="r_addr_detail"
										placeholder="상세 주소" id="r_addr_detail">
								<span id="error_addr" class="input_error_t hide"> 주소를 입력해주세요.</span>
								</dd>
							</dl>

							<!-- 성별 선택 필드 -->
							<dl>
								<dt>성별</dt>
								<dd class="gender_box_c">
									<p class="last gender_check">
										<input type="radio" name="r_gender" id="man" value="남자"
											class="gender_chk_r" errormsg="error_man" tabindex="5"
											onclick="genderChk();"><label for="man"
											class="gen-box box_man_gen">남자</label> <input type="radio"
											name="r_gender" id="woman" value="여자" class="gender_chk_r"
											errormsg="error_man" tabindex="6" onclick="genderChk();"><label
											for="woman" class="gen-box box_woman_gen">여자</label> <input
											type="hidden" id="infogender" name="infogender" value="">
									</p>
								</dd>
							</dl>
							<input type="hidden" name="r_job" id="r_job" value="null">
							<input type="hidden" name="r_exp" id="r_exp" value="null">
							<input type="hidden" name="r_sogae" id="r_sogae" value="null">
							

							<!-- 가입하기 버튼 -->
							<dl>
								<button class="footer_join_ybtn" type="submit" id="bnt_join"
									tabindex="10">가입하기</button>
							</dl>
						</form>
					</div>
				</div>
				<script type="text/javascript">
					function sample6_execDaumPostcode() {
						new daum.Postcode(
								{
									oncomplete : function(data) {
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else { // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
										if (data.userSelectedType === 'R') {
											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname)) {
												extraAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if (data.buildingName !== ''
													&& data.apartment === 'Y') {
												extraAddr += (extraAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											if (extraAddr !== '') {
												extraAddr = ' (' + extraAddr
														+ ')';
											}
										}
										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document.getElementById('r_zipcode').value = data.zonecode;
										document.getElementById("r_addr").value = addr;
										// 커서를 상세주소 필드로 이동한다.
										document
												.getElementById("r_addr_detail")
												.focus();
									}
								}).open();
					}

					// 아이디 유효성 검사
					function validateId() {
						const id = document.getElementById('r_id').value;
						const idError = document.getElementById('error_id');
						const duplicateMessage = document
								.getElementById('duplicate_id_message');
						const idField = document.getElementById('r_id');

						if (id.trim() === '') {
							idError.textContent = '아이디: 필수 정보입니다.';
							idField.style.border = '1px solid red'; // 빨간 테두리 생성
							idError.classList.remove('hide'); // 오류 메시지 보이기
							duplicateMessage.classList.add('hide'); // 중복 메시지 숨기기
							return false; // 유효성 검사 실패
						} else if (!/^[a-zA-Z0-9]{4,16}$/.test(id)) {
							idError.textContent = '아이디: 4~16글자의 영문자와 숫자로 이루어져야 합니다.';
							idField.style.border = '1px solid red'; // 빨간 테두리 생성
							idError.classList.remove('hide'); // 오류 메시지 보이기
							duplicateMessage.classList.add('hide'); // 중복 메시지 숨기기
							return false; // 유효성 검사 실패
						} else {
							// AJAX를 이용하여 서버에 중복 확인 요청
							$.ajax({
								type : 'POST',
								url : '/checkDuplicateId',
								contentType : 'application/json',
								data : JSON.stringify({
									id : id
								}),
								success : function(res) {
									if (res === 'duplicate') {
										idError.textContent = '';
										idField.style.border = '1px solid red'; // 테두리 초기화
										idError.classList.add('hide'); // 오류 메시지 숨기기
										duplicateMessage.classList
												.remove('hide'); // 중복 메시지 보이기
									} else {
										idError.textContent = '';
										idField.style.border = ''; // 테두리 초기화
										idError.classList.add('hide'); // 오류 메시지 숨기기
										duplicateMessage.classList.add('hide'); // 중복 메시지 숨기기
									}
								},
								error : function(xhr, status, error) {
									console.error('에러 발생: ' + error);
								}
							});

							return true; // 유효성 검사 성공 (중복 확인 결과를 기다리기 위해 일단 true 반환)
						}
					}
					// 아이디 입력 필드에서 입력이 변경될 때마다 validateId 함수 호출
					document.getElementById('r_id').addEventListener('input',
							validateId);

					
					
					
					
					function validatePass() {
					    const pass = document.getElementById('r_pass').value;
					    const pass2 = document.getElementById('r_pass2').value;
					    const passError = document.getElementById('error_pass');
					    const pass2Error = document.getElementById('error_pass2');
					    const passField = document.getElementById('r_pass');
					    const pass2Field = document.getElementById('r_pass2');

					    // 비밀번호 필드 유효성 검사
					    if (pass.trim() === '') {
					        passError.textContent = '비밀번호: 필수 정보입니다.';
					        passField.style.border = '1px solid red'; // 빨간 테두리 생성
					        passError.classList.remove('hide'); // 오류 메시지 보이기
					        pass2Field.disabled = true; // 비밀번호 확인 필드 비활성화
					        pass2Error.classList.add('hide'); // 비밀번호 확인 오류 메시지 숨기기
					    } else if (!/^(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/.test(pass)) {
					        passError.textContent = '비밀번호: 영 소문자, 숫자, 특수문자를 포함하여 6글자 이상이어야 합니다.';
					        passField.style.border = '1px solid red'; // 빨간 테두리 생성
					        passError.classList.remove('hide'); // 오류 메시지 보이기
					        pass2Field.disabled = true; // 비밀번호 확인 필드 비활성화
					        pass2Error.classList.add('hide'); // 비밀번호 확인 오류 메시지 숨기기
					    } else {
					        passError.textContent = '';
					        passField.style.border = ''; // 테두리 초기화
					        passError.classList.add('hide'); // 오류 메시지 숨기기
					        pass2Field.disabled = false; // 비밀번호 확인 필드 활성화
					    }

					    // 비밀번호 확인 필드 유효성 검사
					    if (!pass2Field.disabled && pass !== pass2) {
					        pass2Error.textContent = '비밀번호가 일치하지 않습니다.';
					        pass2Error.classList.remove('hide'); // 오류 메시지 보이기
					        pass2Field.style.border = '1px solid red'; // 빨간 테두리 생성
					    } else if (!pass2Field.disabled && pass === pass2) {
					        pass2Error.textContent = '';
					        pass2Error.classList.add('hide'); // 오류 메시지 숨기기
					        pass2Field.style.border = ''; // 테두리 초기화
					    }
					}

					// 비밀번호 필드와 비밀번호 확인 필드에서 입력이 변경될 때마다 validatePass 함수 호출
					document.getElementById('r_pass').addEventListener('input', validatePass);
					document.getElementById('r_pass2').addEventListener('input', validatePass);
					document.getElementById('r_pass2').addEventListener('blur', validatePass);

					// 페이지 로드 시 초기 설정
					window.onload = function() {
					    document.getElementById('r_pass2').disabled = true; // 비밀번호 확인 필드 초기 비활성화
					};

					
					
					//닉네임 유효성 검사
					function validateNickname() {
					const nick = document.getElementById('r_nickname').value;
					const nickError = document
							.getElementById('error_nickname');
					const duplicateMessage = document
							.getElementById('duplicate_nickname_message');
					const nickField = document.getElementById('r_nickname');

					if (nick.trim() === '') {
						nickError.textContent = '닉네임: 필수 정보입니다.';
						nickField.style.border = '1px solid red'; // 빨간 테두리 생성
						nickError.classList.remove('hide'); // 오류 메시지 보이기
						duplicateMessage.classList.add('hide'); // 중복 메시지 숨기기
						return false; // 유효성 검사 실패
					} else {
						// AJAX를 이용하여 서버에 중복 확인 요청
						$
								.ajax({
									type : 'POST',
									url : '/checkDuplicateNn',
									contentType : 'application/json',
									data : JSON.stringify({
										nickname : nick
									}),
									success : function(res) {
										if (res === 'duplicate') {
											nickError.textContent = '';
											nickField.style.border = '1px solid red'; // 테두리 초기화
											nickError.classList.add('hide'); // 오류 메시지 숨기기
											duplicateMessage.classList
													.remove('hide'); // 중복 메시지 보이기
										} else {
											nickError.textContent = '';
											nickField.style.border = ''; // 테두리 초기화
											nickError.classList.add('hide'); // 오류 메시지 숨기기
											duplicateMessage.classList
													.add('hide'); // 중복 메시지 숨기기
										}
									},
									error : function(xhr, status, error) {
										console.error('에러 발생: ' + error);
									}
								});

						return true; // 유효성 검사 성공 (중복 확인 결과를 기다리기 위해 일단 true 반환)
					}
				}
					
					
					// 이름 유효성 검사
						function validateName() {
						const name = document.getElementById('r_name').value;
						const nameError = document.getElementById('error_name');
						const nameField = document.getElementById('r_name');	

						if (name.trim() === '') {
							nameError.textContent = '이름: 필수 정보입니다.';
							nameField.style.border = '1px solid red'; // 빨간 테두리 생성
							nameError.classList.remove('hide'); // 오류 메시지 보이기
							return false; // 유효성 검사 실패
							
						} else {
							nameError.textContent = '';
							nameField.style.border = ''; // 테두리 초기화
							nameError.classList.add("hide");
							return true;
						}
						}

					
					// 전화번호 유효성 검사
					function validateHp() {
						const hp = document.getElementById('r_hp').value;
						const phoneError = document.getElementById('error_hp');
						const hpField = document.getElementById('r_hp');

						if (hp.trim() === '') {
							phoneError.textContent = '휴대전화번호: 필수 정보입니다.';
							hpField.style.border = '1px solid red'; // 빨간 테두리 생성
							phoneError.classList.remove("hide");
							return  false;
						} else if (!/^\d{3}-\d{3,4}-\d{4}$/.test(hp)) {
							phoneError.textContent = '휴대전화번호: XXX-XXXX-XXXX 형식으로 입력해야 합니다.';
							hpField.style.border = '1px solid red'; // 빨간 테두리 생성
							phoneError.classList.remove("hide");
							return false;
						} else {
							phoneError.textContent = '';
							hpField.style.border = ''; // 테두리 초기화
							phoneError.classList.add("hide");
							return true;
						}
					}

					function validateAddr() {
						const addr = document.getElementById('r_addr').value;
						const addrDetail = document
								.getElementById('r_addr_detail').value;
						const addressError = document
								.getElementById('error_addr');
						const addrDetailError = document
								.getElementById('error_addr_detail');
						const addrField = document.getElementById('r_addr');
						const addrDetailField = document
								.getElementById('r_addr_detail');

						if (addr.trim() === '') {
							addressError.textContent = '주소: 필수 정보입니다.';
							addrField.style.border = '1px solid red'; // 빨간 테두리 생성
							addressError.classList.remove("hide");
							return false;
							
						} else {
							addressError.textContent = '';
							addrField.style.border = ''; // 테두리 초기화
							addressError.classList.add("hide");
							return true;
						}

						if (addrDetail.trim() === '') {
							addrDetailError.textContent = '기본 주소: 필수 정보입니다.';
							addrDetailField.style.border = '1px solid red'; // 빨간 테두리 생성
							addrDetailError.classList.remove("hide");
							return false;
						} else {
							addrDetailError.textContent = '';
							addrDetailField.style.border = ''; // 테두리 초기화
							addrDetailError.classList.add("hide");
							return true;
						}
					}

					// 생년월일 유효성 검사
					function validateBirthday() {
						const birthday = document.getElementById('r_birthday').value;
						const birthdateError = document
								.getElementById('error_birth');
						const birthdayField = document
								.getElementById('r_birthday');

						if (birthday.trim() === '') {
							birthdateError.textContent = '생년월일: 필수 정보입니다.';
							birthdayField.style.border = '1px solid red'; // 빨간 테두리 생성
							birthdateError.classList.remove("hide");
							return false;
						} else if (!/^[0-9]{8}$/.test(birthday)) {
							birthdateError.textContent = '생년월일: 8자리 숫자로 입력해야 합니다.';
							birthdayField.style.border = '1px solid red'; // 빨간 테두리 생성
							birthdateError.classList.remove("hide");
							return false;
						} else {
							birthdateError.textContent = '';
							birthdayField.style.border = ''; // 테두리 초기화
							birthdateError.classList.add("hide");
							return true;
						}
					}

					// 이메일 유효성 검사
					function validateEmail() {
						const email = document.getElementById('r_email').value;
						const emailError = document
								.getElementById('error_email');
						const emailField = document.getElementById('r_email');

						if (email.trim() === '') {
							emailError.textContent = '이메일: 필수 정보입니다.';
							emailField.style.border = '1px solid red'; // 빨간 테두리 생성
							emailError.classList.remove("hide");
							return false;
						} else if (!/\S+@\S+\.\S+/.test(email)) {
							emailError.textContent = '이메일: 형식을 올바르게 작성해주세요.';
							emailField.style.border = '1px solid red'; // 빨간 테두리 생성
							emailError.classList.remove("hide");
							return false;
						} else {
							emailError.textContent = '';
							emailField.style.border = ''; // 테두리 초기화
							emailError.classList.add("hide");
						}
					}
					// onsubmit 유효성 검사 충족하지 못한 유효성 검사 에러 전부 나옴
					function validateForm(event) {
						event.preventDefault(); // 폼의 기본 제출 동작을 막음
						let isValid = true; // 폼 유효성 여부 초기값은 true로 설정

						// 각 입력 필드에 대해 유효성 검사 함수 호출
						const idValid = validateId();
						const passValid = validatePass();
						const hpValid = validateHp();
						const addrValid = validateAddr();
						const nameValid = validateName();
						const nicknameValid = validateNickname();
						const birthdayValid = validateBirthday();
						const emailValid = validateEmail();

						// 각 입력 필드의 유효성 검사 결과를 종합적으로 확인하여 isValid 결정
						if (!idValid || !passValid || !hpValid || !addrValid
								|| !nameValid || !nicknameValid
								|| !birthdayValid || !emailValid) {
							isValid = false;
						}

						return isValid; // 폼 유효성 여부 반환
					}
				</script>
			</div>
		</div>
	</div>
</body>

</html>
