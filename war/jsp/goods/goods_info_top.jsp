<%@ include file="../include.jsp" %>
<%@page import="com.spshop.utils.AllConstants"%>
<div class="item_goods_info_box_top">
	<div class="item_box_left_normal">
		<!-- class="item_box_left" to high -->
		<div class="no_float">
			
			<!-- normal picture -->
			<div class="item_normal_pic" id="item_normal_pic">
				<div class="item_normal_pic_box">
					<div></div>
					<c:forEach items="${pageForm.pageProperties.productDetail.images}" var="image" varStatus="idx" step="1">
					<c:if test="${idx.index eq 0}" >
					<a class="bighref" id="linkNormalBox" href="${image.largerUrl}" rel="thing_item_pics"> 
						<img src="http://www.mlo.me/image/endefault/thing_item/zoom_in.png" id="zoomIcon"> 
						<img width="277" val="${image.largerUrl}" alt="${pageForm.pageProperties.productDetail.title}" src="${image.largerUrl}" id="imageNormalBox"> 
					</a>
				</div>
				<div style="display: none">
					</c:if>
					<c:if test="${idx.index eq 0}" >
						<a href="${image.largerUrl}" class="noneBox"></a> 
					</c:if>
					<c:if test="${idx.index gt 0}" >
						<a href="${image.largerUrl}" class="noneBox" rel="thing_item_pics"></a> 
					</c:if>
				</c:forEach>
				</div>
				<!--<div class="item_normal_zoom"> <a href="###" class="link_pic_zoom bighref" target="_blank">Enlarge the Image</a> </div>-->
				<div class="item_normal_socllbar">
					<ul>
						<c:forEach items="${pageForm.pageProperties.productDetail.images}" var="image" varStatus="idx" step="1">
							<li dis="${idx.index}" class="smallPic"
								url="http://www.mlo.me/thing/StyleZoom-id-32534-ProductsPicture-0.html"
								val="${image.largerUrl}">
								<img
								alt="${pageForm.pageProperties.productDetail.title}"
								src="${image.iconUrl}">
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>


			<!-- normal picture -->
		</div>
	</div>
	<!-- shopping function -->
	<form onsubmit="return formsubmit();" name="cusform" method="post"
		action="displayCart.do">
		<div class=" item_shopping_fun">
			<div class="noFlow">
				<h1><c:out value="${pageForm.pageProperties.productDetail.title}" /></h1>
			</div>
			<div class="item_showWords"></div>
			<div class="item_shopping_code">Item Code:${pageForm.pageProperties.productDetail.id}</div>
			<div style="position: relative;" class="item_shopping_funbox">
				<div class="list_stars">
						<script src="http://connect.facebook.net/en_US/all.js#appId=277233412302753&amp;xfbml=1"></script><fb:like href='http://www.prommagics.com' send="false" width="450" show_faces="true" font=""></fb:like>
				</div>
				<table>
					<tbody>
						<c:forEach items="${pageForm.pageProperties.productDetail.properties}" var="property" varStatus="idx" step="1">
							<tr>
								<td><c:out value="${property.name}" /> :</td>
								<td><c:out value="${property.value}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="itme_description"><c:out value="${pageForm.pageProperties.productDetail.abstractText}" /></div>
				<c:out value="${pageForm.pageProperties.productDetail.detail}" escapeXml="false"/>
			</div>
		</div>
		
		<div style="display: none;" id="Customfloat" class="alert_thing_box">
			<script type="text/javascript">
            //&lt;![CDATA[
            /****** 定制尺寸js********/
            function changeunit(value){	if(value=='in')value='inch';for(var i=1;i&lt;customnum;i++){if(i==2&amp;&amp;value=="cm"&amp;&amp; ($('unit'+i).innerHTML=="kg" || $('unit'+i).innerHTML=='lb')){	$('unit'+i).innerHTML='kg';	}else if(i==2&amp;&amp;value=="inch"&amp;&amp;( $('unit'+i).innerHTML=="kg" || $('unit'+i).innerHTML=='lb')){$('unit'+i).innerHTML='lb';}else{	$('unit'+i).innerHTML=value;	}}}
            //]]&gt;
            </script>
			<div class="alert_thing_bg">
				<div class="alert_thing_top">
					<h5>Custom Options</h5>
					<div
						style="FONT-WEIGHT: bold; FONT-SIZE: 12px; LEFT: 226px; COLOR: #9e5201; POSITION: absolute; TOP: 48px"></div>
					<div class="menu_box">
						<a
							onclick="$('custom2').style.display='block';$('custom1').style.display='none';$('customcss1').className='';this.className='link_now';"
							id="customcss2" href="javascript:void(0);"><span
							id="customade"><b>Made to Measurements</b>
						</span>
						</a>
					</div>
					<div class="chose_size"></div>
					<div class="Price_box">
						US$ <span id="AmountPrice2">209.99</span>
					</div>
				</div>
				<div class="alert_thing_main">
					<div style="display: none;" id="custom1"></div>
					<script language="javascript">
var customnum = 8;
</script>
					<div id="custom2">
						<div class="left_img">
							<img width="163" height="370"
								src="http://www.mlo.me/image/endefault/mobantupian/hunsha/wedding_size5.jpg">
						</div>
						<div class="right_box">
							<table>
								<tbody>
									<tr>
										<td align="right" colspan="2">Please select:<select
											onchange="changeunit(this.value);" name="units"><option
													value="in">in</option>
												<option value="cm">cm</option>
										</select>
										</td>
									</tr>
									<tr>
										<td>A Bust Size:</td>
										<td><input type="text" size="8" name="Customszie[bust]"
											id="Customszie1"><span id="unit1">inch</span><span
											style="display: none;" id="cussize1"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
									<tr>
										<td>B Waist Size:</td>
										<td><input type="text" size="8" name="Customszie[waist]"
											id="Customszie2"><span id="unit2">inch</span><span
											style="display: none;" id="cussize2"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
									<tr>
										<td>C Hip Size:</td>
										<td><input type="text" size="8" name="Customszie[hip]"
											id="Customszie3"><span id="unit3">inch</span><span
											style="display: none;" id="cussize3"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
									<tr>
										<td>D Shoulder Width:</td>
										<td><input type="text" size="8"
											name="Customszie[shoulder]" id="Customszie4"><span
											id="unit4">inch</span><span style="display: none;"
											id="cussize4"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
									<tr>
										<td>E Hollow to hem(for short length dress):</td>
										<td><input type="text" size="8"
											name="Customszie[hellow2hem]" id="Customszie5"><span
											id="unit5">inch</span><span style="display: none;"
											id="cussize5"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
									<tr>
										<td>F Hollow to floor (for floor length dress):</td>
										<td><input type="text" size="8"
											name="Customszie[hellow2floor]" id="Customszie6"><span
											id="unit6">inch</span><span style="display: none;"
											id="cussize6"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
									<tr>
										<td>G Under Bust:</td>
										<td><input type="text" size="8"
											name="Customszie[underbust]" id="Customszie7"><span
											id="unit7">inch</span><span style="display: none;"
											id="cussize7"><img
												src="http://www.mlo.me/image/endefault/check_error.gif">
										</span>
										</td>
									</tr>
								</tbody>
							</table>
							<br>● Please provide detailed measurement information for
							customization base on "How to Measure". <br>
							<br> ● For customer who likes to choose customized service,
							the correct size measured by professional tailor with your
							underwear on is strongly recommended. <br>
							<br> ● Please measure with shoes on when you measure "Hollow
							to floor".
						</div>

					</div>
					<script language="javascript">
changeunit('in');
</script>
					<div class="hei1"></div>
					<h5>Item Remarks</h5>
					<textarea onkeyup="checkLen(this,1500)" maxlength="1500"
						style="width: 100%;" name="CustomRemarks" cols="20"></textarea>
				</div>
				<div class="alert_thing_sub">
					<input type="button" onclick="checknow();" class="submit_7"
						value="Submit" name="Submit"> <input type="reset"
						onclick="cancelCustom();" class="submit_7" value="Cancel"
						name="Cancel">

				</div>
			</div>
		</div>
		<!--custom-->
		<input type="hidden" value="yes" id="gm" name="gm">
		<div class="item_box_right">
			<div></div>
			<div class="item_property">
				<!-- item_property_show is alert-->
				<div class="item_goods_price_older">
					<s>US$ 293.99</s>
				</div>
				<div style="z-index: 2;" class="item_price">
					<span class="item_price_currency">US$ <a id="currencyAll"
						href="javascript:void(0);"><img
							src="http://www.mlo.me/image/endefault/thing_item/arrow-select.gif">
					</a>
					</span><span class="item_price_num"> <span id="money">209.99</span>
					</span>
					<div class="currencyAll">

						<a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=EUR">
							€ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=JPY">
							¥ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=GBP">
							£ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=CAD">
							CA$ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=AUD">
							AU$ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=CHF">
							CHF </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=HKD">
							HK$ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=RUB">
							руб. </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=MXN">
							$MXN </a>


					</div>
				</div>
				<c:forEach items="${pageForm.pageProperties.productDetail.options}" var="option" varStatus="idx" step="1">
					<c:if test='${option.strSelectType eq "INPUT_TEXT"}'>
						<div class="noFlow">
							<c:out value="${option.name}" />: <input type="text" name="product_inputText_<c:out value='${option.name}' />" id="<c:out value="${option.id}" />" value="<c:out value="${option.defaultValue}" />" size="5"
								maxlength="4" class="input_1"
								onblur="javascript:if(!Boolean(this.value))  this.value=1;if(parseInt(this.value)===0)this.value=1;this.value=parseInt(this.value,10);if(this.value&gt;9999)this.value=9999;"
								onkeyup="value=value.replace(/[^\d]/g,'');ChangePrice();">
							<div class="item_funTotal" href="javascript:void(0);">
								<input type="hidden" name="product_inputText_price" value="${pageForm.pageProperties.productDetail.price}"/>
								Total: <span>US$ <span id="AmountPrice3">${pageForm.pageProperties.productDetail.price}</span>
								</span>
							</div>
						</div>
					</c:if>
					<c:if test='${option.strSelectType eq "SINGLE_LIST"}'>
						<div class="item_sizeBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><a onclick="tab_click(2);"
									href="javascript:jq.goDiv('#tab_middle');"
									class="item_funLink size_chart">Size Chart</a>
							</div>
							<select name="product_singleList_<c:out value='${option.name}' />" id="Size0">
								<option	value="please">Please select</option>
								<c:forEach items="${option.items}" var="item" varStatus="indx" step="1">
									<option value="${item.value}" <c:if test="${item.value eq option.defaultValue}">selected="selected"</c:if>>${item.value}</option>
								</c:forEach>
							</select>
						</div>
					</c:if>
					<c:if test='${option.strSelectType eq "MULTI_LIST"}'>
						<div class="item_sizeBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><a onclick="tab_click(2);"
									href="javascript:jq.goDiv('#tab_middle');"
									class="item_funLink size_chart">Size Chart</a>
							</div>
							<select name="product_multiList_<c:out value='${option.name}' />" id="Size0" MULTIPLE>
								<option	value="please">Please select</option>
								<c:forEach items="${option.items}" var="item" varStatus="indx" step="1">
									<option value="${item.value}" <c:if test="${fn:contains(option.defaultValue, item.value)}">selected="selected"</c:if>>${item.value}</option>
								</c:forEach>
							</select>
						</div>
					</c:if>
					<c:if test='${option.strSelectType eq "COLOR_SINGLE"}'>
						<div class="item_colorBox">
							<div class="item_ProBox_title">
								<span><c:out value="${option.name}" />:</span><a onclick="tab_click(3);"
									href="javascript:jq.goDiv('#tab_middle');"
									class="item_funLink color_chart">Color Chart</a>
							</div>
							<input type="hidden" name="product_colorSingle_<c:out value='${option.name}' />" id="goodColor" value="">
							<c:forEach items="${option.items}" var="item" varStatus="indx" step="1">
								<a dataname="Color0" data="color${indx.index}" value = "${item.value}"
								href="javascript:void(0);" title="${item.altTitle}"
								class="colorLink" style="border: 1px solid rgb(139, 33, 4);">
								<div <c:if test='${option.defaultValue eq item.value}'>class="abPosition selectImg" </c:if> class="abPosition" ></div>
								<div class="select_${item.name}"  style="border-color:${item.value}"></div>
								
							</a> 
							</c:forEach>
							
							
						</div>
					</c:if>
					<input type="hidden" value="${pageForm.pageProperties.productDetail.id}" name="ProductId">
				</c:forEach>
				
				
				<!--musictagstock start-->
				<div style="color: #F33">
					<i id="StocksInfo"></i>
				</div>
				<!--musictagstock end-->

				<p class="noFlow">
					<a onclick="tab_click(4)" class="item_funHelp"
						href="javascript:jq.goDiv('#tab_middle');">Delivery</a>
				</p>
			</div>
			<script>
	jq("select").change( function() {
			chooseSize();
			CheckStock(jq(this).val());
			
			if(jq(this).val()=='custom'){
				iscustom="custom";
				jq(this).data("custom","yes");
				jq("#any").tanCeng('click','absolute','#Customfloat',1);
				if($('customcss1')){
					$('customcss1').className='';
					$('custom1').style.display='none';
				}
				$('customcss2').className='link_now';				
				$('custom2').style.display='block';
				$('customade').style.display='block';									
			}else{
				if(jq(this).data("custom")=="yes"){
						jq(this).data("custom","no");
						iscustom="";
				}
			}
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
	 	 	chooseSize();
	});
	
	jq(".item_colorBox").each(function(){ if(jq(this).find(".colorLink").size()==1){jq(this).find(".colorLink:first").click();}}); 
	</script>
			<ul style="display: block;" id="choosePro" class="choosePro">
				<li>Dress Color:Refer to the image</li>
			</ul>
			<c:if test='${pageForm.pageProperties.displayOrderItem != null}'>
			<div class="addtocart">
			
				<input type="submit" style="display: none;" id="sub"
					value="ADD TO MY BAG" class="item_addBag"> <input
					type="submit" id="nosub" value="ADD TO MY BAG" class="item_addBag">
				<div class="sub_outDiv_normal" style="display: none;"
					id="sub_outDiv">
					
					<div style="" id="notselect_tips1" class="tip_arrow">&nbsp;</div>
				</div>
			</div>
			<a onclick="favorite('32534')" id="favorite_32534"
				class="item_potionsFavorite" href="javascript:void(0);">Add to
				my Favorite </a>
			</c:if>
			<div class="item_funWords">
				<div id="favorite" style="display: none;" class="details_l"></div>
			</div>
			<div class="verisign_paypal">

				<span class="paypal"><a href="javascript:void(0)"
					title="paypal" rel="nofollow"
					onclick="javascript:window.open('https://www.paypal.com/verified/pal=paypal@milanoo.com','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=350');"><img
						width="50" alt="paypal"
						src="http://www.mlo.me/image/endefault/paypal.verified.png">
				</a>
				</span> <span class="verisign"><a
					href="https://sealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=www.milanoo.com&amp;lang=en"
					title="Verisign Secured" target="_blank" rel="nofollow"><img
						width="90" src="http://www.mlo.me/image/endefault/vers.jpg"
						alt="Verisign Secured">
				</a>
				</span>

			</div>
		</div>
	</form>
	<script type="text/javascript" src="../js/thing_item.js"></script>
	<script type="text/javascript" src="../js/plusone.js"></script>
	
	<script type="text/javascript">
	function formsubmit(){
		if("${email}" == null || "${email}" == ""){
			alert("please login first");
			return false;
		}
		var inputArray = document.getElementsByTagName('input');
		if(inputArray!=null){
			for(var i=0;i<inputArray.length;i++){
				var inputItem = inputArray[i];
				var optionName = inputItem.name;
				if(optionName.startWith("product_")){
					if(inputItem.value==null||inputItem.value==""){
						var names = inputItem.name.split("_");
						var name = names[names.length-1];
						alert("please fill "+name);
						return false;
					}
				}
			}
		}
		
		var selectArray = document.getElementsByTagName('select');
		if(selectArray!=null){
			for(var i=0;i<selectArray.length;i++){
				var selectItem = selectArray[i];
				var optionName = selectItem.name;
				if(optionName.startWith("product_")){
					if(selectItem.value==null||selectItem.value==""){
						var names = selectItem.name.split("_");
						var name = names[names.length-1];
						alert("please select "+name);
						return false;
					}
				}
			}
		}
	}
	
	String.prototype.endWith=function(str){
		if(str==null||str==""||this.length==0||str.length>this.length)
		  return false;
		if(this.substring(this.length-str.length)==str)
		  return true;
		else
		  return false;
		return true;
		}

		String.prototype.startWith=function(str){
		if(str==null||str==""||this.length==0||str.length>this.length)
		  return false;
		if(this.substr(0,str.length)==str)
		  return true;
		else
		  return false;
		return true;
		}
	</script>
</div>