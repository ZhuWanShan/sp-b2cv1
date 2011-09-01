<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
	<script language="javascript">
		var lastUserName='';
		var lastpassword='';
		var lastemail='';
		var lastcode='';
		var UserNamePrint='Use 4-20 characters and start with an English letter. User ID can not be changed after your registration.';
		var passwordPrint='6-20 characters(Use English letters or numbers or signs), capitalization matters';
		var password2Print='Re-enter your password';
		var emailPrint='Caution!This is the only way to redeem or recover your password';
		var codePrint='Please enter the verify code, click the picture if the code is vague';
		var UserNamecg='Congratulation,the User ID is usable';
		var UserNamecw='Wrong User ID';
		var UserNameysy='The User ID has been occupied';
		var passwordcw1='No password or contain illegal character, please re-enter';
		var passwordcw2='Password in twice entered is different, please check and re-enter';
		var passwordcg='Entering correct';
		var emailcw='Wrong Email format, please re-enter';
		var emailysy='The Email has been occupied';
		var emailcg='Entering correct';
		var codecw='Wrong verify code, submitting failed, please recheck';
		var codecg='Entering correct';
		var blwk='This blank must be filled';
		var print_coon=new Array();
		var print_css=new Array();
		function  formsubmit(){	
			checkpassword();
			checkpassword2();
			checkemail();
			print_css['email'] = className='cg';
			if(!$('Conditions').checked){
				$('Conditionsinfo').style.display='';
				$('Conditionsinfo').innerHTML='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> Please select "agree to abide by rules of membership"';
				return false;
			}
			if(print_css['password']=='cg' && print_css['password2']=='cg' && print_css['email']=='cg' )
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		function checkConditions(){
		 	if(!$('Conditions').checked){
				$('Conditionsinfo').style.display='';
				$('Conditionsinfo').innerHTML='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> Please select "agree to abide by rules of membership"';
				return false;
			}
			else {
				$('Conditionsinfo').style.display='none';
			}
		 }
		 function checkUserName() {
		 		$('UserName').className='dkinput';
				var UserName_coon = trim($('UserName').value);		
				if(UserName_coon == lastUserName & UserName_coon!='') {
					$('validateUserName').innerHTML= print_coon['UserName'];
					$('validateUserName').className=print_css['UserName'];
					return;
				} else {
					lastUserName = UserName_coon;
				}
				var unlen = UserName_coon.replace(/[^\x00-\xff]/g, "**").length;		
				if(unlen > 3 ) {
				ajaxyz('UserName', 'menu=username&name=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(UserName_coon) : UserName_coon) + '&' + Math.random());
				}
				else if (unlen > 0 ){
				print_coon['UserName']='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+UserNamecw;
				print_css['UserName']='cw';
				$('validateUserName').style.display = '';
				$('validateUserName').className='cw';
				$('validateUserName').innerHTML='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+UserNamecw;
				}
				else {
				print_coon['UserName']='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+blwk;
				print_css['UserName']='cw';
				$('validateUserName').style.display = '';
				$('validateUserName').className='cw';
				$('validateUserName').innerHTML='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+blwk;
				}	
			}
		function checkpassword(confirm) {
		 		$('password').className='dkinput';
				var password_coon = $('password').value;		
				if(password_coon == lastpassword & password_coon!='') {
					$('validatePassword').innerHTML= print_coon['password'];
					$('validatePassword').className=print_css['password'];
					return;
				} else {
					lastpassword = password_coon;
				}
				if(password_coon == '' || /[\'\" \\]/.test(password_coon)) {
					print_css['password'] = 'cw';
					$('validatePassword').style.display = '';
					print_coon['password'] ='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+passwordcw1;
				} else {
					print_css['password'] = 'cg';
					$('validatePassword').style.display = 'none';
					print_coon['password'] ='<img src=\"https://www.mlo.me/image/endefault/cg.gif\"> '+passwordcg;
					if(!confirm) {
						checkpassword2(true);
					}
				}
				$('validatePassword').className=print_css['password'];
				$('validatePassword').innerHTML = print_coon['password'];
		}
		function checkpassword2(confirm) {
				var password = $('password').value;
				var password2 = $('password2').value;
				$('password2').className='dkinput';
				if(password != '') {
					checkpassword(true);
				}
				if(password == '' || (confirm && password2 == '')) {
					print_css['password2'] = 'cw';
					$('password').style.display = '';
					print_coon['password2'] ='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+passwordcw1;			
				}
				else
				{
					if(password != password2) {
						print_css['password2'] = 'cw';
						$('validatePassword2').style.display = '';
						print_coon['password2'] ='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+passwordcw2;			
					} else {
						print_css['password2'] = 'cg';
						$('validatePassword2').style.display = 'none';
						print_coon['password2'] ='<img src=\"https://www.mlo.me/image/endefault/cg.gif\"> '+passwordcg;			
					}
				}
				$('validatePassword2').className=print_css['password2'];
				$('validatePassword2').innerHTML = print_coon['password2'];
			}
			
		
		function checkemail() {
		 		$('email').className='dkinput';
				var email_coon = trim($('email').value);		
				if(email_coon == lastemail & email_coon!='') {
					$('validateEmail').innerHTML= print_coon['email'];
					$('validateEmail').className=print_css['email'];
					return;
				} else {
					lastemail = email_coon;
				}
				var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
				chkFlag = pattern.test(email_coon);
				if(!chkFlag){
					$('validateEmail').style.display = '';
					$('validateEmail').innerHTML ='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+emailcw;
					return;
				}else{
					print_css['email'] = 'cg';
					$('validateEmail').style.display = '';
				}
				var unlen = email_coon.replace(/[^\x00-\xff]/g, "**").length;		
				if(unlen > 0 ) {
					AjaxService.validateUserByEmail(email_coon, queryEmailCallback);
				}
			}
		function queryEmailCallback(emailExist){
			if(emailExist){
				print_css['email'] = 'cw';
			$('validateEmail').className='cw';
				$('validateEmail').style.display = '';
				print_coon['email'] ='<img src=\"https://www.mlo.me/image/endefault/check_error.gif\"> '+UserNameysy;
			}else{
				print_css['email'] = 'cg';
				$('validateEmail').style.display = '';
				print_coon['email'] = UserNamecg;	
				$('validateEmail').className='cg';
			}
			$('validateEmail').className=print_css['email'];
			$('validateEmail').innerHTML = print_coon['email'];
		}
		-->
		</script>
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
				<form action="login.do" method="post">
					<ul class="table_ul1 loginReg">
						<li>Your E-mail address: <input name="loginEmail" id="loginEmail" type="text" size="35" maxlength="50" />
							<div class="message_yes"></div>
						</li>
						<li>Password: <input name="loginPassword" type="password" id="loginPassword" size="35" maxlength="20" />
						</li>
						<li>
							<a href="recoveryPassword.jsp">Forgot your password? Click here</a>
						</li>

						<li>${pageForm.pageProperties.loginError}</li>
					</ul>
					<div class="putIn_box2">
						<input type="submit" class="submit_blue1" value="Login" />
					</div>
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
				<form action="createAccount.do" method="post"
					onSubmit="return formsubmit();" style="padding: 0 0 0 80px;">
					<ul class="table_ul1 loginReg">
						<li><i>E-mail address:</i><font>*</font> 
							<input name="email" id="email" size="32" maxlength="100" onBlur="checkemail();" />
						</li>
						<li id="validateEmail" style="display: none" class="message_error">
						</li>
						<li><i>Create a password:</i><font>*</font> 
							<input name="password" id="password" type="password" onBlur="checkpassword();" size="32" maxlength="20" />
						</li>
						<li id="validatePassword" style="display: none" class="message_error">
						</li>
						<li><i>Confirm Password:</i><font>*</font> 
							<input name="password2" id="password2" type="password" size="32" maxlength="20" onBlur="checkpassword2();" />
						</li>
						<li id="validatePassword2" style="display: none"
							class="message_error">
						</li>
						<!--<li><i>User ID:</i><font>*</font>
            <input name="UserName" id="UserName" class="dkinput" onBlur="checkUserName();" size="32" maxlength="16"/>
            </i> </li> 
          <li id="validateUserName" style="display:none" class="message_error"></li>-->
						<li>
							<input name="Conditions" type="checkbox" id="Conditions" value="1" onClick="checkConditions();"> 
							<i> 
								<a href="#">I agree to the license.</a> 
							</i>
							<div id="Conditionsinfo" style="float: left;"></div>
						</li>
					</ul>
					<div class="putIn_box2">
						<input type="submit" class="submit_blue2"
							value="Create a New Account" name="imageField" />
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
</body>
</html>