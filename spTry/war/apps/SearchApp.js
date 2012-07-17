 /*Ext.apply(Ext.Element.prototype, {
        mask : function(msg, msgCls,maskCls){
            if(this.getStyle("position") == "static"){
                this.setStyle("position", "relative");
            }
            if(this._maskMsg){
                this._maskMsg.remove();
            }
            if(this._mask){
                this._mask.remove();
            }

            this._mask = Ext.DomHelper.append(this.dom, {cls:maskCls || "ext-el-mask"}, true);

            this.addClass("x-masked");

            this._mask.setDisplayed(true);

            if(typeof msg == 'string'){
                // *** FIX : create element hidden
                this._maskMsg = Ext.DomHelper.append(this.dom, {style:"visibility:hidden",cls:"ext-el-mask-msg", cn:{tag:'div'}}, true);
                var mm = this._maskMsg;
                mm.dom.className = msgCls ? "ext-el-mask-msg " + msgCls : "ext-el-mask-msg";
                mm.dom.firstChild.innerHTML = msg;
                (function(){
                    mm.setDisplayed(true);
                    mm.center(this);
                    mm.setVisible(true);
                }).defer(20,this); // *** FIX : defer things a bit, so the mask sizes over the el properly before centering
            }
            if(Ext.isIE && !(Ext.isIE7 && Ext.isStrict) && this.getStyle('height') == 'auto'){ // ie will not expand full height automatically
                   this._mask.setSize(this.dom.clientWidth, this.getHeight());
            }
            return this._mask;
        }
});*/
Ext.tip.QuickTipManager.init();
Ext.application({
			name : "Admin",
			appFolder : "/Admin",
			autoCreateViewport : true,

			controllers : ["User","MenuBar", "Order"],
			
			stores : ['User',"Components"],
			launch : function() {
			
			}
		});