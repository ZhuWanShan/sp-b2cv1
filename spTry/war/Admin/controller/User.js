Ext.define('Admin.controller.User', {
			extend : 'Ext.app.Controller',
			init : function() {
				var me = this;
				this.control({
							'userlist userquery button[action=search]' : {
								click : function() {
									//me.getView("userlist").mask();
									me.getUserStore().loadPage(1);
									//this.up("userlist").mask();
									
								}
							}

						});

			},

			stores : ['User'],
			models : ['User'],
			views : ['user.UserList', "user.UserQuery"]

		});