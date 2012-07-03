Ext.application({
			name : "Admin",
			appFolder : "/Admin",
			autoCreateViewport : true,

			controllers : ["UserController","MenuBarController"],
			stores : ['UserStore',"ComponentStore"],
			launch : function() {
				
			}
		});