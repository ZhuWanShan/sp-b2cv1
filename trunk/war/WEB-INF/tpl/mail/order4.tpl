<html>
	<head></head>
<body>
<div align="center">
<!-- Order Received and Payment Confirmation -->
<table cellspacing="0" cellpadding="0" border="0" style="width:760px; background:#F2F3F4">
 <tbody><tr>
  <td style="padding:0in 0in 0in 0in"><!-- head logo & link -->
  <div align="center">
  <table cellspacing="0" cellpadding="0" border="0" width="700" style="width:525.0pt;">
   <tbody><tr style="height:10.5pt">
    <td colspan="2" style="padding:0in 0in 0in 0in;height:10.5pt"></td>
   </tr>
   
   <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes">
    <td style="padding:0in 0in 0in 0in">
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt">
    <span>
    <img board="0" title="www.honeybuy.com Logo" alt="www.honeybuy.com logo" src="https://www.honeybuy.com/image/4614200824386.jpg"><o:p></o:p></span></p>
    </td>
    <td style="padding:0in 0in 0in 0in">
    <p align="right" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
    text-align:right"><span style="font-size:14.0pt;mso-fareast-font-family:
    &quot;Times New Roman&quot;">Order Received and Payment Confirmation</span></p>
    </td>
   </tr>
  </tbody></table>
  </div>
<!-- head logo & link eof --><!-- email main -->
  <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:all"><o:p>&nbsp;</o:p></span></p>
  <div align="center">
  <table height="55" cellspacing="0" cellpadding="0" border="1" width="700" class="MsoNormalTable" 

style="width:525.0pt;mso-cellspacing:0in;background:white;border:solid #C9C9CA 1.0pt;
   border-top:solid #D4232B 1.0pt;mso-border-alt:solid #C9C9CA .75pt;
   mso-border-top-alt:solid #D4232B .75pt;mso-yfti-tbllook:1184;mso-padding-alt:
   0in 0in 0in 0in">
   <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes">
    <td style="border:none;padding:0in 0in 0in 0in"><!-- Number -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="1" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;border:none;
     border-bottom:solid #C9C9CA 1.0pt;mso-border-bottom-alt:solid #C9C9CA .75pt;
     mso-yfti-tbllook:1184;mso-padding-alt:0in 0in 0in 0in">
     <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes">
      <td width="22" style="width:16.5pt;border:none;padding:0in 0in 0in 0in"></td>
      <td style="border:none;padding:0in 0in 0in 0in">
      <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><strong><span style="font-size:10.0pt;mso-fareast-

font-family:&quot;Times New Roman&quot;">Order
      No.:</span></strong><span style="font-size:10.0pt;mso-fareast-font-family:
      &quot;Times New Roman&quot;"> ${order.name}<o:p></o:p></span></p>
      </td>
      <td style="border:none;padding:0in 0in 0in 0in">
      <p align="right" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
      text-align:right"><strong>
	  <#if order.createDate??>
		${order.createDate?string("yyyy-MM-dd HH:mm:ss zzzz")}
	  </#if>
	  </strong><span style="font-size:9.0pt;mso-fareast-font-family:&quot;Times New 

Roman&quot;"><o:p></o:p></span></p>
      </td>
      <td width="22" style="width:16.5pt;border:none;padding:0in 0in 0in 0in"></td>
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:
    all"><o:p>&nbsp;</o:p></span></p>
<!-- Number EOF --><!-- EMAIL HEADER -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="1" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;border:none;
     border-bottom:solid #C9C9CA 1.0pt;mso-border-bottom-alt:solid #C9C9CA .75pt;
     mso-yfti-tbllook:1184;mso-padding-alt:0in 0in 0in 0in">
     <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes">
      <td width="22" valign="top" style="width:16.5pt;border:none;padding:0in 0in 0in 0in"></td>
      <td width="660" valign="top" style="width:495.0pt;border:none;padding:0in 0in 0in 0in">
      <p style="margin-top:19.5pt;margin-right:0in;margin-bottom:3.75pt;
      margin-left:0in;line-height:12.75pt;paading: 0"><strong><span style="font-size:11.0pt;color:black">Dear 
		${(order.firstName)!''} ${(order.lastName)!''} 
	  ,</span></strong><span style="font-size:9.0pt"></span></p>
      <p style="margin-top:7.5pt;margin-right:0in;margin-bottom:7.5pt; margin-left:0in;line-height:13.5pt;paading: 0; 

font-size:10.0pt">We have confirmed your payment and have begun processing <a 

href="http://www.honeybuy.com/uc/orderDetails?id=${order.name}">your order</a>!</p>
	  <p style="margin-top:7.5pt;margin-right:0in;margin-bottom:7.5pt; margin-left:0in;line-height:13.5pt;paading: 

0; font-size:10.0pt">Once your items have been packed and are ready to go, they will be shipped to you immediately. You 

will receive a shipment notification via email once your order has been shipped.</p>
   
      </td>
      <td width="22" valign="top" style="width:16.5pt;border:none;padding:0in 0in 0in 0in"></td>
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:
    all"><o:p>&nbsp;</o:p></span></p>
<!-- EMAIL HEADER EOF --><!-- ship -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="0" width="700" class="MsoNormalTable" style="width:525.0pt;mso-

cellspacing:0in;mso-yfti-tbllook:1184;mso-padding-alt:
     0in 0in 0in 0in">
     <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:11.25pt;
      mso-row-margin-right:255.0pt">
      <td style="padding:0in 0in 0in 0in;height:11.25pt"></td>
      <td width="340" style="mso-cell-special:placeholder;border:none;padding:0in 0in 0in 0in"><p 

class="MsoNormal">&nbsp;</p></td>
     </tr>
     <tr style="mso-yfti-irow:1">
      <td width="340" valign="top" style="width:255.0pt;border:none;border-right:
      solid #DFDFE0 1.0pt;mso-border-right-alt:solid #DFDFE0 .75pt;padding:
      0in 0in 0in 0in">
      <table cellpadding="0" border="0" class="MsoNormalTable" style="mso-cellspacing:
       1.5pt;mso-yfti-tbllook:1184">
       <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
        <td width="15" valign="top" style="width:11.25pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td width="80" valign="top" style="width:60.0pt;padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><strong><span style="font-size:10.0pt;mso-

fareast-font-family:&quot;Times New Roman&quot;;
        color:black">Bill to</span></strong><span style="font-size:9.0pt;
        mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
        </td>
        <td width="10" valign="top" style="width:7.5pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td width="170" valign="top" style="width:127.5pt;padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:10.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;">
		
				<#if order.billingAddress ??>
						<#assign "address"= order.billingAddress >
						${(address.firstName)!''} ${(address.lastName)!''} 
								(${address.address1!''} ${address.city!''},
								${address.stateProvince!''},${countryMap[address.country?string].name},
								Postal Code: ${address.postalCode!''}) Phone:${address.phone!''}
				</#if>
		
		<o:p></o:p></span></p>
        </td>
       </tr>
       <tr style="mso-yfti-irow:1;height:11.25pt">
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
       </tr>
       <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes">
        <td width="15" valign="top" style="width:11.25pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td valign="top" style="padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><strong><span style="font-size:10.0pt;mso-

fareast-font-family:&quot;Times New Roman&quot;;
        color:black">Payment Method</span></strong><span style="font-size:9.0pt;
        mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
        </td>
        <td width="10" valign="top" style="width:7.5pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td valign="top" style="padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:10.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;"><#if ((order.orderType!'')=="Globebill")>
								Credit or Debit Card
							<#elseif ((order.orderType!'')=="paypal")>
								Paypal
							<#else>
								Other
							</#if></span></p>
        </td>
       </tr>
      </tbody></table>
      </td>
<!-- 1eof -->
      <td width="340" valign="top" style="width:255.0pt;padding:0in 0in 0in 0in">
      <table cellpadding="0" border="0" class="MsoNormalTable" style="mso-cellspacing:
       1.5pt;mso-yfti-tbllook:1184">
       <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
        <td width="15" valign="top" style="width:11.25pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td width="80" valign="top" style="width:60.0pt;padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><strong><span style="font-size:10.0pt;mso-

fareast-font-family:&quot;Times New Roman&quot;;
        color:black">Ship to</span></strong><span style="font-size:9.0pt;
        mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
        </td>
        <td width="10" valign="top" style="width:7.5pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td width="170" valign="top" style="width:127.5pt;padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:10.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;">
        
       	<#if order.shippingAddress ??>
						<#assign "address"= order.shippingAddress >
						${(address.firstName)!''} ${(address.lastName)!''} 
								(${address.address1!''} ${address.city!''},
								${address.stateProvince!''},${countryMap[address.country?string].name},
								Postal Code: ${address.postalCode!''}) Phone:${address.phone!''}
				</#if>
			</span></p>
        </td>
       </tr>
       <tr style="mso-yfti-irow:1;height:11.25pt">
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
        <td style="padding:.75pt .75pt .75pt .75pt;height:11.25pt"></td>
       </tr>
       <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes">
        <td width="15" valign="top" style="width:11.25pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td valign="top" style="padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><strong><span style="font-size:10.0pt;mso-

fareast-font-family:&quot;Times New Roman&quot;;
        color:black">Ship via</span></strong><span style="font-size:9.0pt;
        mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
        </td>
        <td width="10" valign="top" style="width:7.5pt;padding:.75pt .75pt .75pt .75pt"></td>
        <td valign="top" style="padding:.75pt .75pt .75pt .75pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:10.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;">	
        		<#if order.shippingMethod??> ${order.shippingMethod} </#if>
        </span></p>
        </td>
       </tr>
      </tbody></table>
      </td>
<!-- 2eof -->
     </tr>
     <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes;height:11.25pt">
      <td style="padding:0in 0in 0in 0in;height:11.25pt"></td>
      <td style="padding:0in 0in 0in 0in;height:11.25pt"></td>
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:
    all"><o:p>&nbsp;</o:p></span></p>
<!-- ship eof --><!-- item list -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="0" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;mso-yfti-tbllook:
     1184;mso-padding-alt:0in 0in 0in 0in">
     <tbody><tr>
      <td width="100%" colspan="6" style="width:100.0%;background:#DDD;
      padding:0in 0in 0in 0in;height:19.5pt">
      <table cellspacing="0" cellpadding="0" border="0" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in">
       <tbody><tr>
        <td width="21" style="width:15.75pt;padding:0in 0in 0in 0in"></td>
        <td width="399" style="width:299.25pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:11.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;;
        color:black">Item(s) in Order<o:p></o:p></span></p>
        </td>
        <td width="10" style="width:7.5pt;padding:0in 0in 0in 0in"></td>
        <td width="77" style="width:57.75pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:11.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;;
        color:black">Item Price<o:p></o:p></span></p>
        </td>
        <td width="10" style="width:7.5pt;padding:0in 0in 0in 0in"></td>
        <td width="34" style="width:25.5pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:11.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;;
        color:black">Qty<o:p></o:p></span></p>
        </td>
        <td width="10" style="width:7.5pt;padding:0in 0in 0in 0in"></td>
        <td width="102" style="width:76.5pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:11.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;;
        color:black">Price<o:p></o:p></span></p>
        </td>
       </tr>
      </tbody></table>
      </td>
      <td width="4" style="width:3.0pt;padding:0in 0in 0in 0in;height:19.5pt"></td>
     </tr>
     <tr style="mso-yfti-irow:1;height:19.5pt">
      <td width="100%" colspan="6" style="width:100.0%;border:none;border-bottom:
      dashed #DDDDDD 1.0pt;mso-border-bottom-alt:dashed #DDDDDD .75pt;
      padding:0in 0in 0in 0in;height:19.5pt">
      <table cellspacing="0" cellpadding="0" border="0" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in">
       <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:4.5pt;
        mso-row-margin-right:481.5pt">
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td width="642" style="mso-cell-special:placeholder;border:none;padding:0in 0in 0in 0in" colspan="7"><p 

class="MsoNormal">&nbsp;</p></td>
       </tr>
	   <#if order.items??>
	   <#list order.items as item>
       <tr style="mso-yfti-irow:1">
        <td width="21" style="width:15.75pt;padding:0in 0in 0in 0in"></td>
        <td width="399" style="width:299.25pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:9.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;"><a href="http://www.honeybuy.com/${item.product.name}"><span 

style="color:#1E4E8E;text-decoration:none;text-underline:none">
		${item.product.title}
		</span></a><br><o:p></o:p></span></p>
        </td>
        <td width="10" style="width:7.5pt;padding:0in 0in 0in 0in"></td>
        <td width="77" style="width:57.75pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:9.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;">${order.currency}
        ${(item.finalPrice*currencyRate)?string("0.##")}<o:p></o:p></span></p>
        </td>
        <td width="10" style="width:7.5pt;padding:0in 0in 0in 0in"></td>
        <td width="34" style="width:25.5pt;padding:0in 0in 0in 0in">
        <p align="center" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
        text-align:center"><span style="font-size:9.0pt;mso-fareast-font-family:
        &quot;Times New Roman&quot;">${item.quantity}<o:p></o:p></span></p>
        </td>
        <td width="10" style="width:7.5pt;padding:0in 0in 0in 0in"></td>
        <td width="102" style="width:76.5pt;padding:0in 0in 0in 0in">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="font-size:9.0pt;mso-fareast-font-

family:&quot;Times New Roman&quot;">${order.currency}
		${((item.quantity * item.finalPrice)*currencyRate)?string("0.##")}<o:p></o:p></span></p>
        </td>
       </tr>
	   </#list>
	   </#if>
       <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes;height:4.5pt">
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
        <td style="padding:0in 0in 0in 0in;height:4.5pt"></td>
       </tr>
      </tbody></table>
      </td>
      <td width="4" style="width:3.0pt;padding:0in 0in 0in 0in;height:19.5pt"></td>
     </tr>
     <tr style="mso-yfti-irow:4">
      <td width="100%" style="width:100.0%;padding:0in 0in 0in 0in">
      <table align="right" cellspacing="0" cellpadding="0" border="0" class="MsoNormalTable" style="mso-

cellspacing:0in;mso-yfti-tbllook:1184;mso-table-lspace:
       2.25pt;mso-table-rspace:2.25pt;mso-table-anchor-vertical:paragraph;
       mso-table-anchor-horizontal:column;mso-table-left:right;mso-table-top:
       middle;mso-padding-alt:0in 0in 0in 0in">
       <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:11.25pt;
        mso-row-margin-right:85.2pt">
        <td style="padding:0in 0in 0in 0in;height:11.25pt"></td>
        <td width="114" style="mso-cell-special:placeholder;border:none;padding:0in 0in 0in 0in" colspan="2"><p 

class="MsoNormal">&nbsp;</p></td>
       </tr>
       <tr style="mso-yfti-irow:1">
        <td style="padding:0in 0in 0in 0in">
        <p align="right" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
        text-align:right;line-height:16.5pt"><span style="font-size:9.0pt;
        mso-fareast-font-family:&quot;Times New Roman&quot;">Sub-Total:<o:p></o:p></span></p>
        </td>
        <td width="104" style="width:78.0pt;padding:0in 0in 0in 15.0pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;line-height:
        16.5pt"><span style="font-size:9.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;">${order.currency}
        ${(order.totalPrice*currencyRate)?string("0.##")}<o:p></o:p></span></p>
        </td>
        <td width="4" style="width:3.0pt;padding:0in 0in 0in 0in"></td>
       </tr>
       <tr style="mso-yfti-irow:2">
        <td style="padding:0in 0in 0in 0in">
        <p align="right" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
        text-align:right;line-height:16.5pt"><span style="font-size:9.0pt;
        mso-fareast-font-family:&quot;Times New Roman&quot;">Shipping:<o:p></o:p></span></p>
        </td>
        <td style="padding:0in 0in 0in 15.0pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;line-height:
        16.5pt"><span style="font-size:9.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;">${order.currency}
        ${(order.dePrice*currencyRate)?string("0.##")}<o:p></o:p></span></p>
        </td>
        <td width="4" style="width:3.0pt;padding:0in 0in 0in 0in"></td>
       </tr>
       
       <tr style="mso-yfti-irow:2">
	        <td style="padding:0in 0in 0in 0in">
	        <p align="right" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
	        text-align:right;line-height:16.5pt"><span style="font-size:9.0pt;
	        mso-fareast-font-family:&quot;Times New Roman&quot;">Coupon:<o:p></o:p></span></p>
	        </td>
	        <td style="padding:0in 0in 0in 15.0pt">
	        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;line-height:
	        16.5pt"><span style="font-size:9.0pt;mso-fareast-font-family:&quot;Times New 

Roman&quot;">${(order.currency)}&nbsp;-${(currencyRate*order.couponCutOff)?string(",##0.##")}<o:p></o:p></span></p>
	        </td>
	        <td width="4" style="width:3.0pt;padding:0in 0in 0in 0in"></td>
       </tr>
       
       <tr style="mso-yfti-irow:4;mso-yfti-lastrow:yes">
        <td style="border:none;border-top:solid #E2E2E2 1.0pt;mso-border-top-alt:
        solid #E2E2E2 .75pt;padding:7.5pt 0in 0in 15.0pt">
        <p align="right" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
        text-align:right;line-height:16.5pt"><strong><span style="font-size:
        9.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;">Grand Total:</span></strong><span style="font-

size:9.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
        </td>
        <td style="border:none;border-top:solid #E2E2E2 1.0pt;mso-border-top-alt:
        solid #E2E2E2 .75pt;padding:7.5pt 0in 0in 15.0pt">
        <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;line-height:
        16.5pt"><strong><span style="font-size:9.0pt;mso-fareast-font-family:
        &quot;Times New Roman&quot;">${order.currency}  ${(currencyRate*(order.totalPrice-

order.couponCutOff+order.dePrice))?string(",##0.##")}</span></strong><span style="font-size:
        9.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
        </td>
        <td width="4" style="width:3.0pt;padding:0in 0in 0in 0in"></td>
       </tr>
      </tbody></table>
      </td>
      <td style="padding:0in 0in 0in 0in"></td>
      <td style="padding:0in 0in 0in 0in"></td>
      <td style="padding:0in 0in 0in 0in"></td>
      <td style="padding:0in 0in 0in 0in"></td>
      <td style="padding:0in 0in 0in 0in"></td>
      <td style="padding:0in 0in 0in 0in"></td>
     </tr>
     <tr style="mso-yfti-irow:5;mso-yfti-lastrow:yes;height:7.5pt">
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
      <td style="padding:0in 0in 0in 0in;height:7.5pt"></td>
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:
    all"><o:p>&nbsp;</o:p></span></p>
<!-- item list EOF --><!-- line -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="1" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;border:none;
     border-bottom:solid #C9C9CA 1.0pt;mso-border-bottom-alt:solid #C9C9CA .75pt;
     mso-yfti-tbllook:1184;mso-padding-alt:0in 0in 0in 0in">
     <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes">
      <td style="border:none;padding:0in 0in 0in 0in"></td>
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:
    all"><o:p>&nbsp;</o:p></span></p>
<!-- line eof -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="1" width="700" class="MsoNormalTable" style="width:525.0pt;mso-

cellspacing:0in;border:none;border-bottom:solid #C9C9CA 1.0pt;
     mso-border-bottom-alt:solid #C9C9CA .75pt;mso-yfti-tbllook:1184;
     mso-padding-alt:0in 0in 0in 0in">
     <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:7.5pt">
      <td style="border:none;padding:0in 0in 0in 0in;height:7.5pt"></td>
     </tr>
     <tr style="mso-yfti-irow:1">
      <td valign="top" style="border:none;padding:0in 16.5pt 0in 16.5pt">
      </td>
     </tr>
     <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes;height:7.5pt">
     
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"></p>
<!-- FAQ -->
    <div align="center">
    <table cellspacing="0" cellpadding="0" border="0" width="100%" class="MsoNormalTable" style="width:100.0%;mso-

cellspacing:0in;mso-yfti-tbllook:
     1184;mso-padding-alt:0in 0in 0in 0in">
     <tbody>
     <tr>
      <td style="width:5px; border:none;padding:10px 0in 0in 0in"></td>
            
       <td style="padding:10px 0px"> 
	  <p style="text-align:left;font-size:10.0pt"><strong>Please Note: </strong></P>
	  <p style="text-align:left;font-size:9.0pt">Once we finish processing your order, your items will be 

immediately packaged and shipped to you. The average processing time for made-to-measure clothing (such as wedding, 

suits or special occasion dresses) is 8-12 business days, and for all other items, approximately 1-3 business days. 

And</p>
      <p style="text-align:left;font-size:8.0pt">If you have chosen Expedited shipping, your package(s) will arrive in 

2-4 business days from the time they are shipped, the fastest shipping method worldwide.</p>
	  <p style="text-align:left;font-size:8.0pt">If you have chosen Standard shipping, your package(s) will arrive 

in 5-8 business days from the time they are shipped, free shipping to all major destinations, but takes a bit longer 

than expedited shipping.</p>
	  <p style="text-align:left;font-size:9.0pt">Cancellations of made-to-measure clothing (including dresses, 

wraps, and accessories) 24-72 hours after payment confirmation are subject to restocking and materials fees of 50% of 

the original item price, as tailoring has already begun. After 72 hours, only a portion of the shipping costs can be 

refunded on cancelled orders.</p>
	  <p style="text-align:left;font-size:9.0pt">For all other questions, Please send <a 

href="mailto:service@honeybuy.com">Email</a> to us: service@honeybuy.com!</p>
	  <p style="text-align:left;font-size:9.0pt">Dear <strong><#if order.customerName??> ${order.customerName} 

</#if></strong> thanks for your orders again! We appreciate your feedback and please Like-Share-Comment your orders on 

our site and use $20 Coupon:<span style="color:red"> HONEYBUY-2S6M2g</span> for your next orders over $150. We are 

waiting for your next visit!</p></td>
   
   
    <td style="width:5px;border:none;padding:0in 0in 0in 0in"></td>
     </tr>
    </tbody></table>
    </div>
    <p class="MsoNormal" style="margin:0in;margin-bottom:.0001pt"><span style="mso-fareast-font-family:&quot;Times New 

Roman&quot;;display:none;mso-hide:
    all"><o:p>&nbsp;</o:p></span></p>
<!-- FAQ eof -->
    <div align="center">
<table width="728" border="0" cellspacing="0" cellpadding="0" style="border-top:1px solid #C9C9CA; padding:6px; 

padding-bottom:none">
  <tr>
    <td>Join Honeybuy Community for Coupons, Gifts and Happiness:</td>
  </tr>
   <tr><td>&nbsp;</td>
  </tr>
</table>
    <table width="500" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:15px;">
  <tr>
    <td>&nbsp;</td>
  <td><a href="https://www.facebook.com/HoneyBuyCity" target="_blank"><img title="Like Honeybuy on Facebook" alt="Like 

Honeybuy on Facebook" src="http://www.honeybuy.com/style/image/pic/facebook_32.png" border="0" /></a></td>
    <td><a href="https://plus.google.com/109978880912693970020/posts?prsr=3" target="_blank"><img width="32" 

height="32" title="Honeybuy Google+" alt="Honeybuy Google+" src="http://www.honeybuy.com/style/image/pic/gplus-32.png" 

border="0" /></a></td>
  <td><a href="https://twitter.com/HoneyBuy" target="_blank"><img width="32" height="32" title="Follow Honeybuy on 

Twitter" alt="Follow Honeybuy on Twitter" src="http://www.honeybuy.com/style/image/pic/twitter_32.png" 

border="0"/></a></td>
  <td><a rel="nofollow" target="_blank" href="http://www.linkedin.com/in/honeybuy"><img width="32" height="32" 

title="Honeybuy Linkedin" alt="Hoenybuy Linkedin" src="http://www.honeybuy.com/style/image/pic/linkedin_32.png" 

border="0"></a></td>
<td><a rel="nofollow" target="_blank" href="http://www.youtube.com/user/honeybuyshow"><img width="32" height="32" 

title="Honeybuy Youtube" alt="Honeybuy Youtube" src="http://www.honeybuy.com/style/image/pic/youtube-logo.jpg" 

border="0"/></a></td>
    <td><a rel="nofollow" target="_blank" href="http://pinterest.com/honeybuy/"><img width="32" height="32" 

title="Honeybuy Pinterest" alt="Honeybuy Pinterest" src="http://www.honeybuy.com/style/image/pic/big-p-button.png" 

border="0"></a></td>
    <td><a rel="nofollow" target="_blank" href="http://www.flickr.com/photos/honey-buy"><img width="33" height="32" 

title="Honeybuy Flickr" alt="Honeybuy Flickr" src="http://www.honeybuy.com/style/image/pic/icon_flickr.png" 

border="0"></a></td>
   <td><a rel="nofollow" target="_blank" href="http://honeybuy.blogspot.com/"><img width="32" height="32" 

title="Honeybuy Blogspot" alt="Honeybuy Blogspot" src="http://www.honeybuy.com/style/image/pic/icon.png" 

border="0"></a></td>
  </tr>
</table>
    </div>
    </td>
   </tr>
  </tbody></table>
  </div>
  <div align="center">
  <table cellspacing="0" cellpadding="0" border="0" width="700" class="MsoNormalTable" style="width:525.0pt;mso-

cellspacing:0in;mso-yfti-tbllook:1184;mso-padding-alt:
   0in 0in 0in 0in">
   <tbody>
   <tr style="mso-yfti-irow:1;height:37.5pt">
    <td width="22" style="width:16.5pt;padding:0in 0in 0in 0in;height:37.5pt"></td>
    <td style="padding:0in 0in 0in 0in;height:37.5pt">
    <p align="center" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
    text-align:center"><span style="font-size:9.0pt;mso-fareast-font-family:
    &quot;Times New Roman&quot;;color:#646464"><br>
    <strong>PLEASE DO NOT REPLY to this email! If you have any question, Please
    <a href="mailto:service@honeybuy.com">Contact Us </a>here</strong>. <o:p></o:p></span></p>
    </td>
    <td width="22" style="width:16.5pt;padding:0in 0in 0in 0in;height:37.5pt"></td>
   </tr>
   <tr style="mso-yfti-irow:2;height:15.0pt">
    <td width="22" style="width:16.5pt;padding:0in 0in 0in 0in;height:15.0pt"></td>
    <td style="padding:0in 0in 0in 0in;height:15.0pt">
    <p align="center" class="MsoNormal" style="margin:0in;margin-bottom:.0001pt;
    text-align:center"><span style="font-size:9.0pt;mso-fareast-font-family:
    &quot;Times New Roman&quot;;color:#646464">Copyright&copy; 2012 HoneyBuy.com; Inc. All
    Rights Reserved. | <a href="http://www.honeybuy.com/c/Terms-Of-Use">Terms
    of Use </a>| <a href="http://www.honeybuy.com/c/Privacy-Policy">Privacy
    Policy </a><o:p></o:p></span></p>
    </td>
    <td width="22" style="width:16.5pt;padding:0in 0in 0in 0in;height:15.0pt"></td>
   </tr>
   <tr style="mso-yfti-irow:3;mso-yfti-lastrow:yes;height:20pt">
   </tr>
  </tbody></table>
  </div>
  </td>
 </tr>
<!-- email footer eof-->
</tbody></table>

</div>
</body>
</html>