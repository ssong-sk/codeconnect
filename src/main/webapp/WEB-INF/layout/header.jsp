<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>헤더</title>
<style type="text/css">
body {
	margin: 0;
	font-size: 14px;
	color: #333;
	background-color: #f8f8f8;
	line-height: 1.42857143;
	font-family: Pretendard Variable, Pretendard JP Variable, -apple-system,
		system-ui, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial,
		Apple SD Gothic Neo, Nanum Gothic, Malgun Gothic, Apple Color Emoji,
		Segoe UI Emoji, Segoe UI Symbol, sans-serif
}

.NavBar_background__SQmnx {
	position: absolute;
	z-index: -1;
	background: hsla(0, 0%, 100%, .88);
	-webkit-backdrop-filter: saturate(150%) blur(32px);
	backdrop-filter: saturate(150%) blur(32px);
	height: 100%;
	width: 100%;
}

.NavBar_className__y2qGg {
	width: 100%;
	position: fixed;
	top: 0;
	border-bottom: 1px solid rgba(0, 0, 0, .08);
	z-index: 800;
}

button, div, h1, h2, h3, h4, h5, h6, input, p, select, span, textarea {
	font-family: Pretendard Variable, Pretendard JP Variable, -apple-system,
		system-ui, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial,
		Apple SD Gothic Neo, Nanum Gothic, Malgun Gothic, Apple Color Emoji,
		Segoe UI Emoji, Segoe UI Symbol, sans-serif;
	font-size: 15px;
	line-height: 22px;
}

.Padding_padding___Nyki {
	height: 60px;
}

a, abbr, acronym, address, applet, article, aside, audio, b, big,
	blockquote, body, canvas, caption, center, cite, code, dd, del, details,
	dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form,
	h1, h2, h3, h4, h5, h6, header, hgroup, html, i, iframe, img, ins, kbd,
	label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby,
	s, samp, section, small, span, strike, strong, sub, summary, sup, table,
	tbody, td, tfoot, th, thead, time, tr, tt, u, ul, var, video {
	margin: 0;
	padding: 0;
	border: 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: inherit;
}

@media ( min-width :1600px) {
	.MainBar_MainBar__40DX7 {
		width: 90%;
		max-width: 1400px;
		margin: 0 auto;
	}
}

@media ( min-width : 1200px) and (max-width: 1599px) {
	.MainBar_MainBar__40DX7 {
		max-width: 1060px;
		width: 90%;
		margin: 0 auto;
	}
}

.MainBar_MainBarNav__pVhal {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	height: 100%;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

.MainBar_MainBarNavLogo__caIek {
	display: flex;
	max-width: 170px;
	min-width: 152px;
	width: 12.1428571429%;
}

.MainBar_MainBarNavLogo__caIek a, .Menu_MenuNav__EOf3X {
	display: flex;
}

a, a:active, a:hover, a:visited {
	color: inherit;
}

a {
	font-family: inherit;
	text-decoration: inherit;
	cursor: pointer;
}

a {
	color: rgba(var(--bs-link-color-rgb), var(--bs-link-opacity, 1));
	text-decoration: none !important;
}

.Menu_MenuNav__EOf3X {
	height: 100%;
	align-items: stretch;
}

.MainBar_MainBarNavLogo__caIek a, .Menu_MenuNav__EOf3X {
	display: flex;
}

ol, ul {
	list-style: none;
}

.Menu_MenuItem__wI1yA {
	margin-right: 40px;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	-webkit-transition: color .2s;
	transition: color .2s;
}

.Menu_MenuItem__wI1yA>a, .Menu_MenuItem__wI1yA>button {
	font-size: 15px;
	font-weight: 600;
	line-height: 22px;
	letter-spacing: .0096em;
	height: 100%;
	display: flex;
	align-items: center;
}

.Menu_jobListLink__GYHAI>span {
	display: flex;
	align-items: center;
}

.SvgIcon_SvgIcon__root__8vwon {
	display: flex;
	align-items: inherit;
	justify-content: inherit;
}

.Menu_categoryIcon__cARwU {
	margin: 0 4px 0 0;
}

.Aside_aside__f0SVC {
	margin-left: auto;
}

.Aside_asideList__3WNyu {
	display: flex;
	align-items: center;
}

.Aside_asideList__3WNyu>li {
	flex-shrink: 0;
}

.Aside_searchButton__Xhqq3 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	-webkit-transition: background-color .15s ease;
	transition: background-color .15s ease;
}

.SvgIcon_SvgIcon__root__8vwon {
	display: flex;
	align-items: inherit;
	justify-content: inherit;
}

.Aside_searchButton__Xhqq3 svg {
	width: 24px;
	height: 24px;
}

.SvgIcon_SvgIcon__root__svg__DKYBi {
	-webkit-user-select: none;
	user-select: none;
	width: 1em;
	height: 1em;
	display: inline-block;
	fill: currentColor;
	flex-shrink: 0;
	font-size: inherit;
}

.Aside_searchButton__Xhqq3.Aside_isNotMobileDevice__WuwWh:hover,
	.Aside_searchButton__Xhqq3:focus-visible {
	background-color: rgba(71, 71, 71, .037);
}

.Aside_asideList__3WNyu>li {
	flex-shrink: 0;
}

.Aside_dashboardButton__WUch3, .Aside_signUpButton__pY721 {
	-webkit-box-shadow: 0 0 0 1px rgba(23, 23, 25, .12);
	box-shadow: 0 0 0 1px rgba(23, 23, 25, .12);
}

.Aside_signUpButton__pY721 {
	margin-left: 12px;
	margin-right: 8px;
	color: #06f;
}

.Button_Button__containedSizeSmall__yIqp0,
	.Button_Button__outlinedSizeSmall__JJmOo {
	padding: 0 14px;
	min-width: 48px;
	height: 32px;
	font-size: 13px;
	font-weight: 600;
	border-radius: 8px;
}

.Button_Button__outlinedAssistive__mBcQK {
	--button-color: #171719;
	color: var(--button-color);
	font-weight: 500;
	-webkit-box-shadow: inset 0 0 0 1px hsla(225, 5%, 46%, .16);
	box-shadow: inset 0 0 0 1px hsla(225, 5%, 46%, .16);
}

.Button_Button__outlinedPrimary__IcVlp, .Button_Button__outlined__H2mkd
	{
	--button-color: #06f;
	color: var(--button-color);
	-webkit-box-shadow: 0 0 0 1px var(--button-color) inset;
	box-shadow: 0 0 0 1px var(--button-color) inset;
}

.Button_Button__outlined__H2mkd {
	background-color: #fff;
}

.Button_Button__root__V1ie3 {
	--button-color: #171719;
	position: relative;
	display: -ms-inline-flexbox;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	vertical-align: middle;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	line-height: normal;
	border: none;
	background-color: none;
	cursor: pointer;
	white-space: nowrap;
}

.Button_Button__label__1Kk0v_1 {
	width: 100%;
	font-size: 13px;
	font-weight: 600;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #06f;
}

.Button_Button__label__1Kk0v_2 {
	width: 100%;
	font-size: 13px;
	font-weight: 600;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #06f;
}

.Button_Button__interaction__kkYaa:hover {
	opacity: .05;
}

.Aside_searchButton__Xhqq3.Aside_isNotMobileDevice__WuwWh:hover,
	.Aside_searchButton__Xhqq3:focus-visible {
	background-color: rgba(71, 71, 71, .037);
}

.Aside_searchButton__Xhqq3.Aside_isNotMobileDevice__WuwWh:hover,
	.Aside_searchButton__Xhqq3:focus-visible {
	background-color: rgba(71, 71, 71, .037);
}

.Button_Button__interaction__kkYaa:focus-visible {
	opacity: .08;
}

.Button_Button__interaction__kkYaa:active {
	opacity: .12;
}

:focus, :focus-visible {
	outline-color: #06f;
}

.Typography_Typography__weightMedium__O0Rdi {
	font-weight: 500;
}

.Typography_Typography__weightBold__e15ql {
	font-weight: 600;
}

.Typography_Typography__label2__BRssq {
	font-size: 13px;
	letter-spacing: .0194em;
	line-height: 18px;
}

.Typography_Typography__root__xYuMs {
	margin: 0;
}

.Button_Button__interaction__kkYaa {
	overflow: hidden;
	position: absolute;
	z-index: 0;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	border-radius: inherit;
	opacity: 0;
	background-color: var(--button-color);
	-webkit-transition: opacity .2s ease;
	transition: opacity .2s ease;
	will-change: opacity;
}

.Typography_Typography__weightMedium__O0Rdi {
	font-weight: 500;
}

.Menu_MenuItem__wI1yA.Menu_fadeItem___FAqd {
	color: #989ba2;
}

.SearchInput_SearchInput__gySrv {
	height: 52px;
	width: 100%;
	margin: 0;
	padding: 0 55px 0 52px;
	border: 1px solid hsla(225, 5%, 46%, .22);
	border-radius: 12px;
	font-size: 18px;
	font-weight: 500;
	color: #171719;
	background: #fff;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	-webkit-appearance: none;
	appearance: none;
}

button, div, h1, h2, h3, h4, h5, h6, input, p, select, span, textarea {
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

input, input:focus, input[type=text], textarea {
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
}

input, input:focus {
	outline: none !important;
}

.SearchInput_SearchClear__Tt2Ze svg {
	width: 24px;
	height: 24px;
}

.SvgIcon_SvgIcon__root__svg__DKYBi {
	-webkit-user-select: none;
	user-select: none;
	width: 1em;
	height: 1em;
	display: inline-block;
	fill: currentColor;
	flex-shrink: 0;
	font-size: inherit;
}

.SearchInput_SearchInputContainer__wGe1Q {
	position: relative;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.SearchInput_SearchInput__gySrv {
	height: 45px;
	width: 100%;
	margin: 0;
	padding: 0 45px 0 47px;
	border: 1px solid hsla(225, 5%, 46%, .22);
	border-radius: 12px;
	font-size: 18px;
	font-weight: 600;
	color: #171719;
	background: #fff;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	-webkit-appearance: none;
	appearance: none;
}

input, input:focus, input[type=text], textarea {
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
}

input, input:focus {
	outline: none !important;
}

:focus, :focus-visible {
	outline-color: #06f;
}

.SearchInput_SearchIcon__zlAMa {
	position: absolute;
	top: 50%;
	left: 20px;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	pointer-events: none;
}

.SearchInput_SearchClear__Tt2Ze svg {
	width: 24px;
	height: 24px;
}

.SearchInput_SearchClear__Tt2Ze svg path {
	fill: rgba(55, 56, 60, .28);
}
</style>
</head>
<body>
	<div role="presentation" class="NavBar_className__y2qGg"
		style="position: fixed;">
		<div class="NavBar_background__SQmnx"></div>
		<div class="MainBar_MainBar__40DX7" role="presentation">
			<nav class="MainBar_MainBarNav__pVhal" style="height: 60px;">
				<div class="MainBar_MainBarNavLogo__caIek">
					<a href="/" aria-label="Wanted" data-attribute-id="gnb"
						data-gnb-kind="jobsfeed"><svg width="112" height="32"
							viewBox="0 0 4744 1356">
							<mask id="WantedLogoSymbolMask_0.08215859813089632"
								maskUnits="userSpaceOnUse" x="38" y="278" width="1272"
								height="869" style="mask-type: alpha;">
							<path
								d="M480 1147C515 1147 546 1119 546 1075V735H451V994C451 1002 444 1004 439 999L185 748C179 741 182 735 191 735H819V640H111C66 640 38 671 38 707C38 724 45 742 62 759L427 1124C443 1141 462 1147 480 1147ZM1064 1131C1199 1131 1310 1020 1310 885C1310 750 1199 640 1064 640H914V735H1064C1145 735 1215 801 1215 885C1215 969 1146 1036 1064 1036C982 1036 914 967 914 885V360C914 313 878 278 832 278H534C486 278 451 314 451 361V640H546V384C546 378 550 373 556 373H808C814 373 819 378 819 384V885C819 1020 929 1131 1064 1131Z"
								fill="#D9D9D9"></path></mask>
							<g mask="url(#WantedLogoSymbolMask_0.08215859813089632)">
							<rect x="117" y="630" width="330" height="116" fill="#216BFF"></rect>
							<path
								d="M556 1075C556 1098.26 547.94 1119.37 533.3 1134.46C519.2 1148.99 500.27 1157 480 1157C456.71 1157 435.91 1148 419.82 1130.96L54.9301 766.07C37.3101 748.45 28.0001 728.03 28.0001 707C28.0001 685.97 36.0501 667 50.6601 652.82C65.8301 638.1 87.2601 630 111 630H196.19V745L441 986.92H556V1075Z"
								fill="url(#WantedLogoGradient0Linear_0.08215859813089632)"></path>
							<path
								d="M441 996.5V361C441 307.98 480.98 268 534 268H556.18L556 1006.92L441 996.5Z"
								fill="url(#WantedLogoGradient1Linear_0.08215859813089632)"></path>
							<mask id="mask1_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="441" y="268" width="110" height="110"
								style="mask-type: alpha;">
							<path d="M441 378H551V268H534C480.98 268 441 307.98 441 361V378Z"></path></mask>
							<g mask="url(#mask1_0.08215859813089632)">
							<rect x="441" y="268" width="220" height="220"
								fill="url(#WantedLogoGradientFallback1_0.08215859813089632)"></rect>
							<foreignObject x="441" y="268" width="220" height="220"
								style="background: conic-gradient(rgb(42, 184, 255) 0deg, rgb(32, 186, 255) 180deg, rgb(32, 186, 255) 270deg, rgb(42, 184, 255) 360deg);"></foreignObject></g>
							<mask id="mask2_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="28" y="630" width="158" height="189"
								style="mask-type: alpha;">
							<path
								d="M185.52 739.98L107.18 818.32L54.93 766.07C37.31 748.45 28 728.03 28 707C28 685.97 36.05 667 50.66 652.82C65.83 638.1 87.26 630 111 630H185.52V739.98Z"></path></mask>
							<g mask="url(#mask2_0.08215859813089632)">
							<rect x="28" y="582.5" width="315" height="315"
								fill="url(#WantedLogoGradientFallback2_0.08215859813089632)"></rect>
							<foreignObject x="28" y="582.5" width="315" height="315"
								style="background: conic-gradient(rgb(113, 126, 255) 0deg, rgb(78, 118, 255) 90deg, rgb(19, 104, 255) 180deg, rgb(26, 106, 255) 225deg, rgb(49, 111, 255) 270deg, rgb(80, 118, 255) 315deg, rgb(113, 126, 255) 360deg);"></foreignObject></g>
							<mask id="mask3_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="367" y="999" width="190" height="158"
								style="mask-type: alpha;">
							<path
								d="M445.5 1000V999.86L556 1033.48V1074.99C556 1098.25 547.94 1119.36 533.3 1134.45C519.2 1148.98 500.27 1156.99 480 1156.99C456.71 1156.99 435.91 1147.99 419.82 1130.95L367.18 1078.32L445.5 1000Z"></path></mask>
							<g mask="url(#mask3_0.08215859813089632)">
							<rect x="288.5" y="843" width="314" height="314"
								fill="url(#WantedLogoGradientFallback3_0.08215859813089632)"></rect>
							<foreignObject x="288.5" y="843" width="314" height="314"
								style="background: conic-gradient(rgb(0, 145, 255) 0deg, rgb(0, 150, 255) 90deg, rgb(0, 137, 255) 135deg, rgb(0, 126, 255) 180deg, rgb(0, 117, 255) 225deg, rgb(0, 110, 255) 270deg, rgb(0, 145, 255) 360deg);"></foreignObject></g>
							<path d="M441 998.5L556 1033.5V950.34H441V998.5Z"
								fill="url(#WantedLogoGradient5Linear_0.08215859813089632)"></path>
							<path d="M556 1058.5L441 998.5L441 961L556 1001L556 1058.5Z"
								fill="url(#WantedLogoGradient6Linear_0.08215859813089632)"></path>
							<path d="M556 725H441V830.5H556V725Z"
								fill="url(#WantedLogoGradient7Linear_0.08215859813089632)"></path>
							<mask id="mask4_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="809" y="630" width="511" height="511"
								style="mask-type: alpha;">
							<path
								d="M965.35 984.2C938.692 957.292 924.003 922.066 924 885V871H809V885C809 953.02 835.55 1017.18 883.78 1065.68C932.09 1114.25 996.03 1141 1064 1141C1131.97 1141 1196.14 1114.26 1244.7 1065.7C1293.26 1017.14 1320 952.92 1320 885C1320 817.08 1293.25 753.08 1244.68 704.78C1196.18 656.56 1132.01 630 1064 630H900V744.99H1064C1100.95 744.99 1136.07 759.43 1162.89 785.64C1190.04 812.19 1205 847.47 1205 884.99C1205 961.42 1140.43 1025.99 1064 1025.99C1027.09 1025.99 992.05 1011.15 965.35 984.2Z"></path></mask>
							<g mask="url(#mask4_0.08215859813089632)">
							<rect x="809" y="630" width="511" height="511"
								fill="url(#WantedLogoGradientFallback4_0.08215859813089632)"></rect>
							<foreignObject x="809" y="630" width="511" height="511"
								style="background: conic-gradient(rgb(255, 90, 0) 0deg, rgb(255, 94, 15) 90deg, rgb(255, 114, 89) 180deg, rgb(255, 142, 189) 270deg, rgb(255, 159, 254) 315deg, rgb(255, 90, 0) 360deg);"></foreignObject></g>
							<rect x="809" y="739" width="115" height="132" fill="#FF8EBD"></rect>
							<mask id="mask5_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="28" y="630" width="1292" height="512"
								style="mask-type: alpha;">
							<path
								d="M924 884.99C924 922.06 938.69 957.29 965.35 984.2C992.05 1011.15 1027.09 1025.99 1064 1025.99C1140.43 1025.99 1205 961.42 1205 884.99C1205 847.47 1190.04 812.19 1162.89 785.64C1136.07 759.43 1100.95 744.99 1064 744.99H556V734.99H441V744.99H196.19L204.82 753.52L28.05 704.22C28.73 684.53 36.7 666.36 50.66 652.82C65.83 638.1 87.26 630 111 630H441V640H556V630H1064C1132.01 630 1196.18 656.56 1244.68 704.78C1293.25 753.08 1320 817.08 1320 885C1320 952.92 1293.26 1017.14 1244.7 1065.7C1196.14 1114.26 1131.97 1141 1064 1141C996.03 1141 932.09 1114.25 883.78 1065.68C835.55 1017.18 809 953.02 809 885H924V884.99Z"></path></mask>
							<g mask="url(#mask5_0.08215859813089632)">
							<path d="M1064 630H176.19L186 745H1064V630Z"
								fill="url(#WantedLogoGradient9Linear_0.08215859813089632)"></path></g>
							<path d="M1011.5 745V630H904V745H1011.5Z"
								fill="url(#WantedLogoGradient10Linear_0.08215859813089632)"></path>
							<mask id="mask6_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="550" y="268" width="374" height="617"
								style="mask-type: alpha;">
							<path
								d="M809 885V745H819V630H809V384C809 383.52 808.48 383 808 383H550V268H832C857.02 268 880.2 277.33 897.29 294.27C914.51 311.35 924 334.69 924 360V630H914V745H924V885H809Z"></path></mask>
							<g mask="url(#mask6_0.08215859813089632)">
							<path
								d="M809 268V885H924V360C924 334.69 914.51 311.35 897.29 294.27C880.2 277.33 857.01 268 832 268H809Z"
								fill="url(#WantedLogoGradient11Linear_0.08215859813089632)"></path></g>
							<path d="M815 268H550V384H815V268Z"
								fill="url(#WantedLogoGradient12Linear_0.08215859813089632)"></path>
							<mask id="mask7_0.08215859813089632" maskUnits="userSpaceOnUse"
								x="812" y="268" width="112" height="111"
								style="mask-type: alpha;">
							<path
								d="M832 268H812.5V378.5H924V360C924 334.69 914.51 311.35 897.29 294.27C880.2 277.33 857.01 268 832 268Z"
								fill="url(#WantedLogoGradient13Linear_0.08215859813089632)"></path></mask>
							<g mask="url(#mask7_0.08215859813089632)">
							<rect x="691" y="257" width="243" height="243"
								fill="url(#WantedLogoGradientFallback5_0.08215859813089632)"></rect>
							<foreignObject x="691" y="257" width="243" height="243"
								style="background: conic-gradient(rgb(109, 177, 255) 0deg, rgb(123, 176, 255) 45deg, rgb(143, 173, 255) 90deg, rgb(180, 168, 255) 180deg, rgb(109, 177, 255) 360deg);"></foreignObject></g></g>
							<path
								d="M4424 1008C4487 1008 4540 981 4569 939V998H4673V278H4569V552C4540 513 4486 488 4423 488C4278 488 4167 605 4167 748C4167 891 4279 1008 4424 1008ZM4424 908C4339 908 4269 835 4269 748C4269 661 4339 588 4424 588C4509 588 4579 661 4579 748C4579 835 4509 908 4424 908ZM3729 706C3733 642 3796 581 3874 581C3952 581 4011 642 4015 706H3729ZM3883 1008C3984 1008 4072 950 4108 870L4025 842C4001 885 3945 915 3884 915C3796 915 3733 861 3729 788H4114C4134 620 4033 488 3883 488C3733 488 3627 595 3627 748C3627 901 3732 1008 3883 1008ZM3510 1007C3541 1007 3572 1000 3592 989V898C3568 910 3547 915 3533 915C3493 915 3473 891 3473 842V580H3592V498H3473V398H3369V498H3289V580H3369V846C3369 947 3421 1007 3510 1007ZM2797 998H2901V714C2901 627 2950 578 3021 578C3092 578 3140 627 3140 714V998H3244V708C3244 567 3179 488 3053 488C2986 488 2926 515 2901 562V498H2797V998ZM2458 908C2373 908 2303 835 2303 748C2303 661 2373 588 2458 588C2543 588 2613 661 2613 748C2613 835 2543 908 2458 908ZM2458 1008C2521 1008 2574 981 2603 939V998H2707V498H2603V552C2574 513 2520 488 2457 488C2312 488 2201 605 2201 748C2201 891 2313 1008 2458 1008ZM1636 998H1735L1828 718L1921 998H2020L2196 498H2087L1972 850L1867 498H1789L1684 850L1569 498H1460L1636 998Z"></path>
							<defs>
							<linearGradient
								id="WantedLogoGradient0Linear_0.08215859813089632" x1="27.7716"
								y1="630.227" x2="555.522" y2="1157.48"
								gradientUnits="userSpaceOnUse">
							<stop stop-color="#4C75FF"></stop>
							<stop offset="0.310893" stop-color="#0B66FF"></stop>
							<stop offset="0.41658" stop-color="#0064FF"></stop>
							<stop offset="0.522267" stop-color="#0067FF"></stop>
							<stop offset="0.733645" stop-color="#0074FF"></stop>
							<stop offset="1" stop-color="#0084FF"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient1Linear_0.08215859813089632" x1="498.59"
								y1="268" x2="498.59" y2="1006.92" gradientUnits="userSpaceOnUse">
							<stop offset="0.0130872" stop-color="#25B9FF"></stop>
							<stop offset="0.632316" stop-color="#07BEFF"></stop>
							<stop offset="0.745954" stop-color="#00BEFF"></stop>
							<stop offset="1" stop-color="#0092FF"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient5Linear_0.08215859813089632" x1="498.5"
								y1="950.34" x2="498.5" y2="1033.49"
								gradientUnits="userSpaceOnUse">
							<stop stop-color="#009FFF"></stop>
							<stop offset="0.578979" stop-color="#0094FF"></stop>
							<stop offset="1" stop-color="#0092FF"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient6Linear_0.08215859813089632" x1="510.338"
								y1="982.668" x2="496.815" y2="1025.94"
								gradientUnits="userSpaceOnUse">
							<stop stop-color="#0098FF" stop-opacity="0"></stop>
							<stop offset="0.249864" stop-color="#0096FF"></stop>
							<stop offset="0.499891" stop-color="#0093FF"></stop>
							<stop offset="0.749808" stop-color="#0091FF" stop-opacity="0.65"></stop>
							<stop offset="1" stop-color="#0090FF" stop-opacity="0"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient7Linear_0.08215859813089632" x1="498.5"
								y1="735.78" x2="498.5" y2="825.5" gradientUnits="userSpaceOnUse">
							<stop stop-color="#0087FF"></stop>
							<stop offset="1" stop-color="#67B8FF" stop-opacity="0"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient9Linear_0.08215859813089632" x1="176"
								y1="688" x2="1064" y2="688" gradientUnits="userSpaceOnUse">
							<stop stop-color="#697DFF"></stop>
							<stop offset="0.0251928" stop-color="#757FFF"></stop>
							<stop offset="0.238039" stop-color="#CF94FF"></stop>
							<stop offset="0.291258" stop-color="#ED9BFF"></stop>
							<stop offset="0.344471" stop-color="#FE9FFF"></stop>
							<stop offset="0.46271" stop-color="#FF99E6"></stop>
							<stop offset="0.580945" stop-color="#FF859C"></stop>
							<stop offset="0.628242" stop-color="#FF786E"></stop>
							<stop offset="0.722828" stop-color="#FF5A00"></stop>
							<stop offset="0.830944" stop-color="#FF5A00"></stop>
							<stop offset="0.999838" stop-color="#FF5A00"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient10Linear_0.08215859813089632" x1="914.8"
								y1="687.5" x2="1006.4" y2="687.5" gradientUnits="userSpaceOnUse">
							<stop stop-color="#FF2900"></stop>
							<stop offset="1" stop-color="#FF5534" stop-opacity="0"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient11Linear_0.08215859813089632" x1="866.5"
								y1="268" x2="866.5" y2="885" gradientUnits="userSpaceOnUse">
							<stop offset="0.0170303" stop-color="#76B0FF"></stop>
							<stop offset="0.2715" stop-color="#9DACFF"></stop>
							<stop offset="0.636231" stop-color="#F3A1FF"></stop>
							<stop offset="0.727132" stop-color="#FF9EFD"></stop>
							<stop offset="0.818033" stop-color="#FF97E8"></stop>
							<stop offset="0.999848" stop-color="#FF8EBD"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient12Linear_0.08215859813089632" x1="550"
								y1="326" x2="812.5" y2="326" gradientUnits="userSpaceOnUse">
							<stop stop-color="#29B8FF"></stop>
							<stop offset="1" stop-color="#6DB1FF"></stop></linearGradient>
							<linearGradient
								id="WantedLogoGradient13Linear_0.08215859813089632" x1="869.5"
								y1="257" x2="869.5" y2="874" gradientUnits="userSpaceOnUse">
							<stop offset="0.0170303" stop-color="#76B0FF"></stop>
							<stop offset="0.2715" stop-color="#9DACFF"></stop>
							<stop offset="0.636231" stop-color="#F3A1FF"></stop>
							<stop offset="0.727132" stop-color="#FF9EFD"></stop>
							<stop offset="0.818033" stop-color="#FF97E8"></stop>
							<stop offset="0.999848" stop-color="#FF8EBD"></stop></linearGradient>
							<radialGradient
								id="WantedLogoGradientFallback1_0.08215859813089632" fx="0%"
								fy="50%" cx="0%" cy="50%" r="50%">
							<stop offset="0%" stop-color="#20BAFF"></stop>
							<stop offset="100%" stop-color="#2AB8FF"></stop></radialGradient>
							<radialGradient
								id="WantedLogoGradientFallback2_0.08215859813089632" fx="40%"
								fy="60%" cx="30%" cy="80%" r="50%">
							<stop offset="0%" stop-color="#1A6AFF"></stop>
							<stop offset="100%" stop-color="#717EFF"></stop></radialGradient>
							<radialGradient
								id="WantedLogoGradientFallback3_0.08215859813089632" fx="40%"
								fy="65%" cx="30%" cy="70%" r="50%">
							<stop offset="0%" stop-color="#0075FF"></stop>
							<stop offset="100%" stop-color="#0096FF"></stop></radialGradient>
							<radialGradient
								id="WantedLogoGradientFallback4_0.08215859813089632" fx="50%"
								fy="0%" cx="100%" cy="5%" r="95%">
							<stop offset="0%" stop-color="#FF5A00"></stop>
							<stop offset="100%" stop-color="#FF8EBD"></stop></radialGradient>
							<radialGradient
								id="WantedLogoGradientFallback5_0.08215859813089632" fx="25%"
								fy="55%" cx="25%" cy="0%" r="55%">
							<stop offset="0%" stop-color="#6DB1FF"></stop>
							<stop offset="100%" stop-color="#8FADFF"></stop></radialGradient></defs></svg></a>
				</div>
				<ul class="Menu_MenuNav__EOf3X" style="margin-bottom: 0px;">
					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="jobs"><a href="/wdlist"
						class="Menu_jobListLink__GYHAI"><span>채용</span></a></li>
					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="event"><a href="/events"><span>커리어</span></a></li>
					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="community"><a href="/community/homelist"><span>커뮤니티</span></a></li>
					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="resume"><a href="/cv/list"><span>이력서</span></a></li>
					<li class="Menu_MenuItem__wI1yA" data-attribute-id="gnb"
						data-gnb-kind="freelancer"><a
						href="https://www.wanted.co.kr/gigs/experts" target="_blank"
						rel="noopener noreferrer"><span>프리랜서</span></a></li>
				</ul>

				<aside class="Aside_aside__f0SVC">
					<ul class="Aside_asideList__3WNyu" style="margin-bottom: 0px;">
						<div class="SearchInput_SearchInputContainer__wGe1Q">
							<form role="presentation" action=".">
								<input class="SearchInput_SearchInput__gySrv" type="search"
									 autocomplete="off" value=""><span
									class="SvgIcon_SvgIcon__root__8vwon SearchInput_SearchIcon__zlAMa"><svg
										class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M9.99949 2.1001C5.63644 2.1001 2.09949 5.63705 2.09949 10.0001C2.09949 14.3631 5.63644 17.9001 9.99949 17.9001C11.8568 17.9001 13.5644 17.2592 14.9132 16.1864L19.8632 21.1365C20.2147 21.4879 20.7846 21.4879 21.136 21.1365C21.4875 20.785 21.4875 20.2151 21.136 19.8637L16.186 14.9136C17.2586 13.5648 17.8995 11.8573 17.8995 10.0001C17.8995 5.63705 14.3625 2.1001 9.99949 2.1001ZM3.89949 10.0001C3.89949 6.63116 6.63055 3.9001 9.99949 3.9001C13.3684 3.9001 16.0995 6.63116 16.0995 10.0001C16.0995 13.369 13.3684 16.1001 9.99949 16.1001C6.63055 16.1001 3.89949 13.369 3.89949 10.0001Z"></path></svg></span>

							</form>
						</div>
						<li class="Aside_signUpButtonContainer___0wTS"><c:if
								test="${sessionScope.loginok==null }">
								<button
									class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Aside_signUpButton__pY721"
									type="button" onclick="location.href='${root}/login/main'"
									data-attribute-id="gnb" data-gnb-kind="signupLogin">
									<span class="Button_Button__label__1Kk0v"> <span
										class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightBold__e15ql">
											회원가입/로그인 </span>
									</span> <span class="Button_Button__interaction__kkYaa"></span>
								</button>
							</c:if> 
							<c:if test="${sessionScope.loginok!=null }">
								<a href="${root}/member/mypage"> <b>${sessionScope.myid}님</b></a>
							</c:if></li>
						<li><a
							class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd Button_Button__outlinedAssistive__mBcQK Button_Button__outlinedSizeSmall__JJmOo Aside_dashboardButton__WUch3"
							type="button" href="/dashboard" data-attribute-id="gnb"
							data-gnb-kind="forEmployers"><span
								class="Button_Button__label__1Kk0v"><span
									class="Typography_Typography__root__xYuMs Typography_Typography__label2__BRssq Typography_Typography__weightMedium__O0Rdi">기업
										서비스</span></span><span class="Button_Button__interaction__kkYaa"></span></a></li>
					</ul>
				</aside>
			</nav>
		</div>
	</div>
	<div class="Padding_padding___Nyki"></div>
</body>
</html>