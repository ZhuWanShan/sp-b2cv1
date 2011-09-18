<%@ include file="../include.jsp"%>
<%@page import="com.spshop.utils.AllConstants"%>
<div class="item_goods_info_box_top">
	<div class="item_box_left_normal">
		<!-- class="item_box_left" to high -->
		<div class="no_float">

			<!-- normal picture -->
			<div class="item_normal_pic" id="item_normal_pic">
				<div class="item_normal_pic_box">
					<div></div>
					<c:forEach items="${pageForm.pageProperties.productDetail.images}"
						var="image" varStatus="idx" step="1">
						<c:if test="${idx.index eq 0}">
							<a class="bighref" id="linkNormalBox" href="${image.largerUrl}"
								rel="thing_item_pics"> <img
								src="../css/zoom_in.png"
								id="zoomIcon"> <img width="277" val="${image.largerUrl}"
								alt="${pageForm.pageProperties.productDetail.title}"
								src="${image.largerUrl}" id="imageNormalBox"> </a>
				</div>
				<div style="display: none">
					</c:if>
					<c:if test="${idx.index eq 0}">
						<a href="${image.largerUrl}" class="noneBox"></a>
					</c:if>
					<c:if test="${idx.index gt 0}">
						<a href="${image.largerUrl}" class="noneBox" rel="thing_item_pics"></a>
					</c:if>
					</c:forEach>
				</div>
				<!--<div class="item_normal_zoom"> <a href="###" class="link_pic_zoom bighref" target="_blank">Enlarge the Image</a> </div>-->
				<div class="item_normal_socllbar">
					<ul>
						<c:forEach items="${pageForm.pageProperties.productDetail.images}"
							var="image" varStatus="idx" step="1">
							<li dis="${idx.index}" class="smallPic"
								val="${image.largerUrl}"><img
								alt="${pageForm.pageProperties.productDetail.title}"
								src="${image.iconUrl}"></li>
						</c:forEach>
					</ul>
				</div>
			</div>


			<!-- normal picture -->
		</div>
	</div>
	<!-- shopping function -->
	<form onsubmit="return formsubmit();" name="cusform" method="post" action="displayCart.do">
		<div class=" item_shopping_fun">
			<div class="noFlow">
				<h1>
					<c:out value="${pageForm.pageProperties.productDetail.title}" />
				</h1>
			</div>
			<div class="item_showWords"></div>
			<div class="item_shopping_code">Item
				Code:${pageForm.pageProperties.productDetail.id}</div>
			<div style="position: relative;" class="item_shopping_funbox">
				<table>
					<tbody>
						<c:forEach
							items="${pageForm.pageProperties.productDetail.properties}"
							var="property" varStatus="idx" step="1">
							<tr>
								<td><c:out value="${property.name}" /> :</td>
								<td><c:out value="${property.value}" />
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="itme_description">
					<c:out
						value="${pageForm.pageProperties.productDetail.abstractText}" />
				</div>
				<c:out value="${pageForm.pageProperties.productDetail.detail}"
					escapeXml="false" />
			</div>
		</div>

		<!--custom-->
		<input type="hidden" value="yes" id="gm" name="gm">
		<div class="item_box_right">
			<div></div>
			<div class="item_property">
				<!-- item_property_show is alert-->
				<div class="item_goods_price_older">
					<s>US$ ${pageForm.pageProperties.productDetail.price}</s>
				</div>
				<div style="z-index: 2;" class="item_price">
					<span class="item_price_currency">US$ <a id="currencyAll"
						href="javascript:void(0);"><img src="/css/arrow-select.gif">
					</a> </span><span class="item_price_num"> <span id="money">${pageForm.pageProperties.productDetail.actualPrice}</span>
					</span>
					<div class="currencyAll">
						<a rel="nofollow" class="link_now"
							href="#">
							â¬ </a> <a rel="nofollow" class="link_now"
							href="#">
							Â¥ </a> <a rel="nofollow" class="link_now"
							href="#">
							Â£ </a> <a rel="nofollow" class="link_now"
							href="#">
							CA$ </a> <a rel="nofollow" class="link_now"
							href="#">
							AU$ </a> <a rel="nofollow" class="link_now"
							href="#">
							CHF </a> <a rel="nofollow" class="link_now"
							href="#">
							HK$ </a> <a rel="nofollow" class="link_now"
							href="#">
							ÑÑÐ±. </a> <a rel="nofollow" class="link_now"
							href="#">
							$MXN </a>
					</div>
				</div>
			
				<c:forEach items="${pageForm.pageProperties.productDetail.options}"
					var="option" varStatus="idx" step="1">
						<c:if test='${option.strSelectType eq "INPUT_TEXT"}'>
						<div class="noFlow">
							<c:out value="${option.name}" />: 
							<c:if test='${option.name eq "Qty"}'>
								<c:if test="${option.defaultValue eq null}">
									<input type="text" name="num" id="num"
										value="1" size="5" maxlength="4" class="input_1"
										onblur="javascript:if(!Boolean(this.value))  this.value=1;if(parseInt(this.value)===0)this.value=1;this.value=parseInt(this.value,10);if(this.value>9999)this.value=9999;"
										onkeyup="value=value.replace(/[^\d]/g,'');ChangePrice();">
								</c:if>
								<c:if test='${!(option.name eq "Qty")}'>
									<input type="text" name="num" id="num"
										value="<c:out value="${option.defaultValue}" />" size="5" maxlength="4" class="input_1"
										onblur="javascript:if(!Boolean(this.value))  this.value=1;if(parseInt(this.value)===0)this.value=1;this.value=parseInt(this.value,10);if(this.value>9999)this.value=9999;"
										onkeyup="value=value.replace(/[^\d]/g,'');ChangePrice();">
								</c:if>
								<div class="item_funTotal" href="javascript:void(0);">
									<input type="hidden" id="product_inputText_price" name="product_inputText_price" value="${pageForm.pageProperties.productDetail.actualPrice}" />
									<label id="AmountPrice3">Total: <span>US$ <span>${pageForm.pageProperties.productDetail.actualPrice}</span></span></label>
								</div>
							</c:if>
							<c:if test='${!(option.name eq "Qty")}'>
								<input type="text" name="product_inputText_<c:out value="${option.name}" />" id="<c:out value="${option.id}" />"
										value="<c:out value="${option.defaultValue}" />" size="5"
										maxlength="4" class="input_1">
								<div class="item_funTotal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
							</c:if>
						</div>
					</c:if>
					<c:if test='${option.strSelectType eq "SINGLE_LIST"}'>
						<div class="item_sizeBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><a
									onclick="tab_click(2);"
									href="javascript:jq.goDiv('#tab_middle');"
									class="item_funLink size_chart">Size Chart</a>
							</div>
							<select
								name="product_singleList_<c:out value='${option.name}' />"
								id="Size0">
								<option value="please">Please select</option>
								<c:forEach items="${option.items}" var="item" varStatus="indx"
									step="1">
									<option value="${item.value}"
										<c:if test="${item.value eq option.defaultValue}">selected="selected"</c:if>>${item.value}</option>
								</c:forEach>
							</select>
						</div>
					</c:if>
					<c:if test='${option.strSelectType eq "MULTI_LIST"}'>
						<div class="item_sizeBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><a
									onclick="tab_click(2);"
									href="javascript:jq.goDiv('#tab_middle');"
									class="item_funLink size_chart">Size Chart</a>
							</div>
							<select name="product_multiList_<c:out value='${option.name}' />"
								id="Size0" MULTIPLE>
								<option value="please">Please select</option>
								<c:forEach items="${option.items}" var="item" varStatus="indx"
									step="1">
									<option value="${item.value}"
										<c:if test="${fn:contains(option.defaultValue, item.value)}">selected="selected"</c:if>>${item.value}</option>
								</c:forEach>
							</select>
						</div>
					</c:if>
					
					<c:if test='${(option.strSelectType eq "COLOR_SINGLE") and (!empty option.items) }'>
						<div class="item_colorBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><a
									onclick="tab_click(3);"
									href="javascript:jq.goDiv('#tab_middle');"
									class="item_funLink color_chart">Color Chart</a>
							</div>
							<input type="hidden"
								name="product_colorSingle_<c:out value='${option.name}' />"
								id="goodColor" value="">
							<c:forEach items="${option.items}" var="item" varStatus="indx"
								step="1">
								<a dataname="Color0" data="color${indx.index}"
									value="${item.value}" href="javascript:void(0);"
									title="${item.altTitle}" class="colorLink"
									style="border: 1px solid rgb(139, 33, 4);">
									<div
										<c:if test='${option.defaultValue eq item.value}'>class="abPosition selectImg" </c:if>
										class="abPosition"></div>
									<div class="select_${item.name}"
										style="border-color:${item.value}"></div> </a>
							</c:forEach>
						</div>
					</c:if>
					<input type="hidden"
						value="${pageForm.pageProperties.productDetail.id}"
						name="ProductId">
				</c:forEach>
				<!--musictagstock start-->
				<div style="color: #F33">
					<i id="StocksInfo"></i>
				</div>
				<!--musictagstock end-->

				<%-- <p class="noFlow">
					<a onclick="tab_click(4)" class="item_funHelp"
						href="javascript:jq.goDiv('#tab_middle');">Delivery</a>
				</p>--%>
			</div>
			<script>
				var toutaoPrice =0; 
				var xiaoshu=1; 
				jq("select").change( function() {
					ChangePrice();	
				});
				jq(".colorLink").click(function(){
						jq("#"+jq(this).attr('dataName')).val(jq(this).attr('data'));
						var dataName = jq(this).attr('dataName');
						jq(".colorLink[dataName='"+dataName+"']").css("border","1px solid #717171");
						jq(".colorLink[dataName='"+dataName+"'] div").removeClass('selectImg');
						jq(this).find("div:first").addClass('selectImg');
						jq(this).css("border","1px solid #8b2104"); 
						$('goodColor').value = jq(this).attr('value');
				});
				jq(".item_colorBox").each(function(){ if(jq(this).find(".colorLink").size()==1){jq(this).find(".colorLink:first").click();}});
				function ChangePrice(){
					if($('num').value!=0&&$('num').value!=""){
						ProductsPrice = $('product_inputText_price').value;
								if(iscustom=='custom'){
							ProductsPrice =parseFloat(ProductsPrice)+parseFloat(CustomPrices);
						}
						
						ProductsPrice =parseFloat(ProductsPrice)+parseFloat(toutaoPrice);
								
						$('money').innerHTML=(parseFloat(ProductsPrice)).toFixed(xiaoshu);
						$('AmountPrice3').innerHTML="Total: <span>US$ <span>"+((parseFloat(ProductsPrice)).toFixed(xiaoshu)*$('num').value).toFixed(xiaoshu)+"</span></span>";
					}	
				}
		</script>
		<ul style="display: none;" id="choosePro" class="choosePro">
		</ul>
			<c:if test='${pageForm.pageProperties.displayOrderItem == null}'>
				<div class="addtocart">

					<input type="submit" style="display: none;" id="sub"
						value="ADD TO MY BAG" class="item_addBag"> <input
						type="submit" id="nosub" value="ADD TO MY BAG" class="item_addBag">
					<%--<div class="sub_outDiv_normal" style="display: none;"
						id="sub_outDiv">
						<div id="notselect_tips" class="notselect_tips">
							<div class="tips_title">PLEASE SELECT</div>
							<ul id="nochoose"></ul>
						</div>
						<div style="" id="notselect_tips1" class="tip_arrow">&nbsp;</div>
					</div> --%>
				</div>
				<%--<a onclick="favorite(${pageForm.pageProperties.productDetail.id})"
					id="favorite_${pageForm.pageProperties.productDetail.id}"
					class="item_potionsFavorite" href="javascript:void(0);">Add to
					my Favorite </a> --%>
			</c:if>
			<div class="item_funWords">
				<div id="favorite" style="display: none;" class="details_l"></div>
			</div>
		</div>
	</form>
	<div id='musicwhp_backgroundDiv' style="display: none;"></div>
	<script type="text/javascript" src="../js/thing_item.js"></script>

</div>