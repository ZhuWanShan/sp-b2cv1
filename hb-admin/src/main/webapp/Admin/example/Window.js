Ext.define('Admin.example.Window', {
   /** @readonly */
    isWindow: true,

    config: {
        title: 'Title Here',

        bottomBar: {
            enabled: true,
            height: 50,
            resizable: false
        }
    },

    constructor: function(config) {
    	this.callParent(config);
    },
    
    statics: {
        instanceCount: 0,
        emptyWindow: function() {
            // 'this' in static methods refer to the class itself
            return new this({title:"Default",bottomBar: {enable : false, height : 0, resizable : false}});
        }
    },

    applyTitle: function(title) {
        if (!Ext.isString(title) || title.length === 0) {
            alert('Error: Title must be a valid non-empty string');
        }
        else {
            return title;
        }
    },

    applyBottomBar: function(bottomBar) {
        if (bottomBar && bottomBar.enabled) {
            if (!this.bottomBar) {
                //return Ext.create('My.own.WindowBottomBar', bottomBar);
            }
            else {
                //this.bottomBar.setConfig(bottomBar);
            }
        }
        return bottomBar;
    }
});