   �         Yhttps://vilimpoc.org/blog/2013/07/18/detailed-error-emails-for-django-in-production-mode/�       ���� �       ����          
     O K           �      Server   nginx   Date   Sat, 29 Apr 2017 04:08:21 GMT   Content-Type   text/html; charset=UTF-8   
X-Pingback   $https://vilimpoc.org/blog/xmlrpc.php   Link   r<https://vilimpoc.org/blog/wp-json/>; rel="https://api.w.org/", <https://vilimpoc.org/blog/?p=1453>; rel=shortlink <!DOCTYPE html>
<html lang="en-US" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="https://vilimpoc.org/blog/xmlrpc.php">
	<!--[if lt IE 9]>
	<script src="https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/js/html5.js"></script>
	<![endif]-->
	<script type='text/javascript'>mapp = window.mapp || {}; mapp.data = [];</script>
<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>
<title>Detailed Error Emails For Django In Production Mode &#8211; vilimblog</title>
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link href='https://fonts.gstatic.com' crossorigin rel='preconnect' />
<link rel="alternate" type="application/rss+xml" title="vilimblog &raquo; Feed" href="https://vilimpoc.org/blog/feed/" />
<link rel="alternate" type="application/rss+xml" title="vilimblog &raquo; Comments Feed" href="https://vilimpoc.org/blog/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="vilimblog &raquo; Detailed Error Emails For Django In Production Mode Comments Feed" href="https://vilimpoc.org/blog/2013/07/18/detailed-error-emails-for-django-in-production-mode/feed/" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/vilimpoc.org\/blog\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.7.4"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='crayon-css'  href='https://vilimpoc.org/blog/wp-content/plugins/crayon-syntax-highlighter/css/min/crayon.min.css?ver=_2.7.2_beta' type='text/css' media='all' />
<link rel='stylesheet' id='crayon-theme-classic-css'  href='https://vilimpoc.org/blog/wp-content/plugins/crayon-syntax-highlighter/themes/classic/classic.css?ver=_2.7.2_beta' type='text/css' media='all' />
<link rel='stylesheet' id='crayon-font-consolas-css'  href='https://vilimpoc.org/blog/wp-content/plugins/crayon-syntax-highlighter/fonts/consolas.css?ver=_2.7.2_beta' type='text/css' media='all' />
<link rel='stylesheet' id='mappress-css'  href='https://vilimpoc.org/blog/wp-content/plugins/mappress-google-maps-for-wordpress/css/mappress.css?ver=2.44.3' type='text/css' media='all' />
<link rel='stylesheet' id='twentyfifteen-fonts-css'  href='https://fonts.googleapis.com/css?family=Noto+Sans%3A400italic%2C700italic%2C400%2C700%7CNoto+Serif%3A400italic%2C700italic%2C400%2C700%7CInconsolata%3A400%2C700&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/genericons/genericons.css?ver=3.2' type='text/css' media='all' />
<link rel='stylesheet' id='twentyfifteen-style-css'  href='https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/style.css?ver=4.7.4' type='text/css' media='all' />
<!--[if lt IE 9]>
<link rel='stylesheet' id='twentyfifteen-ie-css'  href='https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/css/ie.css?ver=20141010' type='text/css' media='all' />
<![endif]-->
<!--[if lt IE 8]>
<link rel='stylesheet' id='twentyfifteen-ie7-css'  href='https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/css/ie7.css?ver=20141010' type='text/css' media='all' />
<![endif]-->
<link rel='stylesheet' id='easy_table_style-css'  href='https://vilimpoc.org/blog/wp-content/plugins/easy-table/themes/default/style.css?ver=1.6' type='text/css' media='all' />
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var CrayonSyntaxSettings = {"version":"_2.7.2_beta","is_admin":"0","ajaxurl":"https:\/\/vilimpoc.org\/blog\/wp-admin\/admin-ajax.php","prefix":"crayon-","setting":"crayon-setting","selected":"crayon-setting-selected","changed":"crayon-setting-changed","special":"crayon-setting-special","orig_value":"data-orig-value","debug":""};
var CrayonSyntaxStrings = {"copy":"Press %s to Copy, %s to Paste","minimize":"Click To Expand Code"};
/* ]]> */
</script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-content/plugins/crayon-syntax-highlighter/js/min/crayon.min.js?ver=_2.7.2_beta'></script>
<link rel='https://api.w.org/' href='https://vilimpoc.org/blog/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://vilimpoc.org/blog/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://vilimpoc.org/blog/wp-includes/wlwmanifest.xml" /> 
<link rel='prev' title='Python Parametrized Unit Tests' href='https://vilimpoc.org/blog/2013/07/12/python-parametrized-unit-tests/' />
<link rel='next' title='libevent, gcov, lcov, and OS X' href='https://vilimpoc.org/blog/2013/07/19/libevent-gcov-lcov-and-os-x/' />
<meta name="generator" content="WordPress 4.7.4" />
<link rel="canonical" href="https://vilimpoc.org/blog/2013/07/18/detailed-error-emails-for-django-in-production-mode/" />
<link rel='shortlink' href='https://vilimpoc.org/blog/?p=1453' />
<link rel="alternate" type="application/json+oembed" href="https://vilimpoc.org/blog/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fvilimpoc.org%2Fblog%2F2013%2F07%2F18%2Fdetailed-error-emails-for-django-in-production-mode%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://vilimpoc.org/blog/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fvilimpoc.org%2Fblog%2F2013%2F07%2F18%2Fdetailed-error-emails-for-django-in-production-mode%2F&#038;format=xml" />
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
		</head>

<body class="post-template-default single single-post postid-1453 single-format-standard">
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

	<div id="sidebar" class="sidebar">
		<header id="masthead" class="site-header" role="banner">
			<div class="site-branding">
										<p class="site-title"><a href="https://vilimpoc.org/blog/" rel="home">vilimblog</a></p>
									<button class="secondary-toggle">Menu and widgets</button>
			</div><!-- .site-branding -->
		</header><!-- .site-header -->

			<div id="secondary" class="secondary">

		
		
					<div id="widget-area" class="widget-area" role="complementary">
				<aside id="search-2" class="widget widget_search"><form role="search" method="get" class="search-form" action="https://vilimpoc.org/blog/">
				<label>
					<span class="screen-reader-text">Search for:</span>
					<input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" />
				</label>
				<input type="submit" class="search-submit screen-reader-text" value="Search" />
			</form></aside>		<aside id="recent-posts-2" class="widget widget_recent_entries">		<h2 class="widget-title">Recent Posts</h2>		<ul>
					<li>
				<a href="https://vilimpoc.org/blog/2017/04/24/power-profiling-on-mbed-nordic-nrf5-series/">Power Profiling on mbed + Nordic nRF5 Series</a>
						</li>
					<li>
				<a href="https://vilimpoc.org/blog/2017/04/17/majority-circuits-are-good/">Majority-Circuits Are Good</a>
						</li>
					<li>
				<a href="https://vilimpoc.org/blog/2017/03/27/goddamnit-microsoft-goddamnit-realtek/">Goddamnit, Microsoft; Goddamnit, Realtek</a>
						</li>
					<li>
				<a href="https://vilimpoc.org/blog/2017/03/15/shame-on-you-paypal/">Shame on you, Paypal</a>
						</li>
					<li>
				<a href="https://vilimpoc.org/blog/2017/03/06/setting-linker_script-variable-for-mbed-in-netbeans/">Setting LINKER_SCRIPT variable for mbed in NetBeans</a>
						</li>
				</ul>
		</aside>		<aside id="recent-comments-2" class="widget widget_recent_comments"><h2 class="widget-title">Recent Comments</h2><ul id="recentcomments"><li class="recentcomments"><span class="comment-author-link">André Alba</span> on <a href="https://vilimpoc.org/blog/2016/04/30/ubuntu-16-04-bluetooth-speakers/#comment-306750">Ubuntu 16.04 Bluetooth Speakers</a></li><li class="recentcomments"><span class="comment-author-link">gklemo</span> on <a href="https://vilimpoc.org/blog/2016/05/03/esptool-ck-esp8266-and-ftdi-bug-hunting/#comment-306051">esptool-ck, esp8266, and FTDI Bug Hunting</a></li><li class="recentcomments"><span class="comment-author-link">Damir</span> on <a href="https://vilimpoc.org/blog/2012/10/05/capturing-video-converting-hi8-using-avconv-with-conexantbrooktree-878-tuner-card/#comment-305947">Capturing Video / Converting Hi8 Using avconv With Conexant/Brooktree 878 Tuner Card</a></li><li class="recentcomments"><span class="comment-author-link">max</span> on <a href="https://vilimpoc.org/blog/2017/02/01/stack-heap-and-thread-crash-hunting-in-mbed-os/#comment-304582">Stack, Heap, and Thread Crash Hunting in mbed OS</a></li><li class="recentcomments"><span class="comment-author-link">agf</span> on <a href="https://vilimpoc.org/blog/2017/02/01/stack-heap-and-thread-crash-hunting-in-mbed-os/#comment-304580">Stack, Heap, and Thread Crash Hunting in mbed OS</a></li></ul></aside><aside id="archives-2" class="widget widget_archive"><h2 class="widget-title">Archives</h2>		<ul>
			<li><a href='https://vilimpoc.org/blog/2017/04/'>April 2017</a></li>
	<li><a href='https://vilimpoc.org/blog/2017/03/'>March 2017</a></li>
	<li><a href='https://vilimpoc.org/blog/2017/02/'>February 2017</a></li>
	<li><a href='https://vilimpoc.org/blog/2017/01/'>January 2017</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/12/'>December 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/11/'>November 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/10/'>October 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/09/'>September 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/08/'>August 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/06/'>June 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/05/'>May 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/04/'>April 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/03/'>March 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2016/02/'>February 2016</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/12/'>December 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/11/'>November 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/10/'>October 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/08/'>August 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/07/'>July 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/06/'>June 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2015/01/'>January 2015</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/12/'>December 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/10/'>October 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/09/'>September 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/07/'>July 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/06/'>June 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/05/'>May 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/04/'>April 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/03/'>March 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/02/'>February 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2014/01/'>January 2014</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/11/'>November 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/10/'>October 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/09/'>September 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/08/'>August 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/07/'>July 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/06/'>June 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/05/'>May 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/04/'>April 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/03/'>March 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/02/'>February 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2013/01/'>January 2013</a></li>
	<li><a href='https://vilimpoc.org/blog/2012/12/'>December 2012</a></li>
	<li><a href='https://vilimpoc.org/blog/2012/11/'>November 2012</a></li>
	<li><a href='https://vilimpoc.org/blog/2012/10/'>October 2012</a></li>
	<li><a href='https://vilimpoc.org/blog/2012/09/'>September 2012</a></li>
	<li><a href='https://vilimpoc.org/blog/2012/05/'>May 2012</a></li>
	<li><a href='https://vilimpoc.org/blog/2012/01/'>January 2012</a></li>
	<li><a href='https://vilimpoc.org/blog/2011/11/'>November 2011</a></li>
	<li><a href='https://vilimpoc.org/blog/2011/10/'>October 2011</a></li>
	<li><a href='https://vilimpoc.org/blog/2011/04/'>April 2011</a></li>
	<li><a href='https://vilimpoc.org/blog/2011/02/'>February 2011</a></li>
	<li><a href='https://vilimpoc.org/blog/2011/01/'>January 2011</a></li>
	<li><a href='https://vilimpoc.org/blog/2010/12/'>December 2010</a></li>
	<li><a href='https://vilimpoc.org/blog/2010/11/'>November 2010</a></li>
	<li><a href='https://vilimpoc.org/blog/2010/10/'>October 2010</a></li>
	<li><a href='https://vilimpoc.org/blog/2010/09/'>September 2010</a></li>
		</ul>
		</aside><aside id="categories-2" class="widget widget_categories"><h2 class="widget-title">Categories</h2>		<ul>
	<li class="cat-item cat-item-23"><a href="https://vilimpoc.org/blog/category/society/firstworldproblems/" >#FirstWorldProblems</a>
</li>
	<li class="cat-item cat-item-49"><a href="https://vilimpoc.org/blog/category/tech/3d-printing/" >3D Printing</a>
</li>
	<li class="cat-item cat-item-35"><a href="https://vilimpoc.org/blog/category/tech/akka/" >Akka</a>
</li>
	<li class="cat-item cat-item-7"><a href="https://vilimpoc.org/blog/category/tech/android/" >Android</a>
</li>
	<li class="cat-item cat-item-43"><a href="https://vilimpoc.org/blog/category/tech/arduino/" >Arduino</a>
</li>
	<li class="cat-item cat-item-38"><a href="https://vilimpoc.org/blog/category/berlin-2/" >Berlin</a>
</li>
	<li class="cat-item cat-item-40"><a href="https://vilimpoc.org/blog/category/brewing/" >Brewing</a>
</li>
	<li class="cat-item cat-item-24"><a href="https://vilimpoc.org/blog/category/tech/css/" >CSS</a>
</li>
	<li class="cat-item cat-item-11"><a href="https://vilimpoc.org/blog/category/tech/python/django/" >Django</a>
</li>
	<li class="cat-item cat-item-28"><a href="https://vilimpoc.org/blog/category/tech/docker-tech/" >Docker</a>
</li>
	<li class="cat-item cat-item-2"><a href="https://vilimpoc.org/blog/category/emacs/" >emacs</a>
</li>
	<li class="cat-item cat-item-48"><a href="https://vilimpoc.org/blog/category/tech/embedded/" >Embedded</a>
</li>
	<li class="cat-item cat-item-45"><a href="https://vilimpoc.org/blog/category/tech/esp8266/" >ESP8266</a>
</li>
	<li class="cat-item cat-item-3"><a href="https://vilimpoc.org/blog/category/food/" >Food</a>
</li>
	<li class="cat-item cat-item-36"><a href="https://vilimpoc.org/blog/category/tech/google-app-engine/" >Google App Engine</a>
</li>
	<li class="cat-item cat-item-32"><a href="https://vilimpoc.org/blog/category/tech/grails/" >Grails</a>
</li>
	<li class="cat-item cat-item-34"><a href="https://vilimpoc.org/blog/category/tech/groovy/" >Groovy</a>
</li>
	<li class="cat-item cat-item-42"><a href="https://vilimpoc.org/blog/category/hardware-hacks/" >Hardware Hacks</a>
</li>
	<li class="cat-item cat-item-8"><a href="https://vilimpoc.org/blog/category/tech/javascript/" >JavaScript</a>
</li>
	<li class="cat-item cat-item-37"><a href="https://vilimpoc.org/blog/category/tech/jira/" >JIRA</a>
</li>
	<li class="cat-item cat-item-9"><a href="https://vilimpoc.org/blog/category/tech/localization/" >Localization</a>
</li>
	<li class="cat-item cat-item-47"><a href="https://vilimpoc.org/blog/category/tech/mechanical/" >Mechanical</a>
</li>
	<li class="cat-item cat-item-10"><a href="https://vilimpoc.org/blog/category/tech/python/" >Python</a>
</li>
	<li class="cat-item cat-item-31"><a href="https://vilimpoc.org/blog/category/tech/qt/" >Qt</a>
</li>
	<li class="cat-item cat-item-25"><a href="https://vilimpoc.org/blog/category/tech/quality-assurance/" >Quality Assurance</a>
</li>
	<li class="cat-item cat-item-4"><a href="https://vilimpoc.org/blog/category/quiz/" >Quiz</a>
</li>
	<li class="cat-item cat-item-41"><a href="https://vilimpoc.org/blog/category/raspberry-pi/" >Raspberry Pi</a>
</li>
	<li class="cat-item cat-item-46"><a href="https://vilimpoc.org/blog/category/tech/riotboard/" >Riotboard</a>
</li>
	<li class="cat-item cat-item-50"><a href="https://vilimpoc.org/blog/category/tech/rtos/" >RTOS</a>
</li>
	<li class="cat-item cat-item-33"><a href="https://vilimpoc.org/blog/category/tech/scala/" >Scala</a>
</li>
	<li class="cat-item cat-item-5"><a href="https://vilimpoc.org/blog/category/society/" >Society</a>
</li>
	<li class="cat-item cat-item-39"><a href="https://vilimpoc.org/blog/category/berlin-2/startups/" >Startups</a>
</li>
	<li class="cat-item cat-item-6"><a href="https://vilimpoc.org/blog/category/tech/" >Tech</a>
</li>
	<li class="cat-item cat-item-1"><a href="https://vilimpoc.org/blog/category/uncategorized/" >Uncategorized</a>
</li>
	<li class="cat-item cat-item-30"><a href="https://vilimpoc.org/blog/category/tech/virtualization/" >Virtualization</a>
</li>
	<li class="cat-item cat-item-26"><a href="https://vilimpoc.org/blog/category/tech/web-development/" >Web Development</a>
</li>
	<li class="cat-item cat-item-29"><a href="https://vilimpoc.org/blog/category/tech/windows/" >Windows</a>
</li>
		</ul>
</aside><aside id="meta-2" class="widget widget_meta"><h2 class="widget-title">Meta</h2>			<ul>
						<li><a href="https://vilimpoc.org/blog/wp-login.php">Log in</a></li>
			<li><a href="https://vilimpoc.org/blog/feed/">Entries <abbr title="Really Simple Syndication">RSS</abbr></a></li>
			<li><a href="https://vilimpoc.org/blog/comments/feed/">Comments <abbr title="Really Simple Syndication">RSS</abbr></a></li>
			<li><a href="https://wordpress.org/" title="Powered by WordPress, state-of-the-art semantic personal publishing platform.">WordPress.org</a></li>			</ul>
			</aside>			</div><!-- .widget-area -->
		
	</div><!-- .secondary -->

	</div><!-- .sidebar -->

	<div id="content" class="site-content">

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		
<article id="post-1453" class="post-1453 post type-post status-publish format-standard hentry category-django category-tech">
	
	<header class="entry-header">
		<h1 class="entry-title">Detailed Error Emails For Django In Production Mode</h1>	</header><!-- .entry-header -->

	<div class="entry-content">
		<p>Sometimes when you&#8217;re trying to figure out an issue in a Django production environment, the default exception tracebacks just don&#8217;t cut it. There&#8217;s not enough scope information for you to figure out what parameters or variable values caused something to go wrong, or even <em>for whom</em> it went wrong.</p>
<p>It&#8217;s frustrating as a developer, because you have to infer what went wrong from a near-empty stacktrace.</p>
<p>In order to be able to produce more detailed error reports for Django when running on the production server, I did a bit of searching and found a few examples like <a href="http://djangosnippets.org/snippets/2244/" target="_blank">this one</a>, but rewriting a piece of core functionality seemed a bit weird to me. If the underlying function changes significantly, the rewrite won&#8217;t be able to keep up.</p>
<p>So I came up with something different, a mixin function redirection that adds the extra step I want (emailing me a detailed report) and then calls the original handler to perform the default behavior:</p>
<p></p><!-- Crayon Syntax Highlighter v_2.7.2_beta -->

		<div id="crayon-590411b542f08530467624" class="crayon-syntax crayon-theme-classic crayon-font-consolas crayon-os-pc print-yes notranslate" data-settings=" minimize scroll-mouseover" style=" margin-top: 12px; margin-bottom: 12px; font-size: 15px !important; line-height: 18px !important;">
		
			<div class="crayon-toolbar" data-settings=" mouseover overlay hide delay" style="font-size: 15px !important;height: 22.5px !important; line-height: 22.5px !important;"><span class="crayon-title"></span>
			<div class="crayon-tools" style="font-size: 15px !important;height: 22.5px !important; line-height: 22.5px !important;"><div class="crayon-button crayon-nums-button" title="Toggle Line Numbers"><div class="crayon-button-icon"></div></div><div class="crayon-button crayon-plain-button" title="Toggle Plain Code"><div class="crayon-button-icon"></div></div><div class="crayon-button crayon-wrap-button" title="Toggle Line Wrap"><div class="crayon-button-icon"></div></div><div class="crayon-button crayon-expand-button" title="Expand Code"><div class="crayon-button-icon"></div></div><div class="crayon-button crayon-copy-button" title="Copy"><div class="crayon-button-icon"></div></div><div class="crayon-button crayon-popup-button" title="Open Code In New Window"><div class="crayon-button-icon"></div></div><span class="crayon-language">Python</span></div></div>
			<div class="crayon-info" style="min-height: 21px !important; line-height: 21px !important;"></div>
			<div class="crayon-plain-wrap"><textarea wrap="soft" class="crayon-plain print-no" data-settings="dblclick" readonly style="-moz-tab-size:4; -o-tab-size:4; -webkit-tab-size:4; tab-size:4; font-size: 15px !important; line-height: 18px !important;">
# Improve the error message output, so I can actually debug / figure out                                                                              
# what the hell went wrong during postmortems of HTTP 500 Server Errors.                                                                              
#                                                                                                                                                     
# Based on http://djangosnippets.org/snippets/2244/                                                                                                   
#                                                                                                                                                     
# Modifies the mixin in a similar way, but doesn't rewrite the whole thing.                                                                           
# Just specifies additional behavior then calls to the saved handler.                                                                                 

from django.core.handlers.base import BaseHandler

def better_uncaught_exception_emails(self, request, resolver, exc_info):
    """                                                                                                                                               
    Processing for any otherwise uncaught exceptions (those that will                                                                                 
    generate HTTP 500 responses). Can be overridden by subclasses who want                                                                            
    customised 500 handling.                                                                                                                          
                                                                                                                                                      
    Be *very* careful when overriding this because the error could be                                                                                 
    caused by anything, so assuming something like the database is always                                                                             
    available would be an error.                                                                                                                      
    """
    from django.conf        import settings
    from django.core.mail   import EmailMultiAlternatives
    from django.views.debug import ExceptionReporter

    # Only send details emails in the production environment.                                                                                         
    if settings.DEBUG == False:
        reporter = ExceptionReporter(request, *exc_info)

        # Prepare the email headers for sending.                                                                                                   
        from_    = u"Exception Reporter &lt;your-errors@domain.com&gt;"
        to_      = from_

        subject  = "Detailed stack trace."

        message = EmailMultiAlternatives(subject, reporter.get_traceback_text(), from_, [to_])
        message.attach_alternative(reporter.get_traceback_html(), 'text/html')
        message.send()

    # Make sure to then just call the base handler.                                                                                           
    return self.original_handle_uncaught_exception(request, resolver, exc_info)

# Save the original handler.                                                                                                                          
BaseHandler.original_handle_uncaught_exception = BaseHandler.handle_uncaught_exception

# Override the original handler.                                                                                                                      
BaseHandler.handle_uncaught_exception = better_uncaught_exception_emails</textarea></div>
			<div class="crayon-main" style="">
				<table class="crayon-table">
					<tr class="crayon-row">
				<td class="crayon-nums " data-settings="show">
					<div class="crayon-nums-content" style="font-size: 15px !important; line-height: 18px !important;"><div class="crayon-num" data-line="crayon-590411b542f08530467624-1">1</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-2">2</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-3">3</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-4">4</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-5">5</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-6">6</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-7">7</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-8">8</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-9">9</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-10">10</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-11">11</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-12">12</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-13">13</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-14">14</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-15">15</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-16">16</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-17">17</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-18">18</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-19">19</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-20">20</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-21">21</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-22">22</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-23">23</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-24">24</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-25">25</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-26">26</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-27">27</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-28">28</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-29">29</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-30">30</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-31">31</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-32">32</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-33">33</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-34">34</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-35">35</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-36">36</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-37">37</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-38">38</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-39">39</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-40">40</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-41">41</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-42">42</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-43">43</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-44">44</div><div class="crayon-num" data-line="crayon-590411b542f08530467624-45">45</div><div class="crayon-num crayon-striped-num" data-line="crayon-590411b542f08530467624-46">46</div></div>
				</td>
						<td class="crayon-code"><div class="crayon-pre" style="font-size: 15px !important; line-height: 18px !important; -moz-tab-size:4; -o-tab-size:4; -webkit-tab-size:4; tab-size:4;"><div class="crayon-line" id="crayon-590411b542f08530467624-1"><span class="crayon-c"># Improve the error message output, so I can actually debug / figure out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-2"><span class="crayon-c"># what the hell went wrong during postmortems of HTTP 500 Server Errors.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-3"><span class="crayon-c">#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-4"><span class="crayon-c"># Based on http://djangosnippets.org/snippets/2244/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line" id="crayon-590411b542f08530467624-5"><span class="crayon-c">#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-6"><span class="crayon-c"># Modifies the mixin in a similar way, but doesn't rewrite the whole thing.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line" id="crayon-590411b542f08530467624-7"><span class="crayon-c"># Just specifies additional behavior then calls to the saved handler.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-8">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-9"><span class="crayon-st">from</span><span class="crayon-h"> </span><span class="crayon-v">django</span><span class="crayon-sy">.</span><span class="crayon-v">core</span><span class="crayon-sy">.</span><span class="crayon-v">handlers</span><span class="crayon-sy">.</span><span class="crayon-e">base </span><span class="crayon-r">import</span><span class="crayon-h"> </span><span class="crayon-e">BaseHandler</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-10">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-11"><span class="crayon-r">def</span><span class="crayon-h"> </span><span class="crayon-e">better_uncaught_exception_emails</span><span class="crayon-sy">(</span><span class="crayon-r">self</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">request</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">resolver</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">exc_info</span><span class="crayon-sy">)</span><span class="crayon-o">:</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-12"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-s">"""&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line" id="crayon-590411b542f08530467624-13"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;Processing for any otherwise uncaught exceptions (those that will&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-14"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;generate HTTP 500 responses). Can be overridden by subclasses who want&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-15"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;customised 500 handling.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-16"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-17"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;Be *very* careful when overriding this because the error could be&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-18"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;caused by anything, so assuming something like the database is always&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line" id="crayon-590411b542f08530467624-19"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;available would be an error.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-20"><span class="crayon-s">&nbsp;&nbsp;&nbsp;&nbsp;"""</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-21"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-st">from</span><span class="crayon-h"> </span><span class="crayon-v">django</span><span class="crayon-sy">.</span><span class="crayon-e">conf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-r">import</span><span class="crayon-h"> </span><span class="crayon-e">settings</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-22"><span class="crayon-e">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-st">from</span><span class="crayon-h"> </span><span class="crayon-v">django</span><span class="crayon-sy">.</span><span class="crayon-v">core</span><span class="crayon-sy">.</span><span class="crayon-e">mail&nbsp;&nbsp; </span><span class="crayon-r">import</span><span class="crayon-h"> </span><span class="crayon-e">EmailMultiAlternatives</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-23"><span class="crayon-e">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-st">from</span><span class="crayon-h"> </span><span class="crayon-v">django</span><span class="crayon-sy">.</span><span class="crayon-v">views</span><span class="crayon-sy">.</span><span class="crayon-e">debug </span><span class="crayon-r">import</span><span class="crayon-h"> </span><span class="crayon-v">ExceptionReporter</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-24">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-25"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-c"># Only send details emails in the production environment.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-26"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-st">if</span><span class="crayon-h"> </span><span class="crayon-v">settings</span><span class="crayon-sy">.</span><span class="crayon-v">DEBUG</span><span class="crayon-h"> </span><span class="crayon-o">==</span><span class="crayon-h"> </span><span class="crayon-t">False</span><span class="crayon-o">:</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-27"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">reporter</span><span class="crayon-h"> </span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-e">ExceptionReporter</span><span class="crayon-sy">(</span><span class="crayon-v">request</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-o">*</span><span class="crayon-v">exc_info</span><span class="crayon-sy">)</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-28">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-29"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-c"># Prepare the email headers for sending.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-30"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">from_</span><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-i">u</span><span class="crayon-s">"Exception Reporter &lt;your-errors@domain.com&gt;"</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-31"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">to_</span><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-e">from_</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-32">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-33"><span class="crayon-e">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">subject</span><span class="crayon-h">&nbsp;&nbsp;</span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-s">"Detailed stack trace."</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-34">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-35"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">message</span><span class="crayon-h"> </span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-e">EmailMultiAlternatives</span><span class="crayon-sy">(</span><span class="crayon-v">subject</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">reporter</span><span class="crayon-sy">.</span><span class="crayon-e">get_traceback_text</span><span class="crayon-sy">(</span><span class="crayon-sy">)</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">from_</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-sy">[</span><span class="crayon-v">to_</span><span class="crayon-sy">]</span><span class="crayon-sy">)</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-36"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">message</span><span class="crayon-sy">.</span><span class="crayon-e">attach_alternative</span><span class="crayon-sy">(</span><span class="crayon-v">reporter</span><span class="crayon-sy">.</span><span class="crayon-e">get_traceback_html</span><span class="crayon-sy">(</span><span class="crayon-sy">)</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-s">'text/html'</span><span class="crayon-sy">)</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-37"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-v">message</span><span class="crayon-sy">.</span><span class="crayon-e">send</span><span class="crayon-sy">(</span><span class="crayon-sy">)</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-38">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-39"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-c"># Make sure to then just call the base handler.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-40"><span class="crayon-h">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="crayon-st">return</span><span class="crayon-h"> </span><span class="crayon-r">self</span><span class="crayon-sy">.</span><span class="crayon-e">original_handle_uncaught_exception</span><span class="crayon-sy">(</span><span class="crayon-v">request</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">resolver</span><span class="crayon-sy">,</span><span class="crayon-h"> </span><span class="crayon-v">exc_info</span><span class="crayon-sy">)</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-41">&nbsp;</div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-42"><span class="crayon-c"># Save the original handler.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line" id="crayon-590411b542f08530467624-43"><span class="crayon-v">BaseHandler</span><span class="crayon-sy">.</span><span class="crayon-v">original_handle_uncaught_exception</span><span class="crayon-h"> </span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-v">BaseHandler</span><span class="crayon-sy">.</span><span class="crayon-v">handle_uncaught_exception</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-44">&nbsp;</div><div class="crayon-line" id="crayon-590411b542f08530467624-45"><span class="crayon-c"># Override the original handler.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="crayon-line crayon-striped-line" id="crayon-590411b542f08530467624-46"><span class="crayon-v">BaseHandler</span><span class="crayon-sy">.</span><span class="crayon-v">handle_uncaught_exception</span><span class="crayon-h"> </span><span class="crayon-o">=</span><span class="crayon-h"> </span><span class="crayon-v">better_uncaught_exception_emails</span></div></div></td>
					</tr>
				</table>
			</div>
		</div>
<!-- [Format Time: 0.0082 seconds] -->
<p></p>
<p>Note that by using this code, you do end up with two emails: the usual generic error report and the highly-detailed one containing details usually seen when you hit an error while developing the site with settings.DEBUG == True. These emails will be sent within milliseconds of one another. The ultimate benefit is that none of the original code of the Django base classes is touched, which I think is good idea.</p>
<p>Another thing to keep in mind is that you probably want to put all of your OAuth secrets and deployment-specific values in a file other than settings.py, because the values in settings get spilled into the detailed report that is emailed.</p>
<p>One final note is that I am continuously amazed by Python. The fact that first-class functions and dynamic attributes let you hack functionality in, in ways the original software designers didn&#8217;t foresee, is fantastic. It really lets you get around problems that would require more tedious solutions in other languages.</p>
	</div><!-- .entry-content -->

	
	<footer class="entry-footer">
		<span class="posted-on"><span class="screen-reader-text">Posted on </span><a href="https://vilimpoc.org/blog/2013/07/18/detailed-error-emails-for-django-in-production-mode/" rel="bookmark"><time class="entry-date published" datetime="2013-07-18T00:00:17+00:00">July 18, 2013</time><time class="updated" datetime="2013-07-18T00:18:44+00:00">July 18, 2013</time></a></span><span class="byline"><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="https://vilimpoc.org/blog/author/max/">max</a></span></span><span class="cat-links"><span class="screen-reader-text">Categories </span><a href="https://vilimpoc.org/blog/category/tech/python/django/" rel="category tag">Django</a>, <a href="https://vilimpoc.org/blog/category/tech/" rel="category tag">Tech</a></span>			</footer><!-- .entry-footer -->

</article><!-- #post-## -->

<div id="comments" class="comments-area">

			<h2 class="comments-title">
			2 thoughts on &ldquo;Detailed Error Emails For Django In Production Mode&rdquo;		</h2>

		
		<ol class="comment-list">
					<li id="comment-205120" class="pingback even thread-even depth-1">
			<div class="comment-body">
				Pingback: <a href='http://dluat.com/manually-trigger-django-email-error-report/' rel='external nofollow' class='url'>Manually trigger Django email error report | DL-UAT</a> 			</div>
</li><!-- #comment-## -->
		<li id="comment-250649" class="pingback odd alt thread-odd thread-alt depth-1">
			<div class="comment-body">
				Pingback: <a href='http://www.itsprite.com/pythonmanually-trigger-django-email-error-report/' rel='external nofollow' class='url'>Python:Manually trigger Django email error report &#8211; IT Sprite</a> 			</div>
</li><!-- #comment-## -->
		</ol><!-- .comment-list -->

		
	
	
		<div id="respond" class="comment-respond">
		<h3 id="reply-title" class="comment-reply-title">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="/blog/2013/07/18/detailed-error-emails-for-django-in-production-mode/#respond" style="display:none;">Cancel reply</a></small></h3>			<form action="https://vilimpoc.org/blog/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate>
				<p class="comment-notes"><span id="email-notes">Your email address will not be published.</span> Required fields are marked <span class="required">*</span></p><p class="comment-form-comment"><label for="comment">Comment</label> <textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525" aria-required="true" required="required"></textarea></p><p class="comment-form-author"><label for="author">Name <span class="required">*</span></label> <input id="author" name="author" type="text" value="" size="30" maxlength="245" aria-required='true' required='required' /></p>
<p class="comment-form-email"><label for="email">Email <span class="required">*</span></label> <input id="email" name="email" type="email" value="" size="30" maxlength="100" aria-describedby="email-notes" aria-required='true' required='required' /></p>
<p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="url" value="" size="30" maxlength="200" /></p>
<p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Post Comment" /> <input type='hidden' name='comment_post_ID' value='1453' id='comment_post_ID' />
<input type='hidden' name='comment_parent' id='comment_parent' value='0' />
</p><p style="display: none;"><input type="hidden" id="akismet_comment_nonce" name="akismet_comment_nonce" value="2110fe6712" /></p><p style="display: none;"><input type="hidden" id="ak_js" name="ak_js" value="203"/></p>			</form>
			</div><!-- #respond -->
	
</div><!-- .comments-area -->

	<nav class="navigation post-navigation" role="navigation">
		<h2 class="screen-reader-text">Post navigation</h2>
		<div class="nav-links"><div class="nav-previous"><a href="https://vilimpoc.org/blog/2013/07/12/python-parametrized-unit-tests/" rel="prev"><span class="meta-nav" aria-hidden="true">Previous</span> <span class="screen-reader-text">Previous post:</span> <span class="post-title">Python Parametrized Unit Tests</span></a></div><div class="nav-next"><a href="https://vilimpoc.org/blog/2013/07/19/libevent-gcov-lcov-and-os-x/" rel="next"><span class="meta-nav" aria-hidden="true">Next</span> <span class="screen-reader-text">Next post:</span> <span class="post-title">libevent, gcov, lcov, and OS X</span></a></div></div>
	</nav>
		</main><!-- .site-main -->
	</div><!-- .content-area -->


	</div><!-- .site-content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-info">
						<a href="https://wordpress.org/">Proudly powered by WordPress</a>
		</div><!-- .site-info -->
	</footer><!-- .site-footer -->

</div><!-- .site -->

<script type='text/javascript' src='https://vilimpoc.org/blog/wp-content/plugins/akismet/_inc/form.js?ver=3.3'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var lightbox_type = [""];
var ajaxUrl = "https:\/\/vilimpoc.org\/blog\/wp-admin\/admin-ajax.php";
/* ]]> */
</script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-content/plugins/lightbox/js/frontend/custom.js?ver=1.0'></script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/js/skip-link-focus-fix.js?ver=20141010'></script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-includes/js/comment-reply.min.js?ver=4.7.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var screenReaderText = {"expand":"<span class=\"screen-reader-text\">expand child menu<\/span>","collapse":"<span class=\"screen-reader-text\">collapse child menu<\/span>"};
/* ]]> */
</script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-content/themes/twentyfifteen/js/functions.js?ver=20150330'></script>
<script type='text/javascript' src='https://vilimpoc.org/blog/wp-includes/js/wp-embed.min.js?ver=4.7.4'></script>

</body>
</html>
