   �         (http://cdn.doubleverify.com/dv-match3.js     %�<ì     %��s�8         
     O K           �   
   Content-Type   application/x-javascript   Content-Encoding   gzip   Last-Modified   Thu, 23 Mar 2017 20:45:07 GMT   Accept-Ranges   bytes   ETag   "80bfe5a16a4d21:0"   Vary   Accept-Encoding   Server   Microsoft-IIS/7.0   X-Powered-By   ASP.NET   Cache-Control   max-age=32394   Date   Sat, 29 Apr 2017 06:05:20 GMT window.dv=window.dv||{};window.dv.match=window.dv.match||{};
window.dv.match.f=function(){function d(){function a(){var a=new Uint32Array(4);window.crypto.getRandomValues(a);var b=[];[].slice.call(a).forEach(function(a){b.push(("00000000"+a.toString(36)).substr(-6))});return b.join("")}return window.crypto?a():(Math.random().toString(36)+"000000000000").substr(2,12)+(Math.random().toString(36)+"000000000000").substr(2,12)}function y(){var a=f&&l===k.document.body;return!window.MessageChannel||a}function z(a){var c={b:a,content:null};switch(a){case 23483290480:c.content=
e}return c}function I(a){function c(a,c){c.start();r(c);-1===A.indexOf(a)&&(A.push(a),J.push(c))}function b(a){a=-1===B.indexOf(a.source)?a.source.parent:a.source;var b=new MessageChannel;c(a,b.port1);a.postMessage(z(23483290480),"*",[b.port2])}function g(a){c(a.source.parent,a.ports[0]);(a=a.data.content)&&a.a<e.a&&(e=a)}function K(a){if(-1<p.indexOf(a))a=!1;else{var c;(c=-1<m.indexOf(a))||(q===a?(m.push(a),c=!0):c=!1);a=c?!0:f||a.parent===k?!function(a){function c(a,h,b){return b(l.compareDocumentPosition(a))?
(p.push(h),!0):!1}function b(a,c){if(![].slice.call(a).filter(function(a){var h;a:{try{for(var b=c;b!==window.top;)if(b=b.parent,b===a.contentWindow){h=!0;break a}h=!1;break a}catch(Q){}h=void 0}return h})[0])return!1;p.push(c);return!0}function g(a,h){var b=[].slice.call(a).filter(function(a){try{return a.contentWindow===h}catch(b){}return!1})[0];if(!b)return!1;var d=h.parent===k&&!f,e=b.parentNode===l&&f;(e||d)&&p.push(h);b=c(b.parentNode,h,function(a){return(a&t||a&u)&&f});v(d,"tisf");v(e,"tise");
v(b,"tisc");return e||b||d}var d=l.querySelectorAll("iframe:not(["+n+"])"),e=k.document.querySelectorAll("iframe["+n+"]");return C||!b(d,a)&&!g(e,a)?(m.push(a),!1):!0}(a):!1}return a}if(a&&a.data&&a.data.b){var d=a.data.b;if(!K(a.source))switch(D=!0,d){case 17381297349:b(a);break;case 23483290480:g(a)}}}function L(a,c){Object.keys(c).forEach(function(b){a[b]=c[b]});return a}function v(a,c){if(a){var b="dvp_"+c;g[b]=g[b]?g[b]+=1:1}}function r(a){a.addEventListener("message",I,!1)}function M(a,c,b){function d(a){for(a.postMessage(f,
"*");a!==window.top;)a=a.parent,a.postMessage(f,"*")}function e(a){var b=[];a!==window.top?b=a.frames:[].slice.call(l.querySelectorAll("iframe:not(["+n+"])")).forEach(function(a){b.push(a.contentWindow)});a=0;for(var d=b.length;a<d&&!(50<++k);a++)b[a]!==c&&b[a].postMessage(f,"*"),0<b[a].frames.length&&e(b[a])}function g(){(function(b){var c=[].slice.call(a.document.querySelectorAll("iframe[src='about:blank']["+n+"]"));c.splice(c.indexOf(b),1);return c})(w).forEach(function(a){var b=a.parentNode,c=
l.compareDocumentPosition(b);B.push(a.contentWindow);(b===l||c&u||c&t)&&a.contentWindow.postMessage(f,"*")});-1===m.indexOf(c)&&m.push(c)}var k=0,f=z(17381297349);r(a);b?(g(),r(c)):d(a);e(a)}function N(){function a(){if(!E&&(D||O)){E=!0;var a={mascid:e.a,dvp_masver:3};0<Object.keys(g).length&&(a=L(a,g));try{$dv.messages.registerMsg(window,a)}catch(b){}}}k.addEventListener("beforeunload",a,!1);setTimeout(a,5E3);setTimeout(function(){a();a=function(){}},P.c)}var P=this,x,F,e,g={},k,q,w,l,f,p=[],m=[],
B=[],A=[],J=[],E=!1,D=!1,O=!1,G=!1,C=!1,u,t,n;this.c="dv"===$dv.dvObjType?84E4:9E4;this.start=function(){y()||G||(x=(new Date).getTime().toString(36),F=x+d(),e={a:F,g:x},k=window.parent,q=window,w=q.frameElement,l=w.parentNode,f=k===window.top,u=Node.DOCUMENT_POSITION_CONTAINS,t=Node.DOCUMENT_POSITION_CONTAINED_BY,n="data-dv-frm",G=!0,M(k,q,f),N(),setTimeout(function(){C=!0},3E5))}};
try{(new window.dv.match.f).start()}catch(d){try{var H="//tps30.doubleverify.com/visit.jpg?ctx=818052&cmp=1619415&dvp_jsMtchErr="+encodeURIComponent(d);navigator&&navigator.sendBeacon?navigator.sendBeacon(H,{}):(new Image).src=H}catch(y){}};
