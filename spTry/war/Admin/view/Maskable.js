Ext.define('Admin.view.Maskable', {
			mk : function(msg) {
				var myMask = new Ext.LoadMask(this, {
							msg : msg
						});
				myMask.show();
				this.loadMask = myMask;
			},
			umk : function() {
				this.loadMask.destroy();
			}
		});