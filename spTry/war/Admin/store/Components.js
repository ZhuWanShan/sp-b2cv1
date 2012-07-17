Ext.define('Admin.store.Components', {
			extend : "Ext.data.Store",
			fields : ['id', 'name'],
			proxy : {
				type : "ajax",
				url : "/Admin/data/Components.json"

			},
			autoLoad : true

		})