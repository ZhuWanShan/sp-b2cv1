<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="ad-slider">
	<ul class="main-content-slider">
		<li><div class="sliderContent1"></div></li>
		<li><div class="sliderContent2"></div></li>
		<li><div class="sliderContent3"></div></li>
		<li><div class="sliderContent1"></div></li>
		<li><div class="sliderContent2"></div></li>
		<li><div class="sliderContent3"></div></li>
	</ul>
</div>
<script type="text/javascript">
$(".ad-slider").ready(function(){
	  $('.main-content-slider').bxSlider({
		  auto: true,
		  autoControls: true,
// 		  slideWidth: 333,
// 		  minSlides: 2,
// 		  maxSlides: 3,
// 		  slideMargin: 5
		  mode: 'horizontal',
		  useCSS: false,
		  infiniteLoop: true,
		  easing: 'easeOutElastic',
		  speed: 3000
		});
	});
</script>