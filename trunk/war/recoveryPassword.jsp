<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />


<title>Create a new Account</title>
<meta name="description"
	content=" discount Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online products,low prices Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,cheap Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online for Sale ,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online Store,Buy Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,China Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online manufacturer,provided by China Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online just for worldwide Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online buyers " />
<meta name="keywords"
	content="discount Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online products,low prices Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,cheap Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online for Sale ,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online Store,Buy Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,China Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online,Cheap Wedding Dresses, Costumes & More Wholesale Fashion Apparel for Discount Online manufacturer" />
<link rel="stylesheet" type="text/css"
	href="https://www.mlo.me/image/default/global.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.mlo.me/image/default/header.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.mlo.me/image/endefault/header.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.mlo.me/image/endefault/general.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.mlo.me/image/endefault/footer.css" />
<script src="https://www.mlo.me/javascript/jquery1.5.1.js"
	type="text/javascript"></script>
<script>
	var Image_url = 'https://www.mlo.me/image/endefault/', root_url = 'https://www.milanoo.com/', seller_lang = 'en-uk';
	var head_SearchKeywordsNo = 'Enter search keywords or item code here';
	var SearchKeyword = 'Enter search keywords or item code here';
	var jq = jQuery.noConflict();
</script>
<script src="https://www.mlo.me/javascript/mlcommon.js"
	type="text/javascript"></script>
<script src="https://www.mlo.me/javascript/ajax.js"
	type="text/javascript"></script>
<script type='text/javascript'
	src='https://partner.googleadservices.com/gampad/google_service.js'></script>
<script type='text/javascript'>
	GS_googleAddAdSenseService("ca-pub-3756433676281534");
	GS_googleEnableAllServices();
</script>

</head>
<body>
	<%@ include file="jsp/include.jsp"%>

	<script src="https://www.mlo.me/javascript/header.js"
		type="text/javascript"></script>

	<body>

		<div class="main_box main13">
			<div class="">
				<div class="main_sortMenuHeight"></div>
			</div>
			<div class="">
				<form action="recoveryPassword.do" method="post"
					onsubmit="return validateEmail()">
					<div class="item_blue3">
						<div class="item_blue_title1">
							<h1>Password Recovery</h1>
						</div>
						<div class="explain_box">Notice:Please enter the email
							address you registered in Milanoo.com, the information of your
							original password will be sent to your email. If password still
							has not been recovered, please send email to service@milanoo.com</div>
						<div style="margin: 30px 0 0px 330px;">
							<span>E-mail address: </span> <input name="loginEmail"
								type="text" id="loginEmail" class="input_1" size="35" />
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

	</body>
	<script type='text/javascript' src='../dwr/engine.js'></script>
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
			var email = $('loginEmail').value;
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
</html>

