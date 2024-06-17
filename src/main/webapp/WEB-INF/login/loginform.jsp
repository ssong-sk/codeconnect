<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" type="text/css" href="/css/loginform.css">
<title>Insert title here</title>

</head>
<body>
	<div id="container">
		<div class="content">
			<div class="errorlay">
				<div class="new-login-warp">
					<div class="cNewPageWrap">
						<ul class="cTab">
							<li>
								<button type="button" class="cTab1 on"
									onclick="location.href='#개인'">개인회원</button>
							</li>
							<li>
								<button type="button" class="cTab2"
									onclick="location.href='#기업'">기업회원</button>
							</li>
						</ul>
						<!-- 개인회원탭 -->
						<div class="alone">
							<!-- 로그인입력 -->
							<form action="loginprocess" method="post">

								<div class="cNewPageContainer">
									<fieldset class="">
										<ul class="cLogin-input-idpw">
											<li><input type="text" id=r_id name="r_id"
												class="cInput" autocapitalize="off"
												placeholder="코트커넥트 아이디 또는 이메일 아이디" 
												value="${sessionScope.saveok==null?'':sessionScope.myid }"></li>
											<li><input type="password" id="r_pass" name="r_pass"
												maxlength="20" class="cInput" placeholder="비밀번호"
												tabindex="2">
										</ul>

										<div class="cLogin-save">
											<input type="checkbox" name="cbsave"
												${sessionScope.saveok==null?"":"checked" }><label
												for="SaveID">아이디저장</label>
										</div>

										<button type="submit" class="cDef-btn on" id="btnLogin">로그인</button>

									</fieldset>
								</div>

								<ul class="cLogin-links in-tooltip">
									<li><a href="#" class="lineAfter" id="searchId">아이디 찾기</a></li>
									<li><a href="#" class="lineAfter" id="searchPass">비밀번호
											찾기</a></li>
									<li><a href="/member/memberform" class="JoinLink"
										id="joinlink">회원가입</a></li>

								</ul>
							</form>
							<!-- 로그인기본 -->
							<div class="cNewPageContainer snslogin" id="social_area"
								style="display: block;"></div>

						</div>
					</div>
				</div>
				<div class="bannerWrap">
					<!-- 개인회원 //-->


					<!-- 기업회원 //-->
					<div id="bannerWrap_n" style="display: none;">
						<div class="bnTop">
							<script type="text/javascript"
								src="//nvapi.feeldmc.com/ad/p/in/v1_0/imp?slotid=stw_incruit11_248"></script>
							<a target="_blank"
								href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_incruit11_248&amp;adgroupid=adg_hanih_20240306_1&amp;adid=adi_hanih_20240306_1"><img
								src="https://c.incru.it/2024/03/240305_works_loginbig.png"
								alt="null" width="100%" height="100%" border="0"
								style="padding: 0px; margin: 0px;"></a>
						</div>
						<div class="bnBottom">
							<script type="text/javascript"
								src="//nvapi.feeldmc.com/ad/p/in/v1_0/imp?slotid=stw_incruit11_249"></script>
							<a target="_blank"
								href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_incruit11_249&amp;adgroupid=adg_hanih_20220826_1&amp;adid=adi_hanih_20220826_2"><img
								src="https://c.incru.it/2024/01/240125_sherlockn_440x190.png"
								alt="null" width="100%" height="100%" border="0"
								style="padding: 0px; margin: 0px;"></a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>