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