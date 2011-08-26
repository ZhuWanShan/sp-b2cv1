// JavaScript Document
var iscustom='';
jq("#currencyAll,.currencyAll").hover(function(){
	jq(".currencyAll").slideDown("fast").data("show",1); setTimeout("hide('.','currencyAll')",1000);
},function(){
	jq(".currencyAll").data("show",0);setTimeout("hide('.','currencyAll')",100);
});
function hide(symbol,divName){	
	symbol=String(symbol)||'#';	var value=jq(symbol+divName).data("show");if(!value){jq(symbol+divName).hide();}	
}
/****/

jq("#nosub").hover(function(){jq("#sub_outDiv").show();},function(){jq("#sub_outDiv").hide();});
/****/

(function($){
	$.fn.tanCeng = function(action,method,outDocument_id,background){
		if(method=='show')
		{			
			this.bind(action,function(){dod();});					
		}
		if(method=='absolute')
		{			
			dod();				
		}
		function dod(){
				var z_index=900;							 
				if(background!==1)$("#musicwhp_backgroundDiv").css({"opacity":"0.5","height":$(document).height(),"width":"100%","z-index":z_index,"background-color":"#333333","position":"absolute","top":"0px" , "left":"0px"}).show();
				var windowWidth = jq(window).width();
				var windowHeight = jq(window).height();
				var divWidth = jq("#Customfloat").width();
				var divHeight = jq("#Customfloat").height();			
				var divLeft = windowWidth/2-divWidth/2;			 
				var divTop = divHeight>windowHeight?50+jq(window).scrollTop():windowHeight/2-divHeight/2+jq(window).scrollTop();	
				divLeft = divLeft-200; 
				divTop = divTop -200;		
				jq(outDocument_id).css({"position":"absolute","z-index":++z_index,"top":divTop,"left":divLeft}).show();				
		}		
		if(method=='hide'){ this.bind(action,function(){ if($(outDocument_id).get(0).style.display!='none')$(outDocument_id+",#musicwhp_backgroundDiv").hide();});}				
		return this;
	}
})(jQuery);


function isNumber(oNum){
	if(!oNum) return false;
	var strP=/^\d+(\.\d+)?$/;
	if(!strP.test(oNum)) return false;
	try{
		if(parseFloat(oNum)!=oNum) return false;
	}catch(ex){
		return false;
	}
	return true;
}
/****/

/*
jq(document).ready(function(){	
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
	 	 	chooseSize();
	});
	
	jq(".item_colorBox").each(function(){ if(jq(this).find(".colorLink").size()==1){jq(this).find(".colorLink:first").click();}}); 

	
});
*/

function checknow(){
	ChangePrice();	
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
		}else{
			if($('customcss1')){
				$('customcss1').className='';
				$('custom1').style.display='none';
			}
			$('custom2').style.display='block';$('customcss2').className='link_now';
			return false;
		}
	}else{
		$('Customfloat').style.display='none';
	}	
}
/***/
function cancelCustom(){
	$('Customfloat').style.display='none';
	iscustom='';	
	toutaoPrice=0;
	setTimeout("chooseSize()",100);	
	setTimeout("ChangePrice()",100);	
}
/****/
function customsize(){
	jq("#any").tanCeng('click','absolute','#Customfloat',1);	
	$('custom1').style.display='block';
	$('customcss1').className='link_now';
	
	if(iscustom=='custom'){		
		$('customade').style.display='block';				
	}else{
		$('customade').style.display='none';		
	}	
	$('custom2').style.display='none'; 
	$('customcss2').className='';
}
/****/
function CustomPrice(value,fuhao){
	if(fuhao=="+"){
		toutaoPrice  += parseFloat(value);
	}else{
		toutaoPrice  -= parseFloat(value);
	}
	ChangePrice();	
}
jq('.tab_select div').click(function(){
	var index_num = jq('.tab_select > div').index(jq(this));	
	var all_num = jq('.tab_select > div').size();
	for(var i=0;i<all_num;i++){
		if(i==index_num){
			jq('.tab_select > div').eq(i).addClass("item_goods_property_select");
			jq('.item_goods_property_content > div').eq(i).show();
		}else{
			jq('.tab_select > div').eq(i).removeClass("item_goods_property_select");
			jq('.item_goods_property_content > div').eq(i).hide();
		}
	}
});
function getReviewData(id,value){
	//$('comment'+value).style.display='';
	//$('review'+value).innerHTML=parseInt($('review'+value).innerHTML)+1;
}


	jq(function(){
		jq("a[rel=thing_item_pics]").fancybox({
			'overlayColor'		: '#000',
			'overlayOpacity'	: 0.2,
			'speedIn'			: 400,
			'speedOut'			: 100,
			'transitionIn'		: 'elastic',
			'transitionOut'		: 'fade',
			'titlePosition' 	: 'inside',
			'titleShow'			:false
		});
		jq("a[rel=wholesale_pics]").fancybox({
			'overlayColor'		: '#000',
			'overlayOpacity'	: 0.2,
			'speedIn'			: 400,
			'speedOut'			: 100,
			'transitionIn'		: 'elastic',
			'transitionOut'		: 'fade',
			'titlePosition' 	: 'inside',
			'titleShow'			:false
		});
			var href;
			href = jq("#imageNormalBox").attr("val");
			//alert(href);
			jq("#linkNormalBox").attr("href",href);
			jq('.smallPic').click(function(){
			var imgSrc;
			var sNum;
				imgSrc = jq(this).attr("val");
				jq("#imageNormalBox").attr("src",imgSrc).parent("a").attr("href",imgSrc);
				sNum = jq(".smallPic").index(jq(this)); //æ˜¾ç¤ºæˆ‘æ˜¯ç¬¬å‡ ä¸ª
				jq(".noneBox").attr("rel","thing_item_pics")
				jq(".noneBox:eq("+sNum+")").removeAttr("rel");
			})
		jq('.currencyAll,.sub_menu,.user_menu_hidd,#universalCart').bgiframe();
	})
function checkLen(obj,num)
{
var maxChars = num;
if (obj.value.length > maxChars)
obj.value = obj.value.substring(0,maxChars);
}

function emailAlertClick(MemberId,mail,productId){

	if(MemberId != ''){
		ajaxSubmitMail(mail,productId);
	}else{
		$('nologin').style.display = "block";
		$('yeslogin').style.display = "none"; 
	}
}

function ajaxSubmitMail(Email,ProductsId){
		jq.ajax({
		    url: "http://"+location.host+'/index.php?module=thing&action=nosale',
		    type: 'GET',
		    data:"&Email="+Email+"&ProductId="+ProductsId,
		    timeout: 30000,
		    error: function() {
                alert("System error!");
	        },
		     success: function(data){
		    	if(data){
		    		alert(data);
		    	}else{
		    		$('nologin').style.display = "none";
					$('yeslogin').style.display = "block"; 
		    	}
		    }
		});
}

// tab auto deo
(function( $ ) {
	
var tabs 			= $( '#tab_middle ul.size_tab li' ),
	tabs_str 		= 'size_title'
	contents_str 	= 'size_tab';

var filterArr = ['size_title01'], tabArr = [], contentArr = [];

tabs.each(function() {
	var tabId = $( this ).attr( "id" ),
		
		index = tabId.replace( tabs_str, '' );
	
	var content = $( '#' + contents_str + index );
	
	// No content
	if( !content.length ) {
		$( this ).hide();
	} else {
		
		if( !isFilter( tabId ) ) {
			tabArr.push( $( this ) );
			contentArr.push( content );
			
			$( this )
				// Bind the content data
				.data( 'content', content )
				// Bind the event
				.bind( 'click', function( ev ) { clickTab( this ); } );
			
		} else {
			$( this ).hide();
		}
		
		content.hide();
	}
	
//	console.log( tabId + " : " + index + ", " + content.length );
});

function tab_click( index ) {
	var id = tabs_str + "0" + index;

	var obj = $( '#' + id );

	clickTab( obj );
}

function clickTab( target ) {
	var tab = $( target ), content = tab.data( 'content' );
	
	$.each( tabArr, function() { this.removeClass( "select" ); });
	$.each( contentArr, function() { this.hide(); });
	
	tab.addClass( "select" );
	content.show();
}

function isFilter( tabId ) {
	// Filter
	for( var i = 0; i < filterArr.length; i ++ ) {
		if( filterArr[i] === tabId )
			return true;
	}
	
	return false;
}

// Default show element
var firstElem = tabArr[0];
clickTab( firstElem );

window.tab_click = tab_click;
})( jQuery );