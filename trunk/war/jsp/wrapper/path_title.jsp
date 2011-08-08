<%@ include file="../include.jsp" %>
<div class="Path_title Light_gray2">
	<a href="${site.domain}" class="Light_gray2">Home</a> <span>&gt;</span>
	<a title="${pageForm.category.displayName}"
		href="${site.domain}${category.url}" class="blue">${pageForm.category.displayName}</a>
</div>