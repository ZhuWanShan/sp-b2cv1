<%@include file="../include.jsp" %>

<div class="index_bigad" id="index_bigad">
<c:if test='${isHome == "true"}'>
		<div class="measure_dashboard">
		<div class="measure_dashboard_content">
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Wedding-Dresses-2012"><img alt="Wedding Dresses 2012" title="Wedding Dresses 2012" width="972px" height="428px" src="http://www.honeybuy.com/image/Banner20120515-4.png"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Prom-Dresses-2012"><img alt="Prom Dresses 2012" title="Prom Dresses 2012"  width="972px" height="428px" src="http://www.honeybuy.com/image/Banner20120515-2.png"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Fashion-Apparel"><img alt="Fashion-Apparel" title="Fashion-Apparel"  width="972px" height="428px" src="http://www.honeybuy.com/image/Banner20120515-3.png"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Business-Suits"><img alt="Custom Groom Suits" title="Custom Groom Suits"  width="972px" height="428px" src="http://www.honeybuy.com/image/Banner20120515-1.png"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Evening-Dresses"><img alt="Sweet Sixteen Dresses" title="Sweet Sixteen Dresses"  width="972px" height="428px" src="http://www.honeybuy.com/image/Banner20120515-5.png"></a>
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



