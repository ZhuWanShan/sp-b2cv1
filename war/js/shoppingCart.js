/**
 * 
 */
jq(document).ready(function(){
		jq(".cartOptionsDashboard").hide();	
		var showOptionLink = jq(".showCartOptions");
		showOptionLink.each(function(index, el){
			jq(el).mouseenter(function(){
				jq(".cartOptionsDashboard").hide();	
				jq(this).siblings().next("div.cartOptionsDashboard").show("normal")
			});
			jq(el).mouseleave(function(){
				jq(".cartOptionsDashboard").hide();	
			});
		});
});
