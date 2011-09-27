<%@ include file="../include.jsp"%>
<div class="shopping_cart" id="top_Cart">
	<a rel="nofollow" href="/shoppingcart"
		class="cart_icon wihte_D_shadow Dark_gray">My bag <span
		class="items_num"> (<c:if test="${shoppingcart eq null}">0</c:if>${shoppingcart.itemCount})</span>
	</a>
	<div id="universalCart" style="display: none;">
		<div class="box_top"></div>
		<div class="box_body">
			<div id="universalCartContent">
				<div class="information_cart">
					<c:if test="${shoppingcart.itemCount > 0}">
						<span><a
							onclick="javascript:document.getElementById('universalCart').style.display='none';"
							href="javascript:void(0)"><img
								src="http://www.mlo.me/image/endefault/btn-closeCart.gif"
								alt="close cart">
						</a>
						</span>0 Item(s) in the Shopping Bag
					</c:if>
				</div>
				<span style="color: #9C3;">&nbsp;&nbsp;&nbsp;&nbsp;You have
					no items in your shopping cart.</span>
			</div>
		</div>
		<div class="box_bottom"></div>
	</div>

</div>