<div class="user_menu" id="user_menu">
	<ul>
		<li>Help
			<div
				style="width: 150px; display: none; cursor: default; padding-top: 10px;"
				class="user_menu_hidd currency ">
				<a
					href="http://www.milanoo.com/help/Submit-a-question-module-index.html"
					rel="nofollow" title="Submit a question">Submit a question </a> <a
					href="http://www.milanoo.com/help/index-act-center.html"
					rel="nofollow" title="Help Center">Help Center</a>
			</div>
		</li>
		<li id="base_unlogin_li" class="">Milanoo Login
			<div style="width: 200px; cursor: default; display: none;"
				class="user_menu_hidd">
				<form method="post" action=""
					onsubmit="return loginAjax(this.loginusername.value,this.loginuserpass.value,this.loginmethod.value,'/member/login-maction-login.html')">
					<input type="hidden" value="header" name="loginmethod"
						class="login_input">
					<div class="border_bot indexlogin">
						<dl>
							<dd>
								Username<br> <input type="text" autocomplete="off"
									name="loginusername" class="login_input">
							</dd>
							<dd>
								Password<br> <input type="password" name="loginuserpass"
									class="login_input">
							</dd>
							<dd class="Question_mark">
								Forgot your password?<br> <a
									href="http://www.milanoo.com/member/forgotpassword.html"
									class="underline" rel="nofollow">Click here</a>
							</dd>
							<dd>
								<input type="submit" value="Login" class="button_01"><span
									id="warn_login_span"></span>
							</dd>
						</dl>
					</div>
				</form>
				<form name="form_login" method="post"
					action="https://www.milanoo.com/member/login-forward-aHR0cDovL3d3dy5taWxhbm9vLmNvbS8%3D.html">
					<div class="indexlogin">
						<p class="lineheight15 font_size11">Create account for
							benefits like faster checkout to make shopping milanoo.com even
							easier.</p>
						<div class="hei5"></div>
						<input type="button" value="CREATE AN ACCOUNT" class="button_01"
							onclick="form_login.submit();">
					</div>
				</form>
			</div>
		</li>
		<li style="display: none" id="hide_login_li"><span
			id="hide_login_span">-hidden content-</span>. (<a
			href="https://www.milanoo.com/member/login-maction-loguot.html"
			title="Sign out">Sign out</a>)
			<div style="width: 100%; display: none; cursor: default;"
				class="user_menu_hidd">
				<div class="indexlogin">
					<dl>
						<dd class="dashborder">
							<a href="https://www.milanoo.com/member/" title="View Orders">View
								Orders</a>
						</dd>
						<dd class="dashborder">
							<a href="https://www.milanoo.com/member/Information.html"
								rel="nofollow" title="Account Settings">Account Settings</a>
						</dd>
						<dd class="dashborder">
							<a href="https://www.milanoo.com/member/favorite.html"
								rel="nofollow" title="My Favorites">My Favorites</a>
						</dd>
						<dd class="dashborder">
							<a href="https://www.milanoo.com/member/Consignee.html"
								rel="nofollow" title="Manage Address Book">Manage Address
								Book</a>
						</dd>
					</dl>
				</div>
			</div>
		</li>
	</ul>
</div>