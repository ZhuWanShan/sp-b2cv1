Ext.define('Admin.controller.MenuBarController', {
			extend : 'Ext.app.Controller',

			init : function() {
				this.control({
							'adminmenubar #searchUser' : {
								click : function() {
									var leftTab = Ext.getCmp("leftTab");
									leftTab.add({
												title : "Users",
												xtype : "userlist",
												closable : true
											});

								}
							}
						});
			},

			views : ['menu.MenuBar',"SearchComboBox"]

		});