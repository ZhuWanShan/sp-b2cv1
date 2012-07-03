Ext.define("Admin.view.user.UserQuery", {
			extend : "Ext.form.Panel",
			alias : "widget.userquery",
			layout : {
				type : 'vbox',
				align : 'stretch'
			},
			bodyPadding : 10,
			fieldDefaults : {
				labelAlign : 'top',
				labelWidth : 100,
				labelStyle : 'font-weight:bold'
			},
			fieldDefaults : {
				labelAlign : 'top',
				msgTarget : 'side'
			},
			items : [{
						xtype : 'fieldset',
						title : 'User Info',
						combineErrors : true,
						msgTarget : 'side',
						layout : 'hbox',
						defaults : {
							flex : 1,
							hideLabel : true
						},
						items : [{
									xtype : 'textfield',
									name : 'name',
									fieldLabel : 'Name',
									emptyText : "User name",
									margin : '0 5 0 0',
									allowBlank : false
								}, {
									xtype : 'textfield',
									name : 'email',
									emptyText : "User email",
									fieldLabel : 'Email',
									allowBlank : false
								}]
					}, {
						xtype : 'fieldset',
						title : 'Create Date Range',
						combineErrors : true,
						msgTarget : 'side',
						layout : 'hbox',
						collapsible : true,
						collapsed : true,
						defaults : {
							flex : 1,
							hideLabel : true
						},
						items : [{
									xtype : 'datefield',
									name : 'startDate',
									fieldLabel : 'Start',
									margin : '0 5 0 0',
									allowBlank : false
								}, {
									xtype : 'datefield',
									name : 'endDate',
									fieldLabel : 'End',
									allowBlank : false
								}]
					}],

			buttons : [{
						text : 'Search',
						width : 50,
						height : 20
					}]
		});