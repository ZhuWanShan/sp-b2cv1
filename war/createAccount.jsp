<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.spshop.utils.Constants"%>
<%@ include file="jsp/include.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
	<base href="http://${pageForm.site.domain }/" />
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
	<script type="text/javascript" defer="defer" charset="UTF-8" src="js/validation.js"></script>
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
	
	<div class="main_box main122">
		<div class="form_1">
			<div class="main_sortMenuHeight"></div>
		</div>
		<div class="regLoginItem">Login or create an account</div>
		<div class="form_blue1">
			<div class="item_blue1">
				<div class="item_blue_title1">
					<h3>Returning Guests</h3>
					<div class="blue_word">If you have an account, please Login.</div>
				</div>
				<form action="${processCheckWithoutLogin?'/login/cmd/goto_check':'/login' }" method="post">
					<ul class="table_ul1 loginReg">
						<li><span>Your E-mail address:</span> <input name="loginEmail" id="loginEmail" type="text" size="35" maxlength="50" />
							<div class="message_yes"></div>
						</li>
						<li><span>Password: </span><input name="loginPassword" type="password" id="loginPassword" size="35" maxlength="20" />
						</li>
						<li>
							<a href="/recoveryPassword">Forgot your password? Click here</a>
						</li>
						<c:if test="${pageForm.pageProperties.loginError}">
							<li>${pageForm.pageProperties.loginError}</li>
						</c:if>
					</ul>
					<div class="putIn_box2">
						<input type="hidden" name="<%=Constants.ACTION %>" value="<%=Constants.LOGIN_ACTION %>" />
						<input type="submit" class="submit_blue1" value="Login" />
					</div>
					<c:if test="${processCheckWithoutLogin }">
						<ul class="table_ul1 loginReg">
							<li>You can purchase from Honeybuy.com without an account. You can register one next time.</li>
						</ul>
						<div class="putIn_box2">
								<input type="submit" class="submit_blue1" name="asGeust" value="As Guset" />
						</div>
					</c:if>
				</form>
			</div>
			<div class="hei10"></div>
		</div>
		<div class="form_blue2">
			<div class="item_blue2">
				<h1>CREATE A NEW ACCOUNT</h1>
				<div class="loginReg_font">
					<font color="#FF0000">*</font> Indicates required fields<br />We
					respect and protect your personal information.<br />$10 bonus code
					will be instantly sent to your inbox once you sign up,<br />Enter
					the code at check-out on orders over $50, that you can save $10
					right away!
				</div>
				<form action="createAccount.do" method="post" onSubmit="return formsubmit();" style="padding: 0 0 0 80px;">
					<ul class="table_ul1 loginReg">
						<li><i>E-mail address:</i><font>*</font> 
							<input name="email" id="email" size="32" maxlength="100" onBlur="checkemail();" />
						</li>
						<li id="validateEmail" style="display: none" class="message_error"></li>
						<li><i>Create a password:</i><font>*</font> 
							<input name="password" id="password" type="password" onBlur="checkpassword();" size="32" maxlength="20" />
						</li>
						<li id="validatePassword" style="display: none" class="message_error"></li>
						<li><i>Confirm Password:</i><font>*</font> 
							<input name="password2" id="password2" type="password" size="32" maxlength="20" onBlur="checkpassword2();" />
						</li>
						<li id="validatePassword2" style="display: none" class="message_error"></li>
						<li>
							<input name="Conditions" type="checkbox" id="Conditions" value="1" onClick="checkConditions();"> 
							<i> 
								<a href="/c/Terms-Of-Use">I agree to the license.</a> 
							</i>
							<div id="Conditionsinfo" style="float: left;"></div>
						</li>
					</ul>
					<div class="putIn_box2">
						<input type="submit" class="submit_blue2" value="Create a New Account" name="imageField" />
					</div>
				</form>
			</div>
			<div class="hei10"></div>
		</div>
		<div class="hei10"></div>
	</div>

	<!-- Bottom start -->
	<jsp:include page="jsp/bottom/bottom_box.jsp"></jsp:include>
	<!-- Bottom end -->

	<script type="text/javascript" src="js/footer.js"></script>
	<jsp:include page="googleconversion.html" />
</body>
</html>