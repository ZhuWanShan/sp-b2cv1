(function($){
	define(
		function() {
			var changepassword = {};
			
			changepassword.change = function(oldPassword, newPassword, callBack){
				
				if(callBack){
					$.ajax({
						dataType : "json",
						type: "POST",
						url : "/ac/profile/json/changepassword",
						data : {oldPassword: oldPassword, newPassword: newPassword},
						success : callBack
					});
				}
			};
			
	        return changepassword;
	    }
	);
})(jQuery);
