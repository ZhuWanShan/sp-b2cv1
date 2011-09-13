<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="include.jsp" %>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">
	
	
	<title>${pageForm.category.pageTitle}</title>
	<meta name="description"
		content="${pageForm.category.description}">
	<meta name="keywords"
		content="${pageForm.category.relatedKeyword}">
		
	<link rel="stylesheet" type="text/css"
		href="css/header.css">
	<link rel="stylesheet" type="text/css"
		href="css/general.css">
	<link rel="stylesheet" type="text/css"
		href="css/index.css">
	<link rel="stylesheet" type="text/css"
		href="css/footer.css">
	<link rel="stylesheet" type="text/css"
		href="css/global.css">
	<link rel="stylesheet" type="text/css"
		href="css/head.css">


	<script src="js/jquery-1.5.1.js"
		type="text/javascript"></script>
	<script>
	var Image_url = 'http://127.0.0.1:8888/css',root_url = 'http://127.0.0.1:8888/',seller_lang='en-uk';
	var head_SearchKeywordsNo='Enter search keywords or item code here';
	var SearchKeyword='Enter search keywords or item code here';
	var jq=jQuery.noConflict();
	</script>
	<script src="js/common.js"
		type="text/javascript"></script>
	<script src="js/ajax.js"
		type="text/javascript"></script>
	
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
	
	<!-- Main box start -->
	<div class="main_box main122">
	<div class="hei10"></div>
	<div class="form_blue3">
		<div class="item_blue3">
			<h1>Edit Profile</h1>
			<form action="/editProfile" method="post" style="padding: 0 0 0 80px;">
				<input type="hidden" name="isModify" value="true">
				<ul class="table_ul1 loginReg">
					<li><i>First Name:</i>
						<input name="firstName" id="firstName" size="32" maxlength="100" value="${pageForm.pageProperties.userProfile.firstName }"/>
					</li>
					<li><i>Last Name:</i>
						<input name="lastName" id="lastName" size="32" maxlength="100" value="${pageForm.pageProperties.userProfile.lastName }"/>
					</li>
					<li><i>Telephone:</i>
						<input name="telephone" id="telephone" size="32" maxlength="100" value="${pageForm.pageProperties.userProfile.telephone }"/>
					</li>
				</ul>
				<div class="putIn_box2">
					<input type="submit" class="submit_blue2"
						value="Save Modifications" name="imageField" />
				</div>
			</form>
		</div>
		<div class="hei10"></div>
	</div>
	<div class="hei10"></div>
	</div>
	<!-- Main box end -->
	
	<div class="hei10"></div>
	
	<script type="text/javascript" src="js/index.js"></script>
	
	<div id="allBanner_tmp" class="main_box" style="position: absolute; left: 305.5px; top: 27px;"></div>
	
	<!-- Bottom start -->
	<jsp:include page="bottom/bottom_box.jsp"></jsp:include>
	<!-- Bottom end -->
	
	<script type="text/javascript" src="js/footer.js"></script>
</body>
</html>