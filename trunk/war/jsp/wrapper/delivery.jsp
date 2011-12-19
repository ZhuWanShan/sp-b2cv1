<%@include file="../include.jsp"%>
<%@page import="com.spshop.utils.AllConstants"%>
<c:if test="${showCheckOption }">
<form action="/shopping/cmd/check" method="post" id="cartCheckOut">
	<div class="box_item">
		<p id="step2" class="box_title">
			<span>Enter Your Shipping Information</span>
		</p>
			<div class="box_item_content">
				<div class="content_left">
					<table>
						<tr>
							<td><span class="red">*</span>Recipient Country/Region:</td>
							<td class="W260">
							<select id="MemberState_new"
								name="MemberState" onchange="submit()">
									<ss:countries var="countries" >
										<c:forEach var="country" items="${countries}" varStatus="stat">
											<c:if test="${stat.index==0 && empty defaultCountry}">
												<c:set var="defaultCountry" value="${country }"></c:set>
											</c:if>
											<option value="${country.id}" ${defaultCountry.id == country.id?'selected="selected"':'' } >${country.name}</option>
										</c:forEach>
									</ss:countries>
							</select>
							<%--  <ss:site var="site">
									<script type="text/javascript">
												var freePrice = ${site.freeDeliveryPrice}
											</script>
								</ss:site> <ss:countries var="countries">
									<c:forEach var="country" items="${countries}">
										<script type="text/javascript">
												var country_${country.id} = ${country.dePrice}
											</script>
									</c:forEach>
								</ss:countries>--%></td>
						</tr>
					</table>
					<ul id="ship_ul">
						<li id="addr_new" style="margin-left: 20px;"><input
							type="radio" style="display: none;" value="addr_new"
							name="shipping_address"> <span id="countrycode_addr_new"
							style="display: none;">1</span>
							<p style="display: none;">
								<b style="margin-left: 10px;">New Address</b>
							</p>
							<table style="" id="table_address">
								<tbody>
									<tr>
										<td><span class="red">*</span>Gender:</td>
										<td class="W260"><select id="gender" name="gender">
														<option ${shoppingcart.order.customGender eq 'male' ?'selected="selected"':''} 
															value="<%=AllConstants.GENDER_MALE%>">Male</option>
														<option value="<%=AllConstants.GENDER_FEMALE%>" ${shoppingcart.order.customGender eq 'female' ?'selected="selected"':''} >Female</option>
										</select></td>
									</tr>
									<tr>
										<td><span class="red">*</span>First Name:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${shoppingcart.order.cfirstName }"
											id="MemberContact0_new" name="MemberContact[0]"> <i
											id="MemberContact0_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Last Name:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${shoppingcart.order.clastName }"
											id="MemberContact1_new" name="MemberContact[1]"> <i
											id="MemberContact1_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Address Line:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" size="35"
											value="${shoppingcart.order.customerAddress }"
											id="MemberContactAddr_new" name="MemberContactAddr[0]">
											<i id="MemberContactAddr_newInfo"></i></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td valign="top" style="font-size: 10px;" class="W260">example:
											apartment, suite, unit, building, floor</td>
									</tr>
										<tr>
										<td>Address Line2:</td>
									<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" size="35"
											value="${shoppingcart.order.customerAddress2}"
											id="MemberContactAddr_new" name="MemberContactAddr[1]">
											<i id="MemberContactAddr_newInfo"></i></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td valign="top" style="font-size: 10px;" class="W260">Optional</td>
									</tr>

									<tr style="display: none;" id="no_shipment_tr">
										<td colspan="2"><span style="color: red">The
												shipment is unavailable to Canary Islands</span></td>
									</tr>
									<tr>
										<td><span class="red">*</span>City:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${shoppingcart.order.city}" id="MemberCtiy_new"
											name="MemberCtiy"> <i id="MemberCtiy_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Zip/Postal Code:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${shoppingcart.order.customerZipcode}" id="MemberZip_new"
											name="MemberZip"> <i id="MemberZip_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Phone Number:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" maxlength="30"
											value="${shoppingcart.order.city}"
											id="MemberContactPhone_new" name="MemberContactPhone">
											<i id="MemberContactPhone_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Email:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" maxlength="30"
											value="${shoppingcart.order.customerEmail}" id="MemberEmail_new"
											name="MemberEmail"> <i id="MemberMemberEmail_newInfo"></i>
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td valign="top" style="font-size: 10px;" class="W260">We
											ask for your phone number just incase we need to reach you
											for any reason regarding your order with honeybuy.com. We do
											not rent, share, or sell your personal information. Ever.</td>
									</tr>
								</tbody>
							</table>
						</li>
					</ul>
				</div>

				<div class="content_right">
						  <h3 class="item_title">Select Shipping Method</h3>
          <div id="shipping_mothed"><ul>
        <li>
          <label>
          <div class="shippingway"> 
		  <span class="left">
            <input type="radio"  ${shippingMethod!='Standard'?'checked="checked"':'' } value="Expedited" name="shippingMethod" onchange="submit()">
            Expedited
			</span>
			<span class="right bold red">
											${defaultCountry.adDePrice }
							</span>
            <p class="shippingway_dotted"></p>
          </div>
          <p class="listdescript">Delivery Estimate:3-5 days to major destinations.</p>
          </label>
        </li>
                <li>
          <label>
          <div class="shippingway"> 
		  <span class="left">
            <input type="radio" value="Standard" name="shippingMethod" ${shippingMethod=='Standard'?'checked="checked"':'' } onchange="submit()">
            Standard
			</span>
			<span class="right bold red">
												${defaultCountry.dePrice }
							</span>
            <p class="shippingway_dotted"></p>
          </div>
          <p class="listdescript">Delivery Estimate:7-9 days to major destinations.Generally use EMS or other courier sent, Mascot Costumes can only choose standard mode of transport.</p>
          </label>
        </li>
        </ul>
<p style="padding-left:30px;">
	Processing Time: 20 Days
	<br>
	Total:
	<span id="mind">23</span>
	<span id="maxd">-25</span>
	Days
</p>
</div>
						<%--<div style="display: block" id="debit_card" class="debit_card" >
							<div class="payHidd_div">
								<h4>Delivery Price:</h4>
								<div style="" id="Card" class="debit_left">
									<ul>

										<li>Dilevery Price: <span id="DileveryPrice">${defaultPrice
												}</span></li>
										<c:if test="${defaultPrice > 0 }">
											<script type="text/javascript">
										window.defaultPrice = ${defaultPrice };
									</script>
										</c:if>
									</ul>
								</div>
							</div>
						</div> --%>
				</div>
			</div>
	</div>
	
		<div class="box_item">
			<p id="step2" class="box_title">
				<span>Enter Your Payment Information</span>
			</p>
			<div class="box_item_content">
				<div class="content_left">
					  <h3 class="item_title">Billing Address</h3>
          <p style=" margin-left:20px;">Use shipping address as my billing address</p>
          <p style=" margin-left:20px;">
            <label for="yesB">
              <input type="radio" value="true" ${billing_address ?'checked="checked"':''} id="yesB" name="billing_address" onchange="submit()">
              Yes</label>
            <label for="noB">
              <input type="radio" value="billing_new" id="noB" name="billing_address" ${!billing_address ?'checked="checked"':''} onchange="submit()">
              No</label>
          </p>
          <c:if test="${!billing_address }">
	          <table style="display: table;" id="table_address2">
	            <tbody>
	              <tr>
	                <td><span class="red">*</span>Gender: </td>
	                <td class="W260"><select name="ConsigneeGender_b">
	                    <option value="1">Male</option>
	                 	<option value="2">Female</option>
	                  </select></td>
	              </tr>
	              <tr>
	                <td><span class="red">*</span>First Name: </td>
	                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="${shoppingcart.order.bfirstName}" id="MemberContact0_b" name="MemberContact_b[0]">
	                  <i id="MemberContact0_bInfo"></i></td>
	              </tr>
	              <tr>
	                <td><span class="red">*</span>Last Name: </td>
	                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="$${shoppingcart.order.blastName}" id="MemberContact1_b" name="MemberContact_b[1]">
	                  <i id="MemberContact1_bInfo"></i></td>
	              </tr>
	              <tr>
	                <td><span class="red">*</span>Address Line 1: </td>
	                <td class="W260"><input type="text" class="input_1" size="35" value="${shoppingcart.order.bcustomerAddress}" id="MemberContactAddr_b" name="MemberContactAddr_b[0]">
	                  <i id="MemberContactAddr_bInfo"></i></td>
	              </tr>
	              <tr>
	                    <td>&nbsp;</td>
	                    <td valign="top" style=" font-size:10px;" class="W260">example: apartment, suite, unit, building, floor</td>
	                  </tr>
	              <tr>
	                <td>Address Line 2: </td>
	                <td class="W260"><input type="text" class="input_1" size="35" value="${shoppingcart.order.bcustomerAddress2}" name="MemberContactAddr_b[1]">
	                  <i>optional</i></td>
	              </tr>
	              <tr>
	                <td><span class="red">*</span>City: </td>
	                <td class="W260"><div class="divr divr2"><input type="text"  class="input_1" value="${shoppingcart.order.bcity}" id="MemberCtiy_b" autocomplete="off" name="MemberCtiy_b"><div style="display: none;" class="ep_qsearch"><i style="padding: 4px 10px;">Loading...</i></div>
	                  <i id="MemberCtiy_bInfo"></i></div></td>
	              </tr>
	              <tr>
	                <td><span class="red">*</span>Zip/Postal Code: </td>
	                <td class="W260"><input type="text"  class="input_1" value="${shoppingcart.order.bcustomerZipcode}" id="MemberZip_b" name="MemberZip_b">
	                  <i id="MemberZip_bInfo"></i></td>
	              </tr>
	              <tr>
	                <td><span class="red">*</span>Phone Number: </td>
	                <td class="W260"><input type="text" class="input_1" maxlength="30" value="${shoppingcart.order.bphone}" id="MemberContactPhone_b" name="MemberContactPhone_b">
	                  <i id="MemberContactPhone_bInfo"></i></td>
	              </tr>
	              <tr>
	                    <td>&nbsp;</td>
	                    <td valign="top" style=" font-size:10px;" class="W260">We ask for your phone number just incase we need to reach you for any reason regarding your order with Milanoo.com. We do not rent, share, or sell your personal information. Ever.</td>
	             </tr>
	            </tbody>
	          </table>
          </c:if>
				</div>

				<div class="content_right">
						<div class="pay_div">
							<input type="radio" value="paypal" name="payment"
								checked="checked"> <a class="helplink" target="_blank"
								href="#"><img border="0" src="/css/paypal.gif"> </a><i>The
								safer, easier way to pay.</i>
						</div>
				</div>
			</div>
		</div>
		
		
		<div class="box_item">
      <p class="box_title"><span>Your Order Summary</span></p>
      <table width="100%" cellspacing="0" cellpadding="0" align="center" class="cart_list" frame="above">
        <tbody><tr>
          <th scope="col">Item Code</th>
          <th scope="col">Picture</th>
          <th scope="col">Item</th>
          <th scope="col">Unit Price</th>
          <th scope="col">Quantity</th>
          <th scope="col">Sum</th>
        </tr>
         <c:forEach items="${shoppingcart.order.items }" var="item" >   
	         <tr>
	          <td align="center"># ${item.product.id }</td>
	          <td bgcolor="#FFFFFF" align="center"><div class="sdiscount_box"> <a target="_blank" href="/${item.product.name}"><img height="120" border="0" src="${item.product.images[0].smallUrl}"></a></div></td>
	          <td><Strong><a target="_blank" href="/${item.product.name}">${item.product.title}</a></Strong><br>
					<c:forEach items="${item.userOptions}" var="opt">
										<div class="cartOptionsDashboard_Content" style="color: #ff0000;"> 
											<c:choose>
											<c:when test="${opt.name eq 'Color' }">
												<span>${opt.name } :</span>
												<img alt='${fn:split(opt.value,"##")[0] }' src='${fn:split(opt.value,"##")[1] }' title='${fn:split(opt.value,"##")[0] }' width="18" height="18">
											</c:when>
											<c:otherwise>
												<span>${opt.name } :</span>
												<span>${opt.value}</span>
											</c:otherwise>
											</c:choose>
										</div>
					</c:forEach>
	            </td>
	          <td align="center">${item.finalPrice} </td>
	          <td align="center"> ${item.quantity}</td>
	          <td>${item.finalPrice * item.quantity}</td>
	        </tr>
        </c:forEach>    
        <tr>
          <td class="ItemRemarks" colspan="6">             
             </td>
        </tr>
                
       </tbody>
        
      </table>
    </div>
	<div id="Remarks">
      <h3>Leave a Message</h3>
      <p style="color: #ff0000; padding: 5px 0;">Please don't leave any custom-made message here, we may ignore it. If you want the custom-made service, please go to the size chart page, and select the custom-made size, fill it in the form accordingly. Thank you for your cooperation!</p>
      <div class="OrderRemarks">
        <textarea maxlength="150" id="Remarks" rows="4" cols="65" name="Remarks" value="${shoppingCart.order.customerMsg}"></textarea>
        <br>
        <i>Write anything you like to require more on your placed order, such as the shipping and other order related requirements.</i> </div>
    </div>
    <table class="zf" style=" float:right;">
	  	         	
      <tbody><tr>
        <td width="60%">Subtotal:</td>
        <td style="color:#cc0000;" class="price">US$ <span style="color:#cc0000;" id="subtotal">${shoppingcart.order.totalPrice }</span></td>
      </tr>
      <tr>
        <td class="border">Shipping Charges:</td>
        <td style="color:#3333333;" class="price border">US$ <span style="color:#3333333;" id="shippingcharge">${shoppingcart.order.dePrice }</span></td>
      </tr>
      <tr id="dis_div" style="display:none">
        <td id="dis_name"></td>
        <td>-US$ <span id="dis"></span></td>
      </tr>
      <tr>
        <td class="total">Grand Total:</td>
        <td style="color:#cc0000;" class="price bold">US$ <span style="color:#cc0000;" id="total">${shoppingcart.order.totalPrice + shoppingcart.order.dePrice}</span></td>
      </tr>
      <tr>
        <td style="text-align:right;" colspan="3">           <input type="submit" value="CONTINUE" id="paymentsubmit" class="ContinueCheckout_pay" name="operation" onclick="return confirm('I am sure all item correct.')">
           </td>
      </tr>
    </tbody></table>
	</form>
</c:if>
<script type="text/javascript">
	
</script>
