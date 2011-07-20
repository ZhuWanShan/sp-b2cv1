var sPop = null;
var postSubmited = false;
var userAgent = navigator.userAgent.toLowerCase();
var is_webtv = userAgent.indexOf('webtv') != -1;
var is_kon = userAgent.indexOf('konqueror') != -1;
var is_mac = userAgent.indexOf('mac') != -1;
var is_saf = userAgent.indexOf('applewebkit') != -1 || navigator.vendor == 'Apple Computer, Inc.';
var is_opera = userAgent.indexOf('opera') != -1 && opera.version();
var is_moz = (navigator.product == 'Gecko' && !is_saf) && userAgent.substr(userAgent.indexOf('firefox') + 8, 3);
var is_ns = userAgent.indexOf('compatible') == -1 && userAgent.indexOf('mozilla') != -1 && !is_opera && !is_webtv && !is_saf;
var is_ie = (userAgent.indexOf('msie') != -1 && !is_opera && !is_saf && !is_webtv) && userAgent.substr(userAgent.indexOf('msie') + 5, 3);
var Image_url;
var xml_http_building_link = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
var xml_http_sending = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
var xml_http_loading = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
var xml_http_load_failed = '<img src="' + Image_url + 'check_error.gif" width="15" height="15">';
var xml_http_data_in_processed = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';

function $(id) {
	return document.getElementById(id);
}

//new js
function TS_menuover(menuid) {
	document.getElementById(menuid).className='TS_menu_now';
}

function TS_menuout(menuid) {
	document.getElementById(menuid).className='';
}

TS_menu_clock=setTimeout("1+1",10);
function TS_menu() {
	menuobj=document.getElementById('TS_menuD');
	menuobj2=document.getElementById('TS_menu');
	menuobj.className='TS_menu';
	menuobj.onmouseout = function() {
		hideTS_menu();
	};
	menuobj.onmouseover = function() {
		clearTimeout(TS_menu_clock);
	}
}

function hideTS_menu() {
	TS_menu_clock=setTimeout("document.getElementById('TS_menuD').className='TS_menu TS_menu_hidd';",900);
}

var tabN = '';
var tabNdiv = '';
function homeTab1(tabid) {
	tabiddiv=tabid+'_box';
	if (tabN != tabid && tabN != '') {
		document.getElementById(tabid).className='link_now';
		document.getElementById(tabN).className='';
		document.getElementById(tabiddiv).style.display='block';
		document.getElementById(tabNdiv).style.display='none';
	} else {
		document.getElementById(tabid).className='link_now';
		document.getElementById(tabiddiv).style.display='block';
	}
	tabN = tabid;
	tabNdiv = tabiddiv;
}

var tabN2 = '';
var tabNdiv2 = '';
function homeTab2(tabid2) {
	tabiddiv2=tabid2+'_box';
	if (tabN2 != tabid2 && tabN2 != '') {
		document.getElementById(tabid2).className='link_now';
		document.getElementById(tabN2).className='';
		document.getElementById(tabiddiv2).style.display='block';
		document.getElementById(tabNdiv2).style.display='none';
	} else {
		document.getElementById(tabid2).className='link_now';
		document.getElementById(tabiddiv2).style.display='block';
	}
	tabN2 = tabid2;
	tabNdiv2 = tabiddiv2;
}

var indextabid='';
var indextabfirst='';
function menuShow(tabid) {
	if (indextabfirst !=tabid) {
		indextabbox = tabid +'_box';
		indextabclass = tabid + '_2';
		document.getElementById(tabid).className= indextabclass ;
		document.getElementById(indextabbox).style.display='block';
		if (indextabfirst !='') {
			document.getElementById(indextabfirst).className= indextabfirst ;
			document.getElementById(indextabboxfrist).style.display='none';
		}
		indextabfirst=tabid;
		indextabboxfrist= indextabbox;
	}
}

//结束

function isUndefined(variable) {//判断变量是否存在
	return typeof variable == 'undefined' ? true : false;
}

function redirect(url) {
	window.location.replace(url);
}

function setMenuPosition(showid, offset ,w,y,menuobj) {//层定位
	var showobj = $(showid);
	if(isUndefined(menuobj)) {
		menuobj = $(showid + '_menu');
	} else
		var menuobj = $(menuobj);
	if(isUndefined(offset))
		offset = 0;
	if(isUndefined(w))
		w = 0;
	if(isUndefined(y))
		y = 0;
	if(showobj) {
		showobj.pos = fetchOffset(showobj);
		showobj.X = showobj.pos['left']+w;
		showobj.Y = showobj.pos['top']+y;
		showobj.w = showobj.offsetWidth;
		showobj.h = showobj.offsetHeight;
		menuobj.w = menuobj.offsetWidth;
		menuobj.h = menuobj.offsetHeight;
		menuobj.style.left = showobj.X + 'px';
		menuobj.style.top = offset == 1 ? showobj.Y + 'px' : (offset == 2 || ((showobj.Y + showobj.h + menuobj.h > document.documentElement.scrollTop + document.documentElement.clientHeight) && (showobj.Y - menuobj.h >= 0)) ? (showobj.Y - menuobj.h) + 'px' : showobj.Y + showobj.h + 'px');
		if(menuobj.style.clip && !is_opera) {
			menuobj.style.clip = 'rect(auto, auto, auto, auto)';
		}
	}
}

function fetchOffset(obj) {
	var left_offset = obj.offsetLeft;
	var top_offset = obj.offsetTop;
	return {
		'left' : left_offset,
		'top' : top_offset
	};
}

function setMenuPosition2(showid, offset ,w,y,menuobj) {//层定位
	var showobj = $(showid);
	if(isUndefined(menuobj)) {
		menuobj = $(showid + '_menu');
	} else
		var menuobj = $(menuobj);
	if(isUndefined(offset))
		offset = 0;
	if(isUndefined(w))
		w = 0;
	if(isUndefined(y))
		y = 0;
	if(showobj) {
		showobj.pos = fetchOffset2(showobj);
		showobj.X = showobj.pos['left']+w;
		showobj.Y = showobj.pos['top']+y;
		showobj.w = showobj.offsetWidth;
		showobj.h = showobj.offsetHeight;

		menuobj.w = menuobj.offsetWidth;
		menuobj.h = menuobj.offsetHeight;
		menuobj.style.left = showobj.X + 'px';
		menuobj.style.top = offset == 1 ? showobj.Y + 'px' : (offset == 2 || ((showobj.Y + showobj.h + menuobj.h > document.documentElement.scrollTop + document.documentElement.clientHeight) && (showobj.Y - menuobj.h >= 0)) ? (showobj.Y - menuobj.h) + 'px' : showobj.Y + showobj.h + 'px');
		if(menuobj.style.clip && !is_opera) {
			menuobj.style.clip = 'rect(auto, auto, auto, auto)';
		}
	}
}

function fetchOffset2(obj) {
	var left_offset = obj.offsetLeft;
	var top_offset = obj.offsetTop;
	while((obj = obj.offsetParent) != null) {
		left_offset += obj.offsetLeft;
		top_offset += obj.offsetTop;
	}
	return {
		'left' : left_offset,
		'top' : top_offset
	};
}

/*ajax开始*/
var iswarning='';
var Charges='';
var check_img='';
function ajaxresponse(objname, data ,http,jsname,Charges,css,succ) {//ajax取值并判断
	var x = new Ajax('XML', objname);
	if(isUndefined(http))
		http = '';
	x.get(http+'?action=ajax&' + data, function(s) {
		var obj = $(objname);
		check_img='check_right.gif';
		iswarning=s.substr(0, 1);
		if( s.substr(0, 1) != '0') {
			obj.style.display = '';
			if(css) {
				if(css==1)
					obj.className = 'message_yes';
				else
					obj.className = css + ' message_yes';
				obj.innerHTML ='<img src="' + Image_url + check_img + '" width="13" height="13"> ' + s.substr(1);
			} else
				obj.innerHTML = s.substr(1);
			if(typeof(succ)=="function") {
				succ.call(obj,s);
			}
		} else {
			warning(obj, s.substr(1),css);
		}
		if(jsname)
			ajax_js(iswarning,jsname,Charges);
	});
}

function warning(obj, msg ,css) {//返回值错误提示
	if( msg.substr(0, 1) == '0') {
		check_img='check_error.gif';
		if(css) {
			if(css==1)
				obj.className = 'message_error';
			else
				obj.className = css + ' message_error';
		}
	} else {
		check_img='check_warn.gif';
		if(css) {
			if(css==1)
				obj.className = 'message_mark';
			else
				obj.className = css + ' message_mark';
		}
	}
	obj.innerHTML ='<img src="' + Image_url + check_img + '" width="13" height="13"> ' + msg.substr(1);
	obj.style.display = '';
}

function ajax_js(iswarning, jsname,Charges) {//数组包括判断
	switch ( jsname ) {
		case 'gm':
			if(iswarning==0)
				$('gm').value='no';
			else
				$('gm').value='yes';
			return false;
			break;
		case 'ycfavorite':
			setTimeout("$('favorite').style.display = 'none';", 3000);
			break;
		case 'Charges':
			ShippingCharges(Charges);
			break;
	}
}

/*ajax结束*/
function arraypush(a, value) {//设置一个新值到指定数组的最后一位。数组长度自动加一。
	a[a.length] = value;
	return a.length;
}

function in_array(needle, haystack) {//数组包括判断
	if(typeof needle == 'string') {
		for(var i in haystack) {
			if(haystack[i] == needle) {
				return true;
			}
		}
	}
	return false;
}

function getcook(name) {//cookie读取
	var cookie_start = document.cookie.indexOf(name);
	var cookie_end = document.cookie.indexOf(";", cookie_start);
	return cookie_start == -1 ? '' : unescape(document.cookie.substring(cookie_start + name.length + 1, (cookie_end > cookie_start ? cookie_end : document.cookie.length)));
}

function setcook(cookieName, cookieValue, seconds, path, domain, secure) {//cookie写入
	var expires = new Date();
	expires.setTime(expires.getTime() + seconds);
	document.cookie = escape(cookieName) + '=' + escape(cookieValue)
	+ (expires ? '; expires=' + expires.toGMTString() : '')
	+ (path ? '; path=' + path : 'milanoo.com/')
	+ (domain ? '; domain=' + domain : '')
	+ (secure ? '; secure' : '');
}

function Member_State(StateId,ShopCart,Charges) {
	xml_http_building_link = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_sending = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_loading = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_load_failed = '<img src="' + Image_url + 'check_error.gif" width="15" height="15">';
	xml_http_data_in_processed = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	if(StateId==lastStateId)
		return;
	lastStateId = StateId;
	ajaxresponse('shipping', 'menu=shipping&act=' +  (is_ie && document.charset == 'utf-8' ? encodeURIComponent(ShopCart) : ShopCart) + '&stateis=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(StateId) : StateId) + '&' + Math.random(),'/index.php',Charges,ShopCart);
}

function Member_State2(StateId,ShopCart,Charges) {
	$('nopaypal').style.display='';
	$('paypay').style.display='none';
	xml_http_building_link = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_sending = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_loading = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_load_failed = '<img src="' + Image_url + 'check_error.gif" width="15" height="15">';
	xml_http_data_in_processed = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	if(StateId==lastStateId)
		return;
	lastStateId = StateId;
	ajaxresponse('shipping', 'menu=shipping&act=' +  (is_ie && document.charset == 'utf-8' ? encodeURIComponent(ShopCart) : ShopCart) + '&stateis=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(StateId) : StateId) + '&' + Math.random(),'/index.php',Charges,ShopCart,'', function(s) {
		$('nopaypal').style.display='none';
		$('paypay').style.display='';
	});
}

function item_State(StateId,item) {
	xml_http_building_link = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_sending = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_loading = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	xml_http_load_failed = '<img src="' + Image_url + 'check_error.gif" width="15" height="15">';
	xml_http_data_in_processed = '<img src="' + Image_url + 'check_loading.gif" width="15" height="15">';
	if(StateId==lastStateId)
		return;
	lastStateId = StateId;
	ajaxresponse('shipping', 'menu=itemshipping&item=' +  (is_ie && document.charset == 'utf-8' ? encodeURIComponent(item) : item) + '&stateis=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(StateId) : StateId) + '&' + Math.random(),'/index.php','css');
}

function order_email(email_coon) {
	//var email_coon = $('email').value;
	if(email_coon == lastemail)
		return;
	lastemail = email_coon;
	var unlen = email_coon.replace(/[^\x00-\xff]/g, "**").length;
	if(unlen > 4 ) {
		ajaxresponse('orderemail', 'menu=orderemail&name=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(email_coon) : email_coon) + '&' + Math.random(),'/index.php','','',1);
	}
}

function order_password(pass_coon,email_coon) {
	//var email_coon = $('email').value;
	if(pass_coon == lastpass)
		return;
	lastpass = pass_coon;
	var unlen = pass_coon.replace(/[^\x00-\xff]/g, "**").length;
	if(unlen >= 0 ) {
		ajaxresponse('orderpassword', 'menu=orderpassword&pass=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(pass_coon) : pass_coon) + '&' + Math.random() + '&email=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(email_coon) : email_coon),'/index.php','','',1);
	}
}

var indextabid='';
var indextabfirst='';
function menuShow(tabid) {
	if (indextabfirst !=tabid) {
		indextabbox = tabid +'_box';
		indextabclass = tabid + '_2';
		document.getElementById(tabid).className= indextabclass ;
		document.getElementById(indextabbox).style.display='block';
		if (indextabfirst !='') {
			document.getElementById(indextabfirst).className= indextabfirst ;
			document.getElementById(indextabboxfrist).style.display='none';
		}
		indextabfirst=tabid;
		indextabboxfrist= indextabbox;
	}
}

var d = new Date();
var Time_zone = 0 - d.getTimezoneOffset() / 60;
setcook('Timezone', Time_zone ,'5184000');
function pageGo(value) {
	var custompage = document.getElementsByName('custompage');
	for(var i = 0 ;i<custompage.length;i++) {
		custompage[i].value=value;
	}
}

function HeadMenu(id) {
	var Menu=$(id);
	var MenuId=$(id+'_coon');
	Menu.onmouseout = function() {
		MenuId.style.display='none';
		Menu.className='';
	};
	Menu.onmouseover = function() {
		MenuId.style.display='block';
		Menu.className='link_now';
	};
}

//DIV定位函数
function getAbsolutePosition(obj) {
	position = new Object();
	position.x = 0;
	position.y = 0;
	var tempobj = obj;
	while(tempobj!=null && tempobj!=document.body) {
		//if(window.navigator.userAgent.indexOf("MSIE")!=-1){
		//  position.x += tempobj.offsetLeft;
		//  position.y += tempobj.offsetTop;
		//}
		//else if(window.navigator.userAgent.indexOf("Firefox")!=-1){
		position.x += tempobj.offsetLeft;
		position.y += tempobj.offsetTop;
		//}
		tempobj = tempobj.offsetParent;
	}
	return position;
}

function get_request(reqURL,process,oid,obj) {
	var xmlHttp = false;//开始初始化XMLHttpRequest对象
	if(window.XMLHttpRequest) { //Mozilla 浏览器
		xmlHttp = new XMLHttpRequest();
		if(xmlHttp.overrideMimeType) {//设置MiME类别
			xmlHttp.overrideMimeType('text/xml');
		}
	} else if (window.ActiveXObject) { // IE浏览器
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
			}
		}
	}
	if(!xmlHttp) { // 异常，创建对象实例失败
		alert("不能创建XMLHttpRequest对象实例.");
		return false;
	}
	xmlHttp.open('GET',reqURL+"&rand="+Math.random(),true);
	xmlHttp.onreadystatechange = function handleStateChange() {
		if(xmlHttp.readyState == 2) {
			//loading();
		}
		if(xmlHttp.readyState == 4) {
			if(xmlHttp.status == 200) {
				//loading();
				//if(xmlHttp.responseText){
				process(xmlHttp.responseText,oid,obj);
				//}
			}
		}
	};
	xmlHttp.send(null);
}

function getEntryData(value,id) {
	$(id).innerHTML=value;
	showEntryIdDiv(id,true);
}

function showEntryIdDiv(id,flag) {
	if(flag == true) {
		$(id).style.display = "";
	} else {
		$(id).style.display = "none";
	}
}

function changeSelect(evt,target,row) {
	var flag = false;

	var rowsArray = $(row).rows;
	var len = rowsArray.length-1;

	for(var i=0;i<len;i++) {
		if(rowsArray[i].className == 'onmouseover') {
			switch(evt.keyCode) {
				case 38 :
					if(i-1>=0) {
						rowsArray[i-1].className = 'onmouseover';
						rowsArray[i].className = 'onmouseout';
						$(target).value=$(target+ parseInt(i-1)).value;
						flag = true;
					}
					break;
				case 40 :
					if(i+1<=len-1) {
						rowsArray[i+1].className = 'onmouseover';
						rowsArray[i].className = 'onmouseout';
						$(target).value=$(target+ parseInt(i+1)).value;
						flag = true;
					} else if(i+1>len-1) {
						rowsArray[i].className = 'onmouseout';
						$(target).value=$(target+ i).value;
						flag = true;
					}
					break;
			}
			break;
		}
	}
	if(flag == false && len >= 1 && evt.keyCode == 40) {
		rowsArray[0].className = 'onmouseover';
		$(target).value=$(target+ 0).value;
	} else if(flag == false && len >= 1 && evt.keyCode == 38) {
		rowsArray[len-1].className = 'onmouseover';
		rowsArray[0].className = 'onmouseout';
		$(target).value=$(target+ parseInt(len-1)).value;
	}

	return (evt.keyCode == 38 || evt.keyCode == 40) && len>0 ? true : false;
}

function startmarquee(lh,speed,delay,index) {
	var t;
	var p=false;
	var o=document.getElementById("marqueebox"+index);
	o.innerHTML+=o.innerHTML;
	o.onmouseover= function() {
		p=true
	};
	o.onmouseout= function() {
		p=false
	};
	o.scrollTop = 0;
	function start() {
		t=setInterval(scrolling,speed);
		if(!p)
			o.scrollTop += 2;
	}

	function scrolling() {
		if(o.scrollTop%lh!=0) {
			o.scrollTop += 2;
			if(o.scrollTop>=o.scrollHeight/2)
				o.scrollTop = 0;
		} else {
			clearInterval(t);
			setTimeout(start,delay);
		}
	}

	setTimeout(start,delay);
}

//将带html特殊符号标记的转换为正常文本
String.prototype.htmlToStr= function() {
	var str=this.replace('&#039;',"'");
	return str;
};
String.prototype.Right= function(a) {
	if(isNaN(a)||a==null) {
		a=this.length
	} else {
		if(parseInt(a)<0||parseInt(a)>this.length) {
			a=this.length
		}
	}
	return this.substring(this.length-a,this.length)
};
if(typeof(jQuery)!='undefined') {
	(function($) {

		$.fn.bgiframe=($.browser.msie&&/msie 6\.0/i.test(navigator.userAgent)? function(s) {
				s=$.extend({
					top:'auto',
					left:'auto',
					width:'auto',
					height:'auto',
					opacity:true,
					src:'javascript:false;'
				},s);
				var a='<iframe class="bgiframe"frameborder="0"tabindex="-1"src="'+s.src+'"'+'style="display:block;position:absolute;z-index:-1;'+(s.opacity!==false?'filter:Alpha(Opacity=\'0\');':'')+'top:'+(s.top=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderTopWidth)||0)*-1)+\'px\')':prop(s.top))+';'+'left:'+(s.left=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderLeftWidth)||0)*-1)+\'px\')':prop(s.left))+';'+'width:'+(s.width=='auto'?'expression(this.parentNode.offsetWidth+\'px\')':prop(s.width))+';'+'height:'+(s.height=='auto'?'expression(this.parentNode.offsetHeight+\'px\')':prop(s.height))+';'+'"/>';
				return this.each( function() {
					if($(this).children('iframe.bgiframe').length===0)
						this.insertBefore(document.createElement(a),this.firstChild)
				})
			}: function() {
				return this
			});
		$.fn.bgIframe=$.fn.bgiframe;
		function prop(n) {
			return n&&n.constructor===Number?n+'px':n
		};

		$.fn.w_tab= function(m) {
			if(typeof(m)=="number") {
				return this.each( function() {
					$(this).children($(this).data('wtab_child')).eq(m).triggerHandler("click")
				})
			} else {
				var m=$.extend({},$.fn.w_tab.defaults,m);
				this.data('wtab_child',m.child);
				return this.each( function() {
					if(m.acdiv) {
						if(!m.divaim) {
							return
						}
					}
					var k="",oldei=-1,sib=Array(),t_film,$this=$(this);
					var l=$this.children(m.child);
					l.each( function() {
						var a=$(this).attr('aim').split(' ');
						sib.push(a)
					});
					for(var i=0;i<sib.length;i++) {
						for(var j=0;j<sib[i].length;j++) {
							newzaim=$('#'+sib[i][j]).hover( function() {
								pausefilm()
							}, function() {
								startfilm()
							})
						}
					}
					l.each( function(f) {
						var g=$(this);
						var h= {
							aM:sib[f][0],
							lK:g.attr('lnk'),
							cC:g.attr('class'),
							cH:g.attr('cssH')||m.cssH,
							cS:g.attr('cssS')||m.cssS,
							sC:g.attr('style'),
							sH:g.attr('styH'),
							sS:g.attr('styS')
						};
						h.cC=h.cC.replace(h.cS,'');
						g.mouseover( function(e) {
						    var o_this = this;
                            var dateO=new Date();
                            $(o_this).data('timingStart',dateO.getSeconds()*1000+dateO.getMilliseconds());                            						    
						    setTimeout(function(){
                            var dateO=new Date(); 
                            var hoverDuration = dateO.getSeconds()*1000+dateO.getMilliseconds()-$(o_this).data('timingStart');                                       
                            if(hoverDuration<140)
                            {
                                return false;
                            }	
                            					        
							if(k[0]!=o_this) {
								if(h.cH) {
									o_this.className=h.cH
								}
								if(h.sH) {
									$(o_this).attr('style',h.sH)
								}
								if(m.event=='hover') {
									$(o_this).triggerHandler('click')
								}
							}
							if(e.pageX>0) {
								pausefilm()
							}
							},160
							);
						}).mouseout( function(e) {
                            var dateO=new Date();
                            $(this).data('timingStart',dateO.getSeconds()*1000+dateO.getMilliseconds());                            						    
							if(k[0]!=this) {
								if(h.cC) {
									this.className=h.cC
								} else {
									this.className=""
								}
								if(h.sC) {
									$(this).attr('style',h.sC)
								}
							}
							if(e.pageX>0) {
								startfilm()
							}
						}).click( function() {
							if(k[0]==this) {
								return
							}
							var b=k;
							k=$(this);
							if(b!="") {
								b.triggerHandler("mouseout")
							}
							if(h.cS) {
								this.className=h.cS
							}
							if(h.sS) {
								$(this).attr('style',h.sS)
							}
							var c=h.aM.split('#');
							if(c.length>1) {
								h.aM=c[1];
								h.dT=c[0]
							} else {
								h.dT='div'
							}
							var d=$('#'+h.aM);
							if(d.length<1) {
								if(m.acdiv) {
									d=$('<'+h.dT+' id="'+h.aM+'" class="'+m.divcss+'" style="'+m.divsty+'">').appendTo($('#'+m.divaim))
								} else {
									return
								}
							}
							var e,newzaim;
							if(oldei>-1) {
								for(var j=0;j<sib[oldei].length;j++) {
									if(j==0&&m.funeffect!=0) {
										e=$('#'+sib[oldei][j])
									} else {
										$('#'+sib[oldei][j]).css('display','none')
									}
								}
							}
							for(var j=0;j<sib[f].length;j++) {
								if(j==0&&m.funeffect!=0) {
									newzaim=$('#'+sib[f][j])
								} else {
									$('#'+sib[f][j]).css('display','block')									
								}
							}
							oldei=f;
							if(m.funeffect!=0) {
								m.funeffect.call($(this),e,newzaim)
							}
							if(h.lK) {
								if(d.attr('isContent')!="1"||!m.cache) {
									d.html(m.load);
									$.ajax({
										url:h.lK,
										type:"GET",
										data:m.param,
										success: function(a) {
											d.html(a);
											d.attr('isContent',"1")
										}
									})
								}
							}
						})
					});
					function startfilm() {
						if(m.filmtime) {
							t_film=setInterval(filmplay,m.filmtime)
						}
					}

					function pausefilm() {
						if(m.filmtime) {
							clearInterval(t_film)
						}
					}

					function filmplay() {
						var a=oldei+1==l.length?0:oldei+1;
						l.eq(a).triggerHandler("click")
					}

					startfilm()
				})
			}
		};
		$.fn.w_tab.defaults= {
			param: {},
			acdiv:0,
			divcss:"",
			divsty:"",
			cssH:"",
			cssS:"",
			divaim:0,
			cache:1,
			event:'click',
			load:'',
			funeffect:0,
			filmtime:0,
			child:''
		};

		$.fn.w_roll= function(p) {
			if(this.length==0) {
				return false
			}
			var c=$.extend({},$.fn.w_roll.defaults,p);
			var d=mytime2=0;
			var e=$(this).css({
				'overflow':'hidden'
			});
			var f=c.way==2||c.way==4?0:1;
			var g=rollnum=nowrollnum=oldtnum=pause=runing=0;
			var h=Array();
			if(e.data('plug_init')!=1) {
				var j=$('<div></div>');
				var k=e[0];
				j.css(f?'height':'width',3000);
				e.children().each( function(n) {
					g+=h[n]=$(this)[f?'outerHeight':'outerWidth'](true)
				});
				if(g<(f?e.height():e.width())) {
					return
				}
				e.append(j.append(e.children(),e.children().clone()).css(f?'height':'width',g*2));
				e.data('plug_init',1).hover( function() {
					cleartime()
				}, function() {
					cleartime();
					if(runing==0) {
						begin()
					}
				});
				if(c.cbtn) {
					$.each(c.cbtn, function(i,a) {
						var b=$('#'+a);
						b.bind('mousedown', function() {
							c.way=i;
							c.oldstep=c.step;
							c.step=c.step+4
						}).bind('mouseup', function() {
							c.step=c.oldstep
						})
					})
				}
				function rollpic() {
					var a=(c.way==1||c.way==3)?'scrollTop':'scrollLeft';
					if(c.way==1||c.way==4) {
						k[a]+=c.step;
						if(k[a]>=g) {
							k[a]=0
						}
					} else {
						k[a]-=c.step;
						if(k[a]<=0) {
							k[a]=g
						}
					}
					if(rollnum>0) {
						nowrollnum+=c.step;
						if(nowrollnum>=rollnum) {
							runing=0;
							clearInterval(d);
							if(pause==0) {
								begin()
							}
						}
					}
				};

				function cleartime() {
					if(c.delay>0) {
						pause=1
					} else {
						clearInterval(d)
					}
				}

				function counttnum() {
					rollnum=nowrollnum=0;
					for(var i=0;i<c.tnum;i++) {
						rollnum+=h[oldtnum];
						oldtnum=oldtnum==h.length-1?0:oldtnum+1
					}
					d=setInterval(rollpic,c.speed)
				}

				function begin() {
					if(c.delay>0) {
						pause=0;
						runing=1;
						mytime2=setTimeout(counttnum,c.delay)
					} else {
						d=setInterval(rollpic,c.speed)
					}
				}

				begin()
			}
		};
		$.fn.w_roll.defaults= {
			delay:2000,
			tnum:1,
			speed:30,
			way:4,
			step:1,
			cbtn:0,
			btncss:0
		};

		$.fn.w_picSwap= function(d) {
			var d=$.extend({},$.fn.w_picSwap.defaults,d);
			return this.each( function() {
				var a=$(this);
				if(a.length==0) {
					return false
				}
				var b=0,$tmpel,old=0,now=0,sib=Array();
				var c=a.children(d.child);
				$div=$('<div>').css({
					'position':'relative',
					'overflow':'hidden',
					'height':a.css('height')
				});
				c.each( function(i) {
					if(d.tnum>1) {
						if(i==0||i%d.tnum==0) {
							$tmpel=$('<div>');
							sib.push($tmpel)
						}
						$tmpel.append($(this))
					} else {
						sib.push($(this))
					}
				});
				for(var i=0;i<sib.length;i++) {
					i>0&&sib[i].css({
						'display':'none'
					});
					sib[i].css({
						'position':'absolute'
					});
					$div.append(sib[i])
				};
				$div.appendTo(a);
				if(d.cbtn) {
					$.each(d.cbtn, function(i,n) {
						$('#'+n).click( function() {
							end();
							d.way=i;
							showImg();
							begin()
						})
					})
				}
				function showImg() {
					if(d.way) {
						old=now;
						now=(now==(sib.length-1))?0:now+1
					} else {
						old=now;
						now=(now==0)?sib.length-1:now-1
					}
					d.funeffect.call($div,sib[old],sib[now],d.way)
				};

				function begin() {
					if(d.delay>0) {
						b=setInterval(showImg,d.delay)
					}
				};

				function end() {
					if(b) {
						clearInterval(b)
					}
				};

				$div.hover( function() {
					end()
				}, function() {
					begin()
				});
				begin()
			})
		};
		$.fn.w_picSwap.defaults= {
			delay:2000,
			way:1,
			cbtn:0,
			tnum:1,
			funeffect:0,
			child:''
		};

		$.fn.w_hoverClass= function(b) {
			var b=$.extend({},$.fn.w_hoverClass.defaults,b);
			var c=b.css.split(' ');
			return this.each( function() {
				var a=$(this);
				a.hover( function() {
					setclass.call(a,'add')
				}, function() {
					setclass.call(a,'remove')
				})
			});
			function setclass(z) {
				e=jq(this);
				for(var i=0;i<c.length;i++) {
					e[z+'Class'](c[i])
				}
			}

		};
		$.fn.w_hoverClass.defaults= {
			css:''
		};

		$.fn.hideTime= function(t,b) {
			if(b==undefined) {var b=['hide',[100]]
			}
			return this.each( function() {
				var a=$(this);
				if(t=='stop') {
					clearTimeout(a.data('hidetimenum'))
				} else {
					a.data('hidetimenum',setTimeout(hide,t))
				}
				function hide() {
					a[b[0]].apply(a,b[1])
				}

			})
		};
		$.fn.w_autoComplete= function(p) {
			if(this.length==0) {
				return false
			}
			var d=this;
			var f=$.extend({},$.fn.w_autoComplete.defaults,p);
			var g=isshow=0;
			var h=-1;
			var k=Array();
			if(this.data('acinit')!=1) {
				var l=$('#search_words');
				l.hide();
				this.data('acinit',1)
			}
			var m=0;
			this.focus( function() {
				if(d.val().length>0&&k.length>0) {
					open()
				}
			}).keydown( function(e) {
				clearTimeout(m);

				switch(e.which) {
					case 38:
						h=h-1<0?k.length-1:h-1;
						liover.apply(k[h]);
						break;
					case 40:
						h=h+1==k.length?0:h+1;
						liover.apply(k[h]);
						break
				}
			}).keyup( function(e) {
				if(e.which>=49||e.which==32||e.which==8) {
					if(d.val().length>=f.charnum) {
						clearTimeout(m);
						if(d.val()!=d.data('oldval')) {
							m=setTimeout(searchvalue,f.waittime)
						} else {
							open()
						}
					} else {
						close()
					}
				}
			}).keypress( function(e) {
				switch(e.which) {
					case 13:
						isshow==1&&liclick.apply(g);
						break;
					case 27:
						close();
						break
				}
			});
			return this;
			function searchvalue() {
				d.data('oldval',d.val());
				$.ajax({
					type:'GET',
					timeout:30000,
					url:f.url,
					dataType:'xml',
					data:$.extend({},f.data, {
						'keyword':d.val()
					}),
					success: function(a) {
						k=Array();
						h=-1;
						g=0;
						addli(a);
						open()
					}
				})
			};

			function open() {
				var a=d.offset();

				l.show();
				isshow=1;
				$('body').bind('mousedown',checkclose)
			};

			function checkclose(e) {
				if($(e.target).index(d)<0&&$(e.target).parents().index(l)<0) {
					close()
				}
			};

			function close() {
				l.hide();
				isshow=0;
				$('body').unbind('mousedown',checkclose)
			};

			function liclick() {
				var a=Array();
				if(this!=0) {
					a[0]=this.attr('value');
					this.children('span').each( function(i) {
						a[i+1]=$(this).text()
					});
					d.val(a[1]);
					if(f.nodeclick) {
						f.nodeclick.call(this,a)
					}
				}
				close()
			};

			function liover() {
				if(g!=0) {
					g.removeClass('search_selected')
				}
				this.addClass('search_selected');
				g=this
			};

			function addli(a) {
				var b=str='';
				var c=Array();
				$(a).find('li').each( function(i) {
					b=$(this).children();
					str='';
					for(var j=2;j<b.length;j++) {
						str+='<span class="span'+j+'">'+b.eq(j).text()+'</span>'
					}
					c[i]='<li value="'+b.eq(0).text()+'"><span class="span1">'+b.eq(1).text()+'</span>'+str+'</li>'
				});
				l.html(c.join('')).children('li').each( function() {
					k.push($(this))
				}).mouseover( function() {
					liover.apply($(this))
				}).click( function() {
					liclick.apply($(this))
				})
			}

		};
		$.fn.w_autoComplete.defaults= {
			url:'',
			data: {},
			charnum:1,
			nodeclick:0,
			waittime:500
		};

		$.fn.w_nullInputState= function(s,c) {
			if(c==undefined) {var c=''
			}
			return this.each( function() {
				if(this.value=='') {
					this.value=s;
					c!=''&&$(this).addClass(c)
				}
				$(this).focus( function() {
					if(this.value==s) {
						this.value='';
						c!=''&&$(this).removeClass(c)
					}
				}).blur( function() {
					if(this.value=='') {
						this.value=s;
						c!=''&&$(this).addClass(c)
					}
				})
			})
		};
		$.fn.footer_c= function() {
			var footer_inner="<ul><li><dl><dt>WHY SHOP WITH US</dt><dd><a title=\"7-day Policy for Return\" href=\"http://www.milanoo.com/help/7-day-Policy-for-Return-and-15-day-Policy-for-Exchange-All-Milanoo-Products-Do-You-Have-A-Guarantee-or-Warranty-module-index-id-6.html\" rel=\"nofollow\" target=\"_blank\">7-day Policy for Return</a></dd><dd><a title=\"15-day Policy for Exchange\" href=\"http://www.milanoo.com/help/7-day-Policy-for-Return-and-15-day-Policy-for-Exchange-All-Milanoo-Products-Do-You-Have-A-Guarantee-or-Warranty-module-index-id-6.html\" rel=\"nofollow\" target=\"_blank\">15-day Policy for Exchange</a></dd><dd><a title=\"Pay with Credit Card\" href=\"http://www.milanoo.com/help/Payment-Methods-module-index-id-19.html\" rel=\"nofollow\" target=\"_blank\">Pay with Credit Card</a></dd><dd><a title=\"Pay with PayPal\" href=\"http://www.milanoo.com/help/Payment-Methods-module-index-id-19.html\" rel=\"nofollow\" target=\"_blank\">Pay with PayPal</a></dd><dd><a title=\"Fast shipping & delivery\" href=\"http://www.milanoo.com/help/Could-you-introduce-briefly-EMSUPSDHLTNTand-Sagawa-Express--module-index-id-75.html\" rel=\"nofollow\" target=\"_blank\">Fast shipping & delivery</a></dd></dl></li><li><dl><dt>WHAT'S IN STORE</dt><dd><a title=\"Wedding Apparel\" href=\"http://www.milanoo.com/wholesale-Wedding-Apparel-c391\" rel=\"nofollow\" target=\"_blank\">Wedding Apparel</a></dd><dd><a title=\"Special Occasion Dresses\" href=\"http://www.milanoo.com/wholesale-Special-Occasion-Dresses-c564\" rel=\"nofollow\" target=\"_blank\">Special Occasion Dresses</a></dd><dd><a title=\"Catsuits & Zentai\" href=\"http://www.milanoo.com/wholesale-Catsuits-Zentai-c314\" rel=\"nofollow\" target=\"_blank\">Catsuits & Zentai</a></dd><dd><a title=\"Cosplay Costumes\" href=\"http://www.milanoo.com/wholesale-Cosplay-Costumes-c300\" rel=\"nofollow\" target=\"_blank\">Cosplay Costumes</a></dd><dd><a title=\"Lolita Clothing\" href=\"http://www.milanoo.com/wholesale-Lolita-Clothing-c634\" rel=\"nofollow\" target=\"_blank\">Lolita Clothing</a></dd><dd><a title=\"Sexy Lingerie\" href=\"http://www.milanoo.com/wholesale-Sexy-Lingerie-c322\" rel=\"nofollow\" target=\"_blank\">Sexy Lingerie</a></dd><dd><a title=\"Poduct A-Z\" href=\"http://www.milanoo.com/producttags/A/\" rel=\"nofollow\" target=\"_blank\">Poduct A-Z</a></dd></dl></li><li><dl><dt>HOW CAN WE HELP</dt><dd><a title=\"Track Order\" href=\"http://www.milanoo.com/help/How-to-Make-an-Order-from-Milanoo-module-index-id-1.html\" rel=\"nofollow\" target=\"_blank\">Track Order</a></dd><dd><a title=\"Help Center\" href=\"http://www.milanoo.com/help/index-act-center.html\" rel=\"nofollow\" target=\"_blank\">Help Center</a></dd><dd><a title=\"Online Chat\" id=\"_lpChatBtn\" href='https://server.iad.liveperson.net/hc/47928991/?cmd=file&file=visitorWantsToChat&site=47928991&byhref=1&SESSIONVAR!opid=2&imageUrl=https://server.iad.liveperson.net/hcp/Gallery/ChatButton-Gallery/English/Retail/3c' target='chat47928991'  onClick=\"lpButtonCTTUrl = 'https://server.iad.liveperson.net/hc/47928991/?cmd=file&file=visitorWantsToChat&site=47928991&SESSIONVAR!opid=2&imageUrl=https://server.iad.liveperson.net/hcp/Gallery/ChatButton-Gallery/English/Retail/3c&referrer='+escape(document.location); lpButtonCTTUrl = (typeof(lpAppendVisitorCookies) != 'undefined' ? lpAppendVisitorCookies(lpButtonCTTUrl) : lpButtonCTTUrl); lpButtonCTTUrl = ((typeof(lpMTag)!='undefined' && typeof(lpMTag.addFirstPartyCookies)!='undefined')?lpMTag.addFirstPartyCookies(lpButtonCTTUrl):lpButtonCTTUrl);window.open(lpButtonCTTUrl,'chat47928991','width=475,height=400,resizable=yes');return false;\">Online Chat</a></dd><dd><a title=\"My account\" href=\"https://www.milanoo.com/member/\" rel=\"nofollow\" target=\"_blank\">My account</a></dd><dd><a title=\"Contact Milanoo\" href=\"http://www.milanoo.com/help/Submit-a-question-module-index.html\" rel=\"nofollow\" target=\"_blank\">Contact Milanoo</a></dd></dl></li><li><dl><dt>FURTHER INFORMATION</dt><dd><a title=\"About us\" href=\"http://www.milanoo.com/help/About-Milanoo-module-index-id-41.html\" rel=\"nofollow\" target=\"_blank\">About us</a></dd><dd><a title=\"Delivery costs\" href=\"http://www.milanoo.com/help/Can-You-Show-Me-How-You-Calculate-Shipping-module-index-id-38.html\" rel=\"nofollow\" target=\"_blank\">Delivery costs</a></dd><dd><a title=\"Security\" href=\"http://www.milanoo.com/help/Privacy-Policy-module-index-id-72.html\" rel=\"nofollow\" target=\"_blank\">Security</a></dd><dd><a title=\"Affiliate Program\" href=\"http://www.milanoo.com/help/About-Milanoo-Affiliates-Programme-module-index-id-67.html\" rel=\"nofollow\" target=\"_blank\">Affiliate Program</a></dd></dl></li></ul><div class=\"hei10\"></div>";
			this.html(footer_inner);
		};
		$.fn.footer_c_jp= function() {
			var footer_inner="<ul><li><dl><dt>当サイトの特徴</dt><dd><a title=\"不具合品はすべて無料でお取替えいたします\" href=\"http://www.milanoo.com/jp/help/index-id-71.html\" rel=\"nofollow\" target=\"_blank\">不具合品はすべて無料でお取替えいたします</a></dd><dd><a title=\"クレジットカードでのお支払いも可能です\" href=\"http://www.milanoo.com/jp/help/index-id-69.html\" rel=\"nofollow\" target=\"_blank\">クレジットカードでのお支払いも可能です</a></dd><dd><a title=\"Pay　Palによるお支払いにも対応\" href=\"http://www.milanoo.com/jp/help/index-id-69.html\" rel=\"nofollow\" target=\"_blank\">Pay　Palによるお支払いにも対応</a></dd></dl></li><li><dl><dt>商品ラインナップ</dt><dd><a title=\"ウェディングドレス\" href=\"http://www.milanoo.com/c391\" rel=\"nofollow\" target=\"_blank\">ウェディングドレス</a></dd><dd><a title=\"コスチューム\" href=\"http://www.milanoo.com/c934\" rel=\"nofollow\" target=\"_blank\">コスチューム</a></dd><dd><a title=\"セクシーランジェリー\" href=\"http://www.milanoo.com/jp/c322\" rel=\"nofollow\" target=\"_blank\">セクシーランジェリー</a></dd><dd><a title=\"レディース、婦人服\" href=\"http://www.milanoo.com/c535\" rel=\"nofollow\" target=\"_blank\">レディース、婦人服</a></dd><dd><a title=\"キーワード\" href=\"http://www.milanoo.com/jp/producttags\" rel=\"nofollow\" target=\"_blank\">キーワード</a></dd></dl></li><li><dl><dt>当サイトのサービス</dt><dd><a title=\"初めてのご注文\" href=\"http://www.milanoo.com/jp/help/index-id-104.html\" rel=\"nofollow\" target=\"_blank\">初めてのご注文</a></dd><dd><a title=\"ヘルプセンタ\" href=\"http://www.milanoo.com/jp/help/index-id-85.html\" rel=\"nofollow\" target=\"_blank\">ヘルプセンタ</a></dd><dd><a title=\"お問合せ\" href=\"http://www.milanoo.com/jp/help/index-id-1.html\" rel=\"nofollow\" target=\"_blank\">お問合せ</a></dd><dd><a title=\"マイアカウント\" href=\"https://www.milanoo.com/jp/member/\" rel=\"nofollow\" target=\"_blank\">マイアカウント</a></dd></dl></li><li><dl><dt>当サイト詳細</dt><dd><a title=\"プライバシーポリシー\" href=\"http://www.milanoo.com/jp/help/index-id-52.html\" rel=\"nofollow\" target=\"_blank\">プライバシーポリシー</a></dd><dd><a title=\"特定商取引法表示\" href=\"http://www.milanoo.com/jp/help/index-id-93.html\" rel=\"nofollow\" target=\"_blank\">特定商取引法表示</a></dd></dl></li></ul><div class=\"hei10\"></div>";
			this.html(footer_inner);
		};
		$.fn.timedown= function(a) {
			a=$.extend({},$.fn.timedown.defaults,a);
			a.sec=Number(a.sec);
			if(a.sec<=0) {
				return
			}
			var b=this,tH=parseInt(a.sec/3600),tM=parseInt(a.sec/60%60),tS=parseInt(a.sec%60),strH=('00'+tH).Right(2),strM=('00'+tM).Right(2),strS=('00'+tS).Right(2),clockH=b.find('.clockH').val(strH),clockM=b.find('.clockM').val(strM),clockS=b.find('.clockS').val(strS),ctime;
			function reftime() {
				tS-=1;
				if(tS<0) {
					if(tH==0&&tM==0) {
						b.remove();
						clearInterval(ctime);
						return
					}
					tS=59;
					tM-=1;
					if(tM<0) {
						tM=59;
						tH-=1;
						clockH.val(('00'+tH).Right(2))
					}
					clockM.val(('00'+tM).Right(2))
				}
				clockS.val(('00'+tS).Right(2))
			};
			
			ctime=setInterval(reftime,1000);
		};
		$.fn.timedown.defaults= {
			sec:0
		};
		/**
		 * @param 当为String时表示某个动作命令,目前支持open,close; 当为Object时表示初始化参数({container:document.body,mode:modal}),支持的参数如下:\n
		 *        container: 作为位置参照的容易,默认为document.body \n
		 *        mode: 对话框类型,默认为模式对话(modal)
		 *        autoOpen: 是否自动显示弹出层. 默认为true.		        
		 */
		$.fn.simpleModal=function(param){
		    var overlayName='ml-simpleModal-overlay';	
		    var defaultParam = {container:document.body,mode:'modal',autoOpen:true};   
            
		    if(param.constructor === Object)
		    {
                //参数不存在则使用默认参数
                for(var i in defaultParam)
                {
                    if(param[i] === undefined)
                    {
                        param[i] = defaultParam[i];
                    }
                }    
                if(param.container.constructor === String)
                {
                    param.container = $('#'+param.container).get(0);  
                }              		        
		        if($('#'+overlayName).length < 1)
		        {
		            //生成遮罩层           	            		          
		            $('<div id="'+overlayName+'" style="background-color:#000000;opacity:0.4;filter:alpha(opacity=40);position:absolute;top:'+$(param.container).offset().top+'px;left:'+$(param.container).offset().left+'px;z-index:20000;display:none;"></div>').appendTo(document.body);                    		            	                     		        		           	                   		            	                             
		        }  
                                   
                this.data('param',param); 		        
		    }
		    else if(param.constructor===String)
		    {		    
		        var storedParam = this.data('param');
		        if(storedParam === undefined)
		        {//元素的未被simpleModal 初始化过则使用默认参数进行初始化
		            this.simpleModal({});
		            //重新执行命令
		            this.simpleModal(param);
		            return;
		        }
		        switch(param)
		        {
		            case 'open':
    		            $("#"+overlayName).css({width:jq(storedParam.container).outerWidth(),height:jq(storedParam.container).outerHeight()}).show();                    
                        this.appendTo(document.body).show(); 
                        var msgDivLeftP=msgDivTopP=0;                    
                        this.css({position:'absolute','z-index':20001});
                        if(storedParam.container === document.body)
                        {                                                                                       
                           msgDivTopP = ($(window).height() - this.outerHeight())/2 + document.documentElement.scrollTop;
                           msgDivLeftP = ($(window).width() - this.outerWidth())/2 + document.documentElement.scrollLeft;                                                                    
                        }   
                        else
                        {
                           msgDivTopP = ($('#'+overlayName).outerHeight() - this.outerHeight())/2 + $('#'+overlayName).offset().top;
                           msgDivLeftP = ($('#'+overlayName).outerWidth() - this.outerWidth())/2+$('#'+overlayName).offset().left;                        
                        }
                        this.css({top:msgDivTopP,left:msgDivLeftP});
		                break;
		            case 'close':
		               this.hide();
		               $("#"+overlayName).hide();
		              break;
		        }
		    }
		   
		};
		/**
		 * 左右滚动容器中的li元素.html结构如:<div>
		 *                         <ul>
		 *                            <li></li>
		 *                            <li></li>
		 *                         </ul>
		 *                       </div>
		 * @param config Object配置对象{btnPrev:'向左的按钮ID',btnNext:'向右的按钮ID',speed:'移动间隔时间(毫秒)','step':'每次移动的距离(px)','auto':'是否自动滚动(boolean),'autoSlipTime':'自动滚动的时间间隔(毫秒),'autoSlipDir':'自动滚动时的方向,默认向右',默认5000','count':'每行显示个数,默认4个','domArch':'列表文档结构,默认为"ul>li"'}
		 */
		$.fn.liSlip=function(config){    
		    var container=this;
		    this.css({'overflow':'hidden','position':'relative'});		
		    var domArch = config.domArch ? config.domArch : 'ul>li';
		    var domArchList = domArch.split('>');
		     /**
             * 容器节点元素
             */
		    var domArchWrapper = domArchList.shift();
            /**
             * 容器列表节点元素
             */		    
		    var domArchListElement = domArchList.pop();  
            var items = this.find('>'+domArch);
            if(items.length<1){
                return false;
            };
            var itemList = this.find('>'+domArchWrapper);            
            var itemListWidth = this.innerWidth();
            var itemsPerRow=4;
            if(config != undefined && !isNaN(config.count))
            {
                itemsPerRow = config.count;
            }
            if(items.length<=itemsPerRow){
                return false;
            }
            if(itemsPerRow > items.length)
            {
                itemsPerRow = items.length;
            }            
            itemList.empty();
            var rightIndex=-1,leftIndex=0;           
            for(var i=0;i<itemsPerRow;i++)
            {
                rightIndex++;
                if(rightIndex >= items.length)
                {
                    rightIndex = rightIndex-items.length;
                }                
                itemList.append(items.get(rightIndex));                
            }
            var itemList2=$('<'+domArchWrapper+'></'+domArchWrapper+'>');
            this.append(itemList2);

            itemList.css({'left':0,'width':itemListWidth,'position':'absolute','height': this.innerHeight()});
            itemList2.css({'left':itemListWidth,'width':itemListWidth,'position':'absolute','height': this.innerHeight()});
            if(config != undefined && config.constructor == Object)
            {
                if(config.btnPrev)
                {
                    $('#'+config.btnPrev).click(function(){clearInterval(autoScrollInteval);config.autoDir='l';slipLeft();
                        autoScrollInteval=setInterval(scroll,autoSlipTime);
                    });
                }
                if(config.btnNext)
                {
                    $('#'+config.btnNext).click(function(){clearInterval(autoScrollInteval);config.autoDir='r';slipRight();
                        autoScrollInteval=setInterval(scroll,autoSlipTime);
                    });
                }                
            }
          
            var speed = isNaN(config.speed)? 100 : config.speed;
            var step = isNaN(config.step)? 60 : config.step;
          
            var looping=false;             
            function slipLeft()
            {
               if(looping)return false;
               looping=true;
               var itemList=container.find(domArchWrapper+':first');
               var itemList2=container.find(domArchWrapper+':last');                             
               var curLeft = 0;
               var curLeft2 = itemListWidth;

               itemList2.empty();               
               for(var i=0;i<itemsPerRow;i++)
               {                   
                   rightIndex++;
                   if(rightIndex >= items.length)
                   {
                       rightIndex = rightIndex-items.length;
                   }             
                   if(i==0)
                   {
                       leftIndex=rightIndex;
                   }     
                   itemList2.append(items.get(rightIndex));                                     
               }                   
           
                var loop = setInterval(function(){
                    curLeft-= step;   
                    curLeft2-=step;       
                    if(curLeft<-itemListWidth)
                    {
                        curLeft = -itemListWidth;
                        clearInterval(loop);
                        if(!config.auto)clearInterval(autoScrollInteval);
                        itemList.css('left',curLeft);
                        itemList2.css('left',0);                    
                        looping=false;
                        itemList.appendTo(container);             
                    }
                    else
                    {
                        itemList.css('left',curLeft);
                        itemList2.css('left',curLeft2);      
                    }                    
                },speed);  
                if((typeof config.afterFun)=='function')
                {
                    config.afterFun({rightIndex:rightIndex,leftIndex:leftIndex,itemsPerRow:itemsPerRow,config:config});
                }       
            }
            function slipRight()
            {
               if(looping)return false;
               looping=true;    
               var itemList=container.find(domArchWrapper+':first');
               var itemList2=container.find(domArchWrapper+':last');          
               var curLeft = 0;               
               var curLeft2=-itemListWidth;               
               itemList2.empty();
               itemList2.prependTo(container);                              
               for(var i=0;i<itemsPerRow;i++)
               {                   
                   leftIndex--;
                   if(leftIndex < 0)
                   {
                       leftIndex += items.length;
                   }                  
                   if(i==0){
                       rightIndex = leftIndex;
                   }
                   itemList2.prepend(items.get(leftIndex));                                                         
               }                               
               var loop = setInterval(function(){
                    curLeft+= step;   
                    curLeft2+=step;
                    if(curLeft>itemListWidth)
                    {   
                        curLeft = itemListWidth;
                        clearInterval(loop);
                        if(!config.auto)clearInterval(autoScrollInteval);
                        itemList.css('left',curLeft);
                        itemList2.css('left',0);                    
                        looping=false;                                            
                    }
                    else
                    {
                        itemList.css('left',curLeft);
                        itemList2.css('left',curLeft2);      
                    }
                    
                },speed);
                if((typeof config.afterFun)=='function')
                {
                    config.afterFun({rightIndex:rightIndex,leftIndex:leftIndex,itemsPerRow:itemsPerRow,config:config});
                }                                
            }      
            function scroll(){               
                if(config.autoDir == 'l')
                {
                    slipLeft();
                }
                else
                {
                    slipRight();
                }
            }
            if(config.auto)
            {
                var autoSlipTime = 5000;                
                if(!isNaN(config.autoSlipTime))
                {
                    autoSlipTime = config.autoSlipTime;
                }
                var autoScrollInteval=setInterval(scroll,autoSlipTime);
            }      
            return this;
        };
        /**
         * 将一个属性添加至对象属性序列的头部并覆盖原属性.
         * 依赖: jq.jsonToStr
         * @param name String 属性名称
         * @param value Mixed 属性的值
         * @return Object
         */		
		$.extend({unshift:function(o,name,value){		   
		    var o1 = {};
           if(o.constructor == Object)
           {   
               if(arguments.length <2){
                   throw 'not enough arguments for Object.unshift';
               }
               var names = [];
               var values = [];
               for(var i in o)
               {                   
                   if(i != name){
                       names.push(i);
                       values.push(o[i]);
                   }                   
               }    
               names.unshift(name);
               values.unshift(value);  
               for(i=0;i<names.length;i++)
               {
                   o1[names[i]] = values[i];
               }       
           }	
           delete o;
           return o1;    
		}});
		
		$.extend({
			jsonToStr: function(o) {
				if(o.constructor !== Array && o.constructor !== Object) {
					return null;
				}
				var s= o.constructor == Array ? '[' : '{';
				var isFirst=true;
				for(var i in o) {
					if(!isFirst) {
						s+=','
					}
					if(o[i].constructor === Array || o[i].constructor === Object) {
						s += o.constructor === Array ? $.jsonToStr(o[i]) : '"'+i+'":'+$.jsonToStr(o[i]);
					} else if(o[i].constructor === Number) {
						s += o.constructor === Array ? o[i] : '"'+i+'":'+o[i];
					} else if(o[i].constructor === String) {
						s += o.constructor === Array ? '"'+o[i]+'"' : '"'+i+'":'+'"'+o[i]+'"';
					}
					isFirst=false;
				}
				s+=o.constructor == Array ? ']' : '}';
				return s;
			}
		});		
		$.widget('ui.showP', {
			options: {
				position:'center',
				btnclose:'',
				shade:'',
				clickhide:0,
				hidescroll:0,
				parent:'body',
				ie6iframe:0
			},
			_create: function() {
				var a=this.options;
				this.oldcss= {};
				this.ie6=$.browser.version=="6.0";
				this.ie67=($.browser.version=="6.0"||$.browser.version=="7.0")&&!$.support.style;
				if(a.ie6iframe&&this.ie6) {
					var b=this.element.outerWidth(),th=this.element.outerHeight(),tmpf=$('<iframe style="width:'+b+'px;height:'+th+'px;"></iframe>');
					this.ele=$('<div class="'+this.element.attr('class')+'" style="position:absolute;width:'+b+'px;height:'+th+'px;">').append(tmpf,this.element.css({
						position:'absolute',
						top:0,
						left:0
					}).show()).appendTo('body').hide()
				} else {
					this.ele=this.element
				}
				a.btnclose&&this.setbtnclose(a.btnclose);
				a.parent&&this.setparent(a.parent);
				if(a.shade) {
					this.uishade=$('<div></div>').appendTo('body');
					this.setshade(a.shade)
				}
			},
			_setOption: function(k,v) {
				if('shade'==k) {
					this.setshade(v)
				} else if('position'==k) {
					this.refStation(v)
				} else if('btnclose'==k) {
					this.setbtnclose(v)
				}
				$.Widget.prototype._setOption.apply(this,arguments)
			},
			setbtnclose: function(a) {
				var b=this;
				$('#'+a).click( function() {
					b.close()
				})
			},
			setshade: function(a) {
				var b=a.split(' '),self=this;
				this.uishade.css({
					background:b[0],
					left:0,
					top:0,
					opacity:b[1],
					display:'none'
				});
				if(this.options.clickhide)
					this.uishade.attr('title','单击关闭').click( function() {
						self.close()
					})
			},
			setparent: function(a) {
				a=$(a);
				if(this.ele.parent().index(a)<0) {
					this.ele.appendTo(a)
				}
			},
			refStation: function(a) {
				if(this.isopen==0) {
					return
				}
				var b=this.ele.css({
					position:'absolute',
					'z-index':999
				});
				var c=this.options;
				a=a||c.position;
				var d=a.split(' ');
				if(d.length<2) {
					d[1]='center'
				}
				var e=0,inttop=0;
				switch(d[0]) {
					case'center':
						e=($(window).width()-b.outerWidth())/2;
						break;
					default:
						e=d[0]
				}
				switch(d[1]) {
					case'center':
						inttop=($(window).height()-b.outerHeight())/2+$(window).scrollTop();
						break;
					default:
						if(d[1].substr(0,1)=='+') {
							inttop=Number(d[1].substr(1))+$(window).scrollTop()
						} else {
							inttop=d[1]
						}
				}
				if(this.isopen==1) {
					if(false!==this._trigger("openEffect",null,{ele:this.ele,left:e,top:inttop})) {
						b.css({
							left:e,
							top:inttop
						}).show()
					}
					if(b.css('left')=='auto') {
						this.oldcss.left=b.offset().left;
						this.oldcss.top=b.offset().top
					} else {
						this.oldcss.left=b.css('left');
						this.oldcss.top=b.css('top')
					}
				} else {
					b.css({
						left:e,
						top:inttop
					});
					if(c.shade)
						this.uishade.css({
							width:$(document).width(),
							height:$(document).height()
						})
				}
			},
			open: function() {
				this.isopen=1;
				var a=this;
				var b=this.options;
				this._trigger("beforeOpen",null);
				if(b.shade) {
					this.uishade.css({
						position:'absolute',
						'z-index':998,
						width:$(document).width(),
						height:$(document).height()
					}).show()
				}
				if(b.hidescroll) {
					this.ie67&&$('html').css('overflow','hidden');
					!this.ie67&&$('body').css('overflow','hidden')
				}
				this.oldcss.position=this.ele.css('position');
				this.refStation();
				this.isopen=2;
				$(window).resize( function() {
					a.refStation()
				})
			},
			close: function() {
				var a=this;
				var b=this.ele;
				var c=this.options;
				if(c.shade) {
					this.uishade.hide()
				}
				if(c.hidescroll) {
					this.ie67&&$('html').css('overflow','auto');
					!this.ie67&&$('body').css('overflow','auto')
				}
				if(false!==this._trigger("closeEffect",null,{ele:this.ele,oldcss:this.oldcss})) {
					b.hide()
				}
				this.isopen=0
			}
		});

		$.widget('ui.zoomImg', {
			options: {
				path:'',
				imgname:'',
				idstr:'',
				imgpre:['m','b'],
				picnum:['2x3','3x3'],
				picwidth:[400,800],
				picheight:[540,1080],
				smallview:1
			},
			_create: function() {
				this.arrid=new Array();
				this.numx=new Array();
				this.numy=new Array();
				this.imgadd=new Array();
				this.nowx=0;
				var a=this.options,arrt=new Array();
				if(a.idstr=='') {
					this.options.idstr=this.element.attr('id')
				}
				this.element.css('position','relative');
				this.ewidth=parseInt(this.element.css('width'));
				this.eheight=parseInt(this.element.css('height'));
				this.bdiv=$('<div style="position:relative;overflow:hidden;width:'+this.ewidth+'px;height:'+this.eheight+'px;">').appendTo(this.element);
				this.element.children('img').attr('id',a.idstr+'_0').appendTo(this.bdiv);
				this.arrid[0]=a.idstr+'_0';
				for(var i=0;i<a.picnum.length;i++) {
					arrt=a.picnum[i].split('x');
					this.numx[i]=arrt[0];
					this.numy[i]=arrt[1];
					this.options.picnum[i]=arrt[0]*arrt[1];
					this.imgadd[i]=a.path.replace('\/v\/','\/hvx\/')
				}
				a.smallview&&this.addsmallview()
			},
			zoom: function(x,n) {
				if(typeof(this.arrid[x])=='undefined') {
					this.getpic(x)
				}
				$('#'+this.arrid[x]).css({
					top:0,
					left:0
				}).show().siblings().hide();
				this.nowx=x;
				this.skuangsize()
			},
			getpic: function(x) {
				var c=this.options,self=this,top=0,left=0,imgstr='<img src="'+c.path+c.imgname+'_s.jpg" width="'+c.picwidth[x-1]+'" height="'+c.picheight[x-1]+'" />';
				this.arrid[x]=c.idstr+'_'+x;
				for(var i=1;i<=c.picnum[x-1];i++) {
					top=Math.floor((i-1)/this.numx[x-1])*(c.picheight[x-1]/this.numy[x-1]);
					left=(i-1)%this.numx[x-1]*(c.picwidth[x-1]/this.numx[x-1]);
					imgstr+='<img src="'+this.imgadd[x-1]+c.imgname+c.imgpre[x-1]+i+'.jpg" style="position:absolute;left:'+left+'px;top:'+top+'px" />'
				}
				this.setcss($('<div id="'+this.arrid[x]+'">').width(c.picwidth[x-1]).height(c.picheight[x-1]).html(imgstr).appendTo(this.bdiv).draggable({
					drag: function(a,b) {
						return self.posdivmov(a,b)
					},
					stop: function(a,b) {
						b.helper.draggable('option','axis',false)
					}
				}))
			},
			setcss: function(a) {
				a.css({
					position:'absolute',
					left:0,
					top:0
				})
			},
			posdivmov: function(a,b) {
				var c,yf,x=b.position.left,y=b.position.top;
				if(y>0||y<-1*(b.helper.height()-500)) {
					yf=1
				}
				if(x>0||x<-1*(b.helper.width()-380)) {
					c=1
				}
				if(c&&yf) {
					return false
				}
				if(c) {
					b.helper.draggable('option','axis','y')
				} else {
					this.skuang.css('left',-x/this.beiw)
				}
				if(yf) {
					b.helper.draggable('option','axis','x')
				} else {
					this.skuang.css('top',-y/this.beih)
				}
			},
			addsmallview: function() {
				var b=this.options,self=this;
				this.swidth=Math.floor(this.ewidth/6);
				this.sheight=Math.floor(this.eheight/6);
				this.sdiv=$('<div style="border:#ACA899 1px solid;position:absolute;right:4px;bottom:4px;width:'+this.swidth+'px;height:'+this.sheight+'px;">').append('<img src="'+b.path+b.imgname+'_s.jpg" width="'+this.swidth+'" height="'+this.sheight+'" />');
				this.skuang=$('<div style="background:#FFFFFE;border:#F8DBB6 1px solid;position:absolute;cursor:crosshair;opacity:0.6;filter:alpha(opacity=60);">').appendTo(this.sdiv).draggable({
					containment:'parent',
					drag: function(e,a) {
						self.dragfun(e,a)
					}
				});
				this.sdiv.appendTo(this.element);
				this.skuangsize()
			},
			skuangsize: function() {
				var a=this.options;
				if(this.nowx==0) {
					this.sdiv.hide();
					return
				} else {
					this.sdiv.show()
				}
				this.skuangwidth=Math.floor(this.swidth*this.ewidth/a.picwidth[this.nowx-1]);
				this.skuangheight=Math.floor(this.sheight*this.eheight/a.picheight[this.nowx-1]);
				this.beiw=this.ewidth/this.skuangwidth;
				this.beih=this.eheight/this.skuangheight;
				this.skuang.css({
					top:0,
					left:0,
					width:this.skuangwidth,
					height:this.skuangheight
				});
				this.sview= {
					left:this.skuangwidth/2,
					top:this.skuangheight/2,
					width:this.swidth-this.skuangwidth+this.skuangwidth/2,
					height:this.sheight-this.skuangheight+this.skuangheight/2
				}
			},
			dragfun: function(a,b) {
				var c=this.options;
				var x=b.position.left,y=b.position.top;
				if(-x*this.beiw>-1*(c.picwidth[this.nowx-1]-380)) {
					$('#'+this.arrid[this.nowx]).css('left',-x*this.beiw)
				}
				if(-y*this.beih>-1*(c.picheight[this.nowx-1]-500)) {
					$('#'+this.arrid[this.nowx]).css('top',-y*this.beih)
				}
			},
			viewpic: function(e) {
				var x=e.clientX-this.sdiv.offset().left+$(window).scrollLeft(),y=e.clientY-this.sdiv.offset().top+$(window).scrollTop();
				if(x<this.sview.left) {
					x=this.sview.left
				} else if(x>this.sview.width) {
					x=this.sview.width
				}
				if(y<this.sview.top) {
					y=this.sview.top
				} else if(y>this.sview.height) {
					y=this.sview.height
				}
				this.skuang.css({
					left:x-this.sview.left,
					top:y-this.sview.top
				});
				$('#'+this.arrid[this.nowx]).css({
					left:-this.skuang.position().left*this.beiw,
					top:-this.skuang.position().top*this.beih
				})
			}
		});

		$.widget('ui.goTop', {
			options: {
				pagewidth:972,
				speed:6,
				mleft:30,
				mbottom:50
			},
			_create: function() {
				var self=this;
				this.is_top_show=-1;
				self.hidegotop();
				self.refgotop();
				$(window).scroll( function() {
					self.hidegotop()
				});
				$(window).resize( function() {
					self.refgotop()
				});
				self.element.click( function() {
					self.movescrolltop()
				})
			},
			hidegotop: function() {
				if($(document).scrollTop()>0&&this.is_top_show!=1||$(document).scrollTop()<=0&&this.is_top_show!=0) {
					var op=this.options,$el=this.element;
					if($(document).scrollTop()>0) {
						this.is_top_show=1;
						$el.show()
					} else {
						this.is_top_show=0;
						$el.hide()
					}
				}
				if(is_ie=='6.0') {
					this.element.css({
						top:$(document).scrollTop()+$(window).height()-this.options.mbottom
					})
				}
			},
			refgotop: function() {
				var op=this.options,$el=this.element,rig=($(window).width()-op.pagewidth)/2-op.mleft-$el.width();
				$el.css({
					right:rig
				})
			},
			movescrolltop: function() {var op=this.options,movet=setInterval( function() {
					var v=$(window).scrollTop()+Math.floor((0-$(window).scrollTop())/op.speed);
					$(window).scrollTop(v);
					if($(window).scrollTop()<=0)
						clearInterval(movet)
				},10)
			}
		});

		$.goDiv= function(a,b) {
			b=b||300;
			if($.trim(a)!='') {
				var c=-27,$id=$(a),pos=$id.offset();
				if(b==-1) {
					$(window).scrollTop(pos.top+c)
				} else {
					$('html,body').stop(true).animate({
						scrollTop:pos.top+c
					},b,'easeOutExpo')
				}
			}
		}
	})(jQuery);
}

function crm_order_alert(v)
{
	 return ;
}

/* Add new package */
(function( $ ) {

// START DefaultValue
// Default Value for input or textarea
jQuery.fn.defaultValue = function() {
	
	this.each(function( i, o ) {
		var obj = $( o );
		
		if( /^(textarea|input)$/i.test( obj.attr( 'tagName' ) ) && !obj.data( 'tipsObj' ) ) {
			// Add a element
			var tips = document.createElement( 'div' );
			tips.innerHTML = obj.val();
			
			obj.after( tips );
				
			var objTips = $( tips );
			
			// Set style
			objTips.css({
				'color'		: '#999',
				'padding'	: '6px',
				'position'	: 'absolute',
				'font-size'	: '11px',
				'z-index'	: 1,
				'left'		: obj.position().left,
				'top'		: obj.position().top,
				'width'		: obj.outerWidth() - 6,
				'height'	: obj.outerHeight() - 6
			});
			
			// Clear the input/textarea value
			obj.val( '' );
			
			// Add data
			obj.data( 'tips', objTips );
			objTips.data( 'obj', obj ) 
			
			// Bind the events
			objTips.mousedown(function() {
				$( this ).fadeOut( 200, function(){
					objTips.data( 'obj' ).focus();
				});
			});
			
			obj.focus(function() {
				var self = this;
				objTips.fadeOut( 200, function(){
					self.focus();
				});
			});
			
			obj.blur(function() {
				if( $.trim( $( this ).val() ) != '' ) return;
				
				if( $( this ).data( 'tips' ).is(':hidden') ) {
					
					$( this ).data( 'tips' ).css({
						'left'	: obj.position().left,
						'top'	: obj.position().top
					});
					
					$( this ).data( 'tips' ).fadeIn( 200 );
				}
			});
		}
		
	});
};
// END DefaultValue


})( jQuery );

jQuery( document ).ready(function() {
	jQuery( '.jq_default_value' ).defaultValue();
});