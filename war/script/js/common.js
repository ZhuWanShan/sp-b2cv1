/*(function(jq){
		jq.fn.ajLoad = function(){
			var el = $(this);
			if(el && el.length > 0 ){
				el.next(".ajax_load").remove();
				el.after("<img src='/style/image/ajax_loader.gif' class='ajax_load'>");
			}
		};
	}
)(jq)

(
	function(jq){
		jq.fn.ajUnload = function(){
			var el = $(this);
			if(el && el.length > 0 ){
				el.next(".ajax_load").remove();
			}
		};
	}
)(jq)*/

jq("#header_top").ready(function() {
	jq(".user_menu>ul>li").mouseenter(function(){
		jq(this).removeClass("current");
		jq(this).addClass("current");
		jq(this).children(".user_menu_hidd").show();
	});
	
	jq(".user_menu>ul>li").mouseleave(function(){
		jq(this).removeClass("current");
		jq(this).children(".user_menu_hidd").hide();
	});
});

jq("#main_menu").ready(function() {
	jq(".main_menu>ul>li").each(function(index,data){
		var left = jq(data).offset().left;
		var width = jq(data).width();
		var leftMargin = jq("#main_menu").offset().left;
		if((left - leftMargin)  > 516){
			jq(data).children(".sub_menu").offset({ top: 40, left: - (516 - width + 90) });
			
		}else if((left - leftMargin)  > 456){
			jq(data).children(".sub_menu").offset({ top: 40, left: - (456 - width + 90) });
		}
		
	});
	
	jq(".main_menu>ul>li").mouseenter(function(){
		jq(this).removeClass("nav_on");
		jq(this).addClass("nav_on");
		
		jq(this).children(".sub_menu").show();
		
	});
	
	jq(".main_menu>ul>li").mouseleave(function(){
		jq(this).removeClass("nav_on");
		jq(this).children(".sub_menu").hide();
	});
});







