<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="jsp/include.jsp"%>
<html>
<head>
<base href="http://${pageForm.site.domain }/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">

<meta property="fb:page_id" content="181834808501125" />

<title>${pageForm.category.pageTitle}</title>
<meta name="description" content="${pageForm.category.description}">
<meta name="keywords" content="${pageForm.category.relatedKeyword}">

<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/general.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/head.css">
<link href="css/mainbox.css" type="text/css" rel="stylesheet" />

<script src="js/jquery-1.5.1.js" type="text/javascript"></script>
<script>
	var Image_url = 'http://127.0.0.1:8888/css', root_url = 'http://127.0.0.1:8888/', seller_lang = 'en-uk';
	var head_SearchKeywordsNo = 'Enter search keywords or item code here';
	var SearchKeyword = 'Enter search keywords or item code here';
	var jq = jQuery.noConflict();
</script>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/ajax.js" type="text/javascript"></script>
<script src="http://cdn.gigya.com/js/socialize.js?apiKey=2_1UXpzvtcCUTsgsqVzgFllQgReHnrU1ZScSL7tJAC1ftCy_DMCPUi2iTExpYFaddy"></script>
<script src="js/ga.js" type="text/javascript"></script>

<link href="https://plus.google.com/109978880912693970020" rel="publisher" />
</head>
<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- Header start -->
	<jsp:include page="jsp/common/header_top.jsp"></jsp:include>
	<div style="height: 27px"></div>
	<!-- Header end -->

	<div id="allBanner" class="main_box" style="width: 972px; height: 0px;"></div>

	<!-- Top box start -->
	<jsp:include page="jsp/top/top_box.jsp"></jsp:include>
	<script type="text/javascript" src="js/header.js"></script>
	<!-- Top box end -->

	<!-- Main box start -->
	<jsp:include page="jsp/wrapper/main_box.jsp"></jsp:include>
	<!-- Main box end -->

	<div id="allBanner_tmp" class="main_box"
		style="position: absolute; left: 305.5px; top: 27px;"></div>

	<!-- Bottom start -->
	<jsp:include page="jsp/bottom/bottom_box.jsp"></jsp:include>
	<!-- Bottom end -->

	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/footer.js"></script>
</body>
</html>