<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="include.jsp" %>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">
	<base href="http://${pageForm.site.domain }/" />
	
	<title>${pageForm.category.pageTitle}</title>
	<meta name="description" content="${pageForm.category.description}">
	<meta name="keywords" content="${pageForm.category.relatedKeyword}">
	
	<link rel="stylesheet" type="text/css" href="../css/header.css">
	<link rel="stylesheet" type="text/css" href="../css/general.css">
	<link rel="stylesheet" type="text/css" href="../css/index.css">
	<link rel="stylesheet" type="text/css" href="../css/footer.css">
	<link rel="stylesheet" type="text/css" href="../css/global.css">
	<link rel="stylesheet" type="text/css" href="../css/head.css">
	
	<script src="../js/jquery-1.5.1.js" type="text/javascript"></script>
	
	<script>
		var Image_url = 'http://127.0.0.1:8888/css', root_url = 'http://127.0.0.1:8888/', seller_lang = 'en-uk';
		var head_SearchKeywordsNo = 'Enter search keywords or item code here';
		var SearchKeyword = 'Enter search keywords or item code here';
		var jq = jQuery.noConflict();
	</script>
	<script src="../js/common.js" type="text/javascript"></script>
	<script src="../js/ajax.js" type="text/javascript"></script>

</head>
<body>
	<!-- Header start -->
	<jsp:include page="common/header_top.jsp"></jsp:include>
	<div style="height:27px"></div>
	<!-- Header end -->
	
	<div id="allBanner" class="main_box" style="width: 972px; height: 0px;"></div>
	
	<!-- Top box start -->
	<jsp:include page="top/top_box.jsp"></jsp:include>
	<script type="text/javascript" src="../js/header.js"></script>
	<!-- Top box end -->
	
	<!-- Main box start -->
	<div class="main_box"></div>
	<div class="main_box">
		<h1>Page will redirect to Paypal after 5 seconds</h1>
		<h2>Order: ${defaultOrder.name }</h2>
		<h2>Price: ${defaultOrder.totalPrice } + ${defaultOrder.dePrice }</h2>
		<form action="https://sandbox.paypal.com/cgi-bin/webscr" method="post" id="paypaysubmitForm">
			<input type="hidden" name="cmd" value="_xclick">
			<input type="hidden" name="business" value="s1@hp.com">
			<input type="hidden" name="item_name" value="${defaultOrder.name }">
			<input type="hidden" name="amount" value="${defaultOrder.totalPrice + defaultOrder.dePrice }">
			<input type="hidden" name="currency_code" value="USD">
			<input type="hidden" name="lc" value="US">
			<input type="hidden" name="notify_url" value="http://www.honeybuy.com/checkorder">
			<input type="hidden" name="return" value="http://www.honeybuy.com/">
			<input type="hidden" name="return_url" value="http://www.honeybuy.com/">
			<ss:site var="siteDefault">
				<input type="hidden" name="return" value="${siteDefault.domain }">
			</ss:site>
			<%-- 
			<input type="button" id="paypaysubmit" style="background-image: url(https://www.paypal.com/en_US/i/btn/x-click-but23.gif);width: 72px;height: 27px"
			border="0" alt="Make payments with PayPal - it's fast, free and secure!" >--%>
		</form>
	</div>

	<!-- Main box end -->
		<script type="text/javascript">
			jq(document).ready(function(){
				setTimeout(function(){
					jq("#paypaysubmitForm").submit();
				},5000);
			});
									
	</script>
	<!-- Bottom start -->
	<jsp:include page="bottom/bottom_box.jsp"></jsp:include>
	<!-- Bottom end -->
	
	<script type="text/javascript" src="../js/footer.js"></script>
</body>
</html>