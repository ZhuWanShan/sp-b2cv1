Ext.define('Admin.view.user.UserList', {
			extend : 'Ext.panel.Panel',
			alias : ['widget.userlist'],
			border : 0,
			layout : {
				type : 'vbox',
				align : 'stretch'
			},
			defaults : {
				border : false
			},
			items : [{
						xtype : "userquery",
						height : "auto",
						border : 1
					}, {
						xtype : "gridpanel",
						store : "UserStore",
						flex : 4,
						border : "1 0 0 0",
						margin : "5 0 0 0",
						columns : [{
									header : "Name",
									dataIndex : "name"
								}, {
									header : "Email",
									dataIndex : "email"
								}, {
									header : "Country",
									dataIndex : "countryP"
								}, {
									header : "Create Date",
									dataIndex : "createDate",
									renderer : function() {
										return "xxx"
									}
								}],
						dockedItems : [{
									xtype : "pagingtoolbar",
									store : "UserStore",
									dock : 'bottom',
									displayInfo : true
								}]
					}],

			title : 'Users'

		});