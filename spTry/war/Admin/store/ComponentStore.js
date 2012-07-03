Ext.define('Admin.store.ComponentStore', {
			extend : "Ext.data.Store",
			fields : ['id', 'name'],
			proxy : {
				type : "ajax",
				url : "/Admin/data/Components.json"

			},
			autoLoad : true

		})