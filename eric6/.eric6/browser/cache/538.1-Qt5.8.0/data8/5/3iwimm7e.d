   �         3https://tpc.googlesyndication.com/sodar/d5qAyLYU.js     %�~Np8     %����          
     O K           �      Accept-Ranges   bytes   Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   text/javascript   Date   Wed, 26 Apr 2017 10:09:05 GMT   Expires   Thu, 26 Apr 2018 10:09:05 GMT   Last-Modified   Thu, 02 Mar 2017 13:15:00 GMT   X-Content-Type-Options   nosniff   Server   sffe   X-XSS-Protection   1; mode=block   Cache-Control   public, max-age=31536000   Age   244573   Alt-Svc   %quic=":443"; ma=2592000; v="37,36,35" (function(){var h=this,aa=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";
else if("function"==b&&"undefined"==typeof a.call)return"object";return b},l=function(a){return"string"==typeof a},ba=function(a){var b=typeof a;return"object"==b&&null!=a||"function"==b},ca=function(a,b,c){return a.call.apply(a.bind,arguments)},da=function(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,
arguments)}},n=function(a,b,c){n=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?ca:da;return n.apply(null,arguments)};var ea=function(a){if(!ba(a))return!1;switch(a["0"]){case "0":return!("0"===a["0"]&&l(a["1"])&&l(a["2"])&&l(a["3"])&&l(a["4"]))||"5"in a&&!l(a["5"])?!1:!0;case "1":return"1"===a["0"]&&l(a["1"])?(a=a["6"],a=""!==a&&!isNaN(Number(a))):a=!1,a}return!1},fa=function(a){if(!ea(a))return null;var b=[],c;for(c in a)b.push(encodeURIComponent(c)+"="+encodeURIComponent(a[c]));return b.join("&")};var p=function(a){p[" "](a);return a};p[" "]=function(){};var q=function(a,b){try{return p(a[b]),!0}catch(c){}return!1},ha=function(a,b){var c=ga;return Object.prototype.hasOwnProperty.call(c,a)?c[a]:c[a]=b(a)};var ia=String.prototype.trim?function(a){return a.trim()}:function(a){return a.replace(/^[\s\xa0]+|[\s\xa0]+$/g,"")},r=function(a){return encodeURIComponent(String(a))},t=function(a,b){return a<b?-1:a>b?1:0},ja=function(){return"opacity".replace(/\-([a-z])/g,function(a,b){return b.toUpperCase()})},ka=function(a){var b=l(void 0)?"undefined".replace(/([-()\[\]{}+?*.$\^|,:#<!\\])/g,"\\$1").replace(/\x08/g,"\\x08"):"\\s";return a.replace(new RegExp("(^"+(b?"|["+b+"]+":"")+")([a-z])","g"),function(a,b,
e){return b+e.toUpperCase()})};var la=function(){var a=!1;try{var b=Object.defineProperty({},"passive",{get:function(){a=!0}});h.addEventListener("test",null,b)}catch(c){}return a}();var ma="closure_listenable_"+(1E6*Math.random()|0),na=0;var u;a:{var oa=h.navigator;if(oa){var pa=oa.userAgent;if(pa){u=pa;break a}}u=""}var v=function(a){return-1!=u.indexOf(a)};var w=!1,x=function(a){if(a=a.match(/[\d]+/g))a.length=3};
(function(){if(navigator.plugins&&navigator.plugins.length){var a=navigator.plugins["Shockwave Flash"];if(a&&(w=!0,a.description)){x(a.description);return}if(navigator.plugins["Shockwave Flash 2.0"]){w=!0;return}}if(navigator.mimeTypes&&navigator.mimeTypes.length&&(a=navigator.mimeTypes["application/x-shockwave-flash"],w=!(!a||!a.enabledPlugin))){x(a.enabledPlugin.description);return}try{var b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");w=!0;x(b.GetVariable("$version"));return}catch(c){}try{b=
new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");w=!0;return}catch(c){}try{b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash"),w=!0,x(b.GetVariable("$version"))}catch(c){}})();var qa=Array.prototype.indexOf?function(a,b,c){return Array.prototype.indexOf.call(a,b,c)}:function(a,b,c){c=null==c?0:0>c?Math.max(0,a.length+c):c;if(l(a))return l(b)&&1==b.length?a.indexOf(b,c):-1;for(;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},ta=function(a){var b;b=document;b=b.querySelectorAll&&b.querySelector?b.querySelectorAll(".GoogleActiveViewClass"):ra();var c=b.length;if(0<c){for(var d=Array(c),e=0;e<c;e++)d[e]=b[e];b=d}else b=[];a:{for(var c=b,d=c.length,e=l(c)?c.split(""):
c,f=0;f<d;f++)if(f in e&&a.call(void 0,e[f],f,c)){a=f;break a}a=-1}return 0>a?null:l(b)?b.charAt(a):b[a]};var y=function(a,b){this.type=a;this.currentTarget=this.target=b;this.defaultPrevented=this.j=!1};y.prototype.preventDefault=function(){this.defaultPrevented=!0};var ua=function(a,b,c,d,e){this.listener=a;this.f=null;this.src=b;this.type=c;this.capture=!!d;this.h=e;this.key=++na;this.b=this.g=!1},va=function(a){a.b=!0;a.listener=null;a.f=null;a.src=null;a.h=null};var z=function(){return v("iPhone")&&!v("iPod")&&!v("iPad")};var A=function(a){this.src=a;this.a={};this.i=0};A.prototype.add=function(a,b,c,d,e){var f=a.toString();a=this.a[f];a||(a=this.a[f]=[],this.i++);var g;a:{for(g=0;g<a.length;++g){var k=a[g];if(!k.b&&k.listener==b&&k.capture==!!d&&k.h==e)break a}g=-1}-1<g?(b=a[g],c||(b.g=!1)):(b=new ua(b,this.src,f,!!d,e),b.g=c,a.push(b));return b};var B=function(){return(v("Chrome")||v("CriOS"))&&!v("Edge")};var C=v("Opera"),D=v("Trident")||v("MSIE"),wa=v("Edge"),E=v("Gecko")&&!(-1!=u.toLowerCase().indexOf("webkit")&&!v("Edge"))&&!(v("Trident")||v("MSIE"))&&!v("Edge"),F=-1!=u.toLowerCase().indexOf("webkit")&&!v("Edge"),xa=v("Macintosh"),ya=v("Windows"),za=v("Android"),Aa=z(),Ba=v("iPad"),Ca=v("iPod"),Da=function(){var a=h.document;return a?a.documentMode:void 0},G;
a:{var H="",I=function(){var a=u;if(E)return/rv\:([^\);]+)(\)|;)/.exec(a);if(wa)return/Edge\/([\d\.]+)/.exec(a);if(D)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(F)return/WebKit\/(\S+)/.exec(a);if(C)return/(?:Version)[ \/]?(\S+)/.exec(a)}();I&&(H=I?I[1]:"");if(D){var J=Da();if(null!=J&&J>parseFloat(H)){G=String(J);break a}}G=H}
var K=G,ga={},L=function(a){return ha(a,function(){for(var b=0,c=ia(String(K)).split("."),d=ia(String(a)).split("."),e=Math.max(c.length,d.length),f=0;0==b&&f<e;f++){var g=c[f]||"",k=d[f]||"";do{g=/(\d*)(\D*)(.*)/.exec(g)||["","","",""];k=/(\d*)(\D*)(.*)/.exec(k)||["","","",""];if(0==g[0].length&&0==k[0].length)break;b=t(0==g[1].length?0:parseInt(g[1],10),0==k[1].length?0:parseInt(k[1],10))||t(0==g[2].length,0==k[2].length)||t(g[2],k[2]);g=g[3];k=k[3]}while(0==b)}return 0<=b})},M;var Ea=h.document;
M=Ea&&D?Da()||("CSS1Compat"==Ea.compatMode?parseInt(K,10):5):void 0;!E&&!D||D&&9<=Number(M)||E&&L("1.9.1");D&&L("9");var Fa=D||C||F;var Ga=!D||9<=Number(M),Ha=!D||9<=Number(M),Ia=D&&!L("9");!F||L("528");E&&L("1.9b")||D&&L("8")||C&&L("9.5")||F&&L("528");E&&!L("8")||D&&L("9");(function(){var a;return ya?(a=/Windows NT ([0-9.]+)/,(a=a.exec(u))?a[1]:"0"):xa?(a=/10[_.][0-9_.]+/,(a=a.exec(u))?a[0].replace(/_/g,"."):"10"):za?(a=/Android\s+([^\);]+)(\)|;)/,(a=a.exec(u))?a[1]:""):Aa||Ba||Ca?(a=/(?:iPhone|CPU)\s+OS\s+(\S+)/,(a=a.exec(u))?a[1].replace(/_/g,"."):""):""})();var Ja=v("Firefox"),Ka=z()||v("iPod"),La=v("iPad"),Ma=v("Android")&&!(B()||v("Firefox")||v("Opera")||v("Silk")),Na=B(),Oa=v("Safari")&&!(B()||v("Coast")||v("Opera")||v("Edge")||v("Silk")||v("Android"))&&!(z()||v("iPad")||v("iPod"));var O=function(a){var b=N();b.google_image_requests||(b.google_image_requests=[]);var c=b.document.createElement("img");c.src=a;b.google_image_requests.push(c)};var P=function(a,b){y.call(this,a?a.type:"");this.relatedTarget=this.currentTarget=this.target=null;this.button=this.screenY=this.screenX=this.clientY=this.clientX=this.offsetY=this.offsetX=0;this.key="";this.charCode=this.keyCode=0;this.metaKey=this.shiftKey=this.altKey=this.ctrlKey=!1;this.c=this.state=null;if(a){var c=this.type=a.type,d=a.changedTouches?a.changedTouches[0]:null;this.target=a.target||a.srcElement;this.currentTarget=b;(b=a.relatedTarget)?E&&(q(b,"nodeName")||(b=null)):"mouseover"==
c?b=a.fromElement:"mouseout"==c&&(b=a.toElement);this.relatedTarget=b;null===d?(this.offsetX=F||void 0!==a.offsetX?a.offsetX:a.layerX,this.offsetY=F||void 0!==a.offsetY?a.offsetY:a.layerY,this.clientX=void 0!==a.clientX?a.clientX:a.pageX,this.clientY=void 0!==a.clientY?a.clientY:a.pageY,this.screenX=a.screenX||0,this.screenY=a.screenY||0):(this.clientX=void 0!==d.clientX?d.clientX:d.pageX,this.clientY=void 0!==d.clientY?d.clientY:d.pageY,this.screenX=d.screenX||0,this.screenY=d.screenY||0);this.button=
a.button;this.keyCode=a.keyCode||0;this.key=a.key||"";this.charCode=a.charCode||("keypress"==c?a.keyCode:0);this.ctrlKey=a.ctrlKey;this.altKey=a.altKey;this.shiftKey=a.shiftKey;this.metaKey=a.metaKey;this.state=a.state;this.c=a;a.defaultPrevented&&this.preventDefault()}};(function(){function a(){}a.prototype=y.prototype;P.l=y.prototype;P.prototype=new a;P.m=function(a,c,d){for(var b=Array(arguments.length-2),f=2;f<arguments.length;f++)b[f-2]=arguments[f];return y.prototype[c].apply(a,b)}})();
var Pa=[1,4,2],Q=function(a,b){return Ga?a.c.button==b:"click"==a.type?0==b:!!(a.c.button&Pa[b])};P.prototype.preventDefault=function(){P.l.preventDefault.call(this);var a=this.c;if(a.preventDefault)a.preventDefault();else if(a.returnValue=!1,Ia)try{if(a.ctrlKey||112<=a.keyCode&&123>=a.keyCode)a.keyCode=-1}catch(b){}};var R=function(a){return(a=a.exec(u))?a[1]:""};(function(){if(Ja)return R(/Firefox\/([0-9.]+)/);if(D||wa||C)return K;if(Na)return R(/Chrome\/([0-9.]+)/);if(Oa&&!(z()||v("iPad")||v("iPod")))return R(/Version\/([0-9.]+)/);if(Ka||La){var a=/Version\/(\S+).*Mobile\/(\S+)/.exec(u);if(a)return a[1]+"."+a[2]}else if(Ma)return(a=R(/Android\s+([0-9.]+)/))?a:R(/Version\/([0-9.]+)/);return""})();var ra=function(){var a,b,c,d;a=document;if(a.querySelectorAll&&a.querySelector)return a.querySelectorAll(".GoogleActiveViewClass");if(a.getElementsByClassName){var e=a.getElementsByClassName("GoogleActiveViewClass");return e}e=a.getElementsByTagName("*");d={};for(b=c=0;a=e[b];b++){var f=a.className,g;if(g="function"==typeof f.split)g=0<=qa(f.split(/\s+/),"GoogleActiveViewClass");g&&(d[c++]=a)}d.length=c;return d},N=function(a){return a?a.parentWindow||a.defaultView:window};var S="closure_lm_"+(1E6*Math.random()|0),T={},Qa=0,U=function(a,b,c,d,e){if("array"==aa(b))for(var f=0;f<b.length;f++)U(a,b[f],c,d,e);else if(c=Ra(c),a&&a[ma])a.o(b,c,d,e);else{if(!b)throw Error("Invalid event type");var f=!!d,g=V(a);g||(a[S]=g=new A(a));c=g.add(b,c,!1,d,e);if(!c.f){d=Sa();c.f=d;d.src=a;d.listener=c;if(a.addEventListener)a.addEventListener(b.toString(),d,f);else if(a.attachEvent)a.attachEvent(Ta(b.toString()),d);else throw Error("addEventListener and attachEvent are unavailable.");
Qa++}}},Sa=function(){var a=Ua,b=Ha?function(c){return a.call(b.src,b.listener,c)}:function(c){c=a.call(b.src,b.listener,c);if(!c)return c};return b},Ta=function(a){return a in T?T[a]:T[a]="on"+a},Wa=function(a,b,c,d){var e=!0;if(a=V(a))if(b=a.a[b.toString()])for(b=b.concat(),a=0;a<b.length;a++){var f=b[a];f&&f.capture==c&&!f.b&&(f=Va(f,d),e=e&&!1!==f)}return e},Va=function(a,b){var c=a.listener,d=a.h||a.src;if(a.g&&"number"!=typeof a&&a&&!a.b){var e=a.src;if(e&&e[ma])e.s(a);else{var f=a.type,g=a.f;
e.removeEventListener?e.removeEventListener(f,g,a.capture):e.detachEvent&&e.detachEvent(Ta(f),g);Qa--;if(f=V(e)){var g=a.type,k;if(k=g in f.a){k=f.a[g];var m=qa(k,a),sa;(sa=0<=m)&&Array.prototype.splice.call(k,m,1);k=sa}k&&(va(a),0==f.a[g].length&&(delete f.a[g],f.i--));0==f.i&&(f.src=null,e[S]=null)}else va(a)}}return c.call(d,b)},Ua=function(a,b){if(a.b)return!0;if(!Ha){if(!b)a:{b=["window","event"];for(var c=h,d;d=b.shift();)if(null!=c[d])c=c[d];else{b=null;break a}b=c}d=b;b=new P(d,this);c=!0;
if(!(0>d.keyCode||void 0!=d.returnValue)){a:{var e=!1;if(0==d.keyCode)try{d.keyCode=-1;break a}catch(g){e=!0}if(e||void 0==d.returnValue)d.returnValue=!0}d=[];for(e=b.currentTarget;e;e=e.parentNode)d.push(e);a=a.type;for(e=d.length-1;!b.j&&0<=e;e--){b.currentTarget=d[e];var f=Wa(d[e],a,!0,b),c=c&&f}for(e=0;!b.j&&e<d.length;e++)b.currentTarget=d[e],f=Wa(d[e],a,!1,b),c=c&&f}return c}return Va(a,new P(b,this))},V=function(a){a=a[S];return a instanceof A?a:null},W="__closure_events_fn_"+(1E9*Math.random()>>>
0),Ra=function(a){if("function"==aa(a))return a;a[W]||(a[W]=function(b){return a.handleEvent(b)});return a[W]};var Xa=function(a){return"//pagead2.googlesyndication.com/pagead/gen_204?id=sodar&v=14&t="+a},X=function(a,b,c,d){a=Xa(1)+"&e="+a;c&&(a+="&li="+r(c));d&&(a+="&cv="+r(d));b&&(a+="&bgai="+r(b));O(a)},Ya=function(a,b,c,d,e){"0.01"<Math.random()||(a="//pagead2.googlesyndication.com/pagead/gen_204?id=sodarir&v=14&d="+(a?1:0)+"&s="+(b?1:0)+"&f=0.01",d&&(a+="&li="+r(d)),e&&(a+="&cv="+r(e)),c&&(a+="&bgai="+r(c)),O(a))},Z=function(a,b){return function(){try{return a.apply(this,arguments)}catch(k){if(!(1<=
Y.count)){var c=Xa(3)+"&c="+r(b)+"&ex=",d=k.toString();k.name&&-1==d.indexOf(k.name)&&(d+=": "+k.name);k.message&&-1==d.indexOf(k.message)&&(d+=": "+k.message);if(k.stack){var e=k.stack,f=d;try{-1==e.indexOf(f)&&(e=f+"\n"+e);for(var g;e!=g;)g=e,e=e.replace(/((https?:\/..*\/)[^\/:]*:\d+(?:.|\n)*)\2/,"$1");d=e.replace(/\n */g,"\n")}catch(m){d=f}}c+=r(d);2E3<c.length?X(11):O(c);Y.count+=1}}}},Y={count:0},Za=function(a,b){b=Z(b,"i:lh");var c={capture:void 0};a.addEventListener?a.addEventListener("load",
b,la?c:c?c.capture||!1:!1):a.attachEvent&&a.attachEvent("onload",b);return b},$a=function(a,b){var c,d=b;c=Za(a,function(){if(d){var b=d;d=null;var f={capture:void 0};a.removeEventListener?a.removeEventListener("load",c,la?f:f?f.capture||!1:!1):a.detachEvent&&a.detachEvent("onload",c);return b.apply(this,arguments)}})};var ab={};var cb=function(a){return bb(a,function(a,c){var b=1;if(q(c,"style")&&c.style){var b=parseFloat,e;a:{e=9==c.nodeType?c:c.ownerDocument||c.document;if(e.defaultView&&e.defaultView.getComputedStyle&&(e=e.defaultView.getComputedStyle(c,null))){e=e.opacity||e.getPropertyValue("opacity")||"";break a}e=""}if(!e){e=c.style[ja()];if("undefined"!==typeof e)c=e;else{e=c.style;var f=ab.opacity;if(!f){var g=ja(),f=g;void 0===c.style[g]&&(g=(F?"Webkit":E?"Moz":D?"ms":C?"O":null)+ka(g),void 0!==c.style[g]&&(f=
g));ab.opacity=f}c=e[f]||""}e=c}b=b(e);if("number"!=typeof b||isNaN(b))b=1}return b*a},function(a){return 0===a},1)},bb=function(a,b,c,d){if(!a)return d;d=db(a,b,c,d);if(!d.done)try{var e=9==a.nodeType?a:a.ownerDocument||a.document,f=e&&N(e);return bb(f&&f.frameElement,b,c,d.value)}catch(g){}return d.value},db=function(a,b,c,d){if(!a)return{value:d,done:!1};d=b(d,a);var e=c(d,a);if(!e&&q(a,"parentElement")){e=db;a:{var f;if(Fa&&!(D&&L("9")&&!L("10")&&h.SVGElement&&a instanceof h.SVGElement)&&(f=a.parentElement)){a=
f;break a}f=a.parentNode;a=ba(f)&&1==f.nodeType?f:null}b=e(a,b,c,d)}else b={done:e,value:d};return b};var eb=function(a){var b=a._scs_,c=a._li_,d=ta(function(a){var b;if(b="DIV"==a.tagName)b=0==a.id.lastIndexOf("DfaVisibilityIdentifier_",0);return b});if(d&&d.getBoundingClientRect){var e=Math.floor(100*cb(d)),f=0;U(d,"mouseover",function(){++f});U(d,"mousedown",function(a){var g=d.getBoundingClientRect(),m=0;Q(a,0)?m=1:Q(a,2)?m=4:Q(a,1)&&(m=2);m&&a.shiftKey&&(m|=8);m&&a.altKey&&(m|=16);m&&a.ctrlKey&&(m|=32);a="//pagead2.googlesyndication.com/pagead/gen_204?id=sodarde&v=14&nx="+Math.floor(a.clientX-
g.left)+"&ny="+Math.floor(a.clientY-g.top)+"&bgai="+r(b)+"&mb="+m+"&ox="+e+"&nm="+f;c&&(a+="&li="+r(c));O(a)})}};var fb=function(){var a=N().GoogleTyFxhY;if(!a)return X(13),null;if(0==a.length)return X(1),null;a=a.shift();return(a._scs_||a._cv_)&&a._bgu_&&a._bgp_?a:(X(2),null)},gb=function(a,b,c,d,e,f){var g;a:{try{g=a.contentWindow||(a.contentDocument?N(a.contentDocument):null);break a}catch(m){}g=null}if(g){a=(0==a.src.indexOf("https:")?"https":"http")+"://tpc.googlesyndication.com";var k={0:"0"};k["1"]=b||"";k["2"]=c;k["3"]=d;k["4"]=e||"";k["5"]=f||"";g.postMessage(fa(k),a)}else X(3)},hb=function(a){var b=
document.createElement("iframe");$a(b,n(gb,null,b,a._scs_,a._bgu_,a._bgp_,a._li_,a._cv_));b.src="//tpc.googlesyndication.com/sodar/9im3l02I.html";b.width="0";b.height="0";b.style.display="none";document.body.appendChild(b)};(function(a,b,c){Z(a,b).apply(null,Array.prototype.slice.call(arguments,2))})(function(){var a=N().postMessage?!0:!1,b=!1,c=null,d=null,e=null,f=fb();f&&(b=!0,c=f._scs_,d=f._li_,e=f._cv_,a?hb(f):X(8,c,d,e),h.setTimeout(Z(function(){return eb(f)},"i:sdl"),0));Ya(b,a,c,d,e)},"i:i");}).call(this);
