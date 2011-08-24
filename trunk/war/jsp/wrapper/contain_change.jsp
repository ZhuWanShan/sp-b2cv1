<%@page import="com.spshop.utils.AllConstants"%>
<%@ include file="../include.jsp" %>
<div id="contain_change">
	<div class="line1"></div>
	<div class="page_box">
		<div class="page_num">
			<form action="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/<%=AllConstants.CATEGORY_URL %>/${pageForm.category.name}" method="post">
				<c:if test="${requestScope.startIndex > 1}">
					<a href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/<%=AllConstants.CATEGORY_URL %>/${pageForm.category.name}?<%=AllConstants.PAGE_NUM %>=${requestScope.pageNum - 1}">Prev</a>
				</c:if>
				<c:if test="${requestScope.endIndex < requestScope.productsCount}">
					<a href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/<%=AllConstants.CATEGORY_URL %>/${pageForm.category.name}?<%=AllConstants.PAGE_NUM %>=${requestScope.pageNum + 1}">Next</a>
				</c:if>
				<input type="text" name="<%=AllConstants.PAGE_NUM %>" class="page_input" value="${requestScope.pageNum}">
				<input type="hidden" name="<%=AllConstants.START_INDEX %>" value="${requestScope.startIndex}">
				<input type="hidden" name="<%=AllConstants.END_INDEX %>" value="${requestScope.endIndex}">
				<input type="submit" value="ok">
			</form>
		</div>
		<span class="font_size11">Showing Results ${requestScope.startIndex} - ${requestScope.endIndex} of ${requestScope.productsCount}</span>
	</div>
	<div class="hei5"></div>

	<div class="hei10"></div>
	<div class="B_Categories">
		<ul>
		<c:forEach items="${pageForm.pageProperties.productsInCategoryPage}" var="product">
			<li class="goods_list box_shadow">
				<div class="goods_picture">
						<div></div>

						<a onclick="redirect('<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/${product.name}')"
							href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/${product.name}" title="">
							<img
							alt="${product.title}"
							src="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}${product.images[0].logoUrl}"> 
						</a>
					</div> 
						<strong class="goods_name"> 
							<a	title="${product.title}"
								href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/${product.name}">
								${product.title}
							</a>
						</strong>
					<span class="Reference_Price"> 
						<del> product.price</del> 
						<span class="red fontbold"> product.price </span> 
					</span>
					<div class="list_stars">
						<span class="Reference_Price"> 
							<a href="#" class="blue underline" rel="nofollow">Write a review</a> 
						</span>
					</div>
				</li>
		</c:forEach>
		</ul>
		<div class="hei20"></div>
	</div>
	
	<div class="page_box">
		<div class="page_num">
			<form action="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/<%=AllConstants.CATEGORY_URL %>/${pageForm.category.name}" method="post">
				<c:if test="${requestScope.startIndex > 1}">
					<a href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/<%=AllConstants.CATEGORY_URL %>/${pageForm.category.name}?<%=AllConstants.PAGE_NUM %>=${requestScope.pageNum - 1}">Prev</a>
				</c:if>
				<c:if test="${requestScope.endIndex < requestScope.productsCount}">
					<a href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/<%=AllConstants.CATEGORY_URL %>/${pageForm.category.name}?<%=AllConstants.PAGE_NUM %>=${requestScope.pageNum + 1}">Next</a>
				</c:if>
				<input type="text" name="<%=AllConstants.PAGE_NUM %>" class="page_input" value="${requestScope.pageNum}">
				<input type="hidden" name="<%=AllConstants.START_INDEX %>" value="${requestScope.startIndex}">
				<input type="hidden" name="<%=AllConstants.END_INDEX %>" value="${requestScope.endIndex}">
				<input type="submit" value="ok">
			</form>
		</div>
		<span class="font_size11">Showing Results ${requestScope.startIndex} - ${requestScope.endIndex} of ${requestScope.productsCount}</span>
	</div>
	<div class="line1"></div>

</div>