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
						<dl>
							<dt>아이디</dt>
							<dd class="j_nameWrap">
								<input type="text" maxlength="20" title="" value=""
									id="txtUserId" name="txtUserId"
									placeholder="4~20자의 영문 소문자, 숫자 사용 가능" auth="false"
									autocomplete="off" tabindex="1">
								<button type="button" onclick="" class="cRemove"
									style="display: none;" id="id_cremove">
									<span>지우기</span>
								</button>
								<span id="error_id" class="input_error_t hide">이미 사용중인
									아이디입니다. 다른 아이디를 입력해주세요.</span>
							</dd>
						</dl>

						<dl>
							<dt>비밀번호</dt>
							<dd class="j_nameWrap">
								<input type="password" maxlength="20" title="" value=""
									id="txtPassword1" name="txtPassword1"
									placeholder="8~20자의 영문, 숫자, 특수문자 조합" auth="false"
									autocomplete="new-password" tabindex="2" required="">
								<button type="button" onclick="" class="cRemove"
									style="display: none;" id="password1_cremove">
									<span>지우기</span>
								</button>
							</dd>

							<dd class="j_nameWrap pw_2mt">
								<input type="password" maxlength="20" title="" value=""
									id="txtPassword2" name="txtPassword2" placeholder="비밀번호 확인"
									autocomplete="new-password" tabindex="3" required="">
								<button type="button" onclick="" class="cRemove"
									style="display: none;" id="password2_cremove">
									<span>지우기</span>
								</button>

								<span id="error_password" class="input_error_t hide">필수
									입력 사항입니다.</span>
							</dd>
						</dl>

						<dl>
							<dt>이름</dt>
							<dd class="j_nameWrap">
								<input type="text" placeholder="이름(실명)" class="" name="username"
									id="username" value="" autocomplete="off" maxlength="50"
									errormsg="error_username" auth="false"
									data-placeholder-bound="true" data-placeholder-value="이름"
									data-placeholder-active="true" data-placeholder-maxlength="20"
									style="ime-mode: active;" tabindex="4">
								<button type="button" onclick="" class="cRemove"
									style="display: none" id="username_cremove">
									<span>지우기</span>
								</button>
								<span id="error_username" class="input_error_t hide">필수
									입력 사항입니다.</span> <span id="error_man" class="input_error_t hide">성별을
									선택해주세요.</span>
							</dd>
						</dl>
						<dl>
							<dt>성별</dt>
							<dd class="gender_box_c">
								<p class="last gender_check">
									<input type="radio" name="sex" id="man" value="1"
										class="gender_chk_r" errormsg="error_man" tabindex="5"
										onclick="genderChk();"><label for="man"
										class="gen-box box_man_gen">남자</label> <input type="radio"
										name="sex" id="woman" value="2" class="gender_chk_r"
										errormsg="error_man" tabindex="6" onclick="genderChk();"><label
										for="woman" class="gen-box box_woman_gen">여자</label> <input
										type="hidden" id="infogender" name="infogender" value="">
								</p>
							</dd>
						</dl>
						<dl>
							<dt>생년월일</dt>
							<dd class="j_birthWrap">
								<input type="tel" placeholder="숫자 8자리 (ex. 19980909)" class=""
									maxlength="8" id="birthday" name="birthday"
									onkeyup="phoneNumChk(this);" value="" tabindex="7">
								<button type="button" onclick="" class="cRemove"
									style="display: none" id="birthday_cremove">
									<span>지우기</span>
								</button>
								<span id="error_Birth" class="input_error_t hide">필수 입력
									사항입니다.</span>
							</dd>
						</dl>
						<dl id="IpEmail_Kr">
							<dt>이메일</dt>
							<dd class="posBtn_R j_emailWrap">
								<input type="email" name="txtEmail" id="txtEmail" value=""
									class="" maxlength="50" placeholder="이메일" autocomplete="off"
									errormsg="error_txtEmail" auth="false"
									data-placeholder-bound="true" data-placeholder-value="이메일(아이디)"
									data-placeholder-active="true" data-placeholder-maxlength="20"
									style="ime-mode: inactive" tabindex="8">
								<button type="button" onclick="" class="cRemove"
									style="display: none" id="txtEmail_cremove">
									<span>지우기</span>
								</button>
								<div class="suggestBox autoCom_inner"
									id="divEmailAutocompleteBox">
									<div class="suggestBox_list">
										<div id="autocompletewraplist_comnm"
											class="list_scroll ps-container ps-theme-default ps-active-y"
											data-ps-id="c6940bf4-a5dd-579a-4622-256b246cd961">
											<div class="ps-scrollbar-x-rail"
												style="left: 0px; bottom: 3px;">
												<div class="ps-scrollbar-x" tabindex="0"
													style="left: 0px; width: 0px;"></div>
											</div>
											<div style="display: none;" id="divEmailAutocomplete">
											</div>
										</div>
									</div>
								</div>
								<span id="error_txtEmail" class="input_error_t hide">이메일
									형식이 올바르지 않습니다.</span>
							</dd>
						</dl>

						<dl id="IpEmail_Etc" style="display: none">
							<div class="cCerti-toolBox2">
								<dt>
									<button class="toolBox2_btn">이메일</button>
								</dt>

								<div class="cCerti-toolBox2-in">
									<p>해외거주 이메일 인증</p>
									<span>해외 거주자는 이메일 인증을 통해 회원가입이 가능합니다.</span>
									<button type="button" class="cCerti-btnClose2 small" onclick="">
										<span>닫기</span>
									</button>
								</div>
							</div>
							<dd class="email_ad_wrap">
								<input type="email" name="txtEmail2" id="txtEmail2" value=""
									class="j_email_ad" maxlength="50" placeholder="이메일"
									autocomplete="off" errormsg="error_txtEmail" auth="false"
									data-placeholder-bound="true" data-placeholder-value="이메일(아이디)"
									data-placeholder-active="true" data-placeholder-maxlength="20"
									style="ime-mode: inactive" tabindex="9">
								<button type="button" onclick="" class="cRemove"
									style="display: none" id="txtEmail2_cremove">
									<span>지우기</span>
								</button>
								<input type="hidden" name="txtEmail2_orgin" id="txtEmail2_orgin"
									value="">

								<div class="suggestBox2 autoCom_inner"
									id="divEmailAutocompleteBox2">
									<div class="suggestBox2_list">
										<div id="autocompletewraplist_comnm"
											class="list_scroll ps-container ps-theme-default ps-active-y"
											data-ps-id="c6940bf4-a5dd-579a-4622-256b246cd961">
											<div class="ps-scrollbar-x-rail"
												style="left: 0px; bottom: 3px;">
												<div class="ps-scrollbar-x" tabindex="0"
													style="left: 0px; width: 0px;"></div>
											</div>
											<div style="display: none;" id="divEmailAutocomplete2">
											</div>
										</div>
									</div>
								</div>

								<button type="button" class="certifi_num_btn" id="btn_emailsend">인증번호
									발송</button>
								<span id="error_txtEmail2" class="input_error_t hide">이메일
									형식이 올바르지 않습니다.</span>
							</dd>
							<dd id="divEmailAuthLayer" class="certifi_num_wrap hide">
								<input type="hidden" name="origEmailAuthNo" id="origEmailAuthNo"
									value=""> <input type="tel" class="j_email_ad "
									name="EmailAuthNo" id="EmailAuthNo" value="" maxlength="6"
									onkeydown="digit_check(event);" onkeyup="phoneNumChk(this);"
									placeholder="인증번호 숫자 6자리" autocomplete="off"
									errormsg="error_AuthNo" auth="false"
									data-placeholder-bound="true"
									data-placeholder-value="인증번호 숫자 6자리"
									data-placeholder-active="true" data-placeholder-maxlength="20"
									tabindex="10"> <span class="time_num_join"
									id="time_email"></span>
								<button type="button" class="certifi_num_btn" id="btn_emailauth"
									tabindex="11" disabled="">인증</button>
								<span id="error_EmailAuthNo" class="input_error_t hide">인증번호를
									다시 확인해주세요.</span>
							</dd>
						</dl>

						<dl id="IpAddr_Phone">
							<dt>휴대폰 번호</dt>
							<dd id="IpAddr_Kr" class="phone_num_wrap">
								<input type="tel" class="j_phone_num" name="telNo" id="telNo"
									value="" maxlength="15" placeholder="- 없이 숫자만 입력"
									autocomplete="off" errormsg="error_telNo" auth="false"
									data-placeholder-bound="true" data-placeholder-value="휴대폰"
									data-placeholder-active="true" data-placeholder-maxlength="20"
									tabindex="12">
								<button type="button" onclick="" class="cRemove"
									style="display: none" id="telNo_cremove">
									<span>지우기</span>
								</button>
								<button type="button" class="certifi_num_btn" id="btn_authsend"
									disabled="">인증번호 발송</button>
								<span id="error_telNo" class="input_error_t hide">휴대폰 번호를
									입력해주세요.</span> <input type="hidden" name="telNo_orgin"
									id="telNo_orgin" value="">
							</dd>

							<dd id="IpAddr_Etc" class="j_hpWrap hide">
								<input type="tel" name="telNo2" id="telNo2" value=""
									maxlength="15" placeholder="- 없이 숫자만 입력" autocomplete="off"
									errormsg="error_telNo" auth="false"
									data-placeholder-bound="true" data-placeholder-value="휴대폰"
									data-placeholder-active="true" data-placeholder-maxlength="20"
									tabindex="13">
								<button type="button" onclick="" class="cRemove"
									style="display: none" id="telNo2_cremove">
									<span>지우기</span>
								</button>
							</dd>
							<dd id="divAuthLayer" class="certifi_num_wrap hide">
								<input type="hidden" name="origAuthNo" id="origAuthNo" value="">
								<input type="tel" class="j_phone_num " name="AuthNo" id="AuthNo"
									value="" maxlength="6" onkeyup="phoneNumChk(this);"
									placeholder="인증번호" autocomplete="off" errormsg="error_AuthNo"
									auth="false" data-placeholder-bound="true"
									data-placeholder-value="인증번호" data-placeholder-active="true"
									data-placeholder-maxlength="20" tabindex="14"> <span
									class="time_num_join" id="time_auth"></span>
								<button type="button" class="certifi_num_btn" id="btn_auth"
									tabindex="8" disabled="">인증</button>
								<span id="error_AuthNo" class="input_error_t hide">인증번호를
									다시 확인해주세요.</span>
							</dd>
						</dl>

						<dl>
							<!--<button class="footer_join_ybtn" type="button">가입하기</button>-->
							<button class="footer_join_nbtn" type="button" id="bnt_join"
								onclick="goCL(this,'18975','edit','저장하기');" tabindex="10"
								disabled="">가입하기</button>
							<!--<img alt="처리중입니다. 잠시만 기다려주십시오." src="//i.incru.it/ui/static/image/common/load_an_300x50.gif" class="img_progress" style="display:none;">//-->
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
