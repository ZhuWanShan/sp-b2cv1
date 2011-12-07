<%@include file="../include.jsp"%>
<%@page import="com.spshop.utils.AllConstants"%>
<c:if test="${showCheckOption }">
<form action="/checkOut" method="post" id="cartCheckOut">
	<div class="box_item">
		<p id="step2" class="box_title">
			<span>Enter Your Shipping Information</span>
		</p>
			<div class="box_item_content">
				<div class="content_left">
					<table>
						<tr>
							<td><span class="red">*</span>Recipient Country/Region:</td>
							<td class="W260"><select id="MemberState_new"
								name="MemberState">
									<ss:countries var="countries">
										<c:forEach var="country" items="${countries}" varStatus="stat">
											<c:if test="${stat.index==0}">
												<c:set var="defaultPrice" value="${country.dePrice }"></c:set>
												<option value="${country.id}" selected="selected">${country.name}</option>
											</c:if>
											<c:if test="${stat.index!=0}">
												<option value="${country.id}">${country.name}</option>
											</c:if>
										</c:forEach>
									</ss:countries>
							</select> <ss:site var="site">
									<script type="text/javascript">
												var freePrice = ${site.freeDeliveryPrice}
											</script>
								</ss:site> <ss:countries var="countries">
									<c:forEach var="country" items="${countries}">
										<script type="text/javascript">
												var country_${country.id} = ${country.dePrice}
											</script>
									</c:forEach>
								</ss:countries></td>
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
												<c:choose>
													<c:when test='${sessionScope.userInfo.gender eq "male"}'>
														<option selected="selected"
															value="<%=AllConstants.GENDER_MALE%>">Male</option>
														<option value="<%=AllConstants.GENDER_FEMALE%>">Female</option>
														<option value="<%=AllConstants.GENDER_OTHERS%>">Unknown</option>
													</c:when>
													<c:when test='${sessionScope.userInfo.gender eq "female"}'>
														<option value="<%=AllConstants.GENDER_MALE%>">Male</option>
														<option selected="selected"
															value="<%=AllConstants.GENDER_FEMALE%>">Female</option>
														<option value="<%=AllConstants.GENDER_OTHERS%>">Unknown</option>
													</c:when>
													<c:otherwise>
														<option value="<%=AllConstants.GENDER_MALE%>">Male</option>
														<option value="<%=AllConstants.GENDER_FEMALE%>">Female</option>
														<option selected="selected"
															value="<%=AllConstants.GENDER_OTHERS%>">Unknown</option>
													</c:otherwise>
												</c:choose>
										</select></td>
									</tr>
									<tr>
										<td><span class="red">*</span>First Name:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${sessionScope.userInfo.firstName }"
											id="MemberContact0_new" name="MemberContact[0]"> <i
											id="MemberContact0_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Last Name:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${sessionScope.userInfo.lastName }"
											id="MemberContact1_new" name="MemberContact[1]"> <i
											id="MemberContact1_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Address Line:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" size="35"
											value="${sessionScope.userInfo.address }"
											id="MemberContactAddr_new" name="MemberContactAddr[0]">
											<i id="MemberContactAddr_newInfo"></i></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td valign="top" style="font-size: 10px;" class="W260">example:
											apartment, suite, unit, building, floor</td>
									</tr>

									<tr style="display: none;" id="no_shipment_tr">
										<td colspan="2"><span style="color: red">The
												shipment is unavailable to Canary Islands</span></td>
									</tr>
									<tr>
										<td><span class="red">*</span>City:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${sessionScope.userInfo.city }" id="MemberCtiy_new"
											name="MemberCtiy"> <i id="MemberCtiy_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Zip/Postal Code:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1"
											value="${sessionScope.userInfo.zipcode}" id="MemberZip_new"
											name="MemberZip"> <i id="MemberZip_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Phone Number:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" maxlength="30"
											value="${sessionScope.userInfo.telephone}"
											id="MemberContactPhone_new" name="MemberContactPhone">
											<i id="MemberContactPhone_newInfo"></i></td>
									</tr>
									<tr>
										<td><span class="red">*</span>Email:</td>
										<td class="W260"><input type="text"
											onblur="checkform(this.id);" class="input_1" maxlength="30"
											value="${sessionScope.userInfo.email}" id="MemberEmail_new"
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
						<div style="display: block" id="debit_card" class="debit_card" >
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
						</div>
						<div class="pay_div">
							<input type="radio" value="paypal" name="payment"
								checked="checked"> <a class="helplink" target="_blank"
								href="#"><img border="0" src="/css/paypal.gif"> </a><i>The
								safer, easier way to pay.</i>
						</div>
				</div>
				<input type="hidden" name="operation" value="checkout">
			</div>
	</div>
	
		<div class="box_item">
			<p id="step2" class="box_title">
				<span>Enter Your Payment Information</span>
			</p>
			<div class="box_item_content">
				<div class="content_left">
					asdasdasd
				</div>

				<div class="content_right">
						asdfasdfasf
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
                
         <tr>
          <td align="center">#08100020853</td>
          <td bgcolor="#FFFFFF" align="center"><div class="sdiscount_box"> <a target="_blank" href="http://www.milanoo.com/p20853.html"><img height="50" border="0" src="http://www.mlo.me/upen/s/200912/A-line-Scoop-Neck-Applique-Beading-Satin-Organza-Pongee-Wedding-Dress-20853-1.jpg"></a></div></td>
          <td><a target="_blank" href="http://www.milanoo.com/p20853.html">Ivory A-line Scoop Neck Organza Satin Wedding Dress</a><br>
            <font color="#FF0000">(            
            Size:US 10 &nbsp;&nbsp;Dress Color:Ivory &nbsp;&nbsp;)</font></td>
          <td align="center">US$ 149.99 </td>
          <td align="center"> 1</td>
          <td>US$ 149.99</td>
        </tr>
        <tr>
          <td class="ItemRemarks" colspan="6">             
             </td>
        </tr>
                
       </tbody>
        
      </table>
    </div>
	
	</form>
</c:if>
<script type="text/javascript">
	
</script>
