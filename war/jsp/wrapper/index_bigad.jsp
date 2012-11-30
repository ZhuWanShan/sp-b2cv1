<%@include file="../include.jsp" %>

<div class="index_bigad" id="index_bigad">
<c:if test='${isHome == "true"}'>
		<div class="measure_dashboard">
		<div class="measure_dashboard_content">
			<div class="measure_panel" style="display: none;">
				<a href="http://www.honeybuy.com/c/Pet-Supplies"><img width="972px" height="428px" src="/image/homebanner8.jpg" alt="Pet Supplies" title="Pet Supplies"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/prom-dresses-promotion"><img alt="prom dresses promotion" title="prom dresses promotion" width="972px" height="428px" src="/image/home-banner-1.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Special-Occasion-Dresses"><img alt="Special Occasion Dresses" title="Special Occasion Dresses"  width="972px" height="428px" src="/image/home-dresses.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/suits-promotion"><img alt="suits promotion" title="suits promotion"  width="972px" height="428px" src="/image/home-suit.jpg"></a>
				</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Boots"><img alt="Boots" title="Boots"  width="972px" height="428px" src="/image/home-shoe.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Ties"><img alt="Ties" title="Ties"  width="972px" height="428px" src="/image/ties-banner.jpg"></a>
			</div>
<p class="clearBoth"></p>
		</div>
		<div class="measure_navigation">
			<div class="measure_controller">
	            <img class="pagination_active_m" src="/style/image/1x1.png" title="1">
				<img class="pagination_m" src="/style/image/1x1.png" title="2">
				<img class="pagination_m" src="/style/image/1x1.png" title="3">
				<img class="pagination_m" src="/style/image/1x1.png" title="4">
				<img class="pagination_m" src="/style/image/1x1.png" title="5">
				<img class="pagination_m" src="/style/image/1x1.png" title="6">
			</div>
		</div>
	</div>
	<script>
	var slider = jq(".measure_dashboard").slider().cycle();
</script>
</c:if>
<c:if test='${isHome != "true"}'>
		<c:out escapeXml="false" value="${pageForm.category.marketContent}"></c:out>
</c:if>
</div>