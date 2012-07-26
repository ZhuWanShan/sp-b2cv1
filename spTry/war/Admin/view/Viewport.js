Ext.define('Admin.view.Viewport', {
			extend : 'Ext.container.Viewport',
			layout : 'border',
			viewConfig : {
				loadMask : true
			},
			initComponent : function() {
				this.items = {
					xtype : 'panel',
					layout : 'border',
					region : "center",
					border : 0,
					dockedItems : [{
								dock : 'top',
								xtype : 'adminmenubar',
								height : 30
							}],
					items : [{
								xtype : "panel",
								region : "center",
								autoScroll : true,
								layout : "fit",
								border : 0,
								items : [{
											xtype : "tabpanel",
											border : 0,
											items : [{
														xtype : "panel",
														title : "xxx",
														closable : true
													}, {
														xtype : "panel",
														title : "xxxx",
														closable : true
													}

											]

										}]

							}, {
								xtype : "tabpanel",
								region : "west",
								width : 600,
								collapsible : true,
								split : true,
								border : 0,
								layout : "fit",
								tabPosition : "bottom",
								id : "leftTab",
								items : [{
											xtype : "userlist"
										}]

							}]

				}

				this.callParent(arguments);
				
			}
		});
