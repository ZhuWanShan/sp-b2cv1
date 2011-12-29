<%@ include file="../include.jsp"%>
<%@page import="com.spshop.utils.AllConstants"%>
<div class="item_goods_info_box_top">
	<div class="item_box_left_normal">
	<ss:ancestorCat ancester="ancester" categories="${pageForm.pageProperties.productDetail.categories}">
		<c:if test="${pageForm.pageProperties.productDetail.categories[0].name ne 'Wedding-Accessories' && 
						(ancester eq 'Wedding-Apparel' || ancester eq 'Special-Occasion-Dresses')}">
		<jsp:include page="customize_dress.jsp"></jsp:include>
		</c:if>
		<c:if test="${(pageForm.pageProperties.productDetail.categories[0].name eq 'Business-Pants') || 
					  (pageForm.pageProperties.productDetail.categories[0].name eq 'Groom-Pants') ||
					  (pageForm.pageProperties.productDetail.categories[0].name eq 'Tuxedos-Pants')}">
		<jsp:include page="customize_pants.jsp"></jsp:include>
		</c:if>
		<c:if test="${(pageForm.pageProperties.productDetail.categories[0].name eq 'Business-Vests') || 
					  (pageForm.pageProperties.productDetail.categories[0].name eq 'Groom-Vests') ||
					  (pageForm.pageProperties.productDetail.categories[0].name eq 'Tuxedos-Vests')}">
		<jsp:include page="customize_suit.jsp"></jsp:include>
		</c:if>
	</ss:ancestorCat>
		<!-- class="item_box_left" to high -->
		<div class="no_float">

			<!-- normal picture -->
			<div class="item_normal_pic" id="item_normal_pic">
				<c:forEach items="${pageForm.pageProperties.productDetail.images}"
						var="image" varStatus="idx" step="1">
						<c:if test="${idx.index eq 0}">
							<div class="item_normal_pic_box">
								<div></div>
										<a class="bighref" id="linkNormalBox" href="${image.noChangeUrl}"
											rel="thing_item_pics"> 
											<img src="../css/zoom_in.png"
												 id="zoomIcon"> 
											<c:if test='${image.strSizeType eq "PRODUCT_SQUARE"}'>
												<img style="width:277px; padding-top:${(370-277)/2}px;" val="${image.noChangeUrl}"
													 alt="${pageForm.pageProperties.productDetail.title}"
													 src="${image.largerUrl}" id="imageNormalBox">
											</c:if>
											<c:if test='${image.strSizeType eq "PRODUCT_NORMAL"}'>
												<img style="width:277px;" val="${image.noChangeUrl}"
													 alt="${pageForm.pageProperties.productDetail.title}"
													 src="${image.largerUrl}" id="imageNormalBox">
											</c:if>
										</a>
							</div>
						</c:if>
						<div style="display: none">
						
							<c:if test="${idx.index eq 0}">
								<a href="${image.noChangeUrl}" class="noneBox"></a>
							</c:if>
							<c:if test="${idx.index gt 0}">
								<a href="${image.noChangeUrl}" class="noneBox" rel="thing_item_pics"></a>
							</c:if>
						</div>
				</c:forEach>
				<!--<div class="item_normal_zoom"> <a href="###" class="link_pic_zoom bighref" target="_blank">Enlarge the Image</a> </div>-->
				<div class="item_normal_socllbar">
					<ul>
						<c:forEach items="${pageForm.pageProperties.productDetail.images}"
							var="image" varStatus="idx" step="1">
							<li dis="${idx.index}" class="smallPic"
								val="${image.largerUrl}">
								<c:if test='${image.strSizeType eq "PRODUCT_SQUARE"}'>
								<img style="width:46px; padding-top:${(63-46)/2}px;" alt="${pageForm.pageProperties.productDetail.title}"
									 src="${image.iconUrl}">
								</c:if>
								<c:if test='${image.strSizeType eq "PRODUCT_NORMAL"}'>
								<img style="width:46px;" alt="${pageForm.pageProperties.productDetail.title}"
									 src="${image.iconUrl}">
								</c:if>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>


			<!-- normal picture -->
		</div>
	</div>
	<!-- shopping function -->
	<form name="cusform" method="post" action="/shoppingCart">
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
			</div>
				<div id="divButtons"></div>
				<script>
					// Define UserAction onject
					var ua = new gigya.services.socialize.UserAction(); 
					ua.setLinkBack("<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}/${pageForm.pageProperties.productDetail.name}"); 
					ua.setTitle("Enjoy Online Shopping For Fashion Dress, Apparel, Suits With Free Shipping - HoneyBuy.com");
					// Define Share Bar plugin's Parameters	
					var shareBarParams ={ 
						userAction:ua,
						shareButtons: "facebook-like,share,stumbleupon,twitter-tweet,google-plusone,email",
						containerID: 'divButtons', // location of the Share Bar plugin
						showCounts: 'top'
					}
					// Load Share Bar plugin
					gigya.services.socialize.showShareBarUI({},shareBarParams);
				</script>
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
						<a rel="nofollow" class="link_now" href="#">$</a>
						<a rel="nofollow" class="link_now" href="#">&#8364;</a> 
						<a rel="nofollow" class="link_now" href="#">&#8356;</a> 
						<a rel="nofollow" class="link_now" href="#">CA$</a>
						<a rel="nofollow" class="link_now" href="#">AU$</a>
						<a rel="nofollow" class="link_now" href="#">CHF</a> 
					</div>
				</div>
				<c:forEach items="${pageForm.pageProperties.productDetail.options}"
					var="option" varStatus="idx">
						<c:if test='${(option.strSelectType eq "COLOR_SINGLE") and (!empty option.items) }'>
						<div class="item_colorBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><br>
							</div>
							<input type="hidden"
								name="color@${option.name}"
								id="goodColor" value="">
								<select id="productColorSelector">
									<option value="asp">The Same As Picture</option>
									<option value="other">Select other color</option>
								</select>
								
								<div class="colorSelectWindow" style="display: none;">
									
									<div class="colorWindow-large">
										<c:forEach items="${option.items}" begin="0" end="0" var="item">
											<img alt="${item.name}" src="${fn:endsWith(item.value, '.jpg')?item.value:''}">
										</c:forEach>
										<table align="center" width="90%">
											
											<tr align="center">
												<td align="center"><span id="colorWindow-largeDESC" style="height: 20px"></span><br></td>
											</tr>
											
										</table>
										<button type="button">OK</button>
									</div>
									
									<div class="colorWindow-list">
									
										<c:forEach items="${option.items}" var="item">
											<c:if test="${fn:endsWith(item.value, '.jpg')}">
												<img alt="${item.name}" src="${item.value}" title="${item.name}">
											</c:if>
										</c:forEach>
									</div>
									<script type="text/javascript">
									
										jq("#productColorSelector").change(function(){
											if(jq("#productColorSelector").val()=="other"){
												jq(".colorSelectWindow").show();
											}else{
												var templete = "<table><tr><td>Color: "+name+"</td></tr><tr><td>As First Picture</td></tr></table>";
												jq("#CustomizedColorDesp").html(templete);
												jq("#CustomizedColorDesp").show();
											}
										});
									
										jq(".colorSelectWindow .colorWindow-list img").each(function(index, item){
											jq(item).click(function(){
												jq(".colorSelectWindow .colorWindow-list img").removeClass("color-selected");
												jq(this).addClass("color-selected");
												jq(".colorSelectWindow .colorWindow-large img").attr("src",jq(this).attr("src"));
												jq(".colorSelectWindow .colorWindow-large img").attr("title",jq(this).attr("title"));
												jq(".colorSelectWindow .colorWindow-large img").attr("alt",jq(this).attr("alt"));
												jq("#colorWindow-largeDESC").html(jq(this).attr("title"));
												
											});
										});
										
										jq(".colorSelectWindow .colorWindow-large button").click(function(){
											
											var selectedImg = jq(".colorSelectWindow .colorWindow-list .color-selected");
											
											var value = selectedImg.attr("src");
											var name = selectedImg.attr("title");
											
											if(value && name){
												jq("#goodColor").val(name+"##"+value);
												var templete = "<table><tr><td>Color: "+name+"</td></tr><tr><td><img style='width:36px;height:36px' alt='' src='"+value+"'></td></tr></table>";
												jq("#CustomizedColorDesp").html(templete);
												jq("#CustomizedColorDesp").show();
											}else{
												window.alert("Please choose a color!");
											}
											
											jq(".colorSelectWindow").hide();
										});
									</script>
								</div>
							<%-- <c:forEach items="${option.items}" var="item" varStatus="indx"
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
							--%>
						</div>
					</c:if>
			</c:forEach>
				<c:forEach items="${pageForm.pageProperties.productDetail.options}"
					var="option" varStatus="idx">
						<c:if test='${option.strSelectType eq "INPUT_TEXT"}'>
							<c:if test='${!(option.name eq "Qty")}'>
								<div class="noFlow">
								<input type="text" name="text@${option.name}" id="<c:out value="${option.id}" />"
										value="<c:out value="${option.defaultValue}" />" size="5"
										maxlength="4" class="input_1">
								<div class="item_funTotal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
								</div>
							</c:if>
					</c:if>
					<c:if test='${option.strSelectType eq "SINGLE_LIST"}'>
						<div class="item_sizeBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span>
							</div>
							<select
								name="text@${option.name}"
								id="Size0">
								<option value="please">Please select</option>
								<c:forEach items="${option.items}" var="item" varStatus="indx"
									step="1">
									<c:if test="${not option.name eq 'Customized Size'}">
										<option value="${item.value}"
											<c:if test="${item.value eq option.defaultValue}">selected="selected"</c:if>>${item.name}</option>
									</c:if>
								</c:forEach>
								<c:forEach items="${option.items}" var="item" varStatus="indx"
									step="1">
									<c:if test="${option.name eq 'Customized Size'}">
										<option value="${item.value}"
											<c:if test="${item.value eq option.defaultValue}">selected="selected"</c:if>>${item.name}</option>
									</c:if>
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
							<select name="texts@${option.name}"
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
				</c:forEach>
				<c:forEach items="${pageForm.pageProperties.productDetail.options}"
					var="option" varStatus="idx">
						
							<c:if test='${option.name eq "Qty"}'>
								<div class="noFlow">
									<c:out value="${option.name}" />: 
									<c:if test="${option.defaultValue eq null}">
										<input type="text" name="qty" id="num"
											value="1" size="5" maxlength="4" class="input_1"
											onblur="javascript:if(!Boolean(this.value))  this.value=1;if(parseInt(this.value)===0)this.value=1;this.value=parseInt(this.value,10);if(this.value>9999)this.value=9999;"
											onkeyup="value=value.replace(/[^\d]/g,'');ChangePrice();">
									</c:if>
									<div class="item_funTotal" href="javascript:void(0);">
										<input type="hidden" id="product_inputText_price" name="qty" value="${pageForm.pageProperties.productDetail.actualPrice}" />
										<label id="AmountPrice3">Total: <span>US$ <span>${pageForm.pageProperties.productDetail.actualPrice}</span></span></label>
									</div>
									</div>
							</c:if>
						
					</c:forEach>
				<input type="hidden"
						value="${pageForm.pageProperties.productDetail.name}"
						name="ProductId">
				<input type="hidden" id="CustomizedHidden">
				<input type="hidden"
						name="operation"
						value="addItem">
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
		<div id="CustomizedSizeDesp" style="display: none;padding: 4px;">
			
		</div>
		<div id="CustomizedColorDesp" style="display: none;padding: 4px;">
			
		</div>
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