<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="true" %>
<%@ page pageEncoding="utf-8" %>
<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE HTML5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>솔리드이엔지 CSP</title>
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="./static/site_pro/css/style.css">
    <script src="./static/site_pro/js/jquery-1.7.1.min.js"></script>
    <script src="./static/site_pro/js/script.js"></script>
    
<!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->

</head>
<body>

<!-- PRO Framework Panel Begin -->
<div id="advanced"><span class="trigger"><strong></strong><em></em></span><div class="bg_pro"><div class="pro_main"><a href="" class="pro_logo"></a><ul class="pro_menu"><li><a href="index.html"><img src="./static/site_pro/images/pro_home.png" alt=""></a></li><li><a href="./static/site_pro/404.html">Pages<span></span></a><ul>	<li><a href="./static/site_pro/under_construction.html">Under Construction</a></li><li><a href="./static/site_pro/intro.html">Intro Page</a></li><li><a href="./static/site_pro/404.html">404 page</a></li></ul></li><li><a href="./static/site_pro/layouts.html">Layouts</a></li><li><a href="./static/site_pro/typography.html">Typography</a></li><li><a href="./static/site_pro/portfolio.html">Gallery Layouts<span></span></a><ul><li><a href="./static/site_pro/portfolio.html">Portfolio</a></li><li><a href="./static/site_pro/just-slider.html">Sliders</a><ul><li><a href="./static/site_pro/just-slider.html">Just Slider</a></li><li><a href="./static/site_pro/kwicks.html">Kwicks Slider</a></li><li><a href="./static/site_pro/functional-slider.html">Functional Slider</a></li></ul></li><li><a href="./static/site_pro/gallery-page1.html">Gallery</a></li></ul></li><li><a href="./static/site_pro/misc.html">Extras<span></span></a><ul><li><a href="./static/site_pro/social_media.html">Social and Media<br> Sharing</a></li><li><a href="./static/site_pro/css3.html">CSS3 Tricks</a></li><li><a href="./static/site_pro/misc.html">Misc</a></li></ul></li></ul><div class="clear"></div></div></div><div class="bg_pro2"></div></div>
<!-- PRO Framework Panel End -->
<div class="bg-main">
	<header>
		<div class="container_24">
			<div class="wrapper">
				<div class="grid_17">
					<h1><a href="/legacymvc">Idealex</a></h1>
				</div>
				<div class="grid_7">
					<form id="search2">
						 <div class="fleft"><input type="text"></div>
						 <a onClick="document.getElementById('search2').submit()">search</a>
					</form>
				</div>
				<!-- 로그인 상황 및 로그아웃관련폼  -->
				<div class="log_container">
					<div>
					<c:choose>
						<c:when test="${session_login != null}">
							<p> 안녕하세요. <b><c:out value="${pageContext.request.remoteUser}" /></b>
							<c:url var="logoutUrl" value="/logoutDo" />
							<form class="form-inline" action="${logoutUrl}" method="post">
	      						<input type="submit" value="로그아웃" />
	      						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    					</form>
						</c:when>
						<c:otherwise>
							<c:url var="loginUrl" value="/login" />
							<form class="form-inline" action="${loginUrl}" method="get">
	      						<input type="submit" value="로그인" />
	      						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    					</form>
						</c:otherwise>
					</c:choose>
					</div>
				</div>
			</div>
		</div>
		<nav class="main-menu">
			<ul class="sf-menu">
				<li class="current"><a href="/legacymvc"><em>솔리드 이엔지</em><strong></strong></a><ul>
						<li><a href="more.html">대표 인사말</a></li>
						<li><a href="more.html">오시는 길</a></li>
						<li><a href="more.html">약도</a></li>
					</ul>
				</li>
				<li><a href="./static/threejs/solidpanorama.html"><em>콘텐츠 목록</em><strong></strong></a></li>
				<li><a href="download_page"><em>수술항법 다운로드</em><strong></strong></a></li>
				<li><a href="blacklist"><em>회원 목록</em><strong></strong></a></li>
				<li><a href="index-4.html"><em>고객사 목록</em><strong></strong></a></li>
				<li><a href="index-5.html"><em>Clients</em><strong></strong></a></li>
				<li class="last"><a href="index-6.html"><em>contacts</em><strong></strong></a></li>
			</ul>
			<div class="clear"></div>
		</nav>
		<div class="pad-slider">
			<div class="main-slider">
				<ul class="items">
					<li>
						<img src="./static/site_pro/images/jdh.jpg" alt="" />
						<div class="slider-banner"><span>솔리드 이엔지1</span></div>
					</li>
					<li>
						<img src="./static/site_pro/images/booth.jpg" alt="" />
						<div class="slider-banner"><span>솔리드 이엔지2</span></div>
					</li>
					<li>
						<img src="./static/site_pro/images/boss.jpg" alt="" />
						<div class="slider-banner"><span>솔리드 이엔지3</span></div>
					</li>
				</ul>
			</div>
		</div>
	</header>
	<section class="padsection">
		<div class="container_24">
			<div class="grid_24">
				<div class="services first">
					<a href="more.html">
						<em>
							<img src="./static/site_pro/images/1page_img1.png" alt="">
							<img src="./static/site_pro/images/1page_img1-hover.png" alt="" class="image-hover">
						</em>
						<span>Our <strong>Business</strong></span>
					</a>
				</div>
				<div class="services">
					<a href="more.html">
						<em>
							<img src="./static/site_pro/images/1page_img2.png" alt="">
							<img src="./static/site_pro/images/1page_img2-hover.png" alt="" class="image-hover">
						</em>
						<span>Our <strong>Approach</strong></span>
					</a>
				</div>
				<div class="services">
					<a href="more.html">
						<em>
							<img src="./static/site_pro/images/1page_img3.png" alt="">
							<img src="./static/site_pro/images/1page_img3-hover.png" alt="" class="image-hover">
						</em>
						<span>Lead <strong>Generation</strong></span>
					</a>
				</div>
				<div class="services">
					<a href="more.html">
						<em>
							<img src="./static/site_pro/images/1page_img4.png" alt="">
							<img src="./static/site_pro/images/1page_img4-hover.png" alt="" class="image-hover">
						</em>
						<span>Corporate <strong>Governance</strong></span>
					</a>
				</div>
				<div class="services last">
					<a href="more.html">
						<em>
							<img src="./static/site_pro/images/1page_img5.png" alt="">
							<img src="./static/site_pro/images/1page_img5-hover.png" alt="" class="image-hover">
						</em>
						<span>Marketing <strong>Services</strong></span>
					</a>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div class="wrapper">
				<div class="grid_24 padline">
					<div class="lineH"></div>
				</div>
			</div>
			<div class="wrapper">
				<div class="grid_8">
					<h2>솔리드이엔지1</h2>
					<img src="./static/site_pro/images/1page_1.jpg" alt="">
					<p class="pad">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려강산. 대한사람 대한으로 길이 보전하세.</p>
					<a href="more.html" class="button">Read More</a>
				</div>
				<div class="grid_8">
					<h2>솔리드이엔지2</h2>
					<img src="./static/site_pro/images/1page_2.jpg" alt="">
					<p class="pad">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려강산. 대한사람 대한으로 길이 보전하세.</p>
					<a href="more.html" class="button">Read More</a>
				</div>
				<div class="grid_8">
					<h2>솔리드이엔지3</h2>
					<img src="./static/site_pro/images/1page_3.jpg" alt="">
					<p class="pad">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려강산. 대한사람 대한으로 길이 보전하세.</p>
					<a href="more.html" class="button">Read More</a>
				</div>
			</div>
			<div class="wrapper">
				<div class="grid_24">
					<div class="padline2"><div class="lineH"></div></div>
					<h2 class="padtitle22">컨소시엄</h2>
					<ul class="partners">
						<li><a href="http://knuh.knu.ac.kr"><img src="./static/site_pro/images/knuh.png" alt=""></a></li>
						<li><a href="http://www.kaist.edu/html/en/index.html"><img src="./static/site_pro/images/KAIST_logo.png" alt=""></a></li>
						<li><a href="http://www.cukrnd-iacf.ac.kr"><img src="./static/site_pro/images/catholic.png" alt=""></a></li>
						<li><a href="http://offedu.konkuk.ac.kr/"><img src="./static/site_pro/images/ku.png" alt=""></a></li>
						<li><a href="http://www.skonec.com"><img src="./static/site_pro/images/skonec.png" alt=""></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>	
</div>
<footer>
	<div class=" container_24">
		<div class="wrapper">
			<div class="grid_6 suffix_2">
				<h1 class="footer-logo"><a href="index.html">idealex</a></h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ultricies odio magna.</p>
				<p class="color1 privacy">&copy; 2012 <span>|</span>  <a href="index-7.html">Privacy Policy</a> More <a rel="nofollow" href="http://www.templatemonster.com/category.php?category=0&type=1" target="_blank"> at TemplateMonster.com</a></p>
			</div>
			<div class="grid_7 suffix_2">
				<h4>Related Links</h4>
				<div class="wrapper">
					<div class="grid_4 alpha">
						<ul class="footer-list">
							<li><a href="more.html">About Us</a></li>
							<li><a href="more.html">Testimonials</a></li>
							<li><a href="more.html">Our Staff</a></li>
							<li><a href="more.html">Events &amp; Press</a></li>
							<li><a href="more.html">Contact Us</a></li>
						</ul>
					</div>
					<div class="grid_3 omega">
						<ul class="footer-list">
							<li><a href="more.html">Sign Up</a></li>
							<li><a href="more.html">Forums</a></li>
							<li><a href="more.html">Affiliate Program</a></li>
							<li><a href="more.html">FAQ</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="grid_7">
				<h4>Follow Us</h4>
				<ul class="tooltips">
					<li><a href="more.html"><img src="./static/site_pro/images/icon1.png" alt=""><span>RSS</span></a></li>
					<li><a href="more.html"><img src="./static/site_pro/images/icon3.png" alt=""><span>Facebook</span></a></li>
					<li><a href="more.html"><img src="./static/site_pro/images/icon2.png" alt=""><span>Twitter</span></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

</body>
</html>