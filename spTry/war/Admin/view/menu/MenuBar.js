Ext.define("Admin.view.menu.MenuBar", {
			extend : "Ext.toolbar.Toolbar",
			alias : "widget.adminmenubar",
			items : [{
						xtype : "searchcombobox",
						emptyText : 'Select a Component...',
						fieldLabel : '<b>Component</b>',
						selectOnFocus: true,
						labelWidth : 80,
						 typeAhead: true,
						 labelAlign:"right",
						 forceSelection : true
						 
					}, {
						text : "<b>Create</b>",

						menu : {
							items : [{
										text : '<b>Bold</b>',
										handler : function() {
											alert("Click")
										}
									}, {
										text : '<b>Bold</b>',
										handler : function() {
											alert("Click")
										}
									}, {
										text : '<b>Bold</b>',
										handler : function() {
											alert("Click")
										}
									}]
						}
					}, "->", {
						text : "<b>Sigout(wan-shan.zhu@hp.com)</b>"
					}]
		});