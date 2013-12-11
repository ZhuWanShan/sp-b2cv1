<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="hb" uri="/WEB-INF/tag/HBTag.tld"%>
<div class="dockbar">
	<div class="span4 offset8">
		<ul class="dockbar-menu">
			<li><a href="http://www.google.com" class="btn"><span
					class="glyphicon glyphicon-question-sign"></span><span>Help</span></a>
			</li>
			<li>
				<div class="btn-group">
					<button type="button" class="btn">
					
						<img alt="" src="/resources/css/img/${sessionScope.defaultCurrency.code }.png">
						${sessionScope.defaultCurrency.name }
					</button>
					<button type="button" class="btn dropdown-toggle"
						data-toggle="dropdown">
						<span class="caret"></span> <span class="sr-only">Toggle
							Dropdown</span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<c:forEach items="${currencies }" var="currency">
							<li><a href="?currency=${currency.code }"><img alt=""
									src="/resources/css/img/${currency.code }.png" /><span>${currency.name }</span></a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</li>
			<li>
				<c:if test="${not empty currentUser }">
					<div class="btn-group">
						<button type="button" class="btn">
							<span>${currentUser.username }</span><span class="glyphicon glyphicon-user"></span>
						</button>
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown">
							<span class="caret"></span> <span class="sr-only">Toggle
								Dropdown</span>
						</button>
						 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">My Orders</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Profile</a></li>
						    <li role="presentation" class="divider"></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="/logout">Logout</a></li>
						  </ul>
					</div>
				</c:if>
				<c:if test="${empty currentUser }">
					<a href="/ac/login" class="btn"><span
					class="glyphicon glyphicon-user"></span><span>Sign In/ Sign Up</span></a>
				</c:if>
			</li>
			<li class=""><a href="/sp/shoppingcart/list"
				class="btn-group btn open"><span
					class="glyphicon glyphicon-shopping-cart"></span><span id="ShoppingDockedbarCount">Cart(${cartItemCount })</span></a></li>
		</ul>
	</div>
</div>

