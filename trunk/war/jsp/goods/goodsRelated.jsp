<%@include file="../include.jsp" %>
<%@page import="com.spshop.utils.AllConstants"%>
<div id="tab_middle" class="item_goods_info_box_bottom">
  <div class="item_reviews">
  <div class="item_tab">
  	<c:if test="${pageForm.pageProperties.productDetail.manualKey > 0}">
	  	<ss:html var="html" htmlId="${pageForm.pageProperties.productDetail.manualKey}">
	   	 <c:out value="${html.content}" escapeXml="false"></c:out>
	    </ss:html>
    </c:if>
  </div>
  <%-- 
    <div name="pl" id="pl" class="item_reviews_fun">
      <h2>Reviews</h2>
      <div class="item_reviews_button"> <a class="item_reviews_writle" href="javascript:jq.goDiv('#writepl');">Write a Review:</a> <!--span class="prin_link"><a href="javascript:void(0);">Print Page</a></span--> </div>
    </div>
    <ul class="item_reviews_list">
           <li>
        <div class="item_reviews_words">
        <div class="item_reviews_user">
		  <strong></strong> 
		  <div style="float:left;">By <strong>Name</strong>&nbsp;&nbsp;2011-6-23  17:51:47</div>
			<span class="item_reviews_start">
			  <div class="starsSmall_box" title="5 out of 5 stars">
				<div style="width:100%;"></div>
			  </div>
			</span>
		</div>
          <div id="PLcoon_1" class="item_reviews_content">can the bows on the shoes be removed? 
          </div>
                              
          <div id="helpful60107" class="item_reviews_helpful"> Help other customers find the most helpful reviews Was this review helpful to you?
            <input type="button" onclick="ishelpful('1',60107);" class="input_button_yes" value="Yes">
			|
			<input type="button" onclick="ishelpful('0',60107);" class="input_button_no" value="No">
          </div>
        </div>
      </li>
         </ul>
   --%>
     <div class="pages_box"> 
    	<c:if test="${pageForm.pageProperties.productDetail.showComments}">
    		<H1 style="float: left;">Comments</H1>
			<fb:comments href='<%=AllConstants.HTTP_PROTOCOL%>${pageForm.site.domain}/${pageForm.pageProperties.productDetail.name }' num_posts="15" width="720"></fb:comments>
		</c:if>
      </div>
    <div id="writepl" class="item_reviews_bottom_page">
    <%-- --%>
      <div>
      </div>
    </div>
  </div>  

  
<div class="item_bottom_right">
	<c:if test="${pageForm.pageProperties.productDetail.tabProductKey > 0}">
		<ss:tabProductNames var="names" tabId="${pageForm.pageProperties.productDetail.tabProductKey }">
			<h3>Customers Who Bought This Item Also Bought</h3>
			<div class="item_bottom_funBt">
			</div>
		    <ul class="complete_look_normal">
		     <c:forEach items="${names}" var="name">
		     	<ss:product var="product" productName="${name}">
				      <li> <a title="${product.title }" href="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}<%=AllConstants.URL_SEPERATOR %>${product.name}"><img width="80" height="105" border="0" alt="${product.title }" src="<%=AllConstants.HTTP_PROTOCOL %>${pageForm.site.domain}${product.images[0].smallUrl}"></a>
				        <div>US$ ${product.actualPrice}</div>
				      </li>
		      </ss:product>
		     </c:forEach>
		    </ul>
	    </ss:tabProductNames>
    </c:if>
</div>  
  
</div>

<div class="hei10"></div>