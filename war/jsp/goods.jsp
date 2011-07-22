<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link media="all" href="//s7.addthis.com/static/r07/widget58.css" type="text/css" rel="stylesheet"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">
         
   
<title>
	XXXX Product - Spark's Shop
</title> 
  <meta name="description" content=" Spark's Shop ">
  <meta name="keywords" content="spark leon tom denton">
  
<link rel="stylesheet" type="text/css" href="http://www.mlo.me/image/endefault/header.css">
<link rel="stylesheet" type="text/css" href="http://www.mlo.me/image/endefault/general.css">
<link rel="stylesheet" type="text/css" href="http://www.mlo.me/image/endefault/index.css">
<link rel="stylesheet" type="text/css" href="http://www.mlo.me/image/endefault/footer.css">
<link rel="stylesheet" type="text/css" href="http://www.mlo.me/image/default/global.css">
<link rel="stylesheet" type="text/css" href="http://www.mlo.me/image/default/header.css">

<script src="http://www.mlo.me/javascript/jquery1.5.1.js" type="text/javascript"></script>
<script>
var Image_url = 'http://www.mlo.me/image/endefault/',root_url = 'http://www.milanoo.com/',seller_lang='en-uk';
var head_SearchKeywordsNo='Enter search keywords or item code here';
var SearchKeyword='Enter search keywords or item code here';
var jq=jQuery.noConflict();
</script>
<script src="http://www.mlo.me/javascript/mlcommon.js" type="text/javascript"></script>
<script src="http://www.mlo.me/javascript/ajax.js" type="text/javascript"></script>

</head>
<body>
	<!-- Header start -->
	<jsp:include page="common/header_top.jsp"></jsp:include>
	<div style="height:27px"></div>
	<!-- Header end -->
	
	<div id="allBanner" class="main_box" style="width: 972px; height: 0px;"></div>
	
	<!-- Top box start -->
	<jsp:include page="top/top_box.jsp"></jsp:include>
	<script type="text/javascript" src="js/header.js"></script>
	<!-- Top box end -->

	<script>
		jq('#textfield').w_nullInputState(head_SearchKeywordsNo.htmlToStr());
		jq(function(){jq('#textfield').w_autoComplete({url:'/index.php?action=ajax&menu=searchkeyword',nodeclick:function(a){jq('#formss').submit();},waittime:300});});
		jq('#textfield').next().bind('click',checksearch);
		function checksearch(){
			if(jq.trim(jq('#textfield').val())=='' || jq('#textfield').val()==head_SearchKeywordsNo.htmlToStr()){
				return false;
			}
		}
		
		// Call main menu method
		mainmenu();
	</script>

	<script type="text/javascript">var addthis_pub = 'Milanoo';</script>
	
	<script src="http://www.mlo.me/javascript/addthis.js" type="text/javascript"></script>
	
	<script>var pic_high=0;</script>
	
	<link type="text/css" rel="stylesheet" href="http://www.mlo.me/image/endefault/thing_item/thing_item.css">
	<link type="text/css" rel="stylesheet" href="http://www.mlo.me/image/default/thing_item/thing_item.css">
	<link media="screen" href="http://www.mlo.me/image/endefault/thing_item/jquery.fancybox-1.3.4.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript" src="http://www.mlo.me/javascript/jq_ui_thing_item/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="http://www.mlo.me/javascript/jq_ui_thing_item/jquery.fancybox-1.3.4.pack.js"></script>

	<!-- Main box start -->
	<div class="main_box">
		<jsp:include page="wrapper/path_title.jsp"></jsp:include>
		<div class="item_ad_box"> </div>
		<jsp:include page="goods/correlation_thing.jsp"></jsp:include>
		<div class="item_ad_box"> </div>
		<jsp:include page="goods/goods_info_top.jsp"></jsp:include>
		<jsp:include page="goods/goods_info_bottom.jsp"></jsp:include>
	</div>
	<!-- Main box end -->

</body>
</html>