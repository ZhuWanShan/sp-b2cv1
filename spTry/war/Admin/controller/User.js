Ext.define('Admin.controller.User', {
			extend : 'Ext.app.Controller',
			init : function() {
				var me = this;
				this.control({
							'userlist userquery button[action=search]' : {
								click : function(btn) {
									var store = me.getUserStore();
									var queryForm = btn.up("userquery");
									
									store.getProxy().extraParams = queryForm.getForm().getFieldValues(false);

									store.loadPage(1);
								}
							}

						});

			},

			stores : ['User'],
			models : ['User'],
			views : ['user.UserList', "user.UserQuery"]

		});