<%@include file="../include.jsp" %>

<div class="index_bigad" id="index_bigad">
<c:if test='${isHome == "true"}'>
		<div class="measure_dashboard">
		<div class="measure_dashboard_content">
			<div class="measure_panel" style="display: none;">
				<a href="http://www.honeybuy.com/c/Wedding-Dresses-2012"><img width="972px" height="428px" src="http://www.honeybuy.com/image/banner1.jpg" title="Wedding Dresses 2012" alt="Wedding Dresses 2012"></a>
			</div>
			<div class="measure_panel" style="position:relative">
				<a href="http://www.honeybuy.com/c/Promotions-News"><img alt="Wedding Dresses" title="Wedding Dresses" width="972px" height="428px" src="/image/londonh.jpg"></a>
	            <div style="position:absolute;top:170px;left:380px; width:300px;">
                <p style="margin:0; padding:0; font-size:16px; font-family:Arial, Helvetica, sans-serif; line-height:25px"><a href="http://www.honeybuy.com/c/Promotions-News" style="text-decoration:none;color:#06F;">Suits</a></p>
                <p style="margin:0; padding:0; font-size:16px; font-family:Arial, Helvetica, sans-serif; line-height:25px;"><a href="http://www.honeybuy.com/c/Promotions-News" style="text-decoration:none;color:#06F;">Wedding Apparel</a></p>
                <p style="margin:0; padding:0; font-size:16px; font-family:Arial, Helvetica, sans-serif; line-height:25px"><a href="http://www.honeybuy.com/c/Promotions-News" style="text-decoration:none;color:#06F;">Special Occasion Dresses</a></p>
                <p style="margin:0; padding:0; font-size:16px; font-family:Arial, Helvetica, sans-serif; line-height:25px"><a href="http://www.honeybuy.com/c/Promotions-News" style="text-decoration:none;color:#06F;">Fashion Apparel</a></p>
      </div>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/A-line-Wedding-Dresses"><img alt="A line Wedding Dresses" title="A line Wedding Dresses"  width="972px" height="428px" src="/image/hunsha-banner.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Fashion-Apparel"><img alt="Fashion Apparel" title="Fashion Apparel"  width="972px" height="428px" src="/image/banner44.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Business-Suits"><img alt="Custom Business Suits" title="Custom Business Suits"  width="972px" height="428px" src="/image/banner5.jpg"></a>
			</div>
			<div class="measure_panel">
				<a href="http://www.honeybuy.com/c/Cheap-Tie-In-Stock"><img alt="Cheap ties in Stock" title="Cheap ties in Stock"  width="972px" height="428px" src="/image/ties-banner.jpg"></a>
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



