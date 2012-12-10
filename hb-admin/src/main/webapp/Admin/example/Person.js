Ext.define('Admin.example.Person',{
	//default user
	name : "wan-shan.zhu",
	//constructor
	constructor: function(name) {
        if (name) {
            this.name = name;
        }
    },

    //method
    eat: function(foodType) {
        alert(this.name + " is eating: " + foodType);
    }
	
}); 