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
            /****** å®å¶å°ºå¯¸js********/
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
							<br>â Please provide detailed measurement information for
							customization base on "How to Measure". <br>
							<br> â For customer who likes to choose customized service,
							the correct size measured by professional tailor with your
							underwear on is strongly recommended. <br>
							<br> â Please measure with shoes on when you measure "Hollow
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
					<s>US$ ${pageForm.pageProperties.productDetail.price}</s>
				</div>
				<div style="z-index: 2;" class="item_price">
					<span class="item_price_currency">US$ <a id="currencyAll"
						href="javascript:void(0);"><img
							src="http://www.mlo.me/image/endefault/thing_item/arrow-select.gif">
					</a>
					</span><span class="item_price_num"> <span id="money">${pageForm.pageProperties.productDetail.actualPrice}</span>
					</span>
					<div class="currencyAll">
						<a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=EUR">
							â¬ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=JPY">
							Â¥ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=GBP">
							Â£ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=CAD">
							CA$ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=AUD">
							AU$ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=CHF">
							CHF </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=HKD">
							HK$ </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=RUB">
							ÑÑÐ±. </a> <a rel="nofollow" class="link_now"
							href="http://www.milanoo.com/app/currency.php?currency=MXN">
							$MXN </a>


					</div>
				</div>
				<script>
				//用于页面初始化时计算属性的click事件触发次数
				var propertyContDown = '0';
				</script>
				<c:forEach items="${pageForm.pageProperties.productDetail.options}" var="option" varStatus="idx" step="1">
					<c:if test='${option.strSelectType eq "INPUT_TEXT"}'>
						<div class="noFlow">
							<div class="item_funTotal"><c:out value="${option.name}" />: <input type="text" name="product_inputText_<c:out value='${option.name}' />" id="<c:out value="${option.id}" />" value="<c:out value="${option.defaultValue}" />" size="5" maxlength="4" class="input_1" onblur="javascript:if(!Boolean(this.value))  this.value=1;if(parseInt(this.value)===0)this.value=1;this.value=parseInt(this.value,10);if(this.value&gt;9999)this.value=9999;" onkeyup="value=value.replace(/[0-9a-zA-Z]/g,'');ChangePrice();"></div>
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
							<script>propertyContDown++;</script>
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
							<script>propertyContDown++;</script>
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
			<ul style="display: none;" id="choosePro" class="choosePro">
			</ul>
			<c:if test='${pageForm.pageProperties.displayOrderItem != null}'>
			<div class="addtocart">
			
				<input type="submit" style="display: none;" id="sub"
					value="ADD TO MY BAG" class="item_addBag"> <input
					type="submit" id="nosub" value="ADD TO MY BAG" class="item_addBag">
				<div class="sub_outDiv_normal" style="display: none;"
					id="sub_outDiv">
					<div id="notselect_tips" class="notselect_tips">
						<div class="tips_title">PLEASE SELECT</div>
						<ul id="nochoose"></ul>
					</div>
					<div style="" id="notselect_tips1" class="tip_arrow">&nbsp;</div>
				</div>
			</div>
			<a onclick="favorite(${pageForm.pageProperties.productDetail.id})" id="favorite_${pageForm.pageProperties.productDetail.id}"
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
	<div id='musicwhp_backgroundDiv' style="display:none;"></div>
<script type="text/javascript">
var CustomPrices=0;  
var toutaoPrice =0;   
var xiaoshu=2;  

//<![CDATA[
/**尺码选择**/
function chooseSize()
{
		var v,x=0, text='',choosePro='';
		v='Color0';k='Color';
		if(--propertyContDown >= 0)
		{//当页面第一次加载时 进行默认选择
			var selO = jq("#"+v);
			var selOLen=selO.attr('length');
			if(selO.attr('tagName').toLowerCase()=='select')
			{//size,单尺寸时进行自动选择
				if(selOLen<=2){selO.find('option:last').attr('selected','selected')};
			}
			else
			{//color 单颜色时进行自动选择
			
				var colorAttrs = jq(".colorLink[dataname='"+v+"']");
				if(colorAttrs.length < 2)
				{
					jq(colorAttrs[0]).click();
				}
				
			}			
		}
		if($(v))
		{
			if( (!$(v).value) || $(v).value.toLowerCase()=='please')
			{
				x=1;text += "<li>"+k+"</li>" ;
			}
			else
			{
				var tagType = $(v).tagName;
				if(tagType=="SELECT")
				{
					var kv = jq("#"+v+" > option[value='"+$(v).value+"']").text();
				}
				else
				{
					var kv = jq(".colorLink[dataname='"+v+"'][data='"+$(v).value+"']").attr('title');
				}  
				choosePro +="<li>"+k+":"+kv+"</li>" ;
			}
		}
		v='Size0';k='Size';
		if(--propertyContDown >= 0)
		{//当页面第一次加载时 进行默认选择
			var selO = jq("#"+v);
			var selOLen=selO.attr('length');
			if(selO.attr('tagName').toLowerCase()=='select')
			{//size,单尺寸时进行自动选择
				if(selOLen<=2){selO.find('option:last').attr('selected','selected')};
			}
			else
			{//color 单颜色时进行自动选择
			
				var colorAttrs = jq(".colorLink[dataname='"+v+"']");
				if(colorAttrs.length < 2)
				{
					jq(colorAttrs[0]).click();
				}
				
			}			
		}
		if($(v))
		{
			if( (!$(v).value) || $(v).value.toLowerCase()=='please')
			{
				x=1;text += "<li>"+k+"</li>" ;
			}
			else
			{
				var tagType = $(v).tagName;
				if(tagType=="SELECT")
				{
					var kv = jq("#"+v+" > option[value='"+$(v).value+"']").text();
				}
				else
				{
					var kv = jq(".colorLink[dataname='"+v+"'][data='"+$(v).value+"']").attr('title');
				}  
				choosePro +="<li>"+k+":"+kv+"</li>" ;
			}
		}
			
		if(choosePro){
			$('choosePro').style.display='block';$('choosePro').innerHTML=choosePro;
		}else{
			$('choosePro').style.display='none';
		}
		if(x){
			/*无法提交*/	$('nochoose').innerHTML=text;	$('nosub').style.display='';$('sub').style.display='none';
		}	
		else
		{
			$('nochoose').innerHTML='';$('nosub').style.display='none';$('sub').style.display='';
		}	
}jq(document).ready(chooseSize);

//闪烁产品属性区域
function flashProductAttr()
{
	var countDown = 6;
	var productAttrBlock = $('productAttrBlock');
	var intervalIndex = setInterval(flashing,300);
	var textColor = null;
	function flashing()
	{		
		if(countDown < 0)
		{
			clearInterval(intervalIndex);
			return false;
		}
	    textColor =  textColor == "#F07302" ? "#333333" : "#F07302";
		jq(productAttrBlock).find('td').css('color',textColor);		
		countDown--;
	}
}
/***/
/**价格显示**/
function ChangePrice(){
	if($('num').value!=0&&$('num').value!=""){
		checkstock();
		ProductsPrice = '209.59';
				if(iscustom=='custom'){
			ProductsPrice =parseFloat(ProductsPrice)+parseFloat(CustomPrices);
		}
		
		ProductsPrice =parseFloat(ProductsPrice)+parseFloat(toutaoPrice);
				
		$('money').innerHTML=(parseFloat(ProductsPrice)).toFixed(xiaoshu);
		$('AmountPrice2').innerHTML=(parseFloat(ProductsPrice)).toFixed(xiaoshu);
		$('AmountPrice3').innerHTML=((parseFloat(ProductsPrice)).toFixed(xiaoshu)*$('num').value).toFixed(xiaoshu);
	}	
}
/***/
/**批发弹出页面**/
var $infodiv=jq('#info');
jq(document).ready(function(){
	$infodiv.showP({shade:'#3F3F3F 0.2',clickhide:1,btnclose:'close',ie6iframe:1});
	jq("#wholesale").click(function(event){event.preventDefault();$infodiv.showP('open');});
	//jq("#wholesale").tanCeng("click","show","#info");
	//jq("#close").tanCeng("click","hide","#info");
	jq("#musicwhp_backgroundDiv").tanCeng("click","hide","#info");
});
/****/
/**验证码**/
function changeimg(act){
	$('vfcode'+act).src = 'http://www.milanoo.com/?action=authcode&act='+ act + '&' + Math.random();
}
var lastStateId='';
var Countries_array=new Array()
Countries_array[70]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585978.gif"
Countries_array[140]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380282.gif"
Countries_array[82]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222587047.gif"
Countries_array[192]="http://www.mlo.me/upload/flag/no/Flag_1305876148.gif"
Countries_array[2]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496397.gif"
Countries_array[174]="http://www.mlo.me/upload/flag/Flag_1291257303.gif"
Countries_array[3]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496430.gif"
Countries_array[4]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496454.gif"
Countries_array[166]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381443.gif"
Countries_array[189]="http://www.mlo.me/upload/flag/no/Flag_1304043076.gif"
Countries_array[5]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496478.gif"
Countries_array[142]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380547.gif"
Countries_array[69]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585880.gif"
Countries_array[6]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496556.gif"
Countries_array[149]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380996.gif"
Countries_array[161]="http://www.mlo.me/upload/flag/2010/201006/Flag_1275470846.jpg"
Countries_array[7]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496589.gif"
Countries_array[173]="http://www.mlo.me/upload/flag/"
Countries_array[131]="http://www.mlo.me/upload/flag/Flag_1245807651.gif"
Countries_array[8]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496613.gif"
Countries_array[92]="http://www.mlo.me/upload/flag/Flag_1236158591.gif"
Countries_array[9]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496637.gif"
Countries_array[106]="http://www.mlo.me/upload/flag/Flag_1245585208.gif"
Countries_array[175]="http://www.mlo.me/upload/flag/Flag_1293600768.gif"
Countries_array[10]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496672.gif"
Countries_array[162]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381301.gif"
Countries_array[146]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380880.gif"
Countries_array[124]="http://www.mlo.me/upload/flag/Flag_1245589004.gif"
Countries_array[11]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496713.gif"
Countries_array[12]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496755.gif"
Countries_array[59]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584976.gif"
Countries_array[13]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496780.gif"
Countries_array[14]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222574646.gif"
Countries_array[15]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222578850.gif"
Countries_array[77]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586634.gif"
Countries_array[76]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586512.gif"
Countries_array[16]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222578916.gif"
Countries_array[17]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222579024.gif"
Countries_array[133]="http://www.mlo.me/upload/flag/Flag_1245808004.gif"
Countries_array[190]="http://www.mlo.me/upload/flag/no/Flag_1305534915.gif"
Countries_array[18]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222588514.gif"
Countries_array[19]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222588574.gif"
Countries_array[20]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222579827.gif"
Countries_array[87]="http://www.mlo.me/upload/flag/Flag_1231747051.gif"
Countries_array[125]="http://www.mlo.me/upload/flag/Flag_1245640023.gif"
Countries_array[159]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381244.gif"
Countries_array[22]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222574219.gif"
Countries_array[23]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222574405.gif"
Countries_array[187]="http://www.mlo.me/upload/flag/Flag_1300092411.gif"
Countries_array[135]="http://www.mlo.me/upload/flag/Flag_1245808307.gif"
Countries_array[179]="http://www.mlo.me/upload/flag/Flag_1297480337.gif"
Countries_array[24]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222581825.gif"
Countries_array[134]="http://www.mlo.me/upload/flag/Flag_1245808163.gif"
Countries_array[163]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381326.gif"
Countries_array[25]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222581960.gif"
Countries_array[188]="http://www.mlo.me/upload/flag/2011/201104/Flag_1302753254.gif"
Countries_array[178]="http://www.mlo.me/upload/flag/Flag_1295512481.gif"
Countries_array[160]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381282.gif"
Countries_array[26]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222588633.gif"
Countries_array[130]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278394261.jpg"
Countries_array[132]="http://www.mlo.me/upload/flag/Flag_1245807814.gif"
Countries_array[27]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582311.gif"
Countries_array[28]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582399.gif"
Countries_array[29]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582461.gif"
Countries_array[30]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582575.gif"
Countries_array[31]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582624.gif"
Countries_array[67]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585603.gif"
Countries_array[123]="http://www.mlo.me/upload/flag/Flag_1245588902.gif"
Countries_array[122]="http://www.mlo.me/upload/flag/Flag_1245588811.gif"
Countries_array[32]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582714.gif"
Countries_array[33]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582773.gif"
Countries_array[34]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582828.gif"
Countries_array[35]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582909.gif"
Countries_array[36]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222582958.gif"
Countries_array[129]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278394305.jpg"
Countries_array[37]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583005.gif"
Countries_array[151]="http://www.mlo.me/upload/flag/Flag_1269483272.gif"
Countries_array[108]="http://www.mlo.me/upload/flag/Flag_1245585574.gif"
Countries_array[150]="http://www.mlo.me/upload/flag/2010/201003/Flag_1269482004.gif"
Countries_array[143]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380571.gif"
Countries_array[181]="http://www.mlo.me/upload/flag/Flag_1297480775.gif"
Countries_array[109]="http://www.mlo.me/upload/flag/Flag_1245585738.gif"
Countries_array[38]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583063.gif"
Countries_array[88]="http://www.mlo.me/upload/flag/Flag_1232002090.gif"
Countries_array[139]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380268.gif"
Countries_array[39]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583117.gif"
Countries_array[40]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583169.gif"
Countries_array[60]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585026.gif"
Countries_array[169]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381514.gif"
Countries_array[42]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583326.gif"
Countries_array[138]="http://www.mlo.me/upload/flag/Flag_1250131896.gif"
Countries_array[84]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222587390.gif"
Countries_array[111]="http://www.mlo.me/upload/flag/Flag_1245586043.gif"
Countries_array[95]="http://www.mlo.me/upload/flag/Flag_1243823943.gif"
Countries_array[165]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381395.gif"
Countries_array[170]="http://www.mlo.me/upload/flag/Flag_1280202809.gif"
Countries_array[153]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381079.gif"
Countries_array[43]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583380.gif"
Countries_array[191]="http://www.mlo.me/upload/flag/no/Flag_1305774022.gif"
Countries_array[141]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380530.gif"
Countries_array[112]="http://www.mlo.me/upload/flag/Flag_1245586349.gif"
Countries_array[113]="http://www.mlo.me/upload/flag/Flag_1245586686.gif"
Countries_array[177]="http://www.mlo.me/upload/flag/Flag_1295342840.gif"
Countries_array[114]="http://www.mlo.me/upload/flag/2009/200906/Flag_1245588217.gif"
Countries_array[45]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583612.gif"
Countries_array[167]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381467.gif"
Countries_array[46]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222588197.gif"
Countries_array[47]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583839.gif"
Countries_array[145]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380751.gif"
Countries_array[115]="http://www.mlo.me/upload/flag/2009/200906/Flag_1245588205.gif"
Countries_array[48]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222583983.gif"
Countries_array[49]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584072.gif"
Countries_array[127]="http://www.mlo.me/upload/flag/Flag_1245640434.gif"
Countries_array[50]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584195.gif"
Countries_array[126]="http://www.mlo.me/upload/flag/Flag_1245640284.gif"
Countries_array[51]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584332.gif"
Countries_array[52]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222589398.gif"
Countries_array[90]="http://www.mlo.me/upload/flag/Flag_1234001713.gif"
Countries_array[53]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584535.gif"
Countries_array[54]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584579.gif"
Countries_array[55]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584712.gif"
Countries_array[56]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584780.gif"
Countries_array[182]="http://www.mlo.me/upload/flag/Flag_1297481063.gif"
Countries_array[171]="http://www.mlo.me/upload/flag/2010/201009/Flag_1285747529.gif"
Countries_array[186]="http://www.mlo.me/upload/flag/Flag_1298959397.gif"
Countries_array[57]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584857.gif"
Countries_array[58]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222584926.gif"
Countries_array[110]="http://www.mlo.me/upload/flag/Flag_1245585853.gif"
Countries_array[158]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381221.gif"
Countries_array[21]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222580246.gif"
Countries_array[93]="http://www.mlo.me/upload/flag/Flag_1236158699.gif"
Countries_array[117]="http://www.mlo.me/upload/flag/2009/200906/Flag_1245588144.gif"
Countries_array[116]="http://www.mlo.me/upload/flag/2009/200906/Flag_1245588155.gif"
Countries_array[61]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585124.gif"
Countries_array[136]="http://www.mlo.me/upload/flag/2009/200907/Flag_1248920315.gif"
Countries_array[72]="http://www.mlo.me/upload/flag/2011/201101/Flag_1295338339.gif"
Countries_array[79]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222588411.gif"
Countries_array[71]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586078.gif"
Countries_array[78]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586687.gif"
Countries_array[85]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222587502.gif"
Countries_array[118]="http://www.mlo.me/upload/flag/Flag_1245588359.gif"
Countries_array[164]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381376.gif"
Countries_array[74]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586362.gif"
Countries_array[75]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586423.gif"
Countries_array[121]="http://www.mlo.me/upload/flag/Flag_1245588673.gif"
Countries_array[183]="http://www.mlo.me/upload/flag/Flag_1297481218.gif"
Countries_array[152]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381032.gif"
Countries_array[91]="http://www.mlo.me/upload/flag/Flag_1234001761.gif"
Countries_array[144]="http://www.mlo.me/upload/flag/2011/201101/Flag_1294129340.gif"
Countries_array[107]="http://www.mlo.me/upload/flag/Flag_1245585441.gif"
Countries_array[193]="http://www.mlo.me/upload/flag/no/Flag_1312364719.gif"
Countries_array[148]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380981.gif"
Countries_array[119]="http://www.mlo.me/upload/flag/Flag_1245588452.gif"
Countries_array[65]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585305.gif"
Countries_array[184]="http://www.mlo.me/upload/flag/Flag_1297481373.gif"
Countries_array[172]="http://www.mlo.me/upload/flag/Flag_1285746518.gif"
Countries_array[120]="http://www.mlo.me/upload/flag/Flag_1245588547.gif"
Countries_array[68]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585792.gif"
Countries_array[86]="http://www.mlo.me/upload/flag/Flag_1228211448.jpg"
Countries_array[81]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586946.gif"
Countries_array[1]="http://www.mlo.me/upload/flag/2008/200810/Flag_1224496329.gif"
Countries_array[73]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222586232.gif"
Countries_array[185]="http://www.mlo.me/upload/flag/Flag_1297481529.gif"
Countries_array[157]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381199.gif"
Countries_array[66]="http://www.mlo.me/upload/flag/2008/200809/Flag_1222585534.gif"
Countries_array[147]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278380933.gif"
Countries_array[176]="http://www.mlo.me/upload/flag/Flag_1294732348.gif"
Countries_array[155]="http://www.mlo.me/upload/flag/2010/201007/Flag_1278381129.gif"

item_State(1,'114042');
$('MemberState_src').src=Countries_array[1];
$('MemberState_src').style.display='';

/**你认为改恢复是否有帮助**/
function ishelpful(value,id){		
	get_request('http://www.milanoo.com/index.php?action=ajax&menu=helpful&value=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(value) : value) + '&id=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(id) : id) +'&' + Math.random(),getReviewData,id);
	$('helpful'+id).innerHTML='Thank you for your participation!';
	//if(value==1)$('userful'+id).innerHTML=parseInt($('userful'+id).innerHTML)+1;
}

function Stars(num){
	$('StarsNum').innerHTML=num+' Stars';
	document.form1.vote.value=num;
	$('StarsLang').style.width=eval(num)*20 + "%";
}
/**情趣只出库存 musictagstock***/
//musictagstock start
	//function checkstock(){}
/**musictagstock**/

/*清仓检查库存*/
	function checkstock(){}
/*ends*/


/***表单提交***/
function  formsubmit( ){
	
		
	var productnum='1'; 
	if($('num').value<1 || !$('num').value || $('num').value<parseInt(productnum)){
		alert('The Quantity you submitted is invalid.');
		return false;
	}
	//musictagstock start
		//musictagstock end
	if(iscustom=="custom"){
		var customfloat = "none";
		for(var   i=1;   i <customnum;   i++){
        	if(!isNumber($('Customszie'+i).value))  {
				customfloat='block';
				$('cussize'+i).style.display='';
			}else {
				$('cussize'+i).style.display='none';
			}

		}
		if(customfloat=='none'){
			$('Customfloat').style.display='none';
			customfloat="none";
		}else{
						$('custom2').style.display='block';$('customcss2').className='link_now';
			return false;
		}
	}
	
		   var requestParam = '';
	   var ajaxAuth = true;
	   
	   var productid = 114042;
	   var retk = 'ok';
	  jq(".item_sizeBox select").each(function(i){
		   if(i>1){
			   ajaxAuth = false;
		   }
		   requestParam += "&"+this.name+"="+jq(this).val();
	   });
	   
	   jq(".item_colorBox input:hidden").each(function(i){
		   if(i>1){
               ajaxAuth = false;
           }
           requestParam += "&"+this.name+"="+jq(this).val();
       });
	   if(ajaxAuth) {
		   jq.getJSON('http://www.milanoo.com/index.php?action=ajax&menu=anthstock&exit=1&productid='+productid+requestParam,function(data){
			
			   if(data.ret==true){
				   if($('gm').value=='yes')
			        {
					   document.cusform.submit()
			        }
			        else
			        {
			            return false;
			        }
				   } else {
					   $('StocksInfo').innerHTML = data.message;
					   return false;
				   }
		   });
	   }
	   return false;
		
	
	
}
function checkForm(check_num){
	if(!check_num)check_num="";
	var Check_email = "Uemail"+check_num;
	var Check_Content = "Content"+check_num;
	if( isEmail($(Check_email).value) &&  $(Check_Content).value) return true;
	else {
		if(!isEmail($(Check_email).value)) { alert('Wrong Email format, please re-enter'); return false;}
		if(!$(Check_Content).value) {alert('The content must be filled, please return and fill in'); return false;}			
	}
}
function isEmail(vEMail) 
{//判断邮箱函数， 
if (vEMail!="") 
    { 
var regInvalid=/(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/; 
var regValid=/^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/; 
return (!regInvalid.test(vEMail)&&regValid.test(vEMail)); 
    } 
} 

function favorite(id)
{
	var showid='favorite_'+id;
	setMenuPosition2(showid, '' ,-150,-22,'favorite');
	xml_http_building_link = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_sending = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_loading = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_load_failed = '<img src="' + Image_url + 'check_error.gif" width="15" height="15">';
	xml_http_data_in_processed = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	ajaxresponse('favorite', 'menu=favorite&id=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(id) : id) +'&' + Math.random(),'http://www.milanoo.com/','ycfavorite','','details_l');
}
</script>

<script>
function intro_func(style)
{
	if (style=='style1')
	{
		str_info = "<p>Milanoo.com is a professional apparel online retailer, having our own factory with 5 years of apparel production experience, and focusing on providing the best price items for the customer. Want to take a look of Milanoo.com Wedding Factory and more details? <a href='#' onclick='window.showModalDialog(\"http://www.milanoo.com/image/endefault/mobantupian/wedding_production/wedding_production.htm\",\"_blank\",\"center:no;dialogTop:0;dialogLeft:0;dialogWidth:990px;dialogHeight:600px;scroll:yes;\")'>Click Here</a> →</p>";
	}else if(style=='style2')
	{
		str_info = "<p>Milanoo.com is a professional apparel online retailer, having our own factory with 5 years of apparel production experience, and focusing on providing the best price items for the customer. Want to take a look of Milanoo.com Wedding Factory and more details? <a href='#' onclick='window.showModalDialog(\"http://www.milanoo.com/image/endefault/mobantupian/wedding_production/wedding_production.htm\",\"_blank\",\"center:no;dialogTop:0;dialogLeft:0;dialogWidth:990px;dialogHeight:600px;scroll:yes;\")'>Click Here</a> →</p>";
	}
	if(str_info && $('intro'))$('intro').innerHTML=str_info;
	return;
}
function chk_emailaddress(ProductsId)  
{  
  var email = $("email_address").value;  
　var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  
　flag = pattern.test(email);  
　if(!flag)  
　{
　		alert('Please enter a valid email address');  
		$("email_address").focus();  
　		return false;  
　}else{
　		ajaxSubmitMail(email,ProductsId);
　} 
}
function P_list(id,act)
{	
	xml_http_building_link = xml_http_sending = xml_http_loading= xml_http_data_in_processed = '<a href="" class="leftArrow"></a><a href="" class="rightArrow"></a><div class="mainThing_loading"><img src="' + Image_url + 'loading.gif"></div>';
	xml_http_load_failed = '<div class="mainThing_loading"><img src="' + Image_url + 'check_error.gif" width="15" height="15"></div>';
	ajaxresponse('P_list', 'menu=P_list&act=' + act + '&id=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(id) : id) +'&' + Math.random(),'http://www.milanoo.com/');
}
P_list('114042',0);

</script>
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