<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.spshop.utils.AllConstants"%>
<%@ include file="jsp/include.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />

<title>Create a new Account</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" type="text/css" href="css/general.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/footer.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/head.css" />

<script src="js/jquery-1.5.1.js" type="text/javascript"></script>
<script>
	var Image_url = 'http://127.0.0.1:8888/css',root_url = 'http://127.0.0.1:8888/',seller_lang='en-uk';
	var head_SearchKeywordsNo='Enter search keywords or item code here';
	var SearchKeyword='Enter search keywords or item code here';
	var jq=jQuery.noConflict();
	</script>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/ajax.js" type="text/javascript"></script>

<script type="text/javascript" src="../dwr/engine.js"></script>
<script type="text/javascript" src="../dwr/util.js"></script>
<script type="text/javascript" src="../dwr/interface/AjaxService.js"></script>
<script src="js/header.js" type="text/javascript"></script>
<script language="javascript" src="js/common.js"></script>
<script type="text/javascript" defer="defer" charset="UTF-8"
	src="js/validation.js"></script>
</head>
<body>
	<!-- Header start -->
	<jsp:include page="jsp/common/header_top.jsp"></jsp:include>
	<div style="height: 27px"></div>
	<!-- Header end -->

	<div id="allBanner" class="main_box" style="width: 972px; height: 0px;"></div>

	<!-- Top box start -->
	<jsp:include page="jsp/top/top_box.jsp"></jsp:include>
	<script type="text/javascript" src="js/header.js"></script>
	<!-- Top box end -->

	<div class="main_box main13">
		<div class="">
			<div class="main_sortMenuHeight"></div>
		</div>
		<div class="">
			<form action="/recoveryPassword" method="post"
				onsubmit="return validateEmail()">
				<div class="item_blue3">
					<div>
						<h1>Password Recovery</h1>
					</div>
					<div class="explain_box">Notice:Please enter the email
						address you registered in Milanoo.com, the information of your
						original password will be sent to your email. If password still
						has not been recovered, please send email to service@milanoo.com</div>
					<div style="margin: 30px 0 0px 330px;">
						<span>E-mail address: </span> <input name="recoveryEmail" type="text"
							id="recoveryEmail" class="input_1" size="35" />
						<div class="explain_box" id="error"></div>
					</div>
					<div class="putIn_box">
						<input name="maction" type="hidden" value="post" /> <input
							name="Submit4" type="submit" class="submit_blue1" value="Submit" />
					</div>
				</div>
			</form>
		</div>
		<div class="hei10"></div>
	</div>

	<script type="text/javascript" src="../dwr/engine.js"></script>
	<script type='text/javascript' src='../dwr/util.js'></script>
	<script type='text/javascript' src='../dwr/interface/AjaxService.js'></script>
	<script type="text/javascript">
	var error = "";
	function validateEmail(){
		checkEmail();
		if(error != ""){
			var errorDiv = $("error");
			errorDiv.innerHTML = error;
			return false;
		}
		return true;
	}
	function checkEmail(){
		var email = $('recoveryEmail').value;
		var errorDiv = $("error");
		if(email==""){
			errorDiv.innerHTML = 'Email cannot be empty';
			return false;
		}
		var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
		chkFlag = pattern.test(email);
		if(!chkFlag){
			errorDiv.innerHTML = 'Wrong Email format, please re-enter';
			return false;
		}
		AjaxService.validateUserByEmail(email,validateUserByEmailCallBack);
	}
	function validateUserByEmailCallBack(emailExist){
		if(!emailExist){
			error = "email not exist!";
		}
	}
	</script>
</body>
</html>

