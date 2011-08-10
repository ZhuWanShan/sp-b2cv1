<%@page import="com.spshop.utils.AllConstants"%>
<%@include file="../include.jsp" %>

<div class="main_menu" id="main_menu">
	<ul>
	<c:forEach items="${pageForm.categories}" var="category" varStatus="idx" step="1">
		<li class="first">
			<span>
			<c:if test="${empty category.url}">
				<a title="${category.displayName}" href="<%=AllConstants.HTTP_PROTOCOL%>${pageForm.site.domain}/category/${category.name}">
					${category.displayName}
				</a>
			</c:if>
			<c:if test="${!empty category.url}">
				<a title="${category.displayName}" href="<%=AllConstants.HTTP_PROTOCOL%>${category.url}">
					${category.displayName}
				</a>
			</c:if>
				
			</span>
			<div class="sub_menu navigationKind${idx.index} sub_menu_2_1" style="display: none;">
				<div class="inner_box2">
				<c:forEach items="${category.subCategories}" var="subCategory">
					<dl class="inner_list">
						<dt>
						<c:if test="${empty subCategory.url}">
							<a title="${subCategory.displayName}" href="<%=AllConstants.HTTP_PROTOCOL%>${pageForm.site.domain}/category/${subCategory.name}">
								${subCategory.displayName}
							</a>
						</c:if>
						<c:if test="${!empty subCategory.url}">
							<a title="${subCategory.displayName}" href="<%=AllConstants.HTTP_PROTOCOL%>${subCategory.url}">
								${subCategory.displayName}
							</a>
						</c:if>
						</dt>
						<c:forEach items="${subCategory.subCategories}" var="childCategory">
						<dd>
						<c:if test="${empty childCategory.url}">
							<a title="${childCategory.displayName}" href="<%=AllConstants.HTTP_PROTOCOL%>${pageForm.site.domain}/category/${childCategory.name}"> 
								${childCategory.displayName}
							</a>
						</c:if>
						<c:if test="${!empty childCategory.url}">
							<a title="${childCategory.displayName}" href="<%=AllConstants.HTTP_PROTOCOL%>${childCategory.url}"> 
								${childCategory.displayName}
							</a>
						</c:if>
						</dd>
						</c:forEach>
						<dd class="end_more">
							<c:if test="${empty subCategory.url}">
								<a title="${subCategory.displayName}"
									href="<%=AllConstants.HTTP_PROTOCOL%>${pageForm.site.domain}/category/${subCategory.name}">
									View All
								</a>
							</c:if>
							<c:if test="${!empty subCategory.url}">
								<a title="${subCategory.displayName}"
									href="<%=AllConstants.HTTP_PROTOCOL%>${subCategory.url}">
									View All
								</a>
							</c:if>
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