<%@ include file="../include.jsp"%>
<%@page import="com.spshop.model.Order"%>
		<% 
			String orderItemLength = (String)request.getSession().getAttribute("orderItemLength");
		%>
<div class="shopping_cart" id="top_Cart">
	<a rel="nofollow" href="displayCart.do"
		class="cart_icon wihte_D_shadow Dark_gray">My bag <span
		class="items_num"> (<c:if test="${orderItemLength eq null}">0</c:if>${orderItemLength})</span> </a>

</div>