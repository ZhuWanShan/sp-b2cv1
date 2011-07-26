<%@ include file="../include.jsp" %>

<div class="main_menu" id="main_menu">
	<ul>
	<logic:iterate id="category" name="pageForm" property="categories">
		<li class="first">
			<span>
				<a title='<bean:write name="category" property="displayName"/>' href='http://127.0.0.1:8888/<bean:write name="category" property="displayName"/>'>
					<bean:write name="category" property="displayName"/>
				</a> 
			</span>
			<div class="sub_menu sub_menu_2_1" style="display: none;">
				<div class="inner_box2">
					<dl class="inner_list">
						<dt>
							<a title="XXXX"
								href="#">XXXX
							</a>
						</dt>
						<logic:iterate id="subCategory" name="category" property="subCategories">
						<dd>
							<a title='<bean:write name="subCategory" property="displayName"/>' href='http://127.0.0.1:8888/<bean:write name="subCategory" property="displayName"/>'> 
								<bean:write name="subCategory" property="displayName"/>
							</a>
						</dd>
						</logic:iterate>
						<dd class="end_more">
							<a title='<bean:write name="category" property="displayName"/>'
								href='http://127.0.0.1:8888/<bean:write name="category" property="displayName"/>'>View All 
							</a>
						</dd>
					</dl>
				</div>
				<div class="inner_box_along">
					<dl>
						<dt>
							<a title="xxx1" href="#">Wedding Shoes</a>
						</dt>
					</dl>
					<dl>
						<dt>
							<a title="xxx2" href="#">Wedding Favors</a>
						</dt>
					</dl>
					<dl>
						<dt>
							<a title="xxx3" href="#">Warehouse</a>
						</dt>
					</dl>
					<div style="clear: both;"></div>
					<div class="topNavClassAdWrapper">
						<div class=" SpecialboxShadow topNavAdSpecialOffer">
							<span class="topNavAdSpecialOffertxt Specialtextshadow ">Special offer</span>
						</div>
						<ul class="topNavClassAd">
							<li><a href="#">Get Free Gift</a></li>
							<li><a href="#">Top Selling Dresses</a></li>
							<li><a href="#"><img width="174" height="84" border="0" src="/upload/adimage/2011/201107/20110708/20110708090823.jpg"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</li>
	</logic:iterate>
	</ul>
</div>