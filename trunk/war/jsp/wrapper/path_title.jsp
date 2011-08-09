<%@include file="../include.jsp"%>
<%@page import="com.spshop.utils.AllConstants" %>
<div class="Path_title Light_gray2">
	<a href="${site.domain}" class="Light_gray2">Home</a> <span>&gt;</span>
	<c:if test="${empty pageForm.category.url}">
		<a title="${pageForm.category.displayName}" href="${pageForm.category.name}">
			${pageForm.category.displayName} </a>
	</c:if>
	<c:if test="${!empty pageForm.category.url}">
		<a title="${pageForm.category.displayName}"
			href="<%=AllConstants.HTTP_PROTOCOL%>${pageForm.category.url}">
			${pageForm.category.displayName} </a>
	</c:if>
</div>