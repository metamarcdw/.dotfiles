   �         Whttps://s0.2mdn.net/4806921/1487114660530/160x600%20HTML%20Banner%20-%20FINAL/main.html     %�Nx�     %����         
     O K           �      Accept-Ranges   bytes   Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   	text/html   Access-Control-Allow-Origin   *   Date   Fri, 28 Apr 2017 23:44:28 GMT   Expires   Sat, 29 Apr 2017 23:44:28 GMT   Last-Modified   Tue, 14 Feb 2017 23:24:20 GMT   X-Content-Type-Options   nosniff   Server   sffe   X-XSS-Protection   1; mode=block   Age   22852   Cache-Control   public, max-age=86400   Alt-Svc   %quic=":443"; ma=2592000; v="37,36,35" <!DOCTYPE html><html>	<head>		<meta charset="UTF-8">		<meta name="ad.size" content="width=160,height=600">		<script>var clickTag = "";</script>				<style>			body {margin: 0;}			body * {position: absolute; box-sizing: border-box;}			img {border:none;}			#banner {display: block; cursor: pointer; width: 160px; height: 600px; overflow: hidden; border: 1px solid #000;}			#container {width: 160px; height: 600px;}			#contents {width: 160px; height: 600px; top: 0px; left: 0px; background-color:white; no-repeat; overflow: hidden; display: none;}						#cta {				height: 35px;				width: 118px;				top: 68px; 				left: 20px; 				display: block;				position:absolute;				cursor:pointer;				overflow: hidden;				visibility: hidden;				z-index: 420;			}			#bg {				left: -104px;				top: 0px;				width: 264px;				height: 600px;				position: absolute;				visibility: visible;				will-change: transform;			}						#copy1, #copy2, #copy3, #copy4 {				left: 0px;				top: 34px;				width: 160px;				height: 100px;				position: absolute;				visibility: hidden;				will-change: transform;			}						#copy5 {				left: 0px;				top: 33px;				width: 160px;				height: 100px;				position: absolute;				visibility: hidden;			}						#copy6 {				left: 0px;				top: 400px;				width: 160px;				height: 100px;				position: absolute;				visibility: hidden;			}						#title {				left: 11px;				top: 178px;				width: 136px;				height: 215px;				position: absolute;				visibility: hidden;			}						#logo {				left: 64px;				top: 522px;				width: 30px;				height: 30x;				position: absolute;				visibility: hidden;			}					</style>	<script type="text/javascript">
    
      (function() {
        var relegateNavigation = '';
        var handleClickTagMessage = function(e) {
          try {
            var eventData = JSON.parse(e.data);
          } catch (err) {
            return;
          }
          if (eventData.isInitClickTag) {
            if (eventData.clickTags) {
              for (var i = 0; i < eventData.clickTags.length; i++) {
                var clkTag = eventData.clickTags[i];
                window[clkTag.name] = clkTag.url;
              }
            } else if (eventData.clickTag) {
              window.clickTag = eventData.clickTag;
            }
            relegateNavigation = eventData.relegateNavigation;
          }
        };

        if (open.call) {
          window.open = function(open) {
            return function(url, name, features) {
              if (relegateNavigation === 'parent') {
                var message = {'clickTag': url, 'isPostClickTag': true};
                parent.postMessage(JSON.stringify(message), '*');
              } else {
                var args = [url, name];
                if (features) {
                  args.push(features);
                }
                open.apply(window, args);
              }
            };
          }(window.open);
        }

        if (window.addEventListener) {
          window.addEventListener(
              'message', handleClickTagMessage, false);
        } else {
          window.attachEvent('onmessage', handleClickTagMessage);
        }
      })();
    
  </script></head>	<body>		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.17.0/plugins/CSSPlugin.min.js"></script>		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.17.0/easing/EasePack.min.js"></script>		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.17.0/TweenLite.min.js"></script> 				<div id="container">			<div id="banner">				<div id="contents">					<div id="bg"><img src="img1.png" /></div>										<div id="copy1"><img src="copy1.png" /></div>					<div id="copy2"><img src="copy2.png" /></div>					<div id="copy3"><img src="copy3.png" /></div>					<div id="copy4"><img src="copy4.png" /></div>											<div id="copy5"><img src="copy5.png" /></div>					<div id="title"><img src="title.png" /></div>					<div id="copy6"><img src="copy6.png" /></div>										<div id="logo"><img src="logo.png" /></div>										<div id="cta">						<div id="btn"><img src="cta.png" /></div>					</div>				</div>							</div>		</div>				<script>			// polite image check			var allLoaded = false;			var imgCount = 0;			const imageURLS =["img1.png","copy1.png","copy2.png"];			var images = [];			const onImageLoad = function(){ imgCount += 1; } 						const loadImage = function(url){				images.push(new Image());				images[images.length-1].src = url				images[images.length-1].onload = onImageLoad;			}			const waitForLoaded = function(){				if(imgCount === images.length){					allLoaded = true;   					politeInit();				}else{					setTimeout(waitForLoaded,100); 				}			}			imageURLS.forEach(loadImage);    			setTimeout(waitForLoaded,100); 									function politeInit () {				var $ = function(id){ return document.getElementById(id)};				$('contents').style.display='block';								TweenLite.to($('bg'), 14, {delay: .5, x: 104, rotation: .001});				TweenLite.to($('copy1'), .6, {delay: .75, autoAlpha: 1});				TweenLite.to($('copy1'), .25, {delay: 3.35, autoAlpha: 0});				TweenLite.to($('copy2'), .6, {delay: 3.65, autoAlpha: 1});				TweenLite.to($('copy2'), .25, {delay: 6.25, autoAlpha: 0});				TweenLite.to($('copy3'), .6, {delay: 6.55, autoAlpha: 1});				TweenLite.to($('copy3'), .25, {delay: 9.15, autoAlpha: 0});				TweenLite.to($('copy4'), .6, {delay: 9.45, autoAlpha: 1});				TweenLite.to($('copy4'), .25, {delay: 11.95, autoAlpha: 0});								TweenLite.to($('copy5'), .6, {delay: 11.95, autoAlpha: 1});				TweenLite.to($('title'), .6, {delay: 11.95, autoAlpha: 1});				TweenLite.to($('logo'), .6, {delay: 11.95, autoAlpha: 1});								TweenLite.to($('copy5'), .25, {delay: 13.9, autoAlpha: 0});				TweenLite.to($('copy6'), .5, {delay: 14, autoAlpha: 1});				TweenLite.to($('cta'), .4, {delay: 14.6, autoAlpha: 1});												onExitHandler1 = function(e) {				window.open(window.clickTag);								e.preventDefault();				e.stopPropagation();				e.stopImmediatePropagation();				 return false;				}								banner.addEventListener('click', 	onExitHandler1, false);				cta.addEventListener('click', 	onExitHandler1, false);							}		</script>	</body></html>