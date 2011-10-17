<%@include file="../include.jsp"%>
<div class="box_item">
	<p id="step2" class="box_title">
		<span>Enter Your Payment Information</span>
	</p>
	<div class="box_item_content">
		<div class="content_left">
			<h3 class="item_title">Shipping Address</h3>
			<ul id="ship_ul">
				<li id="addr_new" style="margin-left: 20px;"><input type="radio" style="display: none;" value="addr_new" name="shipping_address"> <span id="countrycode_addr_new" style="display: none;">1</span>
					<p style="display: none;">
						<b style="margin-left: 10px;">New Address</b>
					</p>
					<table style="" id="table_address">
						<tbody>
							<tr>
								<td><span class="red">*</span>Gender:</td>
								<td class="W260"><select id="ConsigneeGender_new" name="ConsigneeGender">
										<option selected="selected" value="1">Male</option>
										<option value="2">Female</option>
								</select>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>First Name:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberContact0_new" name="MemberContact[0]"> <i id="MemberContact0_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Last Name:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberContact1_new" name="MemberContact[1]"> <i id="MemberContact1_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Address Line 1:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" size="35" value="" id="MemberContactAddr_new" name="MemberContactAddr[0]">
									<i id="MemberContactAddr_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td valign="top" style="font-size: 10px;" class="W260">example:
									apartment, suite, unit, building, floor</td>
							</tr>
							
							<tr>
								<td><span class="red">*</span>Recipient Country/Region:</td>
								<td class="W260">
								<select id="MemberState_new" name="MemberState">
									<ss:countries var="countries">
										<c:forEach var="country" items="${countries}">
											<option value="${country.id}">${country.name}</option>
										</c:forEach>
									</ss:countries>
								</select>
								</td>
							</tr>
							<tr style="display: none;" id="no_shipment_tr">
								<td colspan="2"><span style="color: red">The
										shipment is unavailable to Canary Islands</span>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>State/Province/Region:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberUrbanAreas_new" name="MemberUrbanAreas"> <i id="MemberUrbanAreas_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>City:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberCtiy_new" name="MemberCtiy"> <i id="MemberCtiy_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Zip/Postal Code:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberZip_new" name="MemberZip"> <i id="MemberZip_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Phone Number:</td>
								<td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" maxlength="30" value="" id="MemberContactPhone_new" name="MemberContactPhone">
									<i id="MemberContactPhone_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td valign="top" style="font-size: 10px;" class="W260">We
									ask for your phone number just incase we need to reach you for
									any reason regarding your order with Milanoo.com. We do not
									rent, share, or sell your personal information. Ever.</td>
							</tr>
						</tbody>
					</table></li>
			</ul>
		</div>

		<div class="content_right">

			<ul class="table_ul2">

				<div style="display: block;" id="debit_card" class="debit_card">
					<div class="payHidd_div">
						<h4>Credit or Debit Card Information:</h4>
						<div style="" id="Card" class="debit_left">
							<ul>

								<li>Security Code: <input type="text" size="5" class="input_1" id="cvc" name="cvc"><i>*</i> <span id="cvcerror"></span>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="pay_div">
					<input type="radio" onclick="payjs('payHidd_paypal');" value="paypal" name="Payment"> <a class="helplink" target="_blank" href="http://www.milanoo.com/help/Payment-Methods-Accepted-module-index-id-2.html#Opaypal"><img border="0" src="http://www.mlo.me/image/endefault/paypal.gif">
					</a><i>The safer, easier way to pay.</i>
					<div id="payHidd_paypal" style="display: none;">
						If you have Paypal account, you can pay your order by your Paypal
						account. <br>If you don't have a Paypal account. You can also
						pay via Paypal with your credit card or bank debit card. <br>Payment
						can be submitted in any currency. <br>
						<b>Milanoo.com's paypal account is : paypal@Milanoo.com </b> <br>
						<img width="210" height="80" src="http://www.mlo.me/image/endefault/horizontal_solution_PP.gif"><img width="70" height="70" src="http://www.mlo.me/image/endefault/PaypalVerify.gif">
					</div>
				</div>




			</ul>
		</div>



	</div>




</div>