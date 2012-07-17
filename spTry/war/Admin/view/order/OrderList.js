Ext.define('Admin.view.order.OrderList', {
			extend : 'Ext.panel.Panel',
			alias : ['widget.orderlist'],
			border : 0,
			layout : {
				type : 'vbox',
				align : 'stretch'
			},
			defaults : {
				border : false
			},
			items : [{
						xtype : "orderquery",
						height : "auto",
						border : 1
					}, {
						xtype : "gridpanel",
						store : "User",
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
									store : "User",
									dock : 'bottom',
									displayInfo : true
								}]
					}],

			title : 'Users',
			
			beforerender : function (me, arg){
				alert("asdasdas");
				return true
			}

		});