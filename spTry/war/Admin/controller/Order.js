Ext.define('Admin.controller.Order', {
			extend : 'Ext.app.Controller',

			init : function() {
			},

			stores : ['User'],

			models : ['User'],

			views : ['order.OrderList', "order.OrderQuery"]

		});