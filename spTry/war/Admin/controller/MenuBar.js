Ext.define('Admin.controller.MenuBar', {
			extend : 'Ext.app.Controller',
			init : function() {
				this.control({
							'adminmenubar searchcombobox' : {
								select : function(searchBox , records) {
									var leftTab = Ext.getCmp("leftTab");
									
									Ext.Array.each(records , function (record) {
										
										var targetXype = "widget." + record.get("id");
										
										var targetTitle  =  record.get("name");
										
										var comp = leftTab.child(record.get("id"))
										
										if(null == comp){
											comp = Ext.createByAlias(targetXype,{
												title : targetTitle,
												closable : true
											})
											leftTab.add(comp);
										}
										
										leftTab.setActiveTab(comp);
										
									});

								}
							}
						});
			},

			views : ['menu.MenuBar',"SearchComboBox"]

		});