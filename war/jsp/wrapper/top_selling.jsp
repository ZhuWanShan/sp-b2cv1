<%@include file="../include.jsp" %>
<%@page import="com.spshop.utils.AllConstants"%>
<div class="top5selling">
<ss:topSelling var="topData">
	<h3 class="red font_size16">Top Selling</h3>
	<ul>
	<c:forEach items="${topData.products}" var="topProduct">
		<li>
			<a title="${topProduct.title}" href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}<%=AllConstants.URL_SEPERATOR %>${topProduct.name}">
				<img src="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}${topProduct.images[0].thumbnailUrl}"
					alt="${topProduct.title}"
					style="width: 65px; height: 87px;">
			</a><br>
			
			<a title="" href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}<%=AllConstants.URL_SEPERATOR %>${topProduct.name}"
				class="font_size11 lineheight14">
				${topProduct.title}
			</a>
		</li>
	</c:forEach>
	</ul>
	<div class="hei1"></div>
</ss:topSelling>
</div>