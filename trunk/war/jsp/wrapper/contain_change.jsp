<%@ include file="../include.jsp" %>
<div id="contain_change">
	<div class="line1"></div>
	<div class="page_box">
		<div class="page_num">
			<a class="red fontbold">1</a><a
				href="#"
				att="page:2">2</a><a
				href="#"
				att="page:2">Next</a><input type="text" value="1" size="1"
				name="custompage" class="page_input" id="custompage"><input
				type="button" value="ok"
				onclick="#"
				name="go">
		</div>
		<span class="font_size11">Showing Results 1 - 24 of 48</span>
	</div>
	<div class="hei5"></div>

	<div class="hei10"></div>
	<div class="B_Categories">
		<ul>
		<c:forEach items="${pageForm.catProducts}" var="product">
			<li class="goods_list box_shadow">
				<div class="goods_picture">
						<div></div>

						<a onclick="redirect('${site.domain}/product/${product.name}')"
							href="${site.domain}/product/${product.name}" title="">
							<img
							alt="${product.title}"
							src="http://127.0.0.1:8888/image/productImg.jpg.png"> 
						</a>
					</div> 
						<strong class="goods_name"> 
							<a	title="${product.title}"
								href="${site.domain}/product/${product.name}">
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
			<a class="red fontbold">1</a>
			<a  href="#"
				att="page:2">2</a><a
				href="#"
				att="page:2">Next</a><input type="text" value="1" size="1"
				name="custompage" class="page_input" id="custompage"><input
				type="button" value="ok"
				onclick="#"
				name="go">
		</div>
		<span class="font_size11">Showing Results 1 - 24 of 48</span>
	</div>
	<div class="line1"></div>

</div>