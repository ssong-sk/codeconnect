<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>


<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<title>Insert title here</title>
</head>

<body>
		<section class="Section_Section__XyOtJ">
			<c:if test="${sessionScope.loginok==null }">
				<article class="MatchedBanner_MatchedBanner__jSUtn">
					<div class="MatchedBanner_MatchedBanner__info__HEO_b">
						<h6
							class="Typography_Typography__root__RdAI1 Typography_Typography__headline2__vR7L_ Typography_Typography__weightBold__KkJEY MatchedBanner_MatchedBanner__info__title__ciAu_">
							내 이력서를 분석해<br>관심 있을 만한 포지션을 추천해 드려요.
						</h6>
						<button type="button" onclick="location.href='/login/main'"
							class="Button_Button__root__m1NGq Button_Button__contained__qyP2s Button_Button__containedPrimary__kCB60 Button_Button__containedSizeMedium__xBgIW MatchedBanner_MatchedBanner__btn__XNKYB"
							data-attribute-id="jobs__signupLogin__click">
							<span class="Button_Button__label__K0sBs">지금 시작하기</span><span
								class="Button_Button__interaction__1LUyr"></span>
						</button>
					</div>
				</article>
			</c:if>
			<c:if test="${sessionScope.loginok!=null }">
				<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title">Trending Posts</h1>
        <i class="fas fa-chevron-left prev"></i>  //왼쪽 방향 버튼
        <i class="fas fa-chevron-right next"></i>   //오른쪽 방향 버튼
        <div class="post-wrapper">
          <div class="post">
            <img src="img/paris.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">Lorem ipsu eiusmod tempor incididunt ut </a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/architecture.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> Commodo odio aenean sed  </a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/paris.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Quis hendrerit dolor magna eget est lorem ipsum dolor sit. </a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/gyungju.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Elit at imperdiet dui accumsan sit.</a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
			<script>
   $('.post-wrapper').slick({
	   slidesToShow: 4,
	   slidesToScroll: 4,
	   autoplay: true,
	   autoplaySpeed: 2000,
	   nextArrow:$('.next'),
	   prevArrow:$('.prev'),
	 });
   
   </script>
			</c:if>
			</section>
</body>
</html>