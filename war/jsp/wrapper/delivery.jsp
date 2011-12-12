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
					  <h3 class="item_title">Billing Address</h3>
          <p style=" margin-left:20px;">Use shipping address as my billing address</p>
          <p style=" margin-left:20px;">
            <label for="yesB">
              <input type="radio" value="yes" checked="checked" id="yesB" name="billing_address">
              Yes</label>
            <label for="noB">
              <input type="radio" value="billing_new" id="noB" name="billing_address">
              No</label>
          </p>
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
                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberContact0_b" name="MemberContact_b[0]">
                  <i id="MemberContact0_bInfo"></i></td>
              </tr>
              <tr>
                <td><span class="red">*</span>Last Name: </td>
                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberContact1_b" name="MemberContact_b[1]">
                  <i id="MemberContact1_bInfo"></i></td>
              </tr>
              <tr>
                <td><span class="red">*</span>Address Line 1: </td>
                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" size="35" value="" id="MemberContactAddr_b" name="MemberContactAddr_b[0]">
                  <i id="MemberContactAddr_bInfo"></i></td>
              </tr>
              <tr>
                    <td>&nbsp;</td>
                    <td valign="top" style=" font-size:10px;" class="W260">example: apartment, suite, unit, building, floor</td>
                  </tr>
              <tr>
                <td>Address Line 2: </td>
                <td class="W260"><input type="text" class="input_1" size="35" value="" name="MemberContactAddr_b[1]">
                  <i>optional</i></td>
              </tr>
              <tr>
                <td><span class="red">*</span>Recipient Country/Region: </td>
                <td class="W260"><select id="MemberState_b" name="MemberState_b">
                    <option value="70">Albania</option><option value="140">Algeria</option><option value="82">Andorra</option><option value="192">Angola</option><option value="2">Argentina</option><option value="174">Armenia</option><option value="3">Australia</option><option value="4">Austria</option><option value="166">Azerbaijan</option><option value="189">Bahamas</option><option value="5">Bahrain</option><option value="142">Bangladesh</option><option value="69">Belarus</option><option value="6">Belgium</option><option value="149">Bermuda</option><option value="161">Bhutan</option><option value="7">Bolivia</option><option value="173">Bosnia and Herzegovina</option><option value="131">Botswana</option><option value="8">Brazil</option><option value="92">Brunei</option><option value="9">Bulgaria</option><option value="106">Cambodia</option><option value="175">Cameroon</option><option value="10">Canada</option><option value="162">Cape Verde</option><option value="146">Cayman Islands</option><option value="124">Chad</option><option value="11">Chile</option><option value="12">China</option><option value="59">Chinese Taiwan</option><option value="13">Colombia</option><option value="14">Costarica</option><option value="15">Croatia</option><option value="77">Cuba</option><option value="76">Cyprus</option><option value="16">Czech</option><option value="17">Denmark</option><option value="133">Djibouti</option><option value="190">Dominica</option><option value="18">Dominican Republic</option><option value="19">Ecuador</option><option value="20">Egypt</option><option value="87">Estonia</option><option value="125">Ethiopia</option><option value="159">Fiji</option><option value="22">Finland</option><option value="23">France</option><option value="178">France，Guadeloupe</option><option value="165">France，Martinique</option><option value="167">France，New Caledonia</option><option value="186">France，Reunion</option><option value="187">French Polynesia</option><option value="135">Gabon</option><option value="179">Georgia</option><option value="24">Germany</option><option value="134">Ghana</option><option value="163">Gibraltar</option><option value="25">Greece</option><option value="188">Grenada</option><option value="160">Guam</option><option value="26">Guatemala</option><option value="130">Guernsey</option><option value="132">Guyana</option><option value="27">Honduras</option><option value="28">Hong Kong China</option><option value="29">Hungary</option><option value="30">Iceland</option><option value="31">India</option><option value="67">Indonesia</option><option value="123">Iran</option><option value="122">Iraq</option><option value="32">Ireland</option><option value="33">Israel</option><option value="34">Italy</option><option value="35">Jamaica</option><option value="36">Japan</option><option value="129">Jersey</option><option value="37">Jordan</option><option value="151">Kazakhstan</option><option value="108">Kenya</option><option value="150">Korea</option><option value="143">Kuwait</option><option value="181">Kyrgyzstan</option><option value="109">Laos</option><option value="38">Latvia</option><option value="88">Lebanon</option><option value="139">Libya</option><option value="39">Lithuania</option><option value="40">Luxemburg</option><option value="60">Macao China</option><option value="169">Macedonia</option><option value="42">Malawi</option><option value="138">Malaysia</option><option value="84">Maldive</option><option value="111">Mali</option><option value="95">Malta</option><option value="170">Mauritania</option><option value="153">Mauritius</option><option value="43">Mexico</option><option value="191">Monaco</option><option value="141">Mongolia</option><option value="112">Morocco</option><option value="113">Mozambique</option><option value="177">Namibia</option><option value="114">Nepal</option><option value="45">Netherlands</option><option value="46">New Zealand</option><option value="47">Nicaragua</option><option value="145">Niger</option><option value="115">Nigeria</option><option value="48">Norway</option><option value="49">Oman</option><option value="127">Pakistan</option><option value="50">Panama</option><option value="126">Papua New Guinea</option><option value="51">Paraguay</option><option value="52">Peru</option><option value="90">Philippines</option><option value="53">Poland</option><option value="54">Portugal</option><option value="55">Puerto Rico</option><option value="56">Qatar</option><option value="182">Republic of Moldova</option><option value="171">Republic of Montenegro</option><option value="57">Romania</option><option value="58">Russia</option><option value="110">Rwanda</option><option value="158">Saipan</option><option value="21">Salvador</option><option value="93">Saudi Arabia</option><option value="117">Senegal</option><option value="116">Sierra Leone</option><option value="61">Singapore</option><option value="136">SLOVAKIA</option><option value="72">Slovenia</option><option value="79">Solomon Islands</option><option value="71">South Africa</option><option value="78">South Korea</option><option value="85">Spain</option><option value="118">Sri Lanka</option><option value="164">St Vincent &amp; Grenadines</option><option value="74">Sweden</option><option value="75">Switzerland</option><option value="121">Syria</option><option value="183">Tajikistan</option><option value="152">Tanzania</option><option value="91">Thailand</option><option value="144">the Democratic Republic of the Congo</option><option value="107">The Ivory Coast</option><option value="193">The Republic of Serbia</option><option value="148">Trinidad and Tobago</option><option value="119">Tunisia</option><option value="65">Turkey</option><option value="184">Turkmenistan</option><option value="172">U.S. Virgin Islands</option><option value="120">Uganda</option><option value="68">Ukraine</option><option value="86">United Arab Emirates</option><option value="81">United Kingdom</option><option selected="" value="1">United States</option><option value="73">Uruguay</option><option value="185">Uzbekistan</option><option value="157">Venezuela</option><option value="66">Vietnam</option><option value="147">Yemen</option><option value="176">Zambia</option><option value="155">Zimbabwe</option>
                  </select></td>
              </tr>
              <tr>
                <td><span class="red">*</span>State/Province/Region: </td>
                <td class="W260"><div class="divr divr1"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberUrbanAreas_b" autocomplete="off" name="MemberUrbanAreas_b"><div style="display: none;" class="ep_qsearch"><i style="padding: 4px 10px;">Loading...</i></div>
                  <i id="MemberUrbanAreas_bInfo"></i></div></td>
              </tr>
              <tr>
                <td><span class="red">*</span>City: </td>
                <td class="W260"><div class="divr divr2"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberCtiy_b" autocomplete="off" name="MemberCtiy_b"><div style="display: none;" class="ep_qsearch"><i style="padding: 4px 10px;">Loading...</i></div>
                  <i id="MemberCtiy_bInfo"></i></div></td>
              </tr>
              <tr>
                <td><span class="red">*</span>Zip/Postal Code: </td>
                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" value="" id="MemberZip_b" name="MemberZip_b">
                  <i id="MemberZip_bInfo"></i></td>
              </tr>
              <tr>
                <td><span class="red">*</span>Phone Number: </td>
                <td class="W260"><input type="text" onblur="checkform(this.id);" class="input_1" maxlength="30" value="" id="MemberContactPhone_b" name="MemberContactPhone_b">
                  <i id="MemberContactPhone_bInfo"></i></td>
              </tr>
              <tr>
                    <td>&nbsp;</td>
                    <td valign="top" style=" font-size:10px;" class="W260">We ask for your phone number just incase we need to reach you for any reason regarding your order with Milanoo.com. We do not rent, share, or sell your personal information. Ever.</td>
             </tr>
            </tbody>
          </table>
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
        <textarea maxlength="150" id="Remarks" rows="4" cols="65" name="Remarks"></textarea>
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
        <td style="text-align:right;" colspan="3">           <input type="submit" value="CONTINUE" id="paymentsubmit" class="ContinueCheckout_pay" name="input2">
           </td>
      </tr>
    </tbody></table>
	</form>
</c:if>
<script type="text/javascript">
	
</script>
