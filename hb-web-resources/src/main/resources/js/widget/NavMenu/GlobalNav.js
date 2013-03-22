(function($) {
	var methods = { on: $.fn.on, bind: $.fn.bind};
	
    $.each(methods, function(k){
        $.fn[k] = function () {
            var args = [].slice.call(arguments),
                delay = args.pop(),
                fn = args.pop(),
                timer;

            args.push(function () {
                var self = this,
                arg = arguments;
                clearTimeout(timer);
                timer = setTimeout(function(){
                    fn.apply(self, [].slice.call(arg));
                }, delay);
            });

            return methods[k].apply(this, isNaN(delay) ? arguments : args);
        };
    });


	$.widget("custom.NavMenu", {

		options : {

			// properties
			headerOptsMin : 4,
			navBarMin : 30,
			headerOptsMax : 21,
			navBarMax : 50,
			subTabMin : 1,
			subTabMax : 39,
			collapse : false,

			// callbacks
			preCollapse : null,
			postCollapse : null,
			PreExpand : null,
			PostExpand : null
		},

		// the constructor
		_create : function() {
			var self = this;
			this.headerOpts = $(this.element).find("#top-header-option");
			this.navBar = $(this.element).find("#top-header-nav");
			this.logo = $(this.element).find("#top-header-logo img");
			this.topTab = $(this.element).find("#top-header-menu");
			this.subTab = $(this.element).find("#top-header-nav-content .menu-subtabs");
			this.tabContent = $(this.element).find("#top-header-nav-content .menu-subtabs-content");
			this.closer =  $(this.element).find("#top-header-nav-close");
			this.collapseY = this.options.headerOptsMax + this.options.subTabMax + 10;
			this.subTab.height(this.options.subTabMin);
			
			this.timer;
			
			
			$(document).on('scroll', function(e) {
				self._refresh();
			});
			
			this._on($(document), {
				"click" : function(){
					this._refresh();
				}				
 			})
			
			this._on(this.navBar, {
				
				"mouseenter" : function (e, ui){
					this.collapse(false);
				}
				
			}, 250)
			
			this._on(this.closer, {
				"click" : function(e){
					this._hideAllSubTabs();
				}
			});
			
			this._on(this.element, {
				
				"mouseleave" : function (e){
					var top = $(document).scrollTop();
					if(top > this.collapseY){
						this.collapse(true);
					}
				}
				
			})
			
			this.topTab.find("li").each(function(index, el){
				self._on($(el),{
					"mouseover" : function(e){
						self.topTab.find("li").removeClass("active");
						self.subTab.children().hide();
						$(el).addClass("active");
						self.subTab.find("ul:eq("+index+")").show();
						if(self.subTab.find("ul:eq("+index+")").length > 0){
							self.subTab.height(self.options.subTabMax);							
						}else{							
							self.subTab.height(self.options.subTabMin);
						}
					}
				});
			});
			
			this.subTab.find("ul li a").each(function(index, el){		
				self._on($(el),{
					"mouseover" : function(e){
						self.closer.hide();
						self.subTab.find("ul li").removeClass("active");
						$(el).parent("li").addClass("active");
						self.tabContent.children().hide();
						var currentContent = self.tabContent.find("div.menu-subtabs-content-item:eq("+index+")");
						if(currentContent.length > 0){
							currentContent.show();
							self.tabContent.show();
							self.closer.show();
						}else{
							self.tabContent.hide();
						}
						
					}
				});
			});
			
			this.tabContent.find(".menu-subtabs-content-item ul li a").each(function(index, el){
				
				self._on($(el),{
					"mouseover" : function(e){
						self.tabContent.find(".menu-subtabs-content-item ul li").removeClass("active");
						self.tabContent.find(".menu-subtabs-content-item ul li a").removeClass("active");
						$(el).parent("li").addClass("active");
						$(el).addClass("active");
					}
				});			
				
			});
			
			
			
			this._refresh();
		},
		
		_hideAllSubTabs : function(){
			this.subTab.find("ul li").removeClass("active");
			this.topTab.find("li").removeClass("active");
			this.tabContent.find(".menu-subtabs-content-item ul li").removeClass("active");
			this.tabContent.find(".menu-subtabs-content-item ul li a").removeClass("active");
			this.subTab.children().hide();
			this.subTab.height(this.options.subTabMin);
			this.tabContent.children().hide();
			this.tabContent.hide();
			this.closer.hide();
		},

		collapse : function(isCollapse) {
			var self = this;
			
			clearTimeout(this.timer);
			
			this.timer = setTimeout(function(){
			
				self._hideAllSubTabs();
				if (isCollapse) {
					//$(this.element).addClass("fixed");
					self.headerOpts.children().hide(1, function(){
						self.headerOpts.animate({
							height : 4
						}, 400);
					});
					
					self.navBar.children(":not('#top-header-logo')").hide(1, function(){
					
						self.logo.animate({
								height : 20
						}, 400);
								
						self.navBar.animate({
							height : 30
						}, 400);
						
					});
					
					
					
					
				} else {			
					//$(this.element).removeClass("fixed");
					
					self.headerOpts.animate({
						height : 21
					}, 50);
					
					self.logo.animate({
						height : 40
					}, 50, function(){
						self.headerOpts.children().show({duration : 300});
					});
					
					self.navBar.animate({
						height : 50
					}, 50, function(){
						self.navBar.children().show({duration : 300});
					});
					
					
				}
			
			},250);
			 

			
			
		},

		// called when created, and later when changing options
		_refresh : function() {
			var top = $(document).scrollTop();
			if(top > this.collapseY){
				this.collapse(true);
			}else{
				this.collapse(false);
			}
		},

		// events bound via _on are removed automatically
		// revert other modifications here
		_destroy : function() {
		}

	});

	$("#top-header").ready(function() {
		$("#top-header").NavMenu();
	});

})(jQuery)