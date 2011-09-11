<%@ include file="../include.jsp" %>
<div id="container">
	<button class="button_orange left" type="button"
		onclick="location.href='http://www.milanoo.com/'">Continue
		Shopping</button>
	<div id="right_column">
		<p id="order_title">Let me order now!</p>
		<div id="check_box">
			<p>
				TOTAL: <span><c:out value="${pageForm.pageProperties.orderDetail.totalPrice}" /></span>
			</p>

			<input type="button" value="CHECKOUT"
				onclick="javascript:window.location.href='checkOut.do'">
			<p id="paypal">
				<span id="or">or</span> <a href="javascript:void(0);"> <img
					src="http://www.mlo.me/image/default/shoppingOrder/paypal.png"
					onclick="javascript:$('act').value='paypal';$('cart_form').submit();">
				</a>
			</p>
			<img id="paypay" style="display: none;" class="bt_img"
				src="http://www.mlo.me/image/default/shoppingCart/bt_paypal_gery.gif">
		</div>
		<div id="safe_box">
			<p id="descript">Security of shopping on Milanoo is guaranteed!</p>
			<p>
				<a href="javascript:void(0);" target="_blank"><img
					src="http://www.mlo.me/image/default/shoppingOrder/PaypalVerify.gif"
					height="60">
				</a> <a href="javascript:void(0);" target="_blank"><img
					src="../../css/vers.jpg">
				</a>
			</p>
		</div>
	</div>
	<div id="left_column">
		<form action="http://www.milanoo.com/shop/Cart.html" method="post"
			id="cart_form">
			<input name="act" id="act" type="hidden" value="edit">
			<div class="cart_box">
				<p class="cart_title">
					<strong>Shopping Cart</strong>
				</p>
				<table id="shopping_list" cellspacing="0">
					<thead>
						<tr id="shopping_list_title">
							<th id="title_first">items</th>
							<th>Item Price</th>
							<th>Qty</th>
							<th>Price</th>
							<th></th>
						</tr>

					</thead>
					<tbody>
					<c:forEach items="${pageForm.pageProperties.orderDetail.items}" var="item" varStatus="itemIdx" step="1">
						<tr>
							<td><a href="${item.product.productUrl}?itemIndex=${itemIdx.index}"
								target="_blank">
								<c:forEach items="${item.product.images}" var="image" varStatus="idx" step="1">
								<c:if test="${idx.index eq 0}" >
								<img val="${image.iconUrl}"
									src="${image.iconUrl}"
									class="left MR10">
							</a> <span> <a href="${item.product.productUrl}?itemIndex=${itemIdx.index}" 
									target="_blank"><strong>${item.product.title}</strong>
								</a></span>
								</c:if>
								</c:forEach>
								</td>
							<td class="center red"><c:out value="${item.product.price}"/></td>
							<td class="center"><input name="ProductsId[2]" type="hidden"
								value="119012"> <input name="listid[]" type="hidden"
								value="2"> <input name="num[2]" type="text" value="${item.quantity}"
								id="qty${itemIdx.index}"
								class="input_num"> <a
								href="#" onclick="updateItemQty(${itemIdx.index})"
								class="link_remove">Update</a>
								<script type="text/javascript">
								function updateItemQty(id){
									var qty = document.getElementById("qty"+id).value;
									window.location.href="updateItemQty.do?itemIndex="+id+"&itemQty="+ qty;
								}
								</script>
							</td>
							<td class="center red"><c:out value="${item.finalPrice}"/><br> <a
								href="removeItemFromCart.do?itemIndex=${itemIdx.index}"
								class="link_remove">Remove</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</form>

	</div>
</div>