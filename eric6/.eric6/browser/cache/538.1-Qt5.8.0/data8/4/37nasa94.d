   �         /http://cdn.static.zdbb.net/js/walker-min.js?v=0     %�N:�     %�Qv�@         
     O K           �      
x-amz-id-2   Lkwz1R7pIPTIiPGD6P9VwXNWSpVrFFb7zn3zVWGltHQnDZHliSC/+SA/cShDQrfX9KI71ipZ7zq8=   x-amz-request-id   FF8430C43BD897BE   Last-Modified   Wed, 19 Oct 2016 20:48:08 GMT   ETag   ""4290d67fc279c5db3815c9a43594e30c"   Accept-Ranges   bytes   Content-Type   application/javascript   Server   AmazonS3   Vary   Accept-Encoding   Content-Encoding   gzip   Cache-Control   max-age=604800   Expires   Sat, 06 May 2017 06:05:05 GMT   Date   Sat, 29 Apr 2017 06:05:05 GMT var zd=zd||{};var zd_walker_skip_nodes=zd_walker_skip_nodes||["ABBR","META","NOSCRIPT","NAV","IMG","HEADER","FOOTER","SCRIPT","LINK","STYLE","FORM","INPUT","SELECT","BUTTON"];var zd_domain_regex=/(?:http)(?:s)?(?:\:\/\/)(?:www\.|preview\.|qa\.|qa2\.)?([^\/]*)([\/]*)(.*)/g;var zd_domain_match;zd_domain_match=zd_domain_regex.exec(document.location.href)[1];var zd_bbdomain="cdn.static.zdbb.net";if(["pcmag.com","geek.com","extremetech.com","computershopper.com"].lastIndexOf(zd_domain_match)>-1){zd_bbdomain="bbstatic."+zd_domain_match}zd.walker={lzma_src:"//"+zd_bbdomain+"/js/lzma-min.js",skipNodes:zd_walker_skip_nodes,skipAttributes:["outbrain","header","disqus","sponsor","sponsors","branding","advertise","navigation","masthead","ad","nav","footer","header","navigation","advertising","advertisement","menu","copyright"],harmlessNodes:["A","I","B","STRONG","EM","FONT","P","SPAN"],interestingMeta:["keywords","description","zdid","canonical","live_date","type_of","tags","zd_ptax"],snippets:{}};zd.poster={lzma_src:"//"+zd_bbdomain+"/js/lzma-worker-min.js",post_url:"//walker.zdbb.net/receive_uint8",url:document.location.toString(),href:document.location.href.toString(),check_url:"//walker.zdbb.net/check?href="};zd.walker.array_contains=function(a,c){var b=a.length;while(b--){if(a[b]==c){return true}}return false};zd.walker.superReplace=function(b,a,c){c=typeof c!=="undefined"?c:" ";for(i=0;i<a.length;i++){b=String(b).replace(a[i],c)}return b};zd.walker.validNode=function(a){if(!a||typeof a=="undefined"||(typeof a.tagName!="undefined"&&zd.walker.array_contains(zd.walker.skipNodes,a.tagName))){return false}else{var o=[];if(typeof a.style!="undefined"&&a.style.display=="none"){return false}if(typeof a.children=="undefined"){return false}var p=true;if(typeof a.attributes!="undefined"){for(var m,d=0,n=a.attributes,b=n.length;d<b;d++){m=n.item(d);if(m){var g=a.className;if(typeof g=="undefined"){g=""}var q=a.id;if(typeof q=="undefined"){q=""}g=g+" "+q;var h=m.value;if(typeof h=="undefined"){continue}h+=" "+g;h=h.toLowerCase();h=zd.walker.superReplace(h,[",",/\./gi,/-/gi,/_/gi]);h=h.split(" ");for(var c in h){try{var f=zd.walker.superReplace(h[c],[/^[ ]+/gi,/[ ]$/gi],"");if(zd.walker.array_contains(zd.walker.skipAttributes,f)){p=false;break}else{if(f.indexOf("disqus")>-1||f.indexOf("twitter")>-1||f.indexOf("pintrest")>-1||f.indexOf("fb-")>-1||f.indexOf("facebook")>-1){p=false;break}else{if(f.indexOf("main")>-1){break}}}}catch(j){console.log("zd.walker error:"+j)}}}}}}return p};zd.walker.cleanse=function(a){a=zd.walker.superReplace(a,[/[\r\n]/gi,/\t/gi,/[ ]+/gi,/[\r\n]/gi,/[ ]+/,/^[\t\s ]+/gi]);a=zd.walker.superReplace(a,[/^[ ]+/gi,/[ ]+$/gi,/<[^>]*>/gi],"");a=zd.walker.superReplace(a,[/\"/gi],"'");return a};zd.walker.getSentences=function(b){var a=b.match(/([A-Za-z][^.!?]+[A-Za-z]{2,}[.!?])/gi);if(a==null){a=b.match(/([A-Z][a-z]+[ ]){2,}/gi)}return a};zd.walker.harmlessKids=function(c){if(!zd.walker.validNode(c)){return false}if(typeof c.children=="undefined"){return false}if(c.children.length==0){return true}var d=true;for(var a=0;a<c.children.length;a++){if(c.children[a].nodeType!=3){d=false}}if(d){return true}for(var a=0;a<c.children.length;a++){var b=c.children[a];if(typeof b.tagName=="undefined"||!zd.walker.array_contains(zd.walker.harmlessNodes,b.tagName)){return false}}return true};zd.walker.getText=function(e,b){if(!e){return false}for(var d=e.firstChild;d;d=d.nextSibling){if(zd.walker.validNode(d)){zd.walker.getText(d,b)}}if(zd.walker.validNode(e)&&typeof e.children!="undefined"&&(e.children.length==0||zd.walker.harmlessKids(e))){var c=e.innerText;if(typeof c=="undefined"){c=e.textContent}if(typeof c=="undefined"){return false}if(c.toLowerCase().indexOf("ads by google")>-1){return false}if(typeof e.id!="undefined"){if(e.id.toLowerCase().indexOf("google_ads")>-1){return false}}if(typeof c!="undefined"){var c=zd.walker.cleanse(c);var a=zd.walker.getSentences(c);if(c&&a!=null&&c!=""&&(!this.snippets[c]||typeof this.snippets[c]=="undefined")){this.snippets[c]=1;b.push(c);return true}else{if(a!=null){this.snippets[c]+=1;return true}else{return false}}}}else{return false}};zd.walker.getMetas=function(){var t=document.getElementsByTagName("meta");var m={};for(var f=0;f<t.length;f++){var d=t[f].getAttribute("name");var q=t[f].getAttribute("content");if(zd.walker.array_contains(zd.walker.interestingMeta,d)){m[d]=q}}var l=new RegExp("^http[s]{0,1}://[^/]*ign..*");if(l.test(document.location.toString())&&typeof ChessKit!=="undefined"&&ChessKit.data){var r=ChessKit.data;var c=[];if(r.object1_id){c=c.concat(r.object1_id)}if(r.tags){c=c.concat(r.tags)}if(r.categories){c=c.concat(r.categories)}if(r.genre){c=c.concat(r.genre)}if(r.article_types){c=c.concat(r.article_types)}c=c.join(",");if(c!=""){m.zd_ptax=c}}else{if(l.test(document.location.toString())&&SugarAds!=="undefined"&&SugarAds.adsData){var r=SugarAds.adsData;var c=[];if(r.object1_id){c=c.concat(r.object1_id)}if(r.tags){c=c.concat(r.tags)}if(r.categories){c=c.concat(r.categories)}if(r.genre){c=c.concat(r.genre)}if(r.article_types){c=c.concat(r.article_types)}c=c.join(",");if(c!=""){m.zd_ptax=c}}}try{var n=["creditcards.offers.com","offers.com","couponcodes.com"];var a=document.location.href;var p=/(?:http)(?:s)?(?:\:\/\/)(?:www\.)?([^\/]*)([\/]*)(.*)/g;var g=p.exec(a);if(n.indexOf(g[1])>-1){var h=[];var s={"offers.com":"offerscat","couponcodes.com":"couponcodescat","creditcards.offers.com":"offerscc"};var o=g[3];var b;s=s[g[1]];if(o.indexOf("c/")==0){o=o.substring(2).split("/")[0].split("?")[0];h.push(s+":"+o)}else{if(o.indexOf("types/")==0){o=o.substring(6).split("/")[0].split("?")[0];h.push(s+":"+o)}else{if(o.indexOf("cards-for/")==0){o=o.substring(10).split("/")[0].split("?")[0];h.push(s+":"+o)}else{if(o.indexOf("issuers/")==0){o=o.substring(8).split("/")[0].split("?")[0];h.push("offersbrand:"+o)}else{b=o.split("/")[0].split("?")[0];if(b!=""){h.push("offersbrand:"+b)}}}}}m.zd_ptax=h}}catch(j){}return m};zd.poster.init=function(){var a=new XMLHttpRequest();var b=this.check_url+encodeURIComponent(this.href);a.onreadystatechange=function(){if(a.readyState==4){if(a.responseText=="TRUE"){zd.poster.check_response()}}};a.open("GET",b,true);a.send(null)};zd.poster.domready=(function(){var b=[],d=document,e="DOMContentLoaded",a=/^loaded|^i|^c/.test(d.readyState),c=function(){d.removeEventListener(e,c);a=1;while(c){c=b.shift();if(typeof(c)!=="undefined"){c()}}};if(!a){d.addEventListener(e,c)}return function(f){if(a){f()}else{b.push(f)}}})();zd.poster.check_response=function(){var b=document.createElement("script");b.setAttribute("src",zd.walker.lzma_src);var a=new RegExp("^http[s]{0,1}://[^/]*pcmag..*");if(a.test(document.location.toString())){zd.walker.interestingMeta=zd.walker.interestingMeta.concat(["primary-section-id","section-id"])}document.body.appendChild(b)};zd.poster.send_page=function(){var b=5;var a=new LZMA(this.lzma_src);zd.poster.domready(function(){var f=[];var r=[];var h=document.body;zd.walker.getText(h,f);f=f.reverse();var m=f[0];var q=[m];for(var l=1;l<f.length;l++){try{if(m.indexOf(f[l])==-1){var s=f[l]+"";q[q.length]=s;m=s+"\n"+m}}catch(o){console.log("zd.walker error:"+o)}}q=q.reverse();var k=q.join(" -$BREAK$- ");var p=zd.walker.getMetas();var t=document.title;var c=document.location.toString();var j=c.replace(/\?.*/gi,"");var n=document.getElementById("canonical-meta")?document.getElementById("canonical-meta")["href"]:false;var d=JSON.stringify({url:c,canonical_url:j,metas:p,title:t,page_text:k,m_to_w_canonical:n});a.compress(d,b,function g(e){var v=k.length;var w=e.length;var u=new Uint8Array(e);var x=new XMLHttpRequest();x.open("POST",zd.poster.post_url,true);x.setRequestHeader("Cache-Control","no-cache");x.setRequestHeader("Content-Type","application/octet-stream");x.send(u)})})};zd.poster.init();