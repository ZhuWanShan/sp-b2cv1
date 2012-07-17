Ext.define('Admin.view.AbstractSearchView', {
			extend : 'Ext.panel.Panel',
			mixins : {
				mask : "Admin.view.Maskable"
			},
			initComponent : function() {
				/*
				 * Ext.apply(this, { items: [ //as above ] });
				 */

				this.callParent(arguments);
				this.on("beforerender", function(panel) {
							console.log("beforerender...........");
						})
				var me = this;
				this.child("gridpanel").getStore().on("beforeload", function() {
							console.log("beforeload...........");
							me.mk("Loading");
						});
				this.child("gridpanel").getStore().on("refresh", function() {
							console.log("refresh...........");
							me.umk();
						});
			}
		});