Ext.define('Admin.controller.UserController', {
			extend : 'Ext.app.Controller',

			init : function() {
				this.control({
							'userlist button[action=add]' : {
								click : function() {
								}
							}
						});
			},

			stores : ['UserStore'],

			models : ['User'],

			views : ['user.UserList', "user.UserQuery"]

		});