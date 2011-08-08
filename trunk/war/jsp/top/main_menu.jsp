<%@ include file="../include.jsp" %>

<div class="main_menu" id="main_menu">
	<ul>
	<c:forEach items="${pageForm.categories}" var="category" varStatus="idx" step="1">
		<li class="first">
			<span>
				<a title="${category.displayName}" href="${site.domain}${category.url}">
					${category.displayName}
				</a>
			</span>
			<div class="sub_menu navigationKind${idx.index} sub_menu_2_1" style="display: none;">
				<div class="inner_box2">
				<c:forEach items="${category.subCategories}" var="subCategory">
					<dl class="inner_list">
						<dt>
							<a title="${subCategory.displayName}" href="${site.domain}${subCategory.url}">
								${subCategory.displayName}
							</a>
						</dt>
						<c:forEach items="${subCategory.subCategories}" var="childCategory">
						<dd>
							<a title="${childCategory.displayName}" href="${site.domain}${childCategory.url}"> 
								${childCategory.displayName}
							</a>
						</dd>
						</c:forEach>
						<dd class="end_more">
							<a title="${subCategory.displayName}"
								href="${site.domain}${subCategory.url}">View All 
							</a>
						</dd>
					</dl>
				</c:forEach>
				</div>
				<div class="inner_box_along">
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
	</c:forEach>
	</ul>
</div>