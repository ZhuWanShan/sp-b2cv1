Ext.define("Admin.view.SearchComboBox", {
			alias : "widget.searchcombobox",
			extend : "Ext.form.ComboBox",
			queryMode : 'local',
			displayField : 'name',
			valueField : 'id',
			store : "ComponentStore"
		});