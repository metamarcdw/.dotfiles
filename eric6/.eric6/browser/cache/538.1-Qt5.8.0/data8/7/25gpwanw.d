   �         Ehttps://platform.linkedin.com/js/xdrpc.html?v=0.0.2000-RC8.60487-1429     %�y���     %�	�x         
     O K           �      Content-Encoding   gzip   Accept-Ranges   bytes   Cache-Control   max-age=31536000   Content-Type   text/html;charset=UTF-8   Date   Mon, 24 Apr 2017 08:49:38 GMT   Expires   Tue, 24 Apr 2018 08:49:38 GMT   Last-Modified   Fri, 21 Apr 2017 18:06:19 GMT   Server   ECS (fty/2FD9)   Vary   Accept-Encoding   X-Cache   HIT   X-CDN   ECST   X-CDN-CLIENT-IP-VERSION   IPV4   X-Li-Fabric   	prod-lva1   X-Li-Pop   	prod-edc2   	X-LI-UUID   ozZxXdp7txTAFx/6ZSsAAA== <!DOCTYPE>
<html><head>
<title>Processing</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script>
/**
 * as of easyXDM v2.4.18-li, hashes are no longer handled correctly
 * it creates a URL something like. www.example.com/?query#easyXDMParams#originalHash
 * this fix here ensures the originalHash is preserved by appending it via an ampersand
 * so the final URL is something like... www.example.com/?query#easyXDMParams&originalHash
 */
window.location.hash = '#' + window.location.hash.substring(1).replace(/#/g, '&');
</script>
<script type="text/javascript">

// window.XD_VALID_DOMAINS = '${XD_VALID_DOMAINS}';
window.XD_RECEIVER_SECURE_URL = 'https://platform.linkedin.com/js/xdrpc.html?v=0.0.2000-RC8.60487-1429';
window.XD_RECEIVER_UNSECURE_URL = 'http://platform.linkedin.com/js/xdrpc.html?v=0.0.2000-RC8.60487-1429';

window.XD_SWF_SECURE_URL = "https://platform.linkedin.com/js/easyXDM.swf?v=0.0.2000-RC8.60487-1429";
window.XD_SWF_UNSECURE_URL = "http://platform.linkedin.com/js/easyXDM.swf?v=0.0.2000-RC8.60487-1429";
</script>
<style>
/* These styles are used to remove scrollbars on the connect window when loaded in an iframe */
* { margin: 0; padding: 0; }
html { overflow: hidden; }
body { background: transparent; position: relative; }
</style>
</head>
<body>
<script type="text/javascript">
/* Version Path: dev */

/* res://connect-min/dev/connect/_open.njs */

/**
 * _open
 * this allows us to ensure proper scoping of our variables while allowing private globals
 */
/* begin anon function */
// sandbox undefined, catch a local reference to window and document (improves performance and minifcation)
(function(window, document, undefined) {
// private globals
var $_GLOBALS = {},                                         // a private global accessible throughout framework
    $_PATTERNS = {},                                        // global regex patterns
    $_STATISTICS = {},                                      // statistics container
    $_CONSTANTS = {},                                       // constants
    $_WIN = {},                                             // hold temporary references from the window scope for restoration
    $__I18N_STRINGS = {};                                   // i18n strings

(function() {
  // create a dummy STATISTICS interface
  // this will ensure that calls to the $_STATISTICS methods will not throw errors if the statistics module is not included
  var f = function(){};
  $_STATISTICS = {
    instance:     f,
    recordAction: f,
    recordEvent:  f,
    profile:      f,
    firePing:     f
  };

  // localize JSON and Sslac instances
  // preserve current window scoped objects to restore later
  // (we don't touch easyXDM here as we've already namespaced it in IN.Lib.easyXDM)
  $_WIN = {
    JSON:     window.JSON,
    Sslac:    window.Sslac
  };
  // remove all window references that we will touch internally
  for(var key in $_WIN) {
    if($_WIN.hasOwnProperty(key)) {
      window[key] = undefined;
    }
  }
})();

// TODO - this needs to be fixed on the UAS servlet. see PLFM-4913
// this is a temporary hack to make sure we are serving the sprite over https if secure=true
if(typeof IN !== "undefined" && IN.ENV && IN.ENV.js && IN.ENV.images && IN.ENV.js.secure) {
  IN.ENV.images.sprite= IN.ENV.images.sprite.replace(/^(?:https?\:)?\/\/[^\/]+\//i, 'https://static.licdn.com/');
}


/* res://connect-min/dev/lib/json2.js */

if(!this.JSON){this.JSON={}
}(function(){function f(n){return n<10?"0"+n:n
}if(typeof Date.prototype.toJSON!=="function"){Date.prototype.toJSON=function(key){return isFinite(this.valueOf())?this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z":null
};
String.prototype.toJSON=Number.prototype.toJSON=Boolean.prototype.toJSON=function(key){return this.valueOf()
}
}var cx=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,escapable=/[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,gap,indent,meta={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"},rep;
function quote(string){escapable.lastIndex=0;
return escapable.test(string)?'"'+string.replace(escapable,function(a){var c=meta[a];
return typeof c==="string"?c:"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)
})+'"':'"'+string+'"'
}function str(key,holder){var i,k,v,length,mind=gap,partial,value=holder[key];
if(value&&typeof value==="object"&&typeof value.toJSON==="function"){value=value.toJSON(key)
}if(typeof rep==="function"){value=rep.call(holder,key,value)
}switch(typeof value){case"string":return quote(value);
case"number":return isFinite(value)?String(value):"null";
case"boolean":case"null":return String(value);
case"object":if(!value){return"null"
}gap+=indent;
partial=[];
if(Object.prototype.toString.apply(value)==="[object Array]"){length=value.length;
for(i=0;
i<length;
i+=1){partial[i]=str(i,value)||"null"
}v=partial.length===0?"[]":gap?"[\n"+gap+partial.join(",\n"+gap)+"\n"+mind+"]":"["+partial.join(",")+"]";
gap=mind;
return v
}if(rep&&typeof rep==="object"){length=rep.length;
for(i=0;
i<length;
i+=1){k=rep[i];
if(typeof k==="string"){v=str(k,value);
if(v){partial.push(quote(k)+(gap?": ":":")+v)
}}}}else{for(k in value){if(Object.hasOwnProperty.call(value,k)){v=str(k,value);
if(v){partial.push(quote(k)+(gap?": ":":")+v)
}}}}v=partial.length===0?"{}":gap?"{\n"+gap+partial.join(",\n"+gap)+"\n"+mind+"}":"{"+partial.join(",")+"}";
gap=mind;
return v
}}if(typeof JSON.stringify!=="function"){JSON.stringify=function(value,replacer,space){var i;
gap="";
indent="";
if(typeof space==="number"){for(i=0;
i<space;
i+=1){indent+=" "
}}else{if(typeof space==="string"){indent=space
}}rep=replacer;
if(replacer&&typeof replacer!=="function"&&(typeof replacer!=="object"||typeof replacer.length!=="number")){throw new Error("JSON.stringify")
}return str("",{"":value})
}
}if(typeof JSON.parse!=="function"){JSON.parse=function(text,reviver){var j;
function walk(holder,key){var k,v,value=holder[key];
if(value&&typeof value==="object"){for(k in value){if(Object.hasOwnProperty.call(value,k)){v=walk(value,k);
if(v!==undefined){value[k]=v
}else{delete value[k]
}}}}return reviver.call(holder,key,value)
}text=String(text);
cx.lastIndex=0;
if(cx.test(text)){text=text.replace(cx,function(a){return"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)
})
}if(/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,""))){j=eval("("+text+")");
return typeof reviver==="function"?walk({"":j},""):j
}throw new SyntaxError("JSON.parse")
}
}}());

/* res://connect-min/dev/lib/sslac.js */

(function(){var n=this,g="Sslac",m={},o=null,i=n[g];
n[g]=n[g]||{};
o=n[g];
function h(u,v,t){var s=function(){};
s.prototype=v.prototype;
u.prototype=new s();
u.prototype.constructor=u;
u.superclass=v.prototype;
if(v.prototype.constructor===Object.prototype.constructor){v.prototype.constructor=v
}if(t){for(var r in t){if(t.hasOwnProperty(t,r)){u.prototype[r]=t[r]
}}}}function j(w,s){var t,v,u=s||n,x=w.split(/\./),r=x.length;
for(t=0;
t<r;
t++){v=x[t];
if(t+1===r){return u
}u[v]=u[v]||{};
u=u[v]
}}function p(r){var t=r.split(/\./),s=t[t.length-1];
return s
}function k(r){m[r]=new b(r);
return m[r]
}function f(r){m[r]=new b(r,true);
return m[r]
}function d(t,s){var u=j(t);
var r=p(t);
u[r]=s
}function q(s){var t=j(s);
var r=p(s);
t[r]=t[r]||{}
}function e(s,r){return j(s,r)[p(s)]
}function l(r){return m[r]
}function c(){var r=o;
n[g]=i;
return r
}function a(){this.Identifier=function(){return{name:"Sslac.ClassObject",ext:""}
}
}function b(v,A){var z=null,t="",u=function(){},s={},x=j(v),y={};
function w(C,D){return function(){this.Parents.push(C);
var E=s[C].apply(D,arguments);
this.Parents.pop();
return E
}
}function r(C,D){return function(){this.Parents.push(C);
var E=D.apply(this,arguments);
this.Parents.pop();
return E
}
}function B(){var E=this,C=null,D=null;
this.Parents=[];
this.Parent=function(){var F=this.Parents[this.Parents.length-1],I=this.Identifier(),H=j(I.ext)[p(I.ext)],G=(z[F])?z[F]:(H.prototype&&H.prototype[F])?H.prototype[F]:function(){};
return G.apply(E,arguments)
};
s.Identifier=function(){return{name:v,ext:t}
};
for(C in s){if(s.hasOwnProperty(C)){this[C]=w(C,E)
}}this.Parents.push("constructor");
D=u.apply(this,arguments);
this.Parents.pop();
for(C in s){if(s.hasOwnProperty(C)){this[C]=w(C,E)
}}return D
}this.Implements=function(){var F=this;
function D(I){return function(){throw new Error("The interface defined requires "+I)
}
}for(var G=0,C=arguments.length;
G<C;
G++){if(Object.prototype.toString.call(arguments[G]).slice(8,-1).toLowerCase()==="array"){for(var E=0,H=arguments[G].length;
E<H;
E++){F.Implements(arguments[G][E])
}}else{if(arguments[G].indexOf(".")>=0){F.Implements(e(arguments[G]))
}else{if(!this.getMethod(arguments[G])){this.Method(arguments[G],D(arguments[G]))
}}}}return this
};
this.Constructor=function(C){u=C;
return this
};
this.getConstructor=function(){return u
};
this.Method=function(C,D){B.prototype[C]=r(C,D);
return this
};
this.getMethod=function(C){return B.prototype[C]
};
this.Static=function(C,D){B[C]=D;
y[C]=D;
return this
};
this.getStatic=function(C){return B[C]
};
this.Extends=function(C){var D=C;
if(typeof C==="string"){D=j(C)[p(C)];
t=C
}h(B,D);
z=B.superclass;
return this
};
this.getExtends=function(){return z
};
this.Extends(a);
if(A){x[p(v)]=y
}else{x[p(v)]=B
}}o.ClassObject=a;
o.Class=k;
o.Static=f;
o.Function=d;
o.Define=q;
o.namespaceOf=j;
o.nameOf=p;
o.valueOf=e;
o.definitionOf=l;
o.noConflict=c;
if(typeof module!=="undefined"&&module.exports){module.exports=o.noConflict()
}}());

/* res://connect-min/dev/lib/easyxdm.js */

(function(window,document,location,setTimeout,decodeURIComponent,encodeURIComponent){var global=this;
var channelId=Math.floor(Math.random()*10000);
var emptyFn=Function.prototype;
var reURI=/^((http.?:)\/\/([^:\/\s]+)(:\d+)*)/;
var reParent=/[\-\w]+\/\.\.\//;
var reDoubleSlash=/([^:])\/\//g;
var reFunction=/^function/;
var namespace="";
var easyXDM={};
var _easyXDM=window.easyXDM;
var IFRAME_PREFIX="easyXDM_";
var HAS_NAME_PROPERTY_BUG;
var useHash=false;
var flashVersion;
var HAS_FLASH_THROTTLED_BUG;
var HAS_FUNCTION_RECAST_BUG=false
/*@cc_on || ((ScriptEngineMajorVersion()+(ScriptEngineMinorVersion()/10)) <= 5.8)@*/
;
function isCallableFunction(fn){if(typeof fn==="function"){return true
}if(HAS_FUNCTION_RECAST_BUG&&typeof fn==="object"&&typeof fn.call!=="undefined"&&typeof fn.apply!=="undefined"){try{return reFunction.test(fn.toString())
}catch(e){return false
}}return false
}function isHostMethod(object,property){var t=typeof object[property];
return t=="function"||(!!(t=="object"&&object[property]))||t=="unknown"
}function isHostObject(object,property){return !!(typeof(object[property])=="object"&&object[property])
}function isArray(o){return Object.prototype.toString.call(o)==="[object Array]"
}function hasFlash(){var name="Shockwave Flash",mimeType="application/x-shockwave-flash";
if(!undef(navigator.plugins)&&typeof navigator.plugins[name]=="object"){var description=navigator.plugins[name].description;
if(description&&!undef(navigator.mimeTypes)&&navigator.mimeTypes[mimeType]&&navigator.mimeTypes[mimeType].enabledPlugin){flashVersion=description.match(/\d+/g)
}}if(!flashVersion){var flash;
try{flash=new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
flashVersion=Array.prototype.slice.call(flash.GetVariable("$version").match(/(\d+),(\d+),(\d+),(\d+)/),1);
flash=null
}catch(notSupportedException){}}if(!flashVersion){return false
}var major=parseInt(flashVersion[0],10),minor=parseInt(flashVersion[1],10);
HAS_FLASH_THROTTLED_BUG=major>9&&minor>0;
return true
}var on,un;
if(isHostMethod(window,"addEventListener")){on=function(target,type,listener){target.addEventListener(type,listener,false)
};
un=function(target,type,listener){target.removeEventListener(type,listener,false)
}
}else{if(isHostMethod(window,"attachEvent")){on=function(object,sEvent,fpNotify){object.attachEvent("on"+sEvent,fpNotify)
};
un=function(object,sEvent,fpNotify){object.detachEvent("on"+sEvent,fpNotify)
}
}else{throw new Error("Browser not supported")
}}var domIsReady=false,domReadyQueue=[],readyState;
if("readyState" in document){readyState=document.readyState;
domIsReady=readyState=="complete"||(~navigator.userAgent.indexOf("AppleWebKit/")&&(readyState=="loaded"||readyState=="interactive"))
}else{domIsReady=!!document.body
}function dom_onReady(){if(domIsReady){return
}domIsReady=true;
for(var i=0;
i<domReadyQueue.length;
i++){domReadyQueue[i]()
}domReadyQueue.length=0
}if(!domIsReady){if(isHostMethod(window,"addEventListener")){on(document,"DOMContentLoaded",dom_onReady)
}else{on(document,"readystatechange",function(){if(document.readyState=="complete"){dom_onReady()
}});
if(document.documentElement.doScroll&&window===top){var doScrollCheck=function(){if(domIsReady){return
}try{document.documentElement.doScroll("left")
}catch(e){setTimeout(doScrollCheck,1);
return
}dom_onReady()
};
doScrollCheck()
}}on(window,"load",dom_onReady)
}function whenReady(fn,scope){if(domIsReady){fn.call(scope);
return
}domReadyQueue.push(function(){fn.call(scope)
})
}function getParentObject(){var obj=parent;
if(namespace!==""){for(var i=0,ii=namespace.split(".");
i<ii.length;
i++){obj=obj[ii[i]]
}}return obj.easyXDM
}function noConflict(ns){window.easyXDM=_easyXDM;
namespace=ns;
if(namespace){IFRAME_PREFIX="easyXDM_"+namespace.replace(".","_")+"_"
}return easyXDM
}function getDomainName(url){return url.match(reURI)[3]
}function getPort(url){return url.match(reURI)[4]||""
}function getLocation(url){var m=url.toLowerCase().match(reURI);
var proto=m[2],domain=m[3],port=m[4]||"";
if((proto=="http:"&&port==":80")||(proto=="https:"&&port==":443")){port=""
}return proto+"//"+domain+port
}function resolveUrl(url){url=url.replace(reDoubleSlash,"$1/");
if(!url.match(/^(http||https):\/\//)){var path=(url.substring(0,1)==="/")?"":location.pathname;
if(path.substring(path.length-1)!=="/"){path=path.substring(0,path.lastIndexOf("/")+1)
}url=location.protocol+"//"+location.host+path+url
}while(reParent.test(url)){url=url.replace(reParent,"")
}return url
}function appendQueryParameters(url,parameters){var hash="",indexOf=url.indexOf("#");
if(indexOf!==-1){hash=url.substring(indexOf);
url=url.substring(0,indexOf)
}var q=[];
for(var key in parameters){if(parameters.hasOwnProperty(key)){q.push(key+"="+encodeURIComponent(parameters[key]))
}}return url+(useHash?"#":(url.indexOf("?")==-1?"?":"&"))+q.join("&")+hash
}var query=(function(input){input=input.substring(1).split("&");
var data={},pair,i=input.length;
while(i--){pair=input[i].split("=");
data[pair[0]]=decodeURIComponent(pair[1])
}return data
}(/xdm_e=/.test(location.search)?location.search:location.hash));
function undef(v){return typeof v==="undefined"
}var getJSON=function(){var cached={};
var obj={a:[1,2,3]},json='{"a":[1,2,3]}';
if(typeof JSON!="undefined"&&typeof JSON.stringify==="function"&&JSON.stringify(obj).replace((/\s/g),"")===json){return JSON
}if(Object.toJSON){if(Object.toJSON(obj).replace((/\s/g),"")===json){cached.stringify=Object.toJSON
}}if(typeof String.prototype.evalJSON==="function"){obj=json.evalJSON();
if(obj.a&&obj.a.length===3&&obj.a[2]===3){cached.parse=function(str){return str.evalJSON()
}
}}if(cached.stringify&&cached.parse){getJSON=function(){return cached
};
return cached
}return null
};
function apply(destination,source,noOverwrite){var member;
for(var prop in source){if(source.hasOwnProperty(prop)){if(prop in destination){member=source[prop];
if(typeof member==="object"){apply(destination[prop],member,noOverwrite)
}else{if(!noOverwrite){destination[prop]=source[prop]
}}}else{destination[prop]=source[prop]
}}}return destination
}function testForNamePropertyBug(){var form=document.body.appendChild(document.createElement("form")),input=form.appendChild(document.createElement("input"));
input.name=IFRAME_PREFIX+"TEST"+channelId;
HAS_NAME_PROPERTY_BUG=input!==form.elements[input.name];
document.body.removeChild(form)
}function createFrame(config){if(undef(HAS_NAME_PROPERTY_BUG)){testForNamePropertyBug()
}var frame;
if(HAS_NAME_PROPERTY_BUG){frame=document.createElement('<iframe name="'+config.props.name+'"/>')
}else{frame=document.createElement("IFRAME");
frame.name=config.props.name
}frame.id=frame.name=config.props.name;
delete config.props.name;
if(typeof config.container=="string"){config.container=document.getElementById(config.container)
}if(!config.container){apply(frame.style,{position:"absolute",top:"-2000px",left:"0px"});
config.container=document.body
}var src=config.props.src;
config.props.src="javascript:false";
apply(frame,config.props);
frame.border=frame.frameBorder=0;
frame.allowTransparency=true;
config.container.appendChild(frame);
if(config.onLoad){on(frame,"load",config.onLoad)
}if(config.usePost){var form=config.container.appendChild(document.createElement("form")),input;
form.target=frame.name;
form.action=src;
form.method="POST";
if(typeof(config.usePost)==="object"){for(var i in config.usePost){if(config.usePost.hasOwnProperty(i)){if(HAS_NAME_PROPERTY_BUG){input=document.createElement('<input name="'+i+'"/>')
}else{input=document.createElement("INPUT");
input.name=i
}input.value=config.usePost[i];
form.appendChild(input)
}}}form.submit();
form.parentNode.removeChild(form)
}else{frame.src=src
}config.props.src=src;
return frame
}function checkAcl(acl,domain){if(typeof acl=="string"){acl=[acl]
}var re,i=acl.length;
while(i--){re=acl[i];
re=new RegExp(re.substr(0,1)=="^"?re:("^"+re.replace(/(\*)/g,".$1").replace(/\?/g,".")+"$"));
if(re.test(domain)){return true
}}return false
}function prepareTransportStack(config){var protocol=config.protocol,stackEls;
config.isHost=config.isHost||undef(query.xdm_p);
useHash=config.hash||false;
if(!config.props){config.props={}
}if(!config.isHost){config.channel=query.xdm_c.replace(/["'<>\\]/g,"");
config.secret=query.xdm_s;
config.remote=query.xdm_e.replace(/["'<>\\]/g,"");
protocol=query.xdm_p;
if(config.acl&&!checkAcl(config.acl,config.remote)){throw new Error("Access denied for "+config.remote)
}}else{config.remote=resolveUrl(config.remote);
config.channel=config.channel||"default"+channelId++;
config.secret=Math.random().toString(16).substring(2);
if(undef(protocol)){if(getLocation(location.href)==getLocation(config.remote)){protocol="4"
}else{if(isHostMethod(window,"postMessage")||isHostMethod(document,"postMessage")){protocol="1"
}else{if(config.swf&&isHostMethod(window,"ActiveXObject")&&hasFlash()){protocol="6"
}else{if(navigator.product==="Gecko"&&"frameElement" in window&&navigator.userAgent.indexOf("WebKit")==-1){protocol="5"
}else{if(config.remoteHelper){protocol="2"
}else{protocol="0"
}}}}}}}config.protocol=protocol;
switch(protocol){case"0":apply(config,{interval:100,delay:2000,useResize:true,useParent:false,usePolling:false},true);
if(config.isHost){if(!config.local){var domain=location.protocol+"//"+location.host,images=document.body.getElementsByTagName("img"),image;
var i=images.length;
while(i--){image=images[i];
if(image.src.substring(0,domain.length)===domain){config.local=image.src;
break
}}if(!config.local){config.local=window
}}var parameters={xdm_c:config.channel,xdm_p:0};
if(config.local===window){config.usePolling=true;
config.useParent=true;
config.local=location.protocol+"//"+location.host+location.pathname+location.search;
parameters.xdm_e=config.local;
parameters.xdm_pa=1
}else{parameters.xdm_e=resolveUrl(config.local)
}if(config.container){config.useResize=false;
parameters.xdm_po=1
}config.remote=appendQueryParameters(config.remote,parameters)
}else{apply(config,{channel:query.xdm_c,remote:query.xdm_e,useParent:!undef(query.xdm_pa),usePolling:!undef(query.xdm_po),useResize:config.useParent?false:config.useResize})
}stackEls=[new easyXDM.stack.HashTransport(config),new easyXDM.stack.ReliableBehavior({}),new easyXDM.stack.QueueBehavior({encode:true,maxLength:4000-config.remote.length}),new easyXDM.stack.VerifyBehavior({initiate:config.isHost})];
break;
case"1":stackEls=[new easyXDM.stack.PostMessageTransport(config)];
break;
case"2":config.remoteHelper=resolveUrl(config.remoteHelper);
stackEls=[new easyXDM.stack.NameTransport(config),new easyXDM.stack.QueueBehavior(),new easyXDM.stack.VerifyBehavior({initiate:config.isHost})];
break;
case"3":stackEls=[new easyXDM.stack.NixTransport(config)];
break;
case"4":stackEls=[new easyXDM.stack.SameOriginTransport(config)];
break;
case"5":stackEls=[new easyXDM.stack.FrameElementTransport(config)];
break;
case"6":if(!flashVersion){hasFlash()
}stackEls=[new easyXDM.stack.FlashTransport(config)];
break
}stackEls.push(new easyXDM.stack.QueueBehavior({lazy:config.lazy,remove:true}));
return stackEls
}function chainStack(stackElements){var stackEl,defaults={incoming:function(message,origin){this.up.incoming(message,origin)
},outgoing:function(message,recipient){this.down.outgoing(message,recipient)
},callback:function(success){this.up.callback(success)
},init:function(){this.down.init()
},destroy:function(){this.down.destroy()
}};
for(var i=0,len=stackElements.length;
i<len;
i++){stackEl=stackElements[i];
apply(stackEl,defaults,true);
if(i!==0){stackEl.down=stackElements[i-1]
}if(i!==len-1){stackEl.up=stackElements[i+1]
}}return stackEl
}function removeFromStack(element){element.up.down=element.down;
element.down.up=element.up;
element.up=element.down=null
}apply(easyXDM,{version:"2.4.18-li.3",query:query,stack:{},apply:apply,getJSONObject:getJSON,whenReady:whenReady,noConflict:noConflict});
easyXDM.DomHelper={on:on,un:un,requiresJSON:function(path){if(!isHostObject(window,"JSON")){document.write("<"+'script type="text/javascript" src="'+path+'"><'+"/script>")
}}};
(function(){var _map={};
easyXDM.Fn={set:function(name,fn){_map[name]=fn
},get:function(name,del){var fn=_map[name];
if(del){delete _map[name]
}return fn
}}
}());
easyXDM.Socket=function(config){var stack=chainStack(prepareTransportStack(config).concat([{incoming:function(message,origin){config.onMessage(message,origin)
},callback:function(success){if(config.onReady){config.onReady(success)
}}}])),recipient=getLocation(config.remote);
this.origin=getLocation(config.remote);
this.destroy=function(){stack.destroy()
};
this.postMessage=function(message){stack.outgoing(message,recipient)
};
stack.init()
};
easyXDM.Rpc=function(config,jsonRpcConfig){if(jsonRpcConfig.local){for(var method in jsonRpcConfig.local){if(jsonRpcConfig.local.hasOwnProperty(method)){var member=jsonRpcConfig.local[method];
if(typeof member==="function"){jsonRpcConfig.local[method]={method:member}
}}}}var stack=chainStack(prepareTransportStack(config).concat([new easyXDM.stack.RpcBehavior(this,jsonRpcConfig),{callback:function(success){if(config.onReady){config.onReady(success)
}}}]));
this.origin=getLocation(config.remote);
this.destroy=function(){stack.destroy()
};
stack.init()
};
easyXDM.stack.SameOriginTransport=function(config){var pub,frame,send,targetOrigin;
return(pub={outgoing:function(message,domain,fn){send(message);
if(fn){fn()
}},destroy:function(){if(frame){frame.parentNode.removeChild(frame);
frame=null
}},onDOMReady:function(){targetOrigin=getLocation(config.remote);
if(config.isHost){apply(config.props,{src:appendQueryParameters(config.remote,{xdm_e:location.protocol+"//"+location.host+location.pathname,xdm_c:config.channel,xdm_p:4}),name:IFRAME_PREFIX+config.channel+"_provider"});
frame=createFrame(config);
easyXDM.Fn.set(config.channel,function(sendFn){send=sendFn;
setTimeout(function(){pub.up.callback(true)
},0);
return function(msg){pub.up.incoming(msg,targetOrigin)
}
})
}else{send=getParentObject().Fn.get(config.channel,true)(function(msg){pub.up.incoming(msg,targetOrigin)
});
setTimeout(function(){pub.up.callback(true)
},0)
}},init:function(){whenReady(pub.onDOMReady,pub)
}})
};
easyXDM.stack.FlashTransport=function(config){var pub,frame,send,targetOrigin,swf,swfContainer;
function onMessage(message,origin){setTimeout(function(){pub.up.incoming(message,targetOrigin)
},0)
}function addSwf(domain){var url=config.swf+"?host="+config.isHost;
var id="easyXDM_swf_"+Math.floor(Math.random()*10000);
easyXDM.Fn.set("flash_loaded"+domain.replace(/[\-.]/g,"_"),function(){easyXDM.stack.FlashTransport[domain].swf=swf=swfContainer.firstChild;
var queue=easyXDM.stack.FlashTransport[domain].queue;
for(var i=0;
i<queue.length;
i++){queue[i]()
}queue.length=0
});
if(config.swfContainer){swfContainer=(typeof config.swfContainer=="string")?document.getElementById(config.swfContainer):config.swfContainer
}else{swfContainer=document.createElement("div");
apply(swfContainer.style,HAS_FLASH_THROTTLED_BUG&&config.swfNoThrottle?{height:"20px",width:"20px",position:"fixed",right:0,top:0}:{height:"1px",width:"1px",position:"absolute",overflow:"hidden",right:0,top:0});
document.body.appendChild(swfContainer)
}var flashVars="callback=flash_loaded"+encodeURIComponent(domain.replace(/[\-.]/g,"_"))+"&proto="+global.location.protocol+"&domain="+encodeURIComponent(getDomainName(global.location.href))+"&port="+encodeURIComponent(getPort(global.location.href))+"&ns="+encodeURIComponent(namespace);
swfContainer.innerHTML="<object height='20' width='20' type='application/x-shockwave-flash' id='"+id+"' data='"+url+"'>"+"<param name='allowScriptAccess' value='always'></param>"+"<param name='wmode' value='transparent'>"+"<param name='movie' value='"+url+"'></param>"+"<param name='flashvars' value='"+flashVars+"'></param>"+"<embed type='application/x-shockwave-flash' FlashVars='"+flashVars+"' allowScriptAccess='always' wmode='transparent' src='"+url+"' height='1' width='1'></embed>"+"</object>"
}return(pub={outgoing:function(message,domain,fn){swf.postMessage(config.channel,message.toString());
if(fn){fn()
}},destroy:function(){try{swf.destroyChannel(config.channel)
}catch(e){}swf=null;
if(frame){frame.parentNode.removeChild(frame);
frame=null
}},onDOMReady:function(){targetOrigin=config.remote;
easyXDM.Fn.set("flash_"+config.channel+"_init",function(){setTimeout(function(){pub.up.callback(true)
})
});
easyXDM.Fn.set("flash_"+config.channel+"_onMessage",onMessage);
config.swf=resolveUrl(config.swf);
var swfdomain=getDomainName(config.swf);
var fn=function(){easyXDM.stack.FlashTransport[swfdomain].init=true;
swf=easyXDM.stack.FlashTransport[swfdomain].swf;
swf.createChannel(config.channel,config.secret,getLocation(config.remote),config.isHost);
if(config.isHost){if(HAS_FLASH_THROTTLED_BUG&&config.swfNoThrottle){apply(config.props,{position:"fixed",right:0,top:0,height:"20px",width:"20px"})
}apply(config.props,{src:appendQueryParameters(config.remote,{xdm_e:getLocation(location.href),xdm_c:config.channel,xdm_p:6,xdm_s:config.secret}),name:IFRAME_PREFIX+config.channel+"_provider"});
frame=createFrame(config)
}};
if(easyXDM.stack.FlashTransport[swfdomain]&&easyXDM.stack.FlashTransport[swfdomain].init){fn()
}else{if(!easyXDM.stack.FlashTransport[swfdomain]){easyXDM.stack.FlashTransport[swfdomain]={queue:[fn]};
addSwf(swfdomain)
}else{easyXDM.stack.FlashTransport[swfdomain].queue.push(fn)
}}},init:function(){whenReady(pub.onDOMReady,pub)
}})
};
easyXDM.stack.PostMessageTransport=function(config){var pub,frame,callerWindow,targetOrigin;
function _getOrigin(event){if(event.origin){return getLocation(event.origin)
}if(event.uri){return getLocation(event.uri)
}if(event.domain){return location.protocol+"//"+event.domain
}throw"Unable to retrieve the origin of the event"
}function _window_onMessage(event){var origin=_getOrigin(event);
if(origin==targetOrigin&&event.data.substring(0,config.channel.length+1)==config.channel+" "){pub.up.incoming(event.data.substring(config.channel.length+1),origin)
}}return(pub={outgoing:function(message,domain,fn){callerWindow.postMessage(config.channel+" "+message,domain||targetOrigin);
if(fn){fn()
}},destroy:function(){un(window,"message",_window_onMessage);
if(frame){callerWindow=null;
frame.parentNode.removeChild(frame);
frame=null
}},onDOMReady:function(){targetOrigin=getLocation(config.remote);
if(config.isHost){var waitForReady=function(event){if(event.data==config.channel+"-ready"){callerWindow=("postMessage" in frame.contentWindow)?frame.contentWindow:frame.contentWindow.document;
un(window,"message",waitForReady);
on(window,"message",_window_onMessage);
setTimeout(function(){pub.up.callback(true)
},0)
}};
on(window,"message",waitForReady);
apply(config.props,{src:appendQueryParameters(config.remote,{xdm_e:getLocation(location.href),xdm_c:config.channel,xdm_p:1}),name:IFRAME_PREFIX+config.channel+"_provider"});
frame=createFrame(config)
}else{on(window,"message",_window_onMessage);
callerWindow=("postMessage" in window.parent)?window.parent:window.parent.document;
callerWindow.postMessage(config.channel+"-ready",targetOrigin);
setTimeout(function(){pub.up.callback(true)
},0)
}},init:function(){whenReady(pub.onDOMReady,pub)
}})
};
easyXDM.stack.FrameElementTransport=function(config){var pub,frame,send,targetOrigin;
return(pub={outgoing:function(message,domain,fn){send.call(this,message);
if(fn){fn()
}},destroy:function(){if(frame){frame.parentNode.removeChild(frame);
frame=null
}},onDOMReady:function(){targetOrigin=getLocation(config.remote);
if(config.isHost){apply(config.props,{src:appendQueryParameters(config.remote,{xdm_e:getLocation(location.href),xdm_c:config.channel,xdm_p:5}),name:IFRAME_PREFIX+config.channel+"_provider"});
frame=createFrame(config);
frame.fn=function(sendFn){delete frame.fn;
send=sendFn;
setTimeout(function(){pub.up.callback(true)
},0);
return function(msg){pub.up.incoming(msg,targetOrigin)
}
}
}else{if(document.referrer&&getLocation(document.referrer)!=query.xdm_e){window.top.location=query.xdm_e
}send=window.frameElement.fn(function(msg){pub.up.incoming(msg,targetOrigin)
});
pub.up.callback(true)
}},init:function(){whenReady(pub.onDOMReady,pub)
}})
};
easyXDM.stack.NameTransport=function(config){var pub;
var isHost,callerWindow,remoteWindow,readyCount,callback,remoteOrigin,remoteUrl;
function _sendMessage(message){var url=config.remoteHelper+(isHost?"#_3":"#_2")+config.channel;
callerWindow.contentWindow.sendMessage(message,url)
}function _onReady(){if(isHost){if(++readyCount===2||!isHost){pub.up.callback(true)
}}else{_sendMessage("ready");
pub.up.callback(true)
}}function _onMessage(message){pub.up.incoming(message,remoteOrigin)
}function _onLoad(){if(callback){setTimeout(function(){callback(true)
},0)
}}return(pub={outgoing:function(message,domain,fn){callback=fn;
_sendMessage(message)
},destroy:function(){callerWindow.parentNode.removeChild(callerWindow);
callerWindow=null;
if(isHost){remoteWindow.parentNode.removeChild(remoteWindow);
remoteWindow=null
}},onDOMReady:function(){isHost=config.isHost;
readyCount=0;
remoteOrigin=getLocation(config.remote);
config.local=resolveUrl(config.local);
if(isHost){easyXDM.Fn.set(config.channel,function(message){if(isHost&&message==="ready"){easyXDM.Fn.set(config.channel,_onMessage);
_onReady()
}});
remoteUrl=appendQueryParameters(config.remote,{xdm_e:config.local,xdm_c:config.channel,xdm_p:2});
apply(config.props,{src:remoteUrl+"#"+config.channel,name:IFRAME_PREFIX+config.channel+"_provider"});
remoteWindow=createFrame(config)
}else{config.remoteHelper=config.remote;
easyXDM.Fn.set(config.channel,_onMessage)
}var onLoad=function(){var w=callerWindow||this;
un(w,"load",onLoad);
easyXDM.Fn.set(config.channel+"_load",_onLoad);
(function test(){if(typeof w.contentWindow.sendMessage=="function"){_onReady()
}else{setTimeout(test,50)
}}())
};
callerWindow=createFrame({props:{src:config.local+"#_4"+config.channel},onLoad:onLoad})
},init:function(){whenReady(pub.onDOMReady,pub)
}})
};
easyXDM.stack.HashTransport=function(config){var pub;
var me=this,isHost,_timer,pollInterval,_lastMsg,_msgNr,_listenerWindow,_callerWindow;
var useParent,_remoteOrigin;
function _sendMessage(message){if(!_callerWindow){return
}var url=config.remote+"#"+(_msgNr++)+"_"+message;
((isHost||!useParent)?_callerWindow.contentWindow:_callerWindow).location=url
}function _handleHash(hash){_lastMsg=hash;
pub.up.incoming(_lastMsg.substring(_lastMsg.indexOf("_")+1),_remoteOrigin)
}function _pollHash(){if(!_listenerWindow){return
}var href=_listenerWindow.location.href,hash="",indexOf=href.indexOf("#");
if(indexOf!=-1){hash=href.substring(indexOf)
}if(hash&&hash!=_lastMsg){_handleHash(hash)
}}function _attachListeners(){_timer=setInterval(_pollHash,pollInterval)
}return(pub={outgoing:function(message,domain){_sendMessage(message)
},destroy:function(){window.clearInterval(_timer);
if(isHost||!useParent){_callerWindow.parentNode.removeChild(_callerWindow)
}_callerWindow=null
},onDOMReady:function(){isHost=config.isHost;
pollInterval=config.interval;
_lastMsg="#"+config.channel;
_msgNr=0;
useParent=config.useParent;
_remoteOrigin=getLocation(config.remote);
if(isHost){apply(config.props,{src:config.remote,name:IFRAME_PREFIX+config.channel+"_provider"});
if(useParent){config.onLoad=function(){_listenerWindow=window;
_attachListeners();
pub.up.callback(true)
}
}else{var tries=0,max=config.delay/50;
(function getRef(){if(++tries>max){throw new Error("Unable to reference listenerwindow")
}try{_listenerWindow=_callerWindow.contentWindow.frames[IFRAME_PREFIX+config.channel+"_consumer"]
}catch(ex){}if(_listenerWindow){_attachListeners();
pub.up.callback(true)
}else{setTimeout(getRef,50)
}}())
}_callerWindow=createFrame(config)
}else{_listenerWindow=window;
_attachListeners();
if(useParent){_callerWindow=parent;
pub.up.callback(true)
}else{apply(config,{props:{src:config.remote+"#"+config.channel+new Date(),name:IFRAME_PREFIX+config.channel+"_consumer"},onLoad:function(){pub.up.callback(true)
}});
_callerWindow=createFrame(config)
}}},init:function(){whenReady(pub.onDOMReady,pub)
}})
};
easyXDM.stack.ReliableBehavior=function(config){var pub,callback;
var idOut=0,idIn=0,currentMessage="";
return(pub={incoming:function(message,origin){var indexOf=message.indexOf("_"),ack=message.substring(0,indexOf).split(",");
message=message.substring(indexOf+1);
if(ack[0]==idOut){currentMessage="";
if(callback){callback(true);
callback=null
}}if(message.length>0){pub.down.outgoing(ack[1]+","+idOut+"_"+currentMessage,origin);
if(idIn!=ack[1]){idIn=ack[1];
pub.up.incoming(message,origin)
}}},outgoing:function(message,origin,fn){currentMessage=message;
callback=fn;
pub.down.outgoing(idIn+","+(++idOut)+"_"+message,origin)
}})
};
easyXDM.stack.QueueBehavior=function(config){var pub,queue=[],waiting=true,incoming="",destroying,maxLength=0,lazy=false,doFragment=false;
function dispatch(){if(config.remove&&queue.length===0){removeFromStack(pub);
return
}if(waiting||queue.length===0||destroying){return
}waiting=true;
var message=queue.shift();
pub.down.outgoing(message.data,message.origin,function(success){waiting=false;
if(message.callback){setTimeout(function(){message.callback(success)
},0)
}dispatch()
})
}return(pub={init:function(){if(undef(config)){config={}
}if(config.maxLength){maxLength=config.maxLength;
doFragment=true
}if(config.lazy){lazy=true
}else{pub.down.init()
}},callback:function(success){waiting=false;
var up=pub.up;
dispatch();
up.callback(success)
},incoming:function(message,origin){if(doFragment){var indexOf=message.indexOf("_"),seq=parseInt(message.substring(0,indexOf),10);
incoming+=message.substring(indexOf+1);
if(seq===0){if(config.encode){incoming=decodeURIComponent(incoming)
}pub.up.incoming(incoming,origin);
incoming=""
}}else{pub.up.incoming(message,origin)
}},outgoing:function(message,origin,fn){if(config.encode){message=encodeURIComponent(message)
}var fragments=[],fragment;
if(doFragment){while(message.length!==0){fragment=message.substring(0,maxLength);
message=message.substring(fragment.length);
fragments.push(fragment)
}while((fragment=fragments.shift())){queue.push({data:fragments.length+"_"+fragment,origin:origin,callback:fragments.length===0?fn:null})
}}else{queue.push({data:message,origin:origin,callback:fn})
}if(lazy){pub.down.init()
}else{dispatch()
}},destroy:function(){destroying=true;
pub.down.destroy()
}})
};
easyXDM.stack.VerifyBehavior=function(config){var pub,mySecret,theirSecret,verified=false;
function startVerification(){mySecret=Math.random().toString(16).substring(2);
pub.down.outgoing(mySecret)
}return(pub={incoming:function(message,origin){var indexOf=message.indexOf("_");
if(indexOf===-1){if(message===mySecret){pub.up.callback(true)
}else{if(!theirSecret){theirSecret=message;
if(!config.initiate){startVerification()
}pub.down.outgoing(message)
}}}else{if(message.substring(0,indexOf)===theirSecret){pub.up.incoming(message.substring(indexOf+1),origin)
}}},outgoing:function(message,origin,fn){pub.down.outgoing(mySecret+"_"+message,origin,fn)
},callback:function(success){if(config.initiate){startVerification()
}}})
};
easyXDM.stack.RpcBehavior=function(proxy,config){var pub,serializer=config.serializer||getJSON();
var _callbackCounter=0,_callbacks={};
function _send(data){data.jsonrpc="2.0";
pub.down.outgoing(serializer.stringify(data))
}function _createMethod(definition,method){var slice=Array.prototype.slice;
return function(){var l=arguments.length,callback,message={method:method};
if(l>0&&(typeof arguments[l-1]==="function"||isCallableFunction(arguments[l-1]))){if(l>1&&(typeof arguments[l-2]==="function"||isCallableFunction(arguments[l-2]))){callback={success:arguments[l-2],error:arguments[l-1]};
message.params=slice.call(arguments,0,l-2)
}else{callback={success:arguments[l-1]};
message.params=slice.call(arguments,0,l-1)
}_callbacks[""+(++_callbackCounter)]=callback;
message.id=_callbackCounter
}else{message.params=slice.call(arguments,0)
}if(definition.namedParams&&message.params.length===1){message.params=message.params[0]
}_send(message)
}
}function _executeMethod(method,id,fn,params){if(!fn){if(id){_send({id:id,error:{code:-32601,message:"Procedure not found."}})
}return
}var success,error;
if(id){success=function(result){success=emptyFn;
_send({id:id,result:result})
};
error=function(message,data){error=emptyFn;
var msg={id:id,error:{code:-32099,message:message}};
if(data){msg.error.data=data
}_send(msg)
}
}else{success=error=emptyFn
}if(!isArray(params)){params=[params]
}try{var result=fn.method.apply(fn.scope,params.concat([success,error]));
if(!undef(result)){success(result)
}}catch(ex1){error(ex1.message)
}}return(pub={incoming:function(message,origin){var data=serializer.parse(message);
if(data.method){if(config.handle){config.handle(data,_send)
}else{_executeMethod(data.method,data.id,config.local[data.method],data.params)
}}else{var callback=_callbacks[data.id];
if(data.error){if(callback.error){callback.error(data.error)
}}else{if(callback.success){callback.success(data.result)
}}delete _callbacks[data.id]
}},init:function(){if(config.remote){for(var method in config.remote){if(config.remote.hasOwnProperty(method)){proxy[method]=_createMethod(config.remote[method],method)
}}}pub.down.init()
},destroy:function(){for(var method in config.remote){if(config.remote.hasOwnProperty(method)&&proxy.hasOwnProperty(method)){delete proxy[method]
}}pub.down.destroy()
}})
};
global.easyXDM=easyXDM
})(window,document,location,window.setTimeout,decodeURIComponent,encodeURIComponent);

/* res://connect-min/dev/includes/constants.js */

(function(){$_CONSTANTS={events:{normal:"normal",success:"success",unSuccess:"unSuccess",click:"click",mouseOver:"mouseOver",mouseOut:"mouseOut",mouseDown:"mouseDown",hover:"hover",frameworkLoaded:"frameworkLoaded",systemReady:"systemReady",auth:"auth",logout:"logout",refresh:"refresh",resize:"resize",noAuth:"noAuth",beforeUnload:"beforeunload",unload:"unload",load:"load"},states:{normal:"normal",success:"success",error:"error",unSuccess:"unSuccess",hovered:"hovered",clicked:"clicked",down:"down",hidden:"hidden",visible:"visible",pending:"pending",ready:"ready"},prefixes:{klass:".",id:"#",psuedo:":",IN:"IN-"},suffixes:{important:" !important;"},stats:{trkKeyed:"cws-fwk-keyed",trkAnon:"cws-fwk-anonymous",eType:"widgetJSTracking",wType:"framework"},conversions:{times:{msPerSecond:1000,secondsPerMinute:60,minutesPerHour:60,hoursPerDay:24,daysPerWeek:7,weeksPerMonth:4.34812003968254,monthsPerYear:12}},types:{object:"object",string:"string",func:"function",number:"number",undef:"undefined",bool:"boolean",integer:"integer",list:"list",regex:"regex",html:"html",uiObject:"uiObject",globalEvent:"globalEvent"},formats:{click:"click",hover:"hover",inline:"inline"},modes:{hovercard:"hovercard",embedded:"embedded",inline:"inline",invisible:"invisible",modal:"modal",popup:"popup",listener:"listener",auto:"auto",window:"window",inlineIframe:"inline-iframe",iframe:"iframe"},resources:{spinner16x16:"data:image/gif;base64,R0lGODlhEAAQAKIAAP///+bm5s7OzpycnGNjYwAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFCgAAACwAAAAADgAQAAADNAi6MMNQOReBEG0CQta92cZ11seMZBlxClh55lu6Mi23GBQEsL3vOBDwx8MBiMei7ndLQhIAIfkEBQoAAAAsAgAAAA4ADgAAAyUIqiL7rzUIpRuDsouzVp33AdgIEYQJoKjJpi4cBOo8mzaN62MCACH5BAUKAAAALAAAAgAQAAwAAAMmCLoMIi2q92Sj0LK6QtDAMACeZ4li+UnoaGoiqBCEPNO1jOc6nwAAIfkEBQoAAAAsAgACAA4ADgAAAyUIEdD+ajH45KRu4Y2F4I3ngeJHmtswgICqYgTRulQcz7DN3lQCACH5BAUKAAAALAIAAAAMABAAAAMmCKoR+6w5GBtd9urNu/8XQVCCAIjiU5boOAzAaqbvG5tPDWv2kwAAIfkEBQoAAAAsAAACAA4ADgAAAyUIugwRLb4X2YR1UUBIXl33ceFImsswmKo6tqsgZK4sj/aM60sCACH5BAUKAAAALAAAAgAQAAwAAAMmCEqk/o8xSIFsFc7sxuBAEACel4li+VXoaHLiIwigM881cNM5DiYAIfkECQoAAAAsAAAAABAAEAAAAygIukDEkDkX1xhtVnBv3lwHMt4ICIKpoKjKpi6sjkEw17WK2zo//5EEADs="},sprite:{width:270,height:891}};
var a=$_CONSTANTS.conversions.times;
a.secondsPerHour=a.secondsPerMinute*a.minutesPerHour;
a.secondsPerDay=a.secondsPerHour*a.hoursPerDay;
a.secondsPerWeek=a.secondsPerDay*a.daysPerWeek;
a.secondsPerMonth=Math.floor(a.secondsPerWeek*a.weeksPerMonth);
a.secondsPerYear=a.secondsPerMonth*a.monthsPerYear
}());

/* res://connect-min/dev/includes/patterns.js */

$_PATTERNS={url:(/^(http(s?)):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$/i),domain:(/^(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$/i),email:(/^[a-z0-9!#$%&'*+\/=?\^_`{|}~\-]+(?:\.[a-z0-9!#$%&'*+\/=?\^_`{|}~\-]+)*@(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$/i),protocols:{generic:(/^http(s)?:\/\//i),secure:(/^https:\/\//i),nonSecure:(/^http:\/\//i)},userAgents:{webkit:(/Webkit|KHTML\//i),gecko:(/Gecko\/([^\s]*)/i),msie:(/MSIE\s([^;]*)/),iosAll:(/OS .* like Mac OS X/i),ios5:(/OS 5_.* like Mac OS X/i),ios6:(/OS 6_.* like Mac OS X/i),opera:(/Opera[\s\/]([^\s]*)/)},context:{upperCase:(/([A-Z])/g),lowerCase:(/([a-z])/g)},types:{number:(/^[0-9\.,]+$/),htmlAttribute:(/^[a-z0-9\._\-]+$/i),token:(/^[a-z0-9\.\-\_%]+$/i),bool:(/^(?:true|yes|1)$/i),boolFalse:(/^(?:false|no|0)$/i)},readyState:(/(loaded|complete)/),tags:{initialized:(/\+init$/)},prefixes:{forwardSlash:(/^\//),urlEq:(/^url=/i)},chars:{tilde:(/^~$/),amp:(/&/g),lt:(/</g),gt:(/>/g),quot:(/"/g),squot:(/'/),dot:(/\./g),star:(/\*/g)}};

/* res://connect-min/dev/connect/core.js */

IN=window.IN||{};
if(!window.console){window.console={}
}if(typeof window.console.log!==$_CONSTANTS.types.func){window.console.log=function(){}
}if(typeof window.console.warn!==$_CONSTANTS.types.func){window.console.warn=function(){}
}window.JSON=JSON;
window.Sslac=Sslac;
(function(){if(!IN.ENV||!IN.ENV.js){return
}var e=IN.ENV.js.extensions||{},d,c=IN.$extensions;
IN.$extensions=function(g,f){if(!f){return c(g)
}IN.Event.on(IN,$_CONSTANTS.events.frameworkLoaded,function(){f();
IN.ENV.js.extensions[g].loaded=true
})
};
for(var a in e){if(e.hasOwnProperty(a)){var b=e[a];
if(b.loaded){continue
}d=document.createElement("script");
d.type="text/javascript";
d.src=b.src;
document.getElementsByTagName("head")[0].appendChild(d)
}}})();
if(IN.ENV&&IN.ENV.js){var TYPES=$_CONSTANTS.types,key,paramsMap={authorize:{type:TYPES.bool},debug:{type:TYPES.bool},suppressWarnings:{type:TYPES.bool},deferParse:{type:TYPES.bool,defaultValue:false},statistics:{type:TYPES.bool,defaultValue:true},isFramed:{type:TYPES.bool,defaultValue:(window.self!==window.parent)},lang:{type:TYPES.string,defaultValue:"en_US"},scope:{type:TYPES.list},noAuth:{type:TYPES.bool}};
for(key in paramsMap){if(paramsMap.hasOwnProperty(key)){if(typeof IN.ENV.js[key]!==TYPES.undef){switch(paramsMap[key].type){case TYPES.bool:IN.ENV.js[key]=$_PATTERNS.types.bool.test(IN.ENV.js[key]);
break;
case TYPES.integer:IN.ENV.js[key]=parseInt(IN.ENV.js[key],10);
break;
case TYPES.number:IN.ENV.js[key]=Number(IN.ENV.js[key]);
break;
case TYPES.list:IN.ENV.js[key]=IN.ENV.js[key].replace(/(,|;|\s)/g," ").replace(/\s+/g," ").split(" ");
break;
case TYPES.string:default:break
}}if((typeof IN.ENV.js[key]===TYPES.undef)&&(typeof paramsMap[key].defaultValue!==TYPES.undef)){IN.ENV.js[key]=paramsMap[key].defaultValue
}}}}Sslac.Function("IN.$Tag",function(b,a){a=a||document;
return a.getElementsByTagName(b)
});
Sslac.Function("IN.$Id",function(a){return(typeof(a)===$_CONSTANTS.types.string)?document.getElementById(a):a
});
Sslac.Function("IN.$Class",function(c,b,d){var a=function(f,e,g){if(document.getElementsByClassName){a=function(n,q,m){m=m||document;
var h=m.getElementsByClassName(n),p=(q)?new RegExp("\\b"+q+"\\b","i"):null,j=[],l;
for(var k=0,o=h.length;
k<o;
k+=1){l=h[k];
if(!p||p.test(l.nodeName)){j.push(l)
}}return j
}
}else{if(document.evaluate){a=function(r,u,q){u=u||"*";
q=q||document;
var k=r.split(" "),s="",o="http://www.w3.org/1999/xhtml",t=(document.documentElement.namespaceURI===o)?o:null,l=[],h,i;
for(var m=0,n=k.length;
m<n;
m+=1){s+="[contains(concat(' ', @class, ' '), ' "+k[m]+" ')]"
}try{h=document.evaluate(".//"+u+s,q,t,0,null)
}catch(p){h=document.evaluate(".//"+u+s,q,null,0,null)
}while((i=h.iterateNext())){l.push(i)
}return l
}
}else{a=function(v,y,u){y=y||"*";
u=u||document;
var o=v.split(" "),x=[],h=(y==="*"&&u.all)?u.all:u.getElementsByTagName(y),t,q=[],s;
for(var p=0,i=o.length;
p<i;
p+=1){x.push(new RegExp("(^|\\s)"+o[p]+"(\\s|$)"))
}for(var n=0,w=h.length;
n<w;
n+=1){t=h[n];
s=false;
for(var j=0,r=x.length;
j<r;
j+=1){s=x[j].test(t.className);
if(!s){break
}}if(s){q.push(t)
}}return q
}
}}return a(f,e,g)
};
return a(c,b,d)
});
(function(){var b=0;
var a="li_gen_";
Sslac.Function("IN.$uid",function(d){var c=((d)?d+"_":"")+a+(new Date()).getTime()+"_"+(b++);
return c
})
})();
(function(){var a=function(b,c,e,d){return function(){if(c){window.setTimeout(function(){window[b]=undefined
},50)
}e.apply(d,arguments)
}
};
Sslac.Function("IN.$fn",function(e,d,c){var b=IN.$uid("fn");
window[b]=a(b,c,e,d);
return b
})
})();

/* res://connect-min/dev/lib/easyxdm_noconflict.js */

IN.Lib=IN.Lib||{};
IN.Lib.easyXDM=easyXDM.noConflict("IN.Lib");

/* res://connect-min/dev/util/util.js */

Sslac.Function("IN.Util.trim",function(b,a){a=a||"\\s";
return b.replace(new RegExp("^(?:"+a+")+|(?:"+a+")+$","g"),"")
});
Sslac.Function("IN.Util.findIn",function(f,e){var d=e.split(/\./),b=f;
for(var c=0,a=d.length;
c<a;
c++){if(!b[d[c]]){throw new Error("not found")
}b=b[d[c]]
}return b
});
Sslac.Function("IN.Util.getStyle",function(b,a){if(b.currentStyle){return b.currentStyle[IN.Util.camelCase(a)]
}else{if(window.getComputedStyle){return document.defaultView.getComputedStyle(b).getPropertyValue(a)
}}return""
});
Sslac.Function("IN.Util.camelCase",function(a){return a.replace(/^-ms-/,"ms-").replace(/-([a-z])/gi,function(b,c){return c.toUpperCase()
})
});
Sslac.Function("IN.Util.assembleRootURL",function(a){return a.protocol+"://"+a.host+((a.port)?":"+a.port:"")
});
Sslac.Function("IN.Util.getRootURL",function(a){var b=IN.Util.getRootURLObject(a);
return IN.Util.assembleRootURL(b)
});
Sslac.Function("IN.Util.getRootDomain",function(a){var b=IN.Util.getRootURLObject(a);
return b.host
});
Sslac.Function("IN.Util.getRootURLObject",function(b){b=b||location.href;
if(b.indexOf("//")===0){b=window.location.protocol+b
}if(b.indexOf("://")===-1){b=window.location.protocol+"//"+b
}var c=b.substring(b.indexOf("://")+3);
var e=b.substring(0,b.indexOf("://")).toLowerCase();
c=(c.indexOf("/")!==-1)?c.substring(0,c.indexOf("/")):c;
var d=c.indexOf(":");
var a="";
if(d>=0){a=c.substring(d+1);
c=c.substring(0,d)
}if((a==="80"&&e==="http")||(a==="443"&&e==="https")){a=""
}return{protocol:e,host:c,port:a}
});
Sslac.Function("IN.Util.getDebuggerUrl",function(){try{return window.location.href.replace(window.location.hash,"").replace(document.domain,"").replace(/https?:\/\//g,"")
}catch(a){return(window.opener)?"[spawned window]":(window.parent&&window.self!==window.parent)?"[spawned frame]":"[parent window]"
}});
(function(){var b;
Sslac.Function("IN.Util.addCSS",function a(c){b=b||(function(){var k=function(e){document.write("<style>"+e+"</style>")
},h,g,f;
try{h=document.createElement("style");
h.setAttribute("type","text/css");
document.getElementsByTagName("head")[0].appendChild(h);
k=function(e){if(h.styleSheet){h.styleSheet.cssText+=e
}else{h.appendChild(document.createTextNode(e))
}}
}catch(j){if(document.createStyleSheet){try{h=document.createStyleSheet()
}catch(d){g=document.styleSheets;
for(f=h.length;
f--;
){h=g[f];
if(h.cssRules&&h.cssRules.length<3500&&!/@media/gi.test(h.cssText+"")){break
}h=null
}}if(h){k=function(e){h.styleSheet.cssText+=e
}
}}}return{append:k}
}());
b.append(c)
})
}());
(function(){var b={};
function a(c){if(!b[c]){b[c]=new RegExp("(\\s|^)"+c+"(\\s|$)")
}return b[c]
}Sslac.Function("IN.Util.hasClass",function(d,c){return(d&&d.className&&d.className.match(a(c)))
});
Sslac.Function("IN.Util.addClass",function(d,c){if(!IN.Util.hasClass(d,c)&&(typeof d.className!==$_CONSTANTS.types.undef)){d.className=IN.Util.trim(d.className+" "+c)
}});
Sslac.Function("IN.Util.removeClass",function(d,c){var e="";
if(IN.Util.hasClass(d,c)){e=IN.Util.trim(d.className.replace(a(c)," "));
if(e){d.className=e
}else{d.className="";
d.removeAttribute("class");
d.removeAttribute("className")
}}})
}());
Sslac.Function("IN.Util.isArray",function(a){if(!a||!a.constructor){return false
}return(a.constructor.toString().indexOf("Array")!==-1)
});
Sslac.Function("IN.Util.isObject",function(a){return typeof a===$_CONSTANTS.types.object
});
Sslac.Function("IN.Util.isNode",function(b){var a=$_CONSTANTS.types;
return(typeof Node===a.object?b instanceof Node:typeof b===a.object&&typeof b.nodeType===a.number&&typeof b.nodeName===a.string)
});
Sslac.Function("IN.Util.isElement",function(b){var a=$_CONSTANTS.types;
return(typeof HTMLElement===a.object?b instanceof HTMLElement:typeof b===a.object&&b.nodeType===1&&typeof b.nodeName===a.string)
});
Sslac.Function("IN.Util.toObject",function(f,l,a){var d={},k,m,h,b=$_CONSTANTS.types;
l=l||[];
if(!f||f.legth<=0){return d
}if(typeof(l)===b.string||typeof(l)===b.func){l=[l]
}for(var e=0,g=f.length;
e<g;
e++){m=f[e];
k=e;
for(var c=l.length-1;
c>=0;
c--){h=m[l[c]];
if(typeof(h)===b.func){h=h(e);
if(h){k=h
}}else{if(typeof h!==$_CONSTANTS.types.undef){k=h
}}}k=""+k;
if(a){k=a(e,k)
}d[k]=m
}return d
});
Sslac.Function("IN.Util.parseParams",function(h){var c={},j,d,a,g;
for(var e=0,b=h.split("&"),f=b.length;
e<f;
e++){j=b[e];
d=j.split("=");
a=decodeURIComponent(d.splice(0,1));
g=decodeURIComponent(d.join("="));
c[a]=g
}return c
});
Sslac.Function("IN.Util.validateAttributes",function(b,l){var f="isValid_"+(+new Date()),h;
function k(p){if(typeof l[p][f]!==$_CONSTANTS.types.undef){return l[p][f]
}var n=l[p].transform;
if(n){try{b[p]=n(b[p]);
l[p][f]=true;
return true
}catch(r){h=e.invalidError||p+" is not a valid "+p+" ({0})";
throw new Error(IN.Util.formatString(h,b[p]))
}}var q=b[p],m=l[p].match;
if(!m||!q){return true
}var s=typeof m,i=true,o=$_CONSTANTS.types;
s=(m instanceof RegExp)?"regex":s;
switch(s){case o.func:i=m(q);
break;
case o.string:m=new Regex(m);
case o.regex:q=b[p];
i=m.test(q);
break;
default:break
}l[p][f]=i;
return i
}for(var j in l){if(l.hasOwnProperty(j)){var e=l[j];
var a=k(j);
if(!a){h=e.invalidError||j+" is not a valid "+j+" ({0})";
throw new Error(IN.Util.formatString(h,b[j]))
}if(e.defaultValue&&(!a||!b[j])){b[j]=e.defaultValue;
continue
}if(e.required===true){if(b[j]&&a){continue
}else{var d=true;
if(e.exception){for(var c=e.exception.length;
c--;
){var g=e.exception[c];
if(b[g]&&k(g)){d=false;
break
}}}if(d){h=e.error||j+" was not provided";
throw new Error(h)
}}}}}return b
});
Sslac.Function("IN.Util.createParams",function(g){var d=[],f=0;
for(var c in g){if(c==="type"&&IN.Util.isArray(g[c])){var e=g[c];
for(var b=0,a=e.length;
b<a;
b++){d[f++]=encodeURIComponent(c)+"="+encodeURIComponent(e[b])
}}else{d[f++]=encodeURIComponent(c)+"="+encodeURIComponent(g[c])
}}return d.join("&")
});
Sslac.Function("IN.Util.appendParams",function(a,b){if(b){if(IN.Util.isObject(b)){b=(IN.Util.isArray(b))?b.join("&"):IN.Util.createParams(b)
}if(b){a=a+((/\?/.test(a))?"&":"?")+b
}}return a
});
Sslac.Function("IN.Util.base64decode",function(f,h){var a=(h)?"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_=":"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
var d=[],g,c,b,m,l,k,j;
for(var e=0;
e<f.length;
){m=a.indexOf(f.charAt(e++));
l=a.indexOf(f.charAt(e++));
k=a.indexOf(f.charAt(e++));
j=a.indexOf(f.charAt(e++));
g=(m<<2)+(l>>4);
c=((l&15)<<4)+(k>>2);
b=((k&3)<<6)+j;
d[d.length]=String.fromCharCode(g);
if(k!==64){d[d.length]=String.fromCharCode(c)
}if(j!==64){d[d.length]=String.fromCharCode(b)
}}return d.join("")
});
(function(){var a=["00000000 77073096 EE0E612C 990951BA 076DC419 706AF48F E963A535 9E6495A3 0EDB8832 79DCB8A4","E0D5E91E 97D2D988 09B64C2B 7EB17CBD E7B82D07 90BF1D91 1DB71064 6AB020F2 F3B97148 84BE41DE","1ADAD47D 6DDDE4EB F4D4B551 83D385C7 136C9856 646BA8C0 FD62F97A 8A65C9EC 14015C4F 63066CD9","FA0F3D63 8D080DF5 3B6E20C8 4C69105E D56041E4 A2677172 3C03E4D1 4B04D447 D20D85FD A50AB56B","35B5A8FA 42B2986C DBBBC9D6 ACBCF940 32D86CE3 45DF5C75 DCD60DCF ABD13D59 26D930AC 51DE003A","C8D75180 BFD06116 21B4F4B5 56B3C423 CFBA9599 B8BDA50F 2802B89E 5F058808 C60CD9B2 B10BE924","2F6F7C87 58684C11 C1611DAB B6662D3D 76DC4190 01DB7106 98D220BC EFD5102A 71B18589 06B6B51F","9FBFE4A5 E8B8D433 7807C9A2 0F00F934 9609A88E E10E9818 7F6A0DBB 086D3D2D 91646C97 E6635C01","6B6B51F4 1C6C6162 856530D8 F262004E 6C0695ED 1B01A57B 8208F4C1 F50FC457 65B0D9C6 12B7E950","8BBEB8EA FCB9887C 62DD1DDF 15DA2D49 8CD37CF3 FBD44C65 4DB26158 3AB551CE A3BC0074 D4BB30E2","4ADFA541 3DD895D7 A4D1C46D D3D6F4FB 4369E96A 346ED9FC AD678846 DA60B8D0 44042D73 33031DE5","AA0A4C5F DD0D7CC9 5005713C 270241AA BE0B1010 C90C2086 5768B525 206F85B3 B966D409 CE61E49F","5EDEF90E 29D9C998 B0D09822 C7D7A8B4 59B33D17 2EB40D81 B7BD5C3B C0BA6CAD EDB88320 9ABFB3B6","03B6E20C 74B1D29A EAD54739 9DD277AF 04DB2615 73DC1683 E3630B12 94643B84 0D6D6A3E 7A6A5AA8","E40ECF0B 9309FF9D 0A00AE27 7D079EB1 F00F9344 8708A3D2 1E01F268 6906C2FE F762575D 806567CB","196C3671 6E6B06E7 FED41B76 89D32BE0 10DA7A5A 67DD4ACC F9B9DF6F 8EBEEFF9 17B7BE43 60B08ED5","D6D6A3E8 A1D1937E 38D8C2C4 4FDFF252 D1BB67F1 A6BC5767 3FB506DD 48B2364B D80D2BDA AF0A1B4C","36034AF6 41047A60 DF60EFC3 A867DF55 316E8EEF 4669BE79 CB61B38C BC66831A 256FD2A0 5268E236","CC0C7795 BB0B4703 220216B9 5505262F C5BA3BBE B2BD0B28 2BB45A92 5CB36A04 C2D7FFA7 B5D0CF31","2CD99E8B 5BDEAE1D 9B64C2B0 EC63F226 756AA39C 026D930A 9C0906A9 EB0E363F 72076785 05005713","95BF4A82 E2B87A14 7BB12BAE 0CB61B38 92D28E9B E5D5BE0D 7CDCEFB7 0BDBDF21 86D3D2D4 F1D4E242","68DDB3F8 1FDA836E 81BE16CD F6B9265B 6FB077E1 18B74777 88085AE6 FF0F6A70 66063BCA 11010B5C","8F659EFF F862AE69 616BFFD3 166CCF45 A00AE278 D70DD2EE 4E048354 3903B3C2 A7672661 D06016F7","4969474D 3E6E77DB AED16A4A D9D65ADC 40DF0B66 37D83BF0 A9BCAE53 DEBB9EC5 47B2CF7F 30B5FFE9","BDBDF21C CABAC28A 53B39330 24B4A3A6 BAD03605 CDD70693 54DE5729 23D967BF B3667A2E C4614AB8","5D681B02 2A6F2B94 B40BBE37 C30C8EA1 5A05DF1B 2D02EF8D"].join(" ");
Sslac.Function("IN.Util.crc32",function(f){var e=0,g=0,c=0;
e=e^(-1);
for(var d=0,b=f.length;
d<b;
d++){g=(e^f.charCodeAt(d))&255;
c="0x"+a.substr(g*9,8);
e=(e>>>8)^c
}return e^(-1)
})
}());
Sslac.Function("IN.Util.RC4",function(r,n,d){var h=[];
var l,k,m,a;
var o=r.length,p=n.length;
var g;
var c="0123456789abcdef";
var b=[];
d=d||20;
function e(j,q,i){var s=j[q];
j[q]=j[i];
j[i]=s
}for(l=0;
l<256;
l++){h[l]=l;
b[l]=((l<16)?"0":"")+l.toString(16)
}for(l=0;
l<256;
l++){k=(k+h[l]+r.charCodeAt(l%o))%256;
e(h,l,k)
}l=0;
k=0;
g=[];
for(a=0;
a<d;
a++){l=(l+1)%256;
k=(k+h[l])%256;
e(h,l,k)
}for(a=0;
a<p;
a++){l=(l+1)%256;
k=(k+h[l])%256;
e(h,l,k);
var f=String.fromCharCode(n.charCodeAt(a)^h[(h[l]+h[k])%256]);
g[g.length]=b[f.charCodeAt(0)]
}return g.join("")
});
Sslac.Function("IN.Util.getHashParams",(function(){function g(j){var l=j+"=";
var e=document.cookie.split(";");
for(var k=0;
k<e.length;
k++){var m=e[k];
while(m.charAt(0)===" "){m=m.substring(1,m.length)
}if(m.indexOf(l)===0){return m.substring(l.length,m.length)
}}return null
}var a=window.name.replace(/[^a-z0-9]/gi,"_");
var f=window.location.hash.substring(1);
if(!f||f.indexOf("=")===-1){f=g("IN_HASH");
if(f){f=decodeURIComponent(f)
}}if(!f||f.indexOf("=")===-1){f=window.IN_HASH
}if(!f||f.indexOf("=")===-1){return function(){return false
}
}document.cookie="IN_HASH="+encodeURIComponent(f);
var h=IN.Util.parseParams(f);
var i={};
for(var b in h){var c=h[b];
i[b]=c;
if((b!=="access_token")&&(b!=="oauth_token")&&c.match(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)){c=IN.Util.base64decode(c)
}try{c=JSON.parse(c)
}catch(d){}h[b]=c
}return function(e){return(e)?i:h
}
}()));
Sslac.Function("IN.Util.throwWarning",function(a){if(!a||IN.ENV.js.suppressWarnings||!console||!console.warn){return
}console.warn(a)
});
Sslac.Function("IN.Util.extendObject",function(){var g=arguments[0]||{};
if(typeof g!==$_CONSTANTS.types.object){g={}
}for(var c=1,d=arguments.length;
c<d;
c++){var f=arguments[c];
if(f){for(var b in f){var e=g[b];
var a=f[b];
if(g===a){continue
}if(a&&(IN.Util.isObject(a)||IN.Util.isArray(a))){var h=e||{};
g[b]=IN.Util.extendObject(h,a)
}else{if(typeof a!==$_CONSTANTS.types.undef){g[b]=a
}}}}}return g
});
Sslac.Function("IN.Util.clone",function(c){if(!IN.Util.isArray(c)){return IN.Util.extendObject({},c)
}else{var d=[];
for(var b=0,a=c.length;
b--;
){d[b]=c[b]
}return d
}return c
});
Sslac.Function("IN.Util.toArray",function(c,b){if(IN.Util.isArray(c)){return c
}else{if(IN.Util.isObject(c)&&!b){var d=[];
for(var a in c){if(c.hasOwnProperty(a)){d.push(c[a])
}}return d
}else{return[c]
}}});
Sslac.Function("IN.Util.formatString",function(){var a=arguments;
return a[0].replace(/\{(\d+)\}/g,function(b,c){c=Number(c);
return(typeof a[1+c]!==$_CONSTANTS.types.undef)?a[1+c]:"{"+c+"}"
})
});
Sslac.Function("IN.Util.computeGradientStyle",function(p,o){p=p.toLowerCase();
o=IN.Util.toArray(o);
var d=o.length,n={webkit:["-webkit-gradient(linear, left top, left bottom, {0})","-webkit-"],gecko:"-moz-",msieold:"progid:DXImageTransform.Microsoft.gradient({0}, GradientType=0)",msie:"-ms-",opera:"-o-",w3c:"linear-gradient(top, {0})"},l=IN.Util.toArray(n[p]||n.w3c),q=l.length,h={webkit:"color-stop({0}%,{1})",msieold:'startColorstr="{0}", endColorstr="{1}"',w3c:"{1} {0}%"},k,m,g;
for(g=q;
g--;
){if(l[g].length<10){l[g]=l[g]+n.w3c
}}h.webkit=[h.webkit,h.w3c];
h=h[p]||h.w3c;
function c(j){var i=o[j].split(":");
k={};
if(i.length>1){k.stop=i[0];
k.color=i[1]
}else{k.color=i[0];
k.stop=Math.round(j/(d-1)*100)
}return k
}if(p==="msieold"){var a=c(0).color,e=c(d-1).color;
k=IN.Util.formatString(h,a,e);
m=IN.Util.formatString(l[0],k)
}else{h=IN.Util.toArray(h);
m=[];
for(g=0;
g<q;
g++){var b=[];
for(var f=0;
f<d;
f++){k=c(f);
b.push(IN.Util.formatString(h[g],k.stop,k.color))
}b=b.join(", ");
m.push(IN.Util.formatString(l[g],b))
}m=m.join($_CONSTANTS.suffixes.important+" background-image: ")
}return m
});
Sslac.Function("IN.Util.relativeTime",function(i){if(typeof i==="string"){i=+new Date(i)
}if(!i){return""
}var d=$_CONSTANTS.conversions.times,b=+new Date(),l=+new Date().getTimezoneOffset()*d.secondsPerMinute,e=b+l,a=Math.round((e-i)/d.msPerSecond);
if(a>d.secondsPerYear){var g=new Date(i),c=("January, February, March, April, May, June, July, August, September, October, November, December").split(/[\s]*,[\s]*/g);
return IN.Util.formatString("on {0} {1}, {2}",c[g.getMonth()],g.getDate(),g.getFullYear())
}else{if(a<=0){return""
}}var k,f,h=[{unit:"minute",seconds:d.secondsPerMinute},{unit:"hour",seconds:d.secondsPerHour},{unit:"day",seconds:d.secondsPerDay},{unit:"week",seconds:d.secondsPerWeek},{unit:"month",seconds:d.secondsPerMonth}];
for(k=h.length-1;
(k>=0)&&((f=a/h[k].seconds)<=1);
k--){}if(k<0){k=0
}f=Math.floor(f);
if(f<1){f=1
}var j=(f===1)?"":"s";
if(f===1){if(k===2){return"yesterday"
}else{if(k>1){return"last "+h[k].unit
}}}return[Math.floor(f),""+h[k].unit+j,"ago"].join(" ")
});
(function(){var a={},c="___JS_REPLACE___",g="___END_JS_REPLACE___",i=/^\n*/,d=/\n*$/,j=/"/g,h=/___JS_REPLACE___=(.+?)___END_JS_REPLACE___/g,e=/("(?:(?!___JS_REPLACE___).)*)___END_JS_REPLACE___/g,f=/[\-\[\]\{\}\(\)\*\+\?\.\,\^\$\|\#\s\\]/g;
function k(l){return l.replace(j,"\r")
}function b(l){return l.replace(f,"\\$&")
}Sslac.Function("IN.Util.createJSTemplate",function(q,l){var m="t"+Math.abs(IN.Util.crc32(q));
if(a[m]){return a[m]
}if(!l&&IN.ENV&&IN.ENV.js&&IN.ENV.js.templateMarkers){l=IN.ENV.js.templateMarkers
}l=l||"<?js ?>";
l=l.split(" ");
var p=l[0]||"<?js",o=l[1]||"?>";
if(!p||!o){throw new Error("Template markers must be set.")
}if(p===o){throw new Error("Start and end markers cannot be identical.")
}p=new RegExp(b(p),"g");
o=new RegExp(b(o),"g");
var n=["","var p=[],","$=function(v) {",'return (v == "*") ? obj : obj[v];',"},","print=function() {","p.push.apply(p, arguments);","};","with(obj) {","try {",'p.push("',q.replace(p,c).replace(o,g).split("\r").join("").split("\t").join("    ").replace(i,"").replace(d,"").split("\n").join("\\n").replace(e,k).split('"').join('\\"').split("\r").join('"').replace(h,'",$1,"').split(c).join('");').split(g).join('p.push("'),'");',"}","catch(_tmplEx_) {",'p.push("Error: ", _tmplEx_.message)',"}","}",'return p.join("");',""].join("");
a[m]=new Function("obj",n);
return a[m]
})
}());
Sslac.Function("IN.Util.getUniqueID",function uuid(){var e="0123456789abcdef".split("");
var c=[],b=Math.random,d;
c[8]=c[13]=c[18]=c[23]="-";
c[14]="4";
for(var a=0;
a<36;
a++){if(!c[a]){d=0|b()*16;
c[a]=e[(a===19)?(d&3)|8:d&15]
}}return c.join("")
});
Sslac.Function("IN.Util.isRetina",function(){return(window.devicePixelRatio&&window.devicePixelRatio>1)
});

/* res://connect-min/dev/support/support.js */

Sslac.Function("IN.Support.isWindowMode",function(b){var a="unknown";
if(window.self===window.top&&window.opener){a="popup"
}if(window.parent&&window.parent!==window.self){a="iframe"
}if(window.self===window.top&&!window.opener){a="page"
}return(a===b)
});
Sslac.Function("IN.Support.isSingleJS",(function singleJSClosure(){var c={iosAll:(/OS .* like Mac OS X/i)};
var b=navigator.userAgent;
var a=c;
var d=a.iosAll.test(b);
return function(){return d
}
}()));
Sslac.Function("IN.Support.generateXDProxy",(function genXDProxyClosure(){var d={authorize:{},logout:{},closedWindow:{},reload:{},widgetSuccess:{},widgetError:{},widgetReady:{}};
var b={};
function c(e){b[e]=function(){var g="CONNECT_LSCOMM";
var f=localStorage[g]||null;
try{f=JSON.parse(f)
}catch(h){f=[]
}if(!f){f=[]
}f.push({fn:e,args:arguments});
localStorage[g]=JSON.stringify(f)
}
}for(var a in d){if(!d.hasOwnProperty(a)){continue
}c(a)
}return function(){return b
}
}()));
Sslac.Function("IN.Support.isPopup",function(){return IN.Support.isWindowMode("popup")
});
Sslac.Function("IN.Support.isIframe",function(){return IN.Support.isWindowMode("iframe")
});
Sslac.Function("IN.Support.isFullPage",function(){return IN.Support.isWindowMode("page")
});
Sslac.Function("IN.Support.getXD",(function getXDClosure(){function a(){throw new Error("no XD object is available from this page")
}try{if(IN.Support.isSingleJS()&&IN.Support.isPopup()){return IN.Support.generateXDProxy()
}if(IN.Support.isPopup()){return window.opener.getXD||a
}else{if(IN.Support.isIframe()){return window.parent.getXD||a
}else{return a
}}}catch(b){return a
}}()));
Sslac.Function("IN.Support.close",(function closeClosure(){function a(){IN.Support.getXD().close()
}function b(){window.self.close()
}return(IN.Support.isIframe())?a:(IN.Support.isPopup())?b:function(){}
}()));
Sslac.Function("IN.Support.displayAsHover",function asHover(){IN.Util.addClass(document.body,"hovercard")
});
Sslac.Function("IN.Support.setAnchorContext",function setAnchorContext(a){var b=document.body;
IN.Util.removeClass(b,"context-tl");
IN.Util.removeClass(b,"context-tr");
IN.Util.removeClass(b,"context-bl");
IN.Util.removeClass(b,"context-br");
IN.Util.addClass(b,"context-"+a)
});
Sslac.Function("IN.Support.signinWindow",(function signinWindowClosure(){var g,d,c=($_PATTERNS.protocols.secure.test(location.href))?true:false,f=document.getElementsByTagName("meta");
for(var b=0,a=f.length;
b<a;
b++){if(f[b].name==="IN-signin-secure"){g=f[b].content
}if(f[b].name==="IN-signin"){d=f[b].content
}}return function e(){var j=IN.$uid(),h=(c)?g:d,i;
i=window.open(h,j,"width=500, height=120")
}
}()));
Sslac.Function("IN.Support.sendSuccessResponse",function(a){var b=a||window.IN_SUCCESS||null;
if(!b){return
}if(IN.Support.getXD()){IN.Support.getXD().widgetSuccess(b)
}});
Sslac.Function("IN.Support.sendErrorResponse",function(b){var a=b||window.IN_ERROR||null;
if(!a){return
}if(IN.Support.getXD()){IN.Support.getXD().widgetError(a)
}});
Sslac.Function("IN.Support.sendReadyResponse",function(a){var b=a||window.IN_READY||null;
if(!b){return
}if(IN.Support.getXD()){IN.Support.getXD().widgetReady(b)
}});
Sslac.Function("IN.Support.sendReloadRequest",function(a){if(IN.Support.getXD()){IN.Support.getXD().reload(a)
}});
Sslac.Function("IN.Support.appendField",function(a){var b=IN.Support.isIframe()?window.parent:window.opener;
b.appendField(a)
});

/* res://connect-min/dev/xd/domain.js */

(function(){Sslac.Function("IN.XD.adjustDomain",function d(){var j=document.domain,h=j,k=/(lmodules)|(linkedin)/i,l=/\./g;
if(l.test(j)){for(var g=0,f=j.match(l).length;
g<f;
g++){j=j.substring(j.indexOf(".")+1);
if(!k.test(j)){break
}h=j
}}if(!window.opener&&(window.parent===window.self)){if(window.location.pathname.indexOf("xdrpc.html")!==-1){e()
}}if(document.domain!==h){document.domain=h
}b(a("parent"));
b(a("opener"))
});
function e(f){window.location.replace("https://www.linkedin.com/404");
window.close();
throw new Error(f)
}function b(f){if(document.domain==f.domain){var g=["platform","www","pemberly.www"].some(function(h){if(f.subdomain===h){return true
}});
if(!g){e()
}}}function c(g){var f=/^(?:https?\:\/\/)?([^\/]+)\.linkedin(?:-ei)?\.com(?:\:|\/|$)/.exec(g||"");
return f&&f[1]
}function a(g){var i={name:g,domain:null,subdomain:null};
var f=window[g];
try{i.domain=f.document.domain;
i.subdomain=c(f.location.href)
}catch(h){}return i
}}());

/* res://connect-min/dev/xd/easyxdm_harness.js */

(function init(S,Z,b){function q(ae){b.location.replace("https://www.linkedin.com/404");
b.close();
throw new Error(ae)
}function N(af){var ae=/^(?:https?\:\/\/)?([^\/]+)\.linkedin(?:-ei)?\.com(?:\/|$)/.exec(af||document.domain);
return ae&&ae[1]
}if(!S){return
}S=IN.Util.parseParams(S.substr(S.indexOf("#")+1));
Z=IN.Util.parseParams(Z);
if(!S){return
}var d=S,i=d.mode,n=d.target,X=[],J=false,E=IN.$uid(),U=d.xdm_e,H=d.xd_uri,R=null,O=null,I=d.width,h=d.height,L=d.access_token,A=d.member_id,W={},a=d.oauth_cookie_value,V,T,ac={},u=$_PATTERNS.protocols.secure.test(location.href),j=(u)?b.XD_RECEIVER_SECURE_URL:b.XD_RECEIVER_UNSECURE_URL,v=(u)?b.XD_SWF_SECURE_URL:b.XD_SWF_UNSECURE_URL,M="CONNECT_LSCOMM",m=false,w=N(document.domain),o=N(U);
if(w==="www"&&o!=="www"){q()
}ac.popupValidDomain={authorize:{},logout:{},closedWindow:{},reload:{},widgetSuccess:{},widgetError:{},widgetReady:{}};
ac.wrapper={login:{},resize:{},close:{},reload:{},widgetSuccess:{},widgetError:{},widgetReady:{}};
ac.cors={};
if(Z&&Z.xdm_e){d.xdm_e=Z.xdm_e
}d=IN.Util.validateAttributes(d,{mode:{match:$_PATTERNS.types.htmlAttribute,defaultValue:""},target:{match:$_PATTERNS.types.htmlAttribute,defaultValue:null},xdm_e:{match:$_PATTERNS.url,defaultValue:null},xdm_c:{match:$_PATTERNS.types.token,defaultValue:""},xd_uri:{match:$_PATTERNS.domain,defaultValue:null},width:{match:$_PATTERNS.types.number,defaultValue:1},height:{match:$_PATTERNS.types.number,defaultValue:1},access_token:{match:$_PATTERNS.types.token,defaultValue:null},member_id:{match:$_PATTERNS.types.token,defaultValue:null},oauth_cookie_value:{defaultValue:""}});
if(!i&&L&&A){i="auth"
}m=(function z(){var ag={iosAll:(/OS .* like Mac OS X/i)};
var af=navigator.userAgent;
var ae=ag;
var ah=ae.iosAll.test(af);
return ah
}());
b.appendField=function e(ae){var af;
if(!R){return
}var ai=document.createElement("div"),ag,ah;
for(ag in ae){if(ae.hasOwnProperty(ag)){ag=y(ag);
ah=y(ae[ag]);
if(R.elements[ag]){R.elements[ag].value=ah
}else{af=document.createElement("input");
af.type="hidden";
af.name=ag;
af.value=ah;
ai.appendChild(af)
}}}R.appendChild(ai);
R.method=t()
};
b.authorize=function Q(af,ah,al,ag){var am=JSON.parse(af),ai=IN.Util.getRootDomain(U),ae=false;
if(!am){return false
}for(var aj=0,ak=am.length;
aj<ak;
aj++){var an=new RegExp("^"+am[aj].replace($_PATTERNS.chars.dot,"\\.").replace($_PATTERNS.chars.star,".+?")+"$");
if(ai.match(an)){ae=true;
break
}}if(ae){if(m){K("authorize",[ah,al,ag]);
return
}else{b.getXD().authorize(ah,al,ag)
}}};
b.login=function D(){b.getXD().login()
};
b.setTargetWindow=function ab(ai){if(J){return true
}V=ai;
J=true;
var ag;
var af=X;
X=[];
for(var ah=0,ae=af.length;
ah<ae;
ah++){ag=af[ah];
ag.fn.apply(ag.scope)
}};
function f(){window.setTimeout(f,100);
var af=localStorage[M]||null;
var ai=null;
var ag=null;
localStorage[M]=null;
try{af=JSON.parse(af)
}catch(aj){af=[]
}if(!af||af.length<=0){return
}for(var ah=0,ae=af.length;
ah<ae;
ah++){ai=af[ah].fn;
ag=af[ah].args||[];
if(ai==="oauthHandoff"){b.authorize.apply(window,ag)
}else{T[ai].apply(window,ag)
}}}function K(ag,af){var ae=localStorage[M]||null;
try{ae=JSON.parse(ae)
}catch(ah){ae=[]
}if(!ae){ae=[]
}ae.push({fn:ag,args:af});
localStorage[M]=JSON.stringify(ae)
}function t(af){var ag,ae;
if(R){ae=R.method
}ag=((af||ae||"GET").toUpperCase()==="GET")?"GET":"POST";
return(l(R)>=2048)?"POST":ag
}function y(ae){var af=$_PATTERNS.chars;
return(""+ae).replace(af.amp,"&amp;").replace(af.lt,"&lt;").replace(af.gt,"&gt;").replace(af.quot,"&quot;").replace(af.squot,"&#039;")
}function l(ah){if(!ah){return 0
}var ag=[];
if(ah.action){ag.push(ah.action)
}for(var af=0,ae=ah.elements.length;
af<ae;
af++){ag.push(ah.elements[af].name+"="+ah.elements[af].value)
}ag=parseInt(ag.join("&").length,10);
return ag
}function c(ae,am,ai){var af=af||IN.$uid()+"_form",ah=[],ak="",aj="",ag=ae.split("?")[1]||"",al;
ae=ae.replace("?"+ag,"");
ag=IN.Util.parseParams(ag);
if(!$_PATTERNS.url.test(ae)){throw new Error("form url is invalid")
}for(al in ag){if(typeof am[al]===$_CONSTANTS.types.undef){am[al]=ag[al]
}}am._ts=+new Date()+Math.random();
am.xd_origin_host=d.xdm_e;
if(am.original_referer&&am.original_referer.indexOf(am.xd_origin_host)!==0){return
}for(al in am){if(am.hasOwnProperty(al)){aj=y(al);
ak=y(am[al]);
ah.push('<input type="hidden" name="'+aj+'" value="'+ak+'"/>')
}}return{html:['<form action="'+y(ae)+'" method="'+t(ai)+'" id="'+af+'">',ah.join(""),"</form>"].join(""),id:af}
}function G(af,ae){ae=ae||window;
if(V){af.apply(ae)
}X.push({fn:af,scope:ae})
}b.getXD=function p(){return W
};
function x(ae){function ah(ai){return function(){var aj=arguments;
window.setTimeout(function(){T[ai].apply(T,aj)
},1)
}
}var ag=b.getXD();
for(var af in ae){if(ae.hasOwnProperty(af)){ag[af]=ah(af)
}}}function P(){if(O){return O()
}var aj=false;
var ae=false;
try{ae=function(){return new XMLHttpRequest()
};
ae();
aj=ae
}catch(ai){try{ae=function(){return new ActiveXObject("Microsoft.XMLHTTP")
};
ae();
aj=ae
}catch(ah){try{ae=function(){return new ActiveXObject("MSXML2.XMLHTTP.3.0")
};
ae();
aj=ae
}catch(ag){try{ae=function(){return new ActiveXObject("MSXML2.XMLHTTP")
};
ae();
aj=ae
}catch(af){aj=false
}}}}if(!aj){throw new Error("XHR could not be initialized")
}O=aj;
return O()
}switch(i){case"popup-get":IN.XD.adjustDomain();
var s=document.body,Y=document.createElement("div"),k=JSON.parse(b.opener.getFormHtml());
Y.innerHTML=k.html;
s.appendChild(Y);
R=document.getElementById(k.id);
R.method=t();
R.submit();
break;
case"popup":T=new IN.Lib.easyXDM.Rpc({remote:U,swf:v,onReady:function aa(){IN.XD.adjustDomain()
}},{local:{form:function F(ai,aj){var ah,af;
af=c(ai.action,ai.items,ai.method);
b.getFormHtml=function ae(){return JSON.stringify(af)
};
G(function ag(){var ak=((j.indexOf("?")>=0)?"&":"?")+"cachebreak=1",an=j+ak;
ah=b.open(V.location.href,V.name,"width="+I+", height="+h);
try{ah.opener=b
}catch(am){}function al(){if(ah.closed){T.closedWindow()
}else{window.setTimeout(al,100)
}}al();
ah.location.replace(an+"#mode=popup-get")
});
aj()
}},remote:ac.popupValidDomain});
x(ac.popupValidDomain);
break;
case"popup-wait":IN.XD.adjustDomain();
function C(){try{window.opener.frames[n].setTargetWindow(window)
}catch(af){try{window.opener.frames.setTargetWindow(window)
}catch(ae){window.setTimeout(C,50)
}}}C();
break;
case"listener":f();
T=new IN.Lib.easyXDM.Rpc({remote:U,swf:v,onReady:function aa(){IN.XD.adjustDomain()
}},{local:{form:function(){throw new Error("form() not supported in #listener")
}},remote:ac.popupValidDomain});
x(ac.popupValidDomain);
break;
case"wrapper":var Y=document.createElement("div");
Y.innerHTML=['<iframe id="'+E+'" name="'+E+'" src="javascript: void(0);"','style="visibility: hidden; background: transparent; width: '+I+"px;","height: "+h+'px;" allowtransparency="true" framspacing=0',"frameborder=0></iframe>"].join(" ");
document.body.appendChild(Y);
var r=document.getElementById(E);
b.resizeFrame=function g(ae){r.style.visibility="visible";
r.style.width=ae.width+"px";
r.style.height=ae.height+"px";
try{window.frames[E].scrollTo(0,0)
}catch(af){}};
T=new IN.Lib.easyXDM.Rpc({remote:U,swf:v,onReady:function(){IN.XD.adjustDomain()
}},{local:{refresh:function ad(ae){R.submit();
ae()
},mode:function i(ae){if(ae.display==="hover"){V.IN.Support.displayAsHover()
}if(ae.context){V.IN.Support.setAnchorContext(ae.context)
}},form:function F(af,ag){var ah=document.createElement("div"),ae=c(af.action,af.items,af.method);
ah.innerHTML=ae.html;
document.body.appendChild(ah);
R=document.getElementById(ae.id);
R.method=t(af.method);
R.target=E;
R.submit();
ag()
}},remote:ac.wrapper});
x(ac.wrapper);
break;
case"cors":if(w!=="api"){q()
}T=new IN.Lib.easyXDM.Rpc({remote:U,swf:v},{local:{ajax:function B(am,an,al){var ao=P(),ah=am.method.toUpperCase(),ae=(ah!=="GET")?"POST":"GET",af=(ae==="GET");
if(!ao){return al("No XHR Available")
}var ai=am.params.oauth_token;
delete (am.params.oauth_token);
var aj=IN.Util.createParams(am.params),ak="",ag="";
if(aj&&(af||am.postBody)){ak=((am.url.indexOf("?")===-1)?"?":"&")+aj
}if(!af){if(am.postBody){ag=am.postBody
}else{ag=aj
}}ao.open(ae,am.url+ak,true);
ao.onreadystatechange=function(){if(ao.readyState===4){if(ao.status>=200&&ao.status<400){an(ao.responseText)
}else{al(ao.responseText)
}}};
ao.setRequestHeader("X-HTTP-Method-Override",ah);
ao.setRequestHeader("X-Requested-With","IN.XDCall");
ao.setRequestHeader("x-li-format","json");
ao.setRequestHeader("X-Cross-Domain-Origin",U);
ao.setRequestHeader("Content-type","application/json");
ao.setRequestHeader("oauth_token",ai);
ao.send(ag)
}},remote:ac.cors});
x(ac.cors);
break;
case"auth":IN.XD.adjustDomain();
if(m){K("oauthHandoff",[H,L,A,a]);
b.self.close();
return
}b.opener.authorize(H,L,A,a);
b.self.close();
break;
default:break
}}(location.hash.substring(1),location.search.substring(1),window));

/* res://connect-min/dev/connect/_close.njs */


// restore window scoped vars that were touched in the framework
// this will only restore them if it was defined previously
// this allows our implementation to persist without polluting the window scope
for(var key in $_WIN) {
  if($_WIN.hasOwnProperty(key)) {
    if(typeof $_WIN[key] !== $_CONSTANTS.types.undef) {
      // restore into window
      window[key] = $_WIN[key];
    }
    // remove it from $_WIN
    $_WIN[key] = undefined;
  }
}

/* end anon function */
})(window, document); // pass in window and document references (for localization, see _open.njs)

</script>
<script type="text/javascript">
if(window.opener && window.opener.top) {
  window.opener.top.focus();
}
</script>
</body>
</html>
