<%@include file="../include.jsp" %>

<div class="index_bigad" id="index_bigad">
<c:if test='${isHome == "true"}'>
		<div class="measure_dashboard">
		<div class="measure_dashboard_content">
			<div class="measure_panel" style="display: none;">
				<a href="http://www.honeybuy.com/c/Wedding-Dresses-2012"><img width="972px" height="428px" src="http://www.honeybuy.com/image/banner1.jpg" title="Wedding Dresses 2012" alt="Wedding Dresses 2012"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Wedding-Dresses"><img alt="Wedding Dresses" title="Wedding Dresses" width="972px" height="428px" src="/image/banner11.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Prom-Dresses-2012"><img alt="Prom Dresses 2012" title="Prom Dresses 2012"  width="972px" height="428px" src="/image/hunsha-banner.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Fashion-Apparel"><img alt="Fashion Apparel" title="Fashion Apparel"  width="972px" height="428px" src="/image/banner44.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Business-Suits"><img alt="Custom Business Suits" title="Custom Business Suits"  width="972px" height="428px" src="/image/Banner20120515-1.png"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Evening-Dresses"><img alt="Evening Dresses" title="Evening Dresses"  width="972px" height="428px" src="/image/Banner20120515-5.png"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Sweet-Sixteen-Dresses"><img alt="Sweet Sixteen Dresses" title="Sweet Sixteen Dresses" width="972px" height="428px" src="/image/banner5.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Ties"><img alt="Ties" title="Ties" width="972px" height="428px" src="/image/ties-banner.jpg"></a>
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
				<img class="pagination_m" src="/style/image/1x1.png" title="7">
				<img class="pagination_m" src="/style/image/1x1.png" title="8">
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



