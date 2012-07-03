Ext.define('Admin.view.AbstractSearchView' ,{
//	requires: ['Ext.grid.View'],
    extend: 'Ext.grid.Panel',
    
    
    
//    config: {
//    	store : "unknow",
//       
//    },
//    
    constructor : function(config){
    	this.callParent(config);
    },

    
    initComponent : function(){
    	this.callParent();
//    	alert("asdasd");
//    	alert( this.getStore());
    }

});