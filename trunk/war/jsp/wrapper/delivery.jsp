<%@include file="../include.jsp"%>
<%@page import="com.spshop.utils.AllConstants"%>
<div class="box_item">
	<p id="step2" class="box_title">
		<span>Enter Your Payment Information</span>
	</p>
	<form action="/checkOut" method="post" id="cartCheckOut">
	<div class="box_item_content">
		<div class="content_left">
			<h3 class="item_title">Shipping Address</h3>
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
								<td class="W260">
								<select id="gender" name="gender">
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
								</select>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>First Name:</td>
								<td class="W260">
								<input type="text"
									onblur="checkform(this.id);" class="input_1" value="${sessionScope.userInfo.firstName }"
									id="MemberContact0_new" name="MemberContact[0]"> <i
									id="MemberContact0_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Last Name:</td>
								<td class="W260"><input type="text"
									onblur="checkform(this.id);" class="input_1" value="${sessionScope.userInfo.lastName }"
									id="MemberContact1_new" name="MemberContact[1]"> <i
									id="MemberContact1_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Address Line:</td>
								<td class="W260"><input type="text"
									onblur="checkform(this.id);" class="input_1" size="35" value="${sessionScope.userInfo.address }"
									id="MemberContactAddr_new" name="MemberContactAddr[0]">
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
								</select>
									<ss:site var="site">
											<script type="text/javascript">
												var freePrice = ${site.freeDeliveryPrice}
											</script>
									</ss:site>
									<ss:countries var="countries">
										<c:forEach var="country" items="${countries}">
											<script type="text/javascript">
												var country_${country.id} = ${country.dePrice}
											</script>
										</c:forEach>
									</ss:countries>
								</td>
							</tr>
							
							
							<tr style="display: none;" id="no_shipment_tr">
								<td colspan="2"><span style="color: red">The
										shipment is unavailable to Canary Islands</span>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>City:</td>
								<td class="W260"><input type="text"
									onblur="checkform(this.id);" class="input_1" value="${sessionScope.userInfo.city }"
									id="MemberCtiy_new" name="MemberCtiy"> <i
									id="MemberCtiy_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Zip/Postal Code:</td>
								<td class="W260"><input type="text"
									onblur="checkform(this.id);" class="input_1" value="${sessionScope.userInfo.zipcode}"
									id="MemberZip_new" name="MemberZip"> <i
									id="MemberZip_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Phone Number:</td>
								<td class="W260"><input type="text"
									onblur="checkform(this.id);" class="input_1" maxlength="30"
									value="${sessionScope.userInfo.telephone}" id="MemberContactPhone_new" name="MemberContactPhone">
									<i id="MemberContactPhone_newInfo"></i>
								</td>
							</tr>
							<tr>
								<td><span class="red">*</span>Email:</td>
								<td class="W260"><input type="text"
									onblur="checkform(this.id);" class="input_1" maxlength="30"
									value="${sessionScope.userInfo.email}" id="MemberEmail_new" name="MemberEmail">
									<i id="MemberMemberEmail_newInfo"></i>
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
						<h4>Delivery Price:</h4>
						<div style="" id="Card" class="debit_left">
							<ul>

								<li>Dilevery Price: <span id="DileveryPrice">${defaultPrice }</span>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="pay_div">
					<input type="radio"
						value="paypal" name="payment" checked="checked"> <a class="helplink"
						target="_blank"
						href="#"><img
						border="0" src="/css/paypal.gif" >
					</a><i>The safer, easier way to pay.</i>
				</div>


		

			</ul>
		</div>


		<input type="hidden" name="operation" value="checkout">
	</div>




</div>
</form>