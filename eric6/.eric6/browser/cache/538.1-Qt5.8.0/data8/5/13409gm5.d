   �         Zhttps://tpc.googlesyndication.com/pagead/js/r20170426/r20110914/activeview/osd_listener.js     %�Na��       ����          
     O K           �      P3P   mpolicyref="https://www.googleadservices.com/pagead/p3p.xml", CP="NOI DEV PSA PSD IVA IVD OTP OUR OTR IND OTC"   Timing-Allow-Origin   *   Content-Type   text/javascript; charset=UTF-8   ETag   14746998808141519092   Date   Wed, 26 Apr 2017 19:12:08 GMT   Expires   Wed, 10 May 2017 19:12:08 GMT   X-Content-Type-Options   nosniff   Content-Disposition   attachment; filename="f.txt"   Content-Encoding   gzip   Server   cafe   X-XSS-Protection   1; mode=block   Cache-Control   public, max-age=1209600   Age   211987   Alt-Svc   %quic=":443"; ma=2592000; v="37,36,35" (function(){var h=this,aa=function(){},ba=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==b&&"undefined"==typeof a.call)return"object";return b},m=function(a){return"string"==typeof a},ca=function(a,b,c){return a.call.apply(a.bind,arguments)},fa=function(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}},ga=function(a,b,c){ga=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?ca:fa;return ga.apply(null,arguments)},ha=function(a,b){var c=Array.prototype.slice.call(arguments,1);return function(){var b=c.slice();b.push.apply(b,arguments);return a.apply(this,b)}},q=Date.now||function(){return+new Date},r=function(a,b){a=a.split(".");var c=h;a[0]in c||!c.execScript||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)a.length||void 0===b?c=c[d]&&c[d]!==Object.prototype[d]?c[d]:c[d]={}:c[d]=b};var ia=function(a,b,c,d,e){if(e)c=a+("&"+b+"="+c);else{var f="&"+b+"=",g=a.indexOf(f);0>g?c=a+f+c:(g+=f.length,f=a.indexOf("&",g),c=0<=f?a.substring(0,g)+c+a.substring(f):a.substring(0,g)+c)}return 2E3<c.length?void 0!==d?ia(a,b,d,void 0,e):a:c};var ja=function(){var a=/[&\?#]exk=([^& ]+)/.exec(t.location.href);return a&&2==a.length?a[1]:null};var ka=String.prototype.trim?function(a){return a.trim()}:function(a){return a.replace(/^[\s\xa0]+|[\s\xa0]+$/g,"")},ma=function(a,b){var c=0;a=ka(String(a)).split(".");b=ka(String(b)).split(".");for(var d=Math.max(a.length,b.length),e=0;0==c&&e<d;e++){var f=a[e]||"",g=b[e]||"";do{f=/(\d*)(\D*)(.*)/.exec(f)||["","","",""];g=/(\d*)(\D*)(.*)/.exec(g)||["","","",""];if(0==f[0].length&&0==g[0].length)break;c=la(0==f[1].length?0:parseInt(f[1],10),0==g[1].length?0:parseInt(g[1],10))||la(0==f[2].length,0==g[2].length)||la(f[2],g[2]);f=f[3];g=g[3]}while(0==c)}return c},la=function(a,b){return a<b?-1:a>b?1:0};var na=Array.prototype.indexOf?function(a,b,c){return Array.prototype.indexOf.call(a,b,c)}:function(a,b,c){c=null==c?0:0>c?Math.max(0,a.length+c):c;if(m(a))return m(b)&&1==b.length?a.indexOf(b,c):-1;for(;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},oa=Array.prototype.forEach?function(a,b,c){Array.prototype.forEach.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=m(a)?a.split(""):a,f=0;f<d;f++)f in e&&b.call(c,e[f],f,a)},pa=Array.prototype.filter?function(a,b,c){return Array.prototype.filter.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=[],f=0,g=m(a)?a.split(""):a,k=0;k<d;k++)if(k in g){var l=g[k];b.call(c,l,k,a)&&(e[f++]=l)}return e},qa=Array.prototype.map?function(a,b,c){return Array.prototype.map.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=Array(d),f=m(a)?a.split(""):a,g=0;g<d;g++)g in f&&(e[g]=b.call(c,f[g],g,a));return e},ra=Array.prototype.reduce?function(a,b,c,d){d&&(b=ga(b,d));return Array.prototype.reduce.call(a,b,c)}:function(a,b,c,d){var e=c;oa(a,function(c,g){e=b.call(d,e,c,g,a)});return e},sa=Array.prototype.some?function(a,b,c){return Array.prototype.some.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=m(a)?a.split(""):a,f=0;f<d;f++)if(f in e&&b.call(c,e[f],f,a))return!0;return!1},ta=function(a){var b=a.length;if(0<b){for(var c=Array(b),d=0;d<b;d++)c[d]=a[d];return c}return[]};var u;a:{var ua=h.navigator;if(ua){var va=ua.userAgent;if(va){u=va;break a}}u=""}var v=function(a){return-1!=u.indexOf(a)},wa=function(a){for(var b=/(\w[\w ]+)\/([^\s]+)\s*(?:\((.*?)\))?/g,c=[],d;d=b.exec(a);)c.push([d[1],d[2],d[3]||void 0]);return c};var xa=function(a,b){for(var c in a)b.call(void 0,a[c],c,a)},ya=function(a,b){return null!==a&&b in a};var za=function(){return v("Trident")||v("MSIE")},Aa=function(){return(v("Chrome")||v("CriOS"))&&!v("Edge")},Ca=function(){function a(a){a:{var b=d;for(var e=a.length,k=m(a)?a.split(""):a,l=0;l<e;l++)if(l in k&&b.call(void 0,k[l],l,a)){b=l;break a}b=-1}return c[0>b?null:m(a)?a.charAt(b):a[b]]||""}var b=u;if(za())return Ba(b);var b=wa(b),c={};oa(b,function(a){c[a[0]]=a[1]});var d=ha(ya,c);return v("Opera")?a(["Version","Opera"]):v("Edge")?a(["Edge"]):Aa()?a(["Chrome","CriOS"]):(b=b[2])&&b[1]||""},Ba=function(a){var b=/rv: *([\d\.]*)/.exec(a);if(b&&b[1])return b[1];var b="",c=/MSIE +([\d\.]+)/.exec(a);if(c&&c[1])if(a=/Trident\/(\d.\d)/.exec(a),"7.0"==c[1])if(a&&a[1])switch(a[1]){case "4.0":b="8.0";break;case "5.0":b="9.0";break;case "6.0":b="10.0";break;case "7.0":b="11.0"}else b="7.0";else b=c[1];return b};var w=function(){return v("iPhone")&&!v("iPod")&&!v("iPad")};var Da=function(a){Da[" "](a);return a};Da[" "]=aa;var Fa=function(a,b){var c=Ea;return Object.prototype.hasOwnProperty.call(c,a)?c[a]:c[a]=b(a)};var Ha=v("Opera"),x=za(),Ja=v("Edge"),y=v("Gecko")&&!(-1!=u.toLowerCase().indexOf("webkit")&&!v("Edge"))&&!(v("Trident")||v("MSIE"))&&!v("Edge"),Ka=-1!=u.toLowerCase().indexOf("webkit")&&!v("Edge"),La=v("Macintosh"),Ma=v("Windows"),Na=v("Android"),Oa=w(),Pa=v("iPad"),Qa=v("iPod"),Ra=function(){var a=h.document;return a?a.documentMode:void 0},Sa;a:{var Ta="",Ua=function(){var a=u;if(y)return/rv\:([^\);]+)(\)|;)/.exec(a);if(Ja)return/Edge\/([\d\.]+)/.exec(a);if(x)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(Ka)return/WebKit\/(\S+)/.exec(a);if(Ha)return/(?:Version)[ \/]?(\S+)/.exec(a)}();Ua&&(Ta=Ua?Ua[1]:"");if(x){var Va=Ra();if(null!=Va&&Va>parseFloat(Ta)){Sa=String(Va);break a}}Sa=Ta}var Wa=Sa,Ea={},z=function(a){return Fa(a,function(){return 0<=ma(Wa,a)})},Xa;var Ya=h.document;Xa=Ya&&x?Ra()||("CSS1Compat"==Ya.compatMode?parseInt(Wa,10):5):void 0;var Za=v("Firefox"),$a=w()||v("iPod"),ab=v("iPad"),bb=v("Android")&&!(Aa()||v("Firefox")||v("Opera")||v("Silk")),cb=Aa(),db=v("Safari")&&!(Aa()||v("Coast")||v("Opera")||v("Edge")||v("Silk")||v("Android"))&&!(w()||v("iPad")||v("iPod"));var fb=function(a,b){var c=eb();this.label=a;this.type=b;this.value=c;this.duration=0;this.uniqueId=this.label+"_"+this.type+"_"+Math.random()};var A=function(a,b){this.m=[];this.s=b||h;var c=null;b&&(b.google_js_reporting_queue=b.google_js_reporting_queue||[],this.m=b.google_js_reporting_queue,c=b.google_measure_js_timing);this.g=null!=c?c:Math.random()<a};A.prototype.disable=function(){oa(this.m,this.B,this);this.m.length=0;this.g=!1};A.prototype.B=function(a){var b=this.s.performance;a&&b&&b.clearMarks&&(b.clearMarks("goog_"+a.uniqueId+"_start"),b.clearMarks("goog_"+a.uniqueId+"_end"))};A.prototype.start=function(a,b){if(!this.g)return null;a=new fb(a,b);(b=this.s.performance)&&b.mark&&b.mark("goog_"+a.uniqueId+"_start");return a};A.prototype.end=function(a){if(this.g){a.duration=eb()-a.value;var b=this.s.performance;b&&b.mark&&b.mark("goog_"+a.uniqueId+"_end");this.g&&this.m.push(a)}};var eb=function(){var a=h.performance;return a&&a.now?a.now():q()};var gb=function(){var a=!1;try{var b=Object.defineProperty({},"passive",{get:function(){a=!0}});h.addEventListener("test",null,b)}catch(c){}return a}(),hb=function(a,b,c,d){a.addEventListener?a.addEventListener(b,c,gb?d:d?d.capture||!1:!1):a.attachEvent&&a.attachEvent("on"+b,c)},ib=function(a,b,c){a.removeEventListener?a.removeEventListener(b,c,gb?void 0:!1):a.detachEvent&&a.detachEvent("on"+b,c)};var jb=function(a,b,c){if("array"==ba(b))for(var d=0;d<b.length;d++)jb(a,String(b[d]),c);else null!=b&&c.push("&",a,""===b?"":"=",encodeURIComponent(String(b)))},kb=function(a,b,c){for(c=c||0;c<b.length;c+=2)jb(b[c],b[c+1],a);return a},lb=function(a,b){var c=2==arguments.length?kb([a],arguments[1],0):kb([a],arguments,1);if(c[1]){var d=c[0],e=d.indexOf("#");0<=e&&(c.push(d.substr(e)),c[0]=d=d.substr(0,e));e=d.indexOf("?");0>e?c[1]="?":e==d.length-1&&(c[1]=void 0)}return c.join("")};var mb=function(a){try{var b;if(b=!!a&&null!=a.location.href)a:{try{Da(a.foo);b=!0;break a}catch(c){}b=!1}return b}catch(c){return!1}},nb=function(a,b){for(var c in a)Object.prototype.hasOwnProperty.call(a,c)&&b.call(void 0,a[c],c,a)},pb=function(){var a=ob;if(!a)return"";var b=/.*[&#?]google_debug(=[^&]*)?(&.*)?$/;try{var c=b.exec(decodeURIComponent(a));if(c)return c[1]&&1<c[1].length?c[1].substring(1):"true"}catch(d){}return""};var qb=function(a,b){this.H=a;this.I=b},rb=function(a,b){this.url=a;this.C=!!b;this.depth=null};var sb=function(a,b,c,d,e){this.D=c||4E3;this.j=a||"&";this.P=b||",$";this.o=void 0!==d?d:"trn";this.Z=e||null;this.A=!1;this.i={};this.V=0;this.f=[]},tb=function(a,b){var c={};c[a]=b;return[c]},vb=function(a,b,c,d,e){var f=[];nb(a,function(a,k){(a=ub(a,b,c,d,e))&&f.push(k+"="+a)});return f.join(b)},ub=function(a,b,c,d,e){if(null==a)return"";b=b||"&";c=c||",$";"string"==typeof c&&(c=c.split(""));if(a instanceof Array){if(d=d||0,d<c.length){for(var f=[],g=0;g<a.length;g++)f.push(ub(a[g],b,c,d+1,e));return f.join(c[d])}}else if("object"==typeof a)return e=e||0,2>e?encodeURIComponent(vb(a,b,c,d,e+1)):"...";return encodeURIComponent(String(a))},B=function(a,b,c,d){a.f.push(b);a.i[b]=tb(c,d)},xb=function(a,b,c,d){b=b+"//"+c+d;var e=wb(a)-d.length-0;if(0>e)return"";a.f.sort(function(a,b){return a-b});d=null;c="";for(var f=0;f<a.f.length;f++)for(var g=a.f[f],k=a.i[g],l=0;l<k.length;l++){if(!e){d=null==d?g:d;break}var p=vb(k[l],a.j,a.P);if(p){p=c+p;if(e>=p.length){e-=p.length;b+=p;c=a.j;break}else a.A&&(c=e,p[c-1]==a.j&&--c,b+=p.substr(0,c),c=a.j,e=0);d=null==d?g:d}}f="";a.o&&null!=d&&(f=c+a.o+"="+(a.Z||d));return b+f+""},wb=function(a){if(!a.o)return a.D;var b=1,c;for(c in a.i)b=c.length>b?c.length:b;return a.D-a.o.length-b-a.j.length-1};var zb=function(a,b,c,d,e){if((d?a.Y:Math.random())<(e||a.R))try{if(c instanceof sb)var f=c;else f=new sb,nb(c,function(a,b){var c=f,d=c.V++;a=tb(b,a);c.f.push(d);c.i[d]=a});var g=xb(f,a.X,a.S,a.W+b+"&");g&&yb(h,g)}catch(k){}},yb=function(a,b,c){a.google_image_requests||(a.google_image_requests=[]);var d=a.document.createElement("img");if(c){var e=function(a){c(a);ib(d,"load",e);ib(d,"error",e)};hb(d,"load",e);hb(d,"error",e)}d.src=b;a.google_image_requests.push(d)};var Ab=function(a,b,c,d){this.G=a;this.U=b;this.v=c;this.w=null;this.T=this.F;this.h=void 0===d?null:d;this.J=!1},Cb=function(a,b,c){try{if(a.h&&a.h.g){var d=a.h.start(b.toString(),3);var e=c();a.h.end(d)}else e=c()}catch(g){c=a.v;try{a.h&&d&&a.h.B(d);var f=Bb(g);c=a.T.call(a,b,f,void 0,void 0)}catch(k){a.F(217,k)}if(!c)throw g;}return e},C=function(a,b){var c=Db;return function(d){for(var e=[],f=0;f<arguments.length;++f)e[f-0]=arguments[f];return Cb(c,a,function(){return b.apply(void 0,e)})}};Ab.prototype.F=function(a,b,c,d,e){e=e||this.U;try{var f=new sb;f.A=!0;B(f,1,"context",a);b instanceof Eb||(b=Bb(b));B(f,2,"msg",b.message.substring(0,512));b.fileName&&B(f,3,"file",b.fileName);0<b.lineNumber&&B(f,4,"line",b.lineNumber.toString());b={};if(this.w)try{this.w(b)}catch(da){}if(d)try{d(b)}catch(da){}d=[b];f.f.push(5);f.i[5]=d;b=h;d=[];var g=null;do{var k=b;if(mb(k)){var l=k.location.href;g=k.document&&k.document.referrer||null}else l=g,g=null;d.push(new rb(l||""));try{b=k.parent}catch(da){b=null}}while(b&&k!=b);l=0;for(var p=d.length-1;l<=p;++l)d[l].depth=p-l;k=h;if(k.location&&k.location.ancestorOrigins&&k.location.ancestorOrigins.length==d.length-1)for(l=1;l<d.length;++l){var n=d[l];n.url||(n.url=k.location.ancestorOrigins[l-1]||"",n.C=!0)}var Ga=new rb(h.location.href,!1),Ia=d.length-1;for(k=Ia;0<=k;--k){var E=d[k];if(E.url&&!E.C){Ga=E;break}}var E=null,xc=d.length&&d[Ia].url;0!=Ga.depth&&xc&&(E=d[Ia]);var ea=new qb(Ga,E);ea.I&&B(f,6,"top",ea.I.url||"");B(f,7,"url",ea.H.url||"");zb(this.G,e,f,this.J,c)}catch(da){try{zb(this.G,e,{context:"ecmserr",rctx:a,msg:Fb(da),url:ea.H.url},this.J,c)}catch(Pc){}}return this.v};var Bb=function(a){return new Eb(Fb(a),a.fileName,a.lineNumber)},Fb=function(a){var b=a.toString();a.name&&-1==b.indexOf(a.name)&&(b+=": "+a.name);a.message&&-1==b.indexOf(a.message)&&(b+=": "+a.message);if(a.stack){a=a.stack;var c=b;try{-1==a.indexOf(c)&&(a=c+"\n"+a);for(var d;a!=d;)d=a,a=a.replace(/((https?:\/..*\/)[^\/:]*:\d+(?:.|\n)*)\2/,"$1");b=a.replace(/\n */g,"\n")}catch(e){b=c}}return b},Eb=function(a,b,c){this.message=a;this.fileName=b||"";this.lineNumber=c||-1};!y&&!x||x&&9<=Number(Xa)||y&&z("1.9.1");x&&z("9");var D=document,t=window;var Gb=null,F=function(a,b){yb(a,b,void 0)},Hb=function(){if(!D.body)return!1;if(!Gb){var a=D.createElement("iframe");a.style.display="none";a.id="anonIframe";Gb=a;D.body.appendChild(a)}return!0},Ib=!!window.google_async_iframe_id,G=Ib&&window.parent||window;var Db,H;if(Ib&&!mb(G)){var Jb="."+D.domain;try{for(;2<Jb.split(".").length&&!mb(G);)D.domain=Jb=Jb.substr(Jb.indexOf(".")+1),G=window.parent}catch(a){}mb(G)||(G=window)}H=G;var Kb=new A(1,H);Db=new Ab(new function(){this.X="http:"===t.location.protocol?"http:":"https:";this.S="pagead2.googlesyndication.com";this.W="/pagead/gen_204?id=";this.R=.01;this.Y=Math.random()},"jserror",!0,Kb);"complete"==H.document.readyState?H.google_measure_js_timing||Kb.disable():Kb.g&&hb(H,"load",function(){H.google_measure_js_timing||Kb.disable()});var I=function(a,b){return C(a,b)};x&&z("9");!Ka||z("528");y&&z("1.9b")||x&&z("8")||Ha&&z("9.5")||Ka&&z("528");y&&!z("8")||x&&z("9");var Lb={O:"ud=1",N:"ts=0",fa:"sc=1",L:"gz=1",ea:"rz=1",ha:"efp=1",ca:"dcl=1",da:"mlc=1",aa:"rafv=1",$:"rafx=1",M:"opp=1",ia:"mcvt=1",ba:"lom=1",ga:"csbv=1",K:"pvul=1"};if(D&&D.URL){var ob=D.URL,Mb=!(ob&&0<pb().length);Db.v=Mb}var J=function(a,b,c,d){hb(a,b,C(d,c),{capture:void 0})},Nb=function(a){var b=["IMG","FRAME","IFRAME"];return sa(b,function(b){return a.nodeName==String(b)})?[a]:ra(b,function(b,d){return b.concat(ta((a||document).getElementsByTagName(String(d))))},[])},Pb=function(){var a=K.c,b=Ob;if(a){for(var c=0,d=null,a=Nb(a),e=0;e<a.length;e++){var f=!1,d=a[e];switch(d.nodeName){case "IMG":if(d.complete||d.naturalWidth)f=!0;break;case "FRAME":case "IFRAME":"complete"==d.readyState&&(f=!0)}f||(c++,J(d,"load",function(){c--;c||b(null)},116))}a=d=null;c||b(null)}},Qb=function(a,b){var c=0,d=function(){a();c++;10>c&&t.setTimeout(C(b,d),100)};d()};var Rb=function(a,b){this.b=a||0;this.a=b||""},Sb=function(a,b){a.b&&(b[4]=a.b);a.a&&(b[12]=a.a)};Rb.prototype.match=function(a){return(this.b||this.a)&&(a.b||a.a)?this.a||a.a?this.a==a.a:this.b||a.b?this.b==a.b:!1:!1};Rb.prototype.toString=function(){var a=""+this.b;this.a&&(a+="-"+this.a);return a};var Tb=function(){var a=L,b=[];a.b&&b.push("adk="+a.b);a.a&&b.push("exk="+a.a);return b},Ub=function(a){var b=[];xa(a,function(a,d){d=encodeURIComponent(d);m(a)&&(a=encodeURIComponent(a));b.push(d+"="+a)});b.push("24="+(new Date).getTime());return b.join("\n")},M=0,Vb=0,Wb=function(a){var b=0,c=t;try{if(c&&c.Goog_AdSense_getAdAdapterInstance)return c}catch(d){}for(;c&&5>b;){try{if(c.google_osd_static_frame)return c}catch(d){}try{if(c.aswift_0&&(!a||c.aswift_0.google_osd_static_frame))return c.aswift_0}catch(d){}b++;c=c!=c.parent?c.parent:null}return null},Xb=function(a,b,c,d,e,f,g,k){g=g||aa;if(10<Vb)t.clearInterval(M),g();else if(++Vb,t.postMessage&&(b.b||b.a)){if(g=Wb(!0)){var l={};Sb(b,l);l[0]="goog_request_monitoring";l[6]=a;c&&(l[27]=c);l[16]=!!d;e&&e.length&&(l[17]=e.join(","));f&&(l[19]=f);k&&(l[28]=k);try{var p=Ub(l);g.postMessage(p,"*")}catch(n){}}}else t.clearInterval(M),g()};var N=!1,Yb=function(a){if(a=a.match(/[\d]+/g))a.length=3};(function(){if(navigator.plugins&&navigator.plugins.length){var a=navigator.plugins["Shockwave Flash"];if(a&&(N=!0,a.description)){Yb(a.description);return}if(navigator.plugins["Shockwave Flash 2.0"]){N=!0;return}}if(navigator.mimeTypes&&navigator.mimeTypes.length&&(a=navigator.mimeTypes["application/x-shockwave-flash"],N=!(!a||!a.enabledPlugin))){Yb(a.enabledPlugin.description);return}try{var b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");N=!0;Yb(b.GetVariable("$version"));return}catch(c){}try{b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");N=!0;return}catch(c){}try{b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash"),N=!0,Yb(b.GetVariable("$version"))}catch(c){}})();(function(){if(Ma){var a=/Windows NT ([0-9.]+)/;return(a=a.exec(u))?a[1]:"0"}return La?(a=/10[_.][0-9_.]+/,(a=a.exec(u))?a[0].replace(/_/g,"."):"10"):Na?(a=/Android\s+([^\);]+)(\)|;)/,(a=a.exec(u))?a[1]:""):Oa||Pa||Qa?(a=/(?:iPhone|CPU)\s+OS\s+(\S+)/,(a=a.exec(u))?a[1].replace(/_/g,"."):""):""})();var O=function(a){return(a=a.exec(u))?a[1]:""};(function(){if(Za)return O(/Firefox\/([0-9.]+)/);if(x||Ja||Ha)return Wa;if(cb)return w()||v("iPad")||v("iPod")?O(/CriOS\/([0-9.]+)/):O(/Chrome\/([0-9.]+)/);if(db&&!(w()||v("iPad")||v("iPod")))return O(/Version\/([0-9.]+)/);if($a||ab){var a=/Version\/(\S+).*Mobile\/(\S+)/.exec(u);if(a)return a[1]+"."+a[2]}else if(bb)return(a=O(/Android\s+([0-9.]+)/))?a:O(/Version\/([0-9.]+)/);return""})();var Zb=function(){var a=t;return null!==a&&a.top!=a},$b=function(){this.c=null;this.u=this.l=0},ac=function(){var a=null;if(Zb())a=t.document.body;else{var b=(t.document||document).getElementsByTagName("SCRIPT");0<b.length&&(b=b[b.length-1])&&b.parentElement&&(a=b.parentElement)}return a},bc=function(){var a=ac(),b=new $b;if(a){var c=pa(a.children,function(a){return 15<a.clientHeight&&15<a.clientHeight});b.l=a.children.length;b.u=c.length;1==b.l?b.c=a.children[0]:1==b.u?b.c=c[0]:1<b.l&&(b.c=a)}return b};var P=0,Q="",R=[],S=!1,T=!1,U=!1,cc=!0,dc=!1,ec=!1,fc=!1,gc=!1,hc=!1,ic=0,jc=0,V=0,kc=[],L=null,lc="",mc=[],nc=null,oc=[],pc=!1,qc="",rc="",sc=(new Date).getTime(),K=null,tc=!1,uc=["1","0","3"],W=0,X=0,vc=0,wc="",yc=!1,zc=!1,Ac=function(){return!(!K||!K.c)},Bc=function(a,b,c){S&&(cc||3!=(c||3)||ec)&&Y(a,b,!0);if(U||T&&dc)Y(a,b),T=U=!1},Cc=function(){var a=nc;return a?2!=a():!0},Y=function(a,b,c){if((b=b||lc)&&!pc&&(2==X||c)&&Cc()){for(var d=0;d<R.length;++d){var e=Dc(R[d],b,c);F(a,e)}gc=!0;c?S=!1:pc=!0}},Ec=function(a,b){var c=[];a&&c.push("avi="+a);b&&c.push("cid="+b);return c.length?"//pagead2.googlesyndication.com/activeview?"+c.join("&"):"//pagead2.googlesyndication.com/activeview"},Dc=function(a,b,c){c=c?"osdim":U?"osd2":"osdtos";a=[a,-1<a.indexOf("?")?"&id=":"?id=",c];"osd2"==c&&T&&dc&&a.push("&ts=1");a.push("&ti=1");a.push("&",b);a.push("&uc="+vc);Ac()?a.push("&tgt="+(Ac()?K.c.tagName:"")):a.push("&tgt=nf");a.push("&cl="+(tc?1:0));hc&&(a.push("&lop=1"),b=q()-ic,a.push("&tslp="+b));if(b=K)a.push("&cec="+b.l),a.push("&clc="+b.u),b.c?a.push("&cd="+b.c.clientWidth+"x"+b.c.clientHeight):a.push("&cd=nf");b=a.join("");for(a=0;a<mc.length;a++){try{var d=mc[a]()}catch(e){}c="max_length";2<=d.length&&(3==d.length&&(c=d[2]),b=ia(b,encodeURIComponent(d[0]),encodeURIComponent(d[1]),c))}2E3<b.length&&(b=b.substring(0,2E3));return b},Z=function(a){if(qc){try{var b=ia(qc,"vi",a);Hb()&&F(Gb.contentWindow,b)}catch(c){}0<=na(uc,a)&&(qc="")}},Fc=function(){Z("-1")},Hc=function(a){if(a&&a.data&&m(a.data)){var b=a.data;if(m(b)){var c={};for(var b=b.split("\n"),d=0;d<b.length;d++){var e=b[d].indexOf("=");if(!(0>=e)){var f=Number(b[d].substr(0,e)),e=b[d].substr(e+1);switch(f){case 5:case 8:case 11:case 15:case 16:case 18:case 26:e="true"==e;break;case 4:case 7:case 6:case 14:case 20:case 21:case 22:case 23:case 24:case 25:e=Number(e);break;case 3:case 19:if("function"==ba(decodeURIComponent))try{e=decodeURIComponent(e)}catch(k){throw Error("Error: URI malformed: "+e);}break;case 17:e=qa(decodeURIComponent(e).split(","),Number)}c[f]=e}}c=c[0]?c:null}else c=null;if(c&&(b=new Rb(c[4],c[12]),L&&L.match(b))){for(b=0;b<oc.length;b++)oc[b](c);c&&(b=100*c[25],"number"==typeof b&&!isNaN(b)&&(window.document["4CGeArbVQ"]=b|0));void 0!=c[18]&&(ec=c[18],ec||2!=V||(V=3,Gc()));yc&&void 0!=c[7]&&0<c[7]&&(b=t,d="//pagead2.googlesyndication.com/pagead/gen_204?id=ac_opp&vsblt="+c[7],Q&&(d+="&avi="+Q),F(b,d),yc=!1);b=c[0];if("goog_acknowledge_monitoring"==b)t.clearInterval(M),W=2;else if("goog_get_mode"==b){W=1;d={};L&&Sb(L,d);d[0]="goog_provide_mode";d[6]=X;d[19]=wc;d[16]=T;try{var g=Ub(d);a.source.postMessage(g,a.origin)}catch(k){}t.clearInterval(M);W=2}else"goog_update_data"==b?(lc=c[3],++vc):"goog_image_request"==b&&(Bc(t,c[3]),c[5]||c[11]||Z("0"));if("goog_update_data"==b||"goog_image_request"==b)(1==X||2==X||S)&&c[5]&&(a=1==c[15]&&"goog_update_data"==b,dc=!0,Z("1"),rc&&Cc()&&(g=rc,Hb()&&F(Gb.contentWindow,g),rc=""),S&&!a&&(Y(t,void 0,!0),fc=!0,jc=q()),3==V&&(V=4,Gc()),S||1!=X||(pc=!0)),(1==X||2==X||S)&&c[11]&&(T=!1,Z("3"),S&&(Y(t,void 0,!0),1==V&&ec&&(V=2)))}}},Gc=function(){var a=t,b=V;0!=b&&1!=b&&Ic(a,"osdim","zas="+b)},Ic=function(a,b,c){var d=[];Q&&d.push("avi="+Q);d.push("id="+b);d.push("ovr_value="+P);hc&&d.push("lop=1");L&&(d=d.concat(Tb()));d.push("tt="+((new Date).getTime()-sc));d.push(c);a.document&&a.document.referrer&&d.push("ref="+encodeURIComponent(a.document.referrer));try{F(a,"//pagead2.googlesyndication.com/pagead/gen_204?"+d.join("&"))}catch(e){}},Jc=function(){Bc(t);Z("0");2>W&&!T&&2==X&&Ic(t,"osd2","hs="+W)},Kc=function(a){if(L&&(L.b||L.a)){var b=t.document.domain;W=1;M=t.setInterval(C(197,ha(Xb,X,L,b,T,kc,wc,void 0,a)),500)}},Lc=function(a,b){var c=Ub(a);try{Qb(function(){var a=Wb(!1),b=!a;!a&&t&&(a=t.parent);if(a&&a.postMessage)try{a.postMessage(c,"*"),b&&t.postMessage(c,"*")}catch(f){}},b)}catch(d){}},Mc=function(){var a={};L&&Sb(L,a);a[0]="goog_dom_content_loaded";Lc(a,114)},Ob=function(){var a={};L&&Sb(L,a);a[0]="goog_creative_loaded";Lc(a,115);tc=!0},Nc=function(a){if(m(a)){a=a.split("&");for(var b=a.length-1;0<=b;b--){var c=a[b],d=Lb;c==d.O?(cc=!1,a.splice(b,1)):c==d.L?(V=1,a.splice(b,1)):c==d.N?(T=!1,a.splice(b,1)):c==d.M?(yc=!0,a.splice(b,1)):c==d.K&&(zc=!0,a.splice(b,1))}wc=a.join("&")}},Oc=function(){Ac()||(K=bc(),Ac()&&Pb())};r("osdlfm",I(123,function(a,b,c,d,e,f,g,k,l,p){P=a;qc=b;rc=d;S=f;g&&Nc(g);T=f;1==k?kc.push(947190538):2==k?kc.push(947190541):3==k&&kc.push(947190542);L=new Rb(e,ja());J(t,"load",Fc,117);J(t,"message",Hc,118);Q=c||"";R=[p||Ec(c,l)];J(t,"unload",Jc,119);var n=t.document;zc&&0==({visible:1,hidden:2,prerender:3,preview:4}[n.webkitVisibilityState||n.mozVisibilityState||n.visibilityState||""]||0)?(Y(t,"r=pv",!0),Kc(!0)):(!n.readyState||"complete"!=n.readyState&&"loaded"!=n.readyState?!za()||0<=ma(Ca(),11)?J(n,"DOMContentLoaded",Mc,121):J(n,"readystatechange",function(){"complete"!=n.readyState&&"loaded"!=n.readyState||Mc()},120):Mc(),-1==P?X=f?3:1:-2==P?X=3:0<P&&(X=2,U=!0),T&&!U&&-1==P&&(X=2),Kc(),Qb(Oc,122))}));r("osdlac",I(124,function(a){mc.push(a)}));r("osdlamrc",I(125,function(a){oc.push(a)}));r("osdsir",C(126,Bc));r("osdacrc",I(127,function(a){nc=a}));r("osdpcls",I(128,function(a){var b=/^(http[s]?:)?\/\//.test(a)?a:Ec(a);if(hc&&0<=na(R,b))return!0;if(!a||!Zb()||pc||gc&&!fc)return!1;hc=!0;if(fc){a=Dc(b,lc,!0);var c=q()-jc;a=lb(a,"tsvp",c);F(t,a)}R.push(b);ic=q();return!0}));}).call(this);
