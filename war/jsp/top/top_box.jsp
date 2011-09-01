<%@include file="../include.jsp" %>
<ss:site var="site">
	<div class="top_box">
		<div class="logo_box" style="background:url(${site.logo.noChangeUrl}) no-repeat;height:80px;width:230px;">
			<a title="home" href="">Home page</a>
		</div>
		<!--div class="kh_box font_size11"><a href="http://www.milanoo.com/" title="Passion for Fashion!">Passion for Fashion!</a></div-->
		<div class="search">
			<form onsubmit="" id="formss" name="formss" method="get" action="">
				<jsp:include page="search_box.jsp"></jsp:include>
			</form>
		</div>
		<div class="security">
			<a target="_blank" href="${site.featuredCatURL}">
				<span style="width:165px;height:50px;background: url(${site.featuredCat.noChangeUrl }) no-repeat 0px 0px;display:inline-block;float:left" ></span>
			</a>
			<a target="_blank" href="${site.deliveryURL}"><img style="width: 165px;height: 50px;background: url(${site.delivery.noChangeUrl }) no-repeat 0px 0px;;display:inline-block;float:left"/>
			</a>
		</div>
		<jsp:include page="main_menu.jsp"></jsp:include>
	</div>
</ss:site>