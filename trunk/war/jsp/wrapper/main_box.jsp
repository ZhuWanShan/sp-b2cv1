<%@ include file="../include.jsp" %>
<div class="main_box">

<div class="index_bigad" id="index_bigad">
	<c:out escapeXml="false" value="${pageForm.category.marketContent}"></c:out>
</div>
<div class="hei10"></div>

<div class="index_content01">
	<jsp:include page="left_box.jsp"></jsp:include>
	<jsp:include page="right_box.jsp"></jsp:include>
</div>

<div class="hei10"></div>

<div class="index_content02">
	<div class="left_box">
		<jsp:include page="mail_box.jsp"></jsp:include>
	</div>
	<div class="right_box">
		<jsp:include page="mail_categories.jsp"></jsp:include>
	</div>
</div>

<div class="hei10"></div>

<div id="index_bigad_tmp" class="index_bigad" style="position: absolute; left: 0px; top: 0px;"></div>
</div>