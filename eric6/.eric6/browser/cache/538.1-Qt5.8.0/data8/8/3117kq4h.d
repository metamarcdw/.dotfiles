   �         Chttp://www.dreamincode.net/forums/topic/325606-error-using-smtplib/�       ���� �       ����          
     O K           �      Date   Sat, 29 Apr 2017 06:05:10 GMT   Content-Type   text/html;charset=ISO-8859-1   X-Powered-By   
PHP/5.2.17   Server   cloudflare-nginx   CF-RAY   3570116940cc38a6-ATL   Content-Encoding   gzip <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<title>Error Using Smtplib - Python | Dream.In.Code</title>
<meta name="keywords" content="error,using,smtplib,Ive,tested,other,e-mail,services,such,gmail,yahoo,have,had,success,however,got,tried,send"/>
<meta name="description" content="error using smtplib: "/>
<meta name="identifier-url" content="http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/"/>
<link rel="canonical" href="http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/"/>
<link rel='up' href='http://www.dreamincode.net/forums/forum/29-python/'/>
<link rel='author' href='http://www.dreamincode.net/forums/user/628576-aceme/'/>
<link rel="alternate feed" type="application/rss+xml" title="Programming Forums" href="http://www.dreamincode.net/forums/rss/forums/1-programming-forums/"/>
<link rel="alternate feed" type="application/rss+xml" title="Dream.In.Code Blogs RSS feed" href="http://www.dreamincode.net/forums/rss/blog/"/>
<link rel="stylesheet" type="text/css" href="http://www.dreamincode.net/forums/public/style_css/css_8/awards.css?v=57"/>
<link rel="stylesheet" type="text/css" title="Main" media="screen" href="http://www.dreamincode.net/forums/public/style_css/css_8/calendar_select.css?v=57"/>
<link rel="stylesheet" type="text/css" media="print" href="http://www.dreamincode.net/forums/public/style_css/css_8/ipb_print.css?v=57"/>
<link rel="stylesheet" type="text/css" title="Main" media="screen" href="http://www.dreamincode.net/forums/public/style_css/css_8/ipb_editor.css?v=57"/>
<link rel="stylesheet" type="text/css" title="Main" media="screen" href="http://www.dreamincode.net/forums/public/style_css/css_8/ipb_styles.css?v=57"/>
<!--[if lte IE 7]>
	<link rel="stylesheet" type="text/css" title='Main' media="screen" href="http://cdn.dreamincode.net/forums/public/style_css/css_8/ipb_ie.css?v=58" />
<![endif]-->
 
<meta http-equiv="X-UA-Compatible" content="IE=8"/>
<link rel="shortcut icon" type="image/vnd.microsoft.icon" href="/home/favicon.ico"/>
<link rel="alternate" title="dream.in.code Forums" href="/rss/featured.php" type="application/rss+xml"/>
<link type="text/css" rel="stylesheet" href="http://cdn.dreamincode.net/home/templates2/styles_7.css?v=17"/>
<link rel="stylesheet" href="http://cdn.dreamincode.net/home/templates2/google_cse.css?v=2" type="text/css"/>
<link rel="stylesheet" href="http://cdn.dreamincode.net/search/thickbox.css" type="text/css"/>
<meta property="fb:page_id" content="62219401412"/>
 
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
<script type="text/javascript">
		jQuery.noConflict();
		</script>
<script type="text/javascript">
		  //<![CDATA[
		  function loginToggle() {
			var target = document.getElementById("login").getElementsByTagName("div")[0];
			!target.className.match(/ visible/) ? target.className += " visible" : target.className = target.className.replace(/ visible/, "");
			}
		  //]]>
		</script>
 
 
 
 
 
 
 
<script type="text/javascript" id="nsgpt" data-channel="general" src="//cdn.nsstatic.net/ns/dreamincode.net.js" async="true"></script>
 
<script type='text/javascript'>
      jsDebug = 0; /* Must come before JS includes */
      USE_RTE = 0;
      inACP   = false;
    </script>
<script type='text/javascript' src='http://www.dreamincode.net/forums/public/js/3rd_party/prototype.js'></script>
<script type='text/javascript' src='http://www.dreamincode.net/forums/public/js/ipb.js?load=quickpm,editor,topic,rating'></script>
<script type='text/javascript' src='http://www.dreamincode.net/forums/public/js/3rd_party/scriptaculous/scriptaculous-cache.js'></script>
<script type="text/javascript" src='http://www.dreamincode.net/forums/cache/lang_cache/1/ipb.lang.js' charset='iso-8859-1'></script>
<script type='text/javascript'>
	var isRTL	= false;
	var rtlIe	= '';
	var rtlFull	= '';
</script>
<script type='text/javascript'>
	//<![CDATA[
		/* ---- URLs ---- */
		ipb.vars['base_url'] 			= 'http://www.dreamincode.net/forums/index.php?&';
		ipb.vars['board_url']			= 'http://www.dreamincode.net/forums';
		ipb.vars['loading_img'] 		= 'http://cdn.dreamincode.net/forums/public/style_images/DIC/loading.gif';
		ipb.vars['active_app']			= 'forums';
		ipb.vars['upload_url']			= 'http://www.dreamincode.net/forums/uploads';
		/* ---- Member ---- */
		ipb.vars['member_id']			= parseInt( 0 ),
		ipb.vars['is_supmod']			= parseInt( 0 ),
		ipb.vars['is_admin']			= parseInt( 0 ),
		ipb.vars['secure_hash'] 		= '880ea6a14ea49e853634fbdc5015a024';
		ipb.vars['session_id']			= 'fdda1778f43fa0957c14fba221dbed0e';
		ipb.vars['can_befriend']		= true;
		/* ---- cookies ----- */
		ipb.vars['cookie_id'] 			= 'dic_';
		ipb.vars['cookie_domain'] 		= '.dreamincode.net';
		ipb.vars['cookie_path']			= '/';
		/* ---- Rate imgs ---- */
		ipb.vars['rate_img_on']			= 'http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star.png';
		ipb.vars['rate_img_off']		= 'http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_off.png';
		ipb.vars['rate_img_rated']		= 'http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_rated.png';
		/* ---- Uploads ---- */
		ipb.vars['swfupload_swf']		= 'http://www.dreamincode.net/forums/public/js/3rd_party/swfupload/swfupload.swf';
		ipb.vars['swfupload_enabled']	= true;
		ipb.vars['use_swf_upload']		= ( '' == 'flash' ) ? true : false;
		ipb.vars['swfupload_debug']		= false; /* SKINNOTE: Turn off for production */
		/* ---- other ---- */
		ipb.vars['use_live_search'] 	= 0;
		ipb.vars['live_search_limit'] 	= 4;
		ipb.vars['highlight_color']		= "#ade57a";
		ipb.vars['charset']				= "iso-8859-1";
		ipb.vars['use_rte']				= 1;
		ipb.vars['image_resize']		= 1;
		ipb.vars['image_resize_force']  = 500;
		ipb.vars['seo_enabled']			= 1;
		
		ipb.vars['seo_params']			= {"start":"-","end":"\/","varBlock":"\/page__","varSep":"__"};
		
		/* Templates/Language */
		ipb.templates['ajax_loading'] 	= "<div id='ajax_loading'>" + ipb.lang['loading'] + "</div>";
		ipb.templates['close_popup']	= "<img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/close_popup.png' alt='x' />";
		ipb.templates['rss_shell']		= new Template("<ul id='rss_menu'>#{items}</ul>");
		ipb.templates['rss_item']		= new Template("<li><a href='#{url}' title='#{title}'>#{title}</a></li>");
		ipb.templates['resized_img']	= new Template("<span>Resized to #{percent}% (was #{width} x #{height}) - Click image to enlarge</span>");
		ipb.templates['m_add_friend']	= new Template("<a href='http://www.dreamincode.net/forums/index.php?app=members&amp;module=profile&amp;section=friends&amp;do=add&amp;member_id=#{id}' title='Add as Friend'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/user_add.png' alt='Add as Friend' /></a>");
		ipb.templates['m_rem_friend']	= new Template("<a href='http://www.dreamincode.net/forums/index.php?app=members&amp;module=profile&amp;section=friends&amp;do=remove&amp;member_id=#{id}' title='Remove Friend'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/user_delete.png' alt='Remove Friend' /></a>");
		ipb.templates['autocomplete_wrap'] = new Template("<ul id='#{id}' class='ipb_autocomplete' style='width: 250px;'></ul>");
		ipb.templates['autocomplete_item'] = new Template("<li id='#{id}'><img src='#{img}' alt='' width='#{img_w}' height='#{img_h}' />&nbsp;&nbsp;#{itemvalue}</li>");
		ipb.templates['page_jump']		= new Template("<div id='#{id}_wrap' class='ipbmenu_content'><h3 class='bar'>Jump to page</h3><input type='text' class='input_text' id='#{id}_input' size='8' /> <input type='submit' value='Go' class='input_submit add_folder' id='#{id}_submit' /></div>");
	//]]>
	</script>
<script type='text/javascript'>
      Loader.boot();
    </script>
<style type="text/css">pre{overflow:scroll;max-height:500px;background:white;border:1px solid #66666;padding:5px;}</style>
</head> 
 
<body itemscope itemtype="http://schema.org/WebPage">
 
 
 
<div id="header">
<h1 id="logo" style="width: 625px;"><a href="/" rel="home"><img alt="&lt;/Dream.In.Code&gt;: Programming &amp; Web Development Community" width="264" height="110" src="http://cdn.dreamincode.net/home/images/logo_2012.gif?v=3"/></a>
 
 
</h1>
 
<div style="height: 110px;">
<div style="padding-top: 30px; padding-right: 10px; float: right;">
<!-- google_ad_section_start(weight=ignore) -->
 
<form style="margin: 0pt;" id="cse-search-box">
<span style="float: left; font-size: 24px; padding-top: 5px; padding-right: 5px; color: white; font-weight: bolder; text-shadow: 1px 1px 1px rgb(0, 0, 0);">Search:</span>
<input name="q" id="query" size="18" style="font-size: 20px; margin-top: 5px; border: 1px solid; border-radius: 5px 5px 5px 5px; -moz-border-radius: 5px 5px 5px 5px;" value="" type="text"/>
<input name="sa" value="Search" style="color: white; background: #303030; font-weight: bolder; border: 1px solid black; margin: 0px 0px 0px 5px; padding: 5px; -moz-border-radius: 5px 5px 5px 5px; border-radius: 5px 5px 5px 5px; position: relative; top: -3px;" type="submit"/>
</form>
<script type="text/javascript">
 					var f = document.getElementById('cse-search-box');
					var q = f.q;
					    var b = function() {
						  if (q.value == '') {
							q.style.background = '#FFFFFF url(http:\x2F\x2Fwww.google.com\x2Fcse\x2Fintl\x2Fen\x2Fimages\x2Fgoogle_custom_search_watermark.gif) left no-repeat';
						  }
						};

						var f = function() {
						  q.style.background = '#ffffff';
						};
						window.onload = b;
						q.onfocus = f;
						q.onblur = b;

					</script>
<div style="text-align: right; clear: both;">
<a href="/forums/index.php?app=core&amp;module=search" style="text-decoration: none;"><span style="font-size: 11px; color: rgb(255, 255, 255); font-weight: bold; text-decoration: underline; text-align: right;">Advanced Forum Search</span></a>
</div>
 
</div>
</div>
<div id="navigation-login-register">
<ul class="navigation">
<li class="first"><a href="/forums/">Forums</a></li>
<li>
<a href="/forums/forum/76-programming-help/">Programming</a>
</li>
<li>
<a href="/forums/forum/74-web-development/">Web Development</a>
</li>
<li><a href="/forums/forum/71-computer-support/">Computers</a></li>
<li><a href="/forums/forum/78-programming-tutorials/">Tutorials</a></li>
<li><a href="/forums/forum/205-snippets/">Snippets</a></li>
<li><a href="/forums/?automodule=blog">Dev Blogs</a></li>
<li><a href="http://jobs.dreamincode.net">Jobs</a></li>
<li class="last">
<a rel="nofollow" href="/forums/forum/1-caffeine-lounge/">Lounge</a>
</li>
</ul>
 
<ul id="login-register">
<li id="login"><a rel="nofollow" href="/forums/index.php?app=core&amp;module=global&amp;section=login">Login</a></li>
<li id="register"><a rel="nofollow" href="/forums/index.php?app=core&amp;module=global&amp;section=register&amp;coppa_user=&amp;termsread=1&amp;coppa_pass=1&amp;agree_to_terms=1">Join!</a></li>
<li id="todaystopics"><a href="/forums/index.php?app=core&module=search&do=active">Today's Topics</a></li>
</ul>
 
</div>
</div>
<div id='div-gpt-ad-1326943007260-5' style="margin: 5px auto; width: 100%; min-height: 90px; text-align: center;">
 
 
<div data-ns="billboard" data-pos="atf"></div>
</div>
<div style=" background: #FFF; margin: 0px auto; border-left: 1px solid #FFF;border-right: 1px solid #FFF;">
 
 
 
<div id="main_content">
<div id="content_hold" class="with_sidebar">
<div id="content_inner" class="content">
<div id='ipbwrapper'>
<ul id='breadcrumb' itemprop='breadcrumb' class='left'><li class='first'><a href='http://www.dreamincode.net/forums/index'>Dream.In.Code</a></li>
<li><span class='nav_sep'>&gt;</span> <a href='http://www.dreamincode.net/forums/forum/76-programming-help/' title='Return to Programming Help'>Programming Help</a></li>
<li><span class='nav_sep'>&gt;</span> <a href='http://www.dreamincode.net/forums/forum/29-python/' title='Return to Python'>Python</a></li>
</ul><br/>
 
 
 
 
 
<div id='content' class='clear'>
<a id='j_content'></a>
 
<script type="text/javascript">
//<![CDATA[
	ipb.topic.inSection = 'topicview';
	ipb.topic.topic_id  = 325606;
	ipb.topic.forum_id  = 29;
	ipb.topic.start_id  = 0;
	// Editor JS: Only needs to be done once per page
	ipb.editor_values.get('templates')['link'] = new Template("<label for='#{id}_url'>URL</label><input type='text' class='input_text' id='#{id}_url' value='http://' tabindex='10' /><label for='#{id}_urltext'>Link text</label><input type='text' class='input_text _select' id='#{id}_urltext' value='My link' tabindex='11' /><input type='submit' class='input_submit' value='Insert Link' tabindex='12' />");
ipb.editor_values.get('templates')['image'] = new Template("<label for='#{id}_img'>Image URL</label><input type='text' class='input_text' id='#{id}_img' value='http://' tabindex='10' /><input type='submit' class='input_submit' value='Insert Image' tabindex='11' />");
ipb.editor_values.get('templates')['email'] = new Template("<label for='#{id}_email'>Email Address</label><input type='text' class='input_text' id='#{id}_email' tabindex='10' /><label for='#{id}_emailtext'>Link text</label><input type='text' class='input_text _select' id='#{id}_emailtext' value='Email me' tabindex='11' /><input type='submit' class='input_submit' value='Insert Email' tabindex='12' />");
ipb.editor_values.get('templates')['media'] = new Template("<label for='#{id}_media'>Media URL</label><input type='text' class='input_text' id='#{id}_media' value='http://' tabindex='10' /><input type='submit' class='input_submit' value='Insert Media' tabindex='11' />");
ipb.editor_values.get('templates')['generic'] = new Template("<div class='rte_title'>#{title}</div><strong>Example</strong><pre>#{example}</pre><label for='#{id}_option' class='optional'>#{option_text}</label><input type='text' class='input_text optional' id='#{id}_option' tabindex='10' /><label for='#{id}_text'>#{value_text}</label><input type='text' class='input_text _select' id='#{id}_text' tabindex='11' /><input type='submit' class='input_submit' value='Add' tabindex='12' />");
ipb.editor_values.get('templates')['togglesource'] = new Template("<fieldset id='#{id}_ts_controls' class='submit' style='text-align: left'><input type='button' class='input_submit' value='Update' id='#{id}_ts_update' />&nbsp;&nbsp;&nbsp; <a href='#' id='#{id}_ts_cancel' class='cancel'>Cancel Source Edit</a></fieldset>");
	
ipb.editor_values.get('templates')['toolbar'] = new Template("<ul id='#{id}_toolbar_#{toolbarid}' class='toolbar' style='display: none'>#{content}</ul>");
ipb.editor_values.get('templates')['button'] = new Template("<li><span id='#{id}_cmd_custom_#{cmd}' class='rte_control rte_button specialitem' title='#{title}'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/rte_icons/#{img}' alt='Icon' /></span></li>");
ipb.editor_values.get('templates')['menu_item'] = new Template("<li id='#{id}_cmd_custom_#{cmd}' class='specialitem clickable'>#{title}</li>");
ipb.editor_values.get('templates')['togglesource'] = new Template("<fieldset id='#{id}_ts_controls' class='submit' style='text-align: left'><input type='button' class='input_submit' value='Update' id='#{id}_ts_update' />&nbsp;&nbsp;&nbsp; <a href='#' id='#{id}_ts_cancel' class='cancel'>Cancel Source Edit</a></fieldset>");
ipb.editor_values.get('templates')['emoticons_showall'] = new Template("<input class='input_submit emoticons' type='button' id='#{id}_all_emoticons' value='Show all emoticons' />");
ipb.editor_values.get('templates')['emoticon_wrapper'] = new Template("<h4><span>Emoticons</span></h4><div id='#{id}_emoticon_holder' class='emoticon_holder'></div>");

// Add smilies into the mix
ipb.editor_values.set( 'show_emoticon_link', false );

ipb.editor_values.set( 'bbcodes', $H({"snapback":{"id":"1","title":"Post Snap Back","desc":"This tag displays a little linked image which links back to a post - used when quoting posts from the board. Opens in same window by default.","tag":"snapback","useoption":"0","example":"[snapback]100[/snapback]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"topic":{"id":"5","title":"Topic Link","desc":"This tag provides an easy way to link to a topic","tag":"topic","useoption":"1","example":"[topic=1]Click me![/topic]","switch_option":"0","menu_option_text":"Enter the topic ID","menu_content_text":"Enter the title for this link","single_tag":"0","optional_option":"0","image":""},"post":{"id":"6","title":"Post Link","desc":"This tag provides an easy way to link to a post.","tag":"post","useoption":"1","example":"[post=1]Click me![/post]","switch_option":"0","menu_option_text":"Enter the Post ID","menu_content_text":"Enter the title for this link","single_tag":"0","optional_option":"0","image":""},"spoiler":{"id":"7","title":"Spoiler","desc":"Spoiler tag","tag":"spoiler","useoption":"0","example":"[spoiler]Some hidden text[/spoiler]","switch_option":"0","menu_option_text":"","menu_content_text":"Enter the text to be masked","single_tag":"0","optional_option":"0","image":""},"acronym":{"id":"8","title":"Acronym","desc":"Allows you to make an acronym that will display a description when moused over","tag":"acronym","useoption":"1","example":"[acronym='Laugh Out Loud']lol[/acronym]","switch_option":"0","menu_option_text":"Enter the description for this acronym (EG: Laugh Out Loud)","menu_content_text":"Enter the acronym (EG: lol)","single_tag":"0","optional_option":"0","image":""},"hr":{"id":"12","title":"Horizontal Rule","desc":"Adds a horizontal rule to separate text","tag":"hr","useoption":"0","example":"[hr]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"1","optional_option":"0","image":""},"php":{"id":"14","title":"PHP Code","desc":"Allows you to enter PHP code into a formatted/highlighted syntax box","tag":"php","useoption":"0","example":"[php]$variable = true;\n\nprint_r($variable);[/php]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"html":{"id":"15","title":"HTML Code","desc":"Allows you to enter formatted/syntax-highlighted HTML code","tag":"html","useoption":"0","example":"[html]<body>\n <div class='outer'>\n  <p>Hello World</p>\n </div>\n</body>[/html]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"sql":{"id":"16","title":"SQL Code","desc":"Allows you to enter formatted/syntax-highlighted SQL code","tag":"sql","useoption":"0","example":"[sql]SELECT p.*, t.* FROM posts p LEFT JOIN topics t ON t.tid=p.topic_id WHERE t.tid=7[/sql]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"xml":{"id":"17","title":"XML Code","desc":"Allows you to enter formatted/syntax-highlighted XML code","tag":"xml","useoption":"0","example":"[xml]<outer>\n <inner>\n  <tag param='1'>Test</tag>\n </inner>\n</outer>[/xml]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"member":{"id":"31","title":"Member","desc":"Given a member name, a link is automatically generated to the member's profile","tag":"member","useoption":"1","example":"[member=skyhawk133] runs this site.","switch_option":"0","menu_option_text":"Input Username of Member","menu_content_text":"","single_tag":"1","optional_option":"0","image":"memberbbcode.png"},"extract":{"id":"33","title":"Extract Blog Entry","desc":"This will allow users to define an extract for an entry. Only this piece of the entry will be displayed on the main blog page and will show up in the RSS feed.","tag":"extract","useoption":"0","example":"[extract]This is an example![/extract]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"blog":{"id":"34","title":"Blog Link","desc":"This tag provides an easy way to link to a blog.","tag":"blog","useoption":"1","example":"[blog=100]Click me![/blog]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"entry":{"id":"35","title":"Blog Entry Link","desc":"This tag provides an easy way to link to a blog entry.","tag":"entry","useoption":"1","example":"[entry=100]Click me![/entry]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"twitter":{"id":"36","title":"Twitter","desc":"A tag to link to a user's twitter account","tag":"twitter","useoption":"0","example":"[twitter]userName[/twitter]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":"twitter.png"},"inline":{"id":"37","title":"Inline Code","desc":"Formats code inline instead of in a seperate code box. ","tag":"inline","useoption":"0","example":"[inline]style=\"font-size: 12px;\"[/inline]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":""},"il":{"id":"38","title":"Abbreviated Inline (IL)","desc":"Abbreviated version of the [inline] tag. ","tag":"il","useoption":"0","example":"[il]Code Here[/il]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"0","image":"il2.png"},"code":{"id":"41","title":"Code","desc":"Allows you to enter general code","tag":"code","useoption":"1","example":"[code]$text = 'Some long code here';[/code]","switch_option":"0","menu_option_text":"","menu_content_text":"","single_tag":"0","optional_option":"1","image":""}}) );
	ipb.vars['emoticon_url'] = "http://cdn.dreamincode.net/forums/public/style_emoticons/default";
	//Search Setup
	ipb.vars['search_type']			= 'forum';
	ipb.vars['search_type_id']		= 29;
	ipb.vars['search_type_2']		= 'topic';
	ipb.vars['search_type_id_2']	= 325606;
//]]>
</script>
<div class='topic_controls'>
<h1 style="font-size: 20px; font-weight: bolder; text-transform:capitalize; margin-top: -15px; margin-bottom: 10px;"><a href='http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/' style="text-decoration: none;">error using smtplib</a></h1>
<span class='pagination no_pages left'>Page 1 of 1</span>
<ul class='topic_buttons'>
<li><a href='http://www.dreamincode.net/forums/index.php?app=core&module=global&section=register&coppa_user=&termsread=1&coppa_pass=1&agree_to_terms=1' title='New Topic/Question' accesskey='n'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/page_white_add.png' alt=''/> New Topic/Question</a></li>
<li><a href='http://www.dreamincode.net/forums/index.php?app=forums&amp;module=post&amp;section=post&amp;do=reply_post&amp;f=29&amp;t=325606' title='Reply' accesskey='r'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/arrow_rotate_clockwise.png' alt='Reply'/> Reply</a></li>
</ul>
</div>
<div class='topic hfeed'>
<h2 class='maintitle'>
<span style="color: #CCC; font-weight: bold; font-size: 14px;">1 Replies - 2190 Views - Last Post: 25 July 2013 - 05:25 PM</span>
 
<span class='rating'>Rate Topic:
<a href='http://www.dreamincode.net/forums/index.php?app=forums&amp;module=extras&amp;section=rating&amp;t=325606&amp;rating=1' id='topic_rate_1' title='Rate topic 1 star'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_off.png' alt='-' class='rate_img'/></a><a href='http://www.dreamincode.net/forums/index.php?app=forums&amp;module=extras&amp;section=rating&amp;t=325606&amp;rating=2' id='topic_rate_2' title='Rate topic 2 stars'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_off.png' alt='-' class='rate_img'/></a><a href='http://www.dreamincode.net/forums/index.php?app=forums&amp;module=extras&amp;section=rating&amp;t=325606&amp;rating=3' id='topic_rate_3' title='Rate topic 3 stars'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_off.png' alt='-' class='rate_img'/></a><a href='http://www.dreamincode.net/forums/index.php?app=forums&amp;module=extras&amp;section=rating&amp;t=325606&amp;rating=4' id='topic_rate_4' title='Rate topic 4 stars'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_off.png' alt='-' class='rate_img'/></a><a href='http://www.dreamincode.net/forums/index.php?app=forums&amp;module=extras&amp;section=rating&amp;t=325606&amp;rating=5' id='topic_rate_5' title='Rate topic 5 stars'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/bullet_star_off.png' alt='-' class='rate_img'/></a>
<span id='rating_text'>
</span>
<script type='text/javascript'>
				//<![CDATA[
					rating = new ipb.rating( 'topic_rate_', { 
										url: 'http://www.dreamincode.net/forums/index.php?app=forums&module=ajax&section=topics&do=rateTopic&t=325606&md5check=' + ipb.vars['secure_hash'],
										cur_rating: 0,
										rated: 0,
										allow_rate: 0,
										multi_rate: 1,
										show_rate_text: true
									  } );
				//]]>
				</script>
<br/>
</span>
</h2>
 
 
 
<div class='post_block hentry clear  with_rep' id='post_id_1879374'>
 
<a id='entry1879374'></a>
<div class='post_wrap'>
<h3>
<span class='post_id'>
<a href='http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/page__view__findpost__p__1879374' rel='bookmark' title='Link to post #1'>#1</a>
</span>
<span class="author vcard">
<a class="url fn" href='http://www.dreamincode.net/forums/user/628576-aceme/'>Ace=me</a>
&nbsp;<a href='http://www.dreamincode.net/forums/user/628576-aceme/page__f__29' class='__user __id628576 __fid29' title='View Profile'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/user_popup.png' alt='Icon'/></a>
<img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/user_off.png' alt='User is offline' title='User is offline'/>
</span>
</h3>
<div class='author_info'>
 
<ul class='user_details'>
<li class='avatar'><a href="http://www.dreamincode.net/forums/user/628576-aceme/" title="View Profile"><img src='http://www.gravatar.com/avatar/fe8b24ce19f130074bcada4709f68769?d=http%3A%2F%2Fcdn.dreamincode.net%2Fforums%2Fpublic%2Fstyle_avatars%2Fblank_avatar.gif&amp;s=64' alt=''/></a></li>
<li class='title'>New D.I.C Head</li>
</ul>
<br/>
<div class='reputation zero'>
<span class='number'>Reputation: 0</span>
</div>
<div style='margin: 0 auto;'>
<ul class='user_controls clear'>
<li><a href='http://www.dreamincode.net/forums/index.php?app=blog&amp;module=display&amp;section=blog&amp;mid=628576' title='View blog'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/book_open.png' alt='View blog'/></a></li>
</ul>
</div>
<ul class='user_fields'>
<li>
<span class='ft'>Posts:</span>
<span class='fc'>6</span>
</li>
<li>
<span class='ft'>Joined:</span>
<span class='fc'>29-June 13</span>
</li>
</ul>
 
</div>
<div class='post_body'>
<h1 class='entry-title'>error using smtplib</h1>
<p class='posted_info'>
Posted <abbr class="published updated" title="2013-07-25T16:55:07+00:00">25 July 2013 - 09:55 AM</abbr>
</p>
<div class='post entry-content'>
 I&#39;ve tested this using other e-mail services such as gmail and yahoo and have had success however i got an error when I tried to send an e-mail using hotmail. Could this problem be resolved? if so, how?<br/>
<br/>
<pre class='brush: bash ;'>import smtplib

# Details of the message

msg_from = (&#39;<a class="__cf_email__" href="/cdn-cgi/l/email-protection" data-cfemail="f89dd595999194a79e8a9795b89d80999588949dd69b9795">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script>&#39;)

msg_to  = (&#39;<a class="__cf_email__" href="/cdn-cgi/l/email-protection" data-cfemail="75105818141c192a011a35100d14180519105b161a18">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script>&#39;)

msg = (&#39;message&#39;)


# Set up the server
mailServer = smtplib.SMTP(&#39;smtp.live.com:587&#39;)

mailServer.starttls()

# Login

mailServer.login(&#39;username&#39;,&#39;pass&#39;)

# Send the message

mailServer.sendmail(msg_from, msg_to, msg)</pre><br/>
<br/>
My error: <strong class='bbc'>File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;smtplib.py&quot;, line 366, in getreply<br/>
<br/>
line = self.file.readline()<br/>
<br/>
File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;socket.py&quot;, line 297, in readinto<br/>
<br/>
return self._sock.recv_into(b.)<br/>
<br/>
File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;ssl.py&quot;, line 453, in recv_into<br/>
<br/>
<br/>
return self.read(nbytes, buffer)<br/>
<br/>
File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;ssl.py&quot;, line 327, in read<br/>
<br/>
v = self._sslobj.read(len, buffer)<br/>
<br/>
ssl.SSLError: [SSL: WRONG_VERSION_NUMBER] wrong version number (_ssl.c:1450)<br/>
<br/>
<br/>
<br/>
During handling of the above exception, another exception occurred:<br/>
<br/>
<br/>
<br/>
Traceback (most recent call last):<br/>
<br/>
File &quot;D:&#092;Users&#092;user&#092;Documents&#092;testm.py&quot;, line 23, in &lt;module&gt;<br/>
<br/>
mailServer.sendmail(msg_from, msg_to, msg)<br/>
<br/>
File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;smtplib.py&quot;, line 764, in sendmail<br/>
<br/>
(code, resp) = self.rcpt(each, rcpt_options)<br/>
<br/>
File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;smtplib.py&quot;, line 494, in rcpt<br/>
<br/>
return self.getreply()<br/>
<br/>
File &quot;C:&#092;Program Files&#092;PY&#092;lib&#092;smtplib.py&quot;, line 370, in getreply<br/>
<br/>
+ str(e))<br/>
<br/>
smtplib.SMTPServerDisconnected: Connection unexpectedly closed: [SSL: WRONG_VERSION_NUMBER] wrong version number (_ssl.c:1450)</strong>
<br/>
</div>
<div id='div-gpt-ad-1326943007260-1' style="padding-left: 15px;">
 
<script type="text/javascript">
//<![CDATA[
ord = window.ord || Math.floor(Math.random()*1E16);
document.write('<script type="text/javascript" src="http://ad2.netshelter.net/adj/ns.dreamincode/general;ppos=btf;kw=;tile=2;sz=300x250;ord=' + ord + '?"><\/script>');
//]]>
</script>
<noscript><a href="http://ad2.netshelter.net/jump/ns.dreamincode/general;ppos=btf;kw=;tile=2;sz=300x250;ord=123456789?" target="_blank"><img src="http://ad2.netshelter.net/ad/ns.dreamincode/general;ppos=btf;kw=;tile=2;sz=300x250;ord=123456789?" border="0" alt=""/></a></noscript>
 
</div>
<br/>
</div>
<div class='rep_bar clear right' id='rep_post_1879374'><span style="float: left; margin-top: 10px; font-weight: bold;">
Is This A Good Question/Topic?
</span>
<span class='reputation zero rep_show clickable' title='Reputation' onclick='ipb.topic.repPopUp( this, 1879374 );'>
0
</span>
 
<ul>
<li><a href='#' class='rep_up' title='Vote this post up'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/add.png' alt='+'/></a></li>
</ul>
</div>
<script type='text/javascript'>
					ipb.global.registerReputation( 'rep_post_1879374', { app: 'forums', type: 'pid', typeid: '1879374' }, parseInt('0') );
				</script>
<ul class='post_controls'>
<li class='top hide'><a href='#top' class='top' title='Back to top'>Back to top</a></li>
<li class='multiquote' id='multiq_1879374' style='display: none'>
<a href="http://www.dreamincode.net/forums/index.php?app=forums&amp;module=post&amp;section=post&amp;do=reply_post&amp;f=29&amp;t=325606&amp;qpid=1879374" title="Quote this post with Multi-Quote"><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/comment_add.png' alt='Reply Icon'/> MultiQuote</a>
</li>
<li><a href="http://www.dreamincode.net/forums/index.php?app=forums&amp;module=post&amp;section=post&amp;do=reply_post&amp;f=29&amp;t=325606&amp;qpid=1879374" title="Reply directly to this post"><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/comment_add.png' alt='Reply Icon'/> Quote + Reply</a></li>
 
</ul>
<script type='text/javascript'>
					// Show multiquote for JS browsers
					$('multiq_1879374').show();
					
					if( $('toggle_post_1879374') )
					{
						$('toggle_post_1879374').show();
					}
				</script>
</div>
 
</div>
<hr/>
<h2 class='maintitle'>
<strong>Replies To:</strong> error using smtplib
</h2>
 
<div class='post_block hentry clear  with_rep' id='post_id_1879554'>
<a id='entry1879554'></a>
<div class='post_wrap'>
<h3>
<span class='post_id'>
<a href='http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/page__view__findpost__p__1879554' rel='bookmark' title='Link to post #2'>#2</a>
</span>
<span class="author vcard">
<a class="url fn" href='http://www.dreamincode.net/forums/user/626371-dblaassassin/'>DblAAssassin</a>
&nbsp;<a href='http://www.dreamincode.net/forums/user/626371-dblaassassin/page__f__29' class='__user __id626371 __fid29' title='View Profile'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/user_popup.png' alt='Icon'/></a>
<img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/user_off.png' alt='User is offline' title='User is offline'/>
</span>
</h3>
<div class='author_info'>
 
<ul class='user_details'>
<li class='avatar'><a href="http://www.dreamincode.net/forums/user/626371-dblaassassin/" title="View Profile"><img src='http://i.imgur.com/N4J2N0r.png' width='64' height='64' alt=''/></a></li>
<li class='title'>D.I.C Regular</li>
</ul>
<br/>
<div class='reputation positive'>
<span class='number'>Reputation: 42</span>
</div>
<div style='margin: 0 auto;'>
<ul class='user_controls clear'>
<li><a href='http://www.dreamincode.net/forums/index.php?app=blog&amp;module=display&amp;section=blog&amp;mid=626371' title='View blog'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/book_open.png' alt='View blog'/></a></li>
</ul>
</div>
<ul class='user_fields'>
<li>
<span class='ft'>Posts:</span>
<span class='fc'>320</span>
</li>
<li>
<span class='ft'>Joined:</span>
<span class='fc'>11-May 13</span>
</li>
</ul>
 
</div>
<div class='post_body'>
<h2 class='entry-title'>Re: error using smtplib</h2>
<p class='posted_info'>
Posted <abbr class="published updated" title="2013-07-26T00:25:56+00:00">25 July 2013 - 05:25 PM</abbr>
</p>
<div class='post entry-content'>
 Well First <a href='http://docs.python.org/2/library/smtplib.html' class='bbc_url' title='External link' rel='external'>here is the official Python Page</a> for <span class="inlinecode">smtplib</span>.<br/>
I think, we could understand your error more. If all of the program was showing. Because surely this isn&#39;t the whole program, as the Error refers to lines ranging from 23 to 494. I suggest you upload to it to a third-party website, so it doesn&#39;t take up the whole thread.<br/>
<br/>
I&#39;ve never used this module before, but just by the info on that page linked. It looks like your <span class="inlinecode">msg_from</span> and <span class="inlinecode">msg_to</span> should be <span class="inlinecode">fromaddr</span> and <span class="inlinecode">toaddrs</span>.<br/>
<br/>
To my understanding from my short research everything else looks good with this chunk of code. Like I said if I can see the rest of the code. I could help you solve your Errors.
<br/>
<p class='edit'>
This post has been edited by <b>DblAAssassin</b>: 25 July 2013 - 05:36 PM
</p>
</div>
</div>
<div class='rep_bar clear right' id='rep_post_1879554'><span style="float: left; margin-top: 10px; font-weight: bold;">
Was This Post Helpful?
</span>
<span class='reputation zero rep_show clickable' title='Reputation' onclick='ipb.topic.repPopUp( this, 1879554 );'>
0
</span>
 
<ul>
<li><a href='#' class='rep_up' title='Vote this post up'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/add.png' alt='+'/></a></li>
<li><a href='#' class='rep_down' title='Vote this post down'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/delete.png' alt='-'/></a></li>
</ul>
</div>
<script type='text/javascript'>
					ipb.global.registerReputation( 'rep_post_1879554', { app: 'forums', type: 'pid', typeid: '1879554' }, parseInt('0') );
				</script>
<ul class='post_controls'>
<li class='top hide'><a href='#top' class='top' title='Back to top'>Back to top</a></li>
<li class='multiquote' id='multiq_1879554' style='display: none'>
<a href="http://www.dreamincode.net/forums/index.php?app=forums&amp;module=post&amp;section=post&amp;do=reply_post&amp;f=29&amp;t=325606&amp;qpid=1879554" title="Quote this post with Multi-Quote"><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/comment_add.png' alt='Reply Icon'/> MultiQuote</a>
</li>
<li><a href="http://www.dreamincode.net/forums/index.php?app=forums&amp;module=post&amp;section=post&amp;do=reply_post&amp;f=29&amp;t=325606&amp;qpid=1879554" title="Reply directly to this post"><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/comment_add.png' alt='Reply Icon'/> Quote + Reply</a></li>
 
</ul>
<script type='text/javascript'>
					// Show multiquote for JS browsers
					$('multiq_1879554').show();
					
					if( $('toggle_post_1879554') )
					{
						$('toggle_post_1879554').show();
					}
				</script>
</div>
 
</div>
<hr/>
 
 
 
<ul class='topic_jump right clear'>
<li class='previous'><a href='http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/page__view__old'>&larr; Previous Topic</a></li>
<li><strong><a href='http://www.dreamincode.net/forums/forum/29-python/' title='Return to Python'>Python</a></strong></li>
<li class='next'><a href='http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/page__view__new'>Next Topic &rarr;</a></li>
</ul>
 
<div class='topic_controls clear'>
<span class='pagination no_pages left'>Page 1 of 1</span>
</div>
 
 
 
</div>
 
<br class='clear'/>
</div>
 
 
<table align="center" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="center" valign="top">
<div data-ns="largerectangle" data-pos="btf"></div>
</div>
</td>
<td align="left" valign="top" width="100%">
<div id="related" style="margin-top: -25px;">
Query failed: unknown local index 'forums_search_posts_main' in search request.
</div>
</td>
</tr>
</table>
 
 
<script type='text/javascript' src='http://cdn.dreamincode.net/forums/public/js/3rd_party/lightbox.js'></script>
<script type='text/javascript'>
//<![CDATA[
	// Lightbox Configuration
	LightboxOptions = Object.extend({
	    fileLoadingImage:        'http://cdn.dreamincode.net/forums/public/style_images/DIC/lightbox/loading.gif',     
	    fileBottomNavCloseImage: 'http://cdn.dreamincode.net/forums/public/style_images/DIC/lightbox/closelabel.gif',
	    overlayOpacity: 0.8,   // controls transparency of shadow overlay
	    animate: true,         // toggles resizing animations
	    resizeSpeed: 7,        // controls the speed of the image resizing animations (1=slowest and 10=fastest)
	    borderSize: 10,         //if you adjust the padding in the CSS, you will need to update this variable
		// When grouping images this is used to write: Image # of #.
		// Change it for non-english localization
		labelImage: "Image",
		labelOf: "of"
	}, window.LightboxOptions || {});
/* Watch for a lightbox image and set up our downloadbutton watcher */
document.observe('click', (function(event){
    var target = event.findElement('a[rel^=lightbox]') || event.findElement('area[rel^=lightbox]');
    if (target) {
        event.stop();
        gbl_addDownloadButton();
    }
}).bind(this));
var _to    = '';
var _last  = '';
function gbl_addDownloadButton()
{
	if ( typeof( ipsLightbox.lightboxImage ) != 'undefined' && ipsLightbox.lightboxImage.src )
	{
		if ( _last != ipsLightbox.lightboxImage.src )
		{
			if ( ! $('gbl_d') )
			{
				$('bottomNav').insert( { top: "<div id='gbl_d' style='text-align:right;padding-bottom:4px;'></div>" } );
			}
			
			$('gbl_d').update( "<a href='"+ ipsLightbox.lightboxImage.src + "' target='_blank'><img src='http://cdn.dreamincode.net/forums/public/style_images/DIC/lightbox/download-icon.png' /></a>" );
			
			_last = ipsLightbox.lightboxImage.src;
		}
	}
	
	/* Check for init and then keep checking for new image */
	_to = setTimeout( "gbl_addDownloadButton()", 1000 );
}
//]]>
</script>
</div> 
</div> 
</div> 
 
<div id="sidebar">
<div style="margin-left: 35px; padding-top: 10px; text-align: center;">
<a href="http://www.dreamincode.net/forums/index.php?app=core&module=global&section=register&coppa_user=&termsread=1&coppa_pass=1&agree_to_terms=1"><img src="http://cdn.dreamincode.net/home/images/ask_a_question_336.png"/></a>
<br/>
 
<div id='div-gpt-ad-1326943007260-2' style="width: 300px; margin-left: 25px;">
 
 
<div data-ns="portrait" data-pos="atf"></div>
</div>
</div>
<div id="sidebar_inner">
<div class="column1">
<!-- google_ad_section_start(weight=ignore) -->
<div class="navigation">
<h2><a href="/forums/forum/72-general-discussion/">General Discussion</a></h2>
<ul class="navigation">
<li><a href="/forums/forum/1-caffeine-lounge/" title="This is our off-topic forum for discussions related to non-programming topics including: sports, current events, games, music, movies, food, drink, TV, geek related (toys & technology), debates, life events, rants, and occasionally religion and politics. ">Caffeine Lounge</a></li>
<li><a href="/forums/forum/93-corner-cubicle/" title="Off-Topic discussion of IT related topics. This is the forum for professionals and those interested in serious discussion of topics related to the world of IT. It all happens here in the corner cubicle. ">Corner Cubicle</a></li>
<li><a href="/forums/forum/110-student-campus/" title="A forum just for students. Talk about colleges, classes, resources for students, homework, and other topics related to life in school. ">Student Campus</a></li>
<li><a href="/forums/forum/82-software-development/" title="Discuss topics related to developing software. Including architecture, design patterns, documentation, software industry, and other non-language specific programming topics. ">Software Development</a></li>
<li><a href="/forums/forum/83-industry-news/" title="A place for topics that announce various news from the web/software development industry (product release announcements, updates, new services etc.)">Industry News</a></li>
<li><a href="/forums/forum/65-introduce-yourself/" title="A place where you can introduce yourself to the community and greet other new members.">Introduce Yourself</a></li>
<li><a href="/forums/forum/201-nightmareincode/" title="*NEW* - Post the worst code you come across and have a good laugh. Because sometimes your code dreams, are really code nightmares. ">Nightmare.In.Code</a></li>
</ul>
<h2><a href="/forums/forum/76-programming-help/">Programming Help</a></h2>
<ul class="navigation">
<li><a href="/forums/forum/15-c-and-c/" title="Expert programming help for C, and C++! Ask questions about homework assignments, or any other C/C++ related problems. C++ is a great language when beginning programming. ">C and C++</a></li>
<li><a href="/forums/forum/67-vbnet/" title="Ask questions about Microsoft's VB.NET programming language.">VB.NET</a></li>
<li><a href="/forums/forum/32-java/" title="Post your Java questions in here. We're happy to help with homework assignments, work projects, or any other java related questions. Java is common when beginning computer programming.">Java</a></li>
<li><a href="/forums/forum/84-c/" title="Object Oriented Programming at its finest. Encompassing power with ease of use, C&#35; has become one of the top programming languages of the new age.">C&#35;</a></li>
<li><a href="/forums/forum/29-python/" title="">Python</a></li>
<li><a href="/forums/forum/28-php/" title="Having some PHP problems? Need some help with a few functions? This is the place to ask! ">PHP</a></li>
<li><a href="/forums/forum/109-mobile-development/" title="Discuss developing applications for mobile phones. Including Android, iPhone, and other mobile platforms. ">Mobile Development</a></li>
<li><a href="/forums/forum/30-aspnet/" title="Having some problems with ASP.NET programming? Pop in here and ask your question!">ASP.NET</a></li>
<li><a href="/forums/forum/142-net-framework/" title="">.NET Framework</a></li>
<li><a href="/forums/forum/70-ruby/" title="This up-and-coming language is easy to learn, fast to develop, and very powerful. Get help with the Ruby on Rails framework or any other Ruby questions you have!">Ruby</a></li>
<li><a href="/forums/forum/69-game-development/" title="Get help with anything game development related. Programming, 3D Engines, Art, Design and Math etc.">Game Development</a></li>
<li><a href="/forums/forum/112-assembly/" title="Topics related to assembly language programming. ">Assembly</a></li>
<li><a href="/forums/forum/14-databases/" title="mySQL, PostgreSQL, Access, SQL, and Oracle... you've got a database question... we've got database answers!">Databases</a></li>
<li><a href="/forums/forum/31-coldfusion/" title="It's the other white meat... a rapid application development language that will have you hooked in no time! From cfoutput to components, we can help you out!">ColdFusion</a></li>
<li><a href="/forums/forum/21-vb6/" title="Our Visual Basic experts are happy to help with homework assignments, commercial applications, or any other VB question you may have! Visual Basic is good to learn programming. ">VB6</a></li>
<li><a href="/forums/forum/62-other-languages/" title="Discuss languages that don't have a specific forum. Including COBOL, Fortran, ADA, Basic, etc. ">Other Languages</a></li>
<li><a href="/forums/forum/126-52-weeks-of-code/" title="">52 Weeks Of Code</a></li>
</ul>
<h2><a href="/forums/forum/74-web-development/">Web Development</a></h2>
<ul class="navigation">
<li><a href="/forums/forum/63-web-development/" title="Discuss anything that doesn't fit in the other web development forums.">Web Development</a></li>
<li><a href="/forums/forum/4-html-css/" title="Have questions about HTML, XHTML, CSS? We'll get you headed in the right direction! ">HTML &amp; CSS</a></li>
<li><a href="/forums/forum/90-javascript/" title="JavaScript and AJAX, it's what Web 2.0 is all about. Post your JavaScript related questions here!">JavaScript</a></li>
<li><a href="/forums/forum/3-graphic-design/" title="Photoshop and Corel gurus come on in! Can't figure out how to do that cool effect? Have some questions or cool web images you've made? Post em' here">Graphic Design</a></li>
<li><a href="/forums/forum/8-flash-actionscript/" title="Let our Flash and ActionScript experts answer your questions. From simple tweens to advanced flash remoting, we're happy to help!">Flash &amp; ActionScript</a></li>
<li><a href="/forums/forum/89-blogging/" title="Wordpress, Blogger, Plugins, Themes, Skins, Pay Per Post, and anything else related to the Blogging industry. ">Blogging</a></li>
<li><a href="/forums/forum/59-seo-advertising/" title="Advertising, SEO, AdSense, AdWords, Link Trades, and more! Now that you've created your website, you've gotta drive traffic to it. Discuss current trends and techniques here. ">SEO &amp; Advertising</a></li>
<li><a href="/forums/forum/88-web-servers-hosting/" title="Apache, IIS, Shared Hosting, Dedicated Hosting, Colocation. We'll make sure you get your site online and keep it online!">Web Servers &amp; Hosting</a></li>
<li><a href="/forums/forum/5-site-check/" title="Post your web site to be reviewed by fellow dream.in.code members. ">Site Check</a></li>
</ul>
 
<div id='div-gpt-ad-1326943007260-0' style='width:160px; height:600px;'>
 
<div data-ns="skyscraper"></div>
</div>
<br/>
</div>
<!-- google_ad_section_end -->
</div><div class="column2">
 
<div class="tutorials" style="margin-top: -15px;">
<h2>Follow & Share</h2>
 
<script type="text/javascript">
window.___gcfg = {lang: 'en'};
(function() 
{var po = document.createElement("script");
po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
var s = document.getElementsByTagName("script")[0];
s.parentNode.insertBefore(po, s);
})();</script>
 
<g:plus href="https://plus.google.com/101741058034586748616" rel="publisher" width="170" height="69" theme="light"></g:plus><br>
<a href="/rss/featured.php" rel="alternate"><img src="http://cdn.dreamincode.net/home/images/feed-icon32x32.png" alt="Dream.In.Code RSS Feed" style="border:0; margin: 2px;" width="32" height="32"/></a>
<a href="http://www.linkedin.com/e/gis/1506187" rel="alternate"><img src="http://cdn.dreamincode.net/home/images/linkedin-icon32x32.png" alt="Dream.In.Code LinkedIn Group" style="border:0; margin: 2px;" width="32" height="32"/></a>
<a href="http://www.twitter.com/dreamincode" rel="alternate"><img src="http://cdn.dreamincode.net/home/images/twitter-icon32x32.png" alt="Follow Us On Twitter" style="border:0; margin: 2px;" width="32" height="32"/></a>
<a href="http://www.facebook.com/pages/DreamInCode/62219401412" rel="alternate"><img src="http://cdn.dreamincode.net/home/images/facebook.png" alt="Fan Us On Facebook" style="border:0; margin: 2px;" width="32" height="32"/></a>
 
<p><a href="http://feeds.feedburner.com/dic_featured"><img src="http://feeds.feedburner.com/~fc/dic_featured?bg=FF9900&amp;fg=000000&amp;anim=1" height="26" width="88" style="border:0; margin-top: 2px; margin-left: 3px;" alt=""/></a></p>
<!-- google_ad_section_end -->
 
 
<h2><a href="http://www.dreamincode.net/forums/showforum133.htm">Python Tutorials</a></h2>
<ul>
<li><a href="/forums/topic/402599-computer-networking-two-player-interactive-game/">Computer Networking, Two-Player Interactive Game</a></li>
<li><a href="/forums/topic/402466-snake-game-a-pygame-tutorial/">Snake Game - A Pygame Tutorial</a></li>
<li><a href="/forums/topic/401541-buttons-and-sliders-in-pygame/">Buttons and Sliders in Pygame</a></li>
<li><a href="/forums/topic/401111-book-review-murachs-python-programming/">Book Review: Murach&#39;s Python Programming</a></li>
<li><a href="/forums/topic/400880-walk-through-a-platform-game-made-with-pygame-part-#2/">Walk-Through a &#34;Platform Game&#34; made with Pygame, Part #2</a></li>
<li><a href="/forums/topic/400812-walk-through-a-platform-game-made-with-pygame-part-#1/">Walk-Through a &#34;Platform Game&#34; made with Pygame, Part #1</a></li>
<li><a href="/forums/topic/400712-matrix-rain-a-walk-through-with-focus-on-class-objects/">Matrix-Rain, a walk-through with focus on class objects.</a></li>
<li><a href="/forums/topic/400620-video-sequences-from-your-pygame-display/">Video sequences from your Pygame display</a></li>
<li><a href="/forums/topic/399028-high-quality-sprites-with-color-gradient-and-anti-aliasing/">High quality sprites with color gradient and anti-aliasing</a></li>
<li><a href="/forums/topic/398318-scope-globals-nested-functions-and-nonlocals/">Scope, Globals, Nested functions and Nonlocals</a></li>
<li><a href="/forums/showforum133.htm"><strong>52 More Python Tutorials...</strong></a></li> </ul>
<h2>Reference Sheets</h2>
<a href="/forums/showtopic17947.htm"><img src="http://cdn.dreamincode.net/home/images/refsheets5.png" height="157" width="151"></a>
<h2><a href="http://www.dreamincode.net/code">Code Snippets</a></h2>
<ul>
<li><a href="/forums/forum/206-c-snippets/" title="">C Snippets</a></li>
<li><a href="/forums/forum/208-c-snippets/" title="">C++ Snippets</a></li>
<li><a href="/forums/forum/209-java-snippets/" title="">Java Snippets</a></li>
<li><a href="/forums/forum/210-visual-basic-snippets/" title="For VB6 and older versions. Please post VB.NET Snippets in the VB.NET Snippets section.">Visual Basic Snippets</a></li>
<li><a href="/forums/forum/211-c#-snippets/" title="">C# Snippets</a></li>
<li><a href="/forums/forum/212-vbnet-snippets/" title="">VB.NET Snippets</a></li>
<li><a href="/forums/forum/227-aspnet-snippets/" title="">ASP.NET Snippets</a></li>
<li><a href="/forums/forum/213-php-snippets/" title="">PHP Snippets</a></li>
<li><a href="/forums/forum/214-python-snippets/" title="">Python Snippets</a></li>
<li><a href="/forums/forum/215-ruby-snippets/" title="">Ruby Snippets</a></li>
<li><a href="/forums/forum/216-coldfusion-snippets/" title="">ColdFusion Snippets</a></li>
<li><a href="/forums/forum/217-sql-snippets/" title="">SQL Snippets</a></li>
<li><a href="/forums/forum/218-assembly-snippets/" title="">Assembly Snippets</a></li>
<li><a href="/forums/forum/219-functional-programming-snippets/" title="For functional languages such as Lisp, Clojure, Scheme, Erlang, Haskell, OCaml, F#, and others.">Functional Programming Snippets</a></li>
<li><a href="/forums/forum/220-perl-snippets/" title="">Perl Snippets</a></li>
<li><a href="/forums/forum/221-htmlcss-snippets/" title="">HTML/CSS Snippets</a></li>
<li><a href="/forums/forum/222-jvscript-snippets/" title="">J&#097;v&#097;script Snippets</a></li>
<li><a href="/forums/forum/223-flashactionscript-snippets/" title="">Flash/ActionScript Snippets</a></li>
<li><a href="/forums/forum/226-asp-snippets/" title="Classic ASP Code Snippets">ASP Snippets</a></li>
<li><a href="/forums/forum/229-linux-unix-and-bash-snippets/" title="">Linux, Unix, and Bash Snippets</a></li>
<li><a href="/forums/forum/224-other-languages-snippets/" title="For languages without individualized snippets sections">Other Languages Snippets</a></li>
<li><a href="/forums/forum/228-regex/" title="">Regex</a></li>
</ul>
<!-- google_ad_section_start(weight=ignore) -->
<h2><a rel="nofollow" href="/?p=chat">DIC Chatroom</a></h2>
<ul><li><a rel="nofollow" href="/?p=chat">Join our IRC Chat</a></li></ul>
<h2>Bye Bye Ads</h2>
<a rel="nofollow" href="/forums/index.php?act=paysubs&CODE=index"><img src="http://cdn.dreamincode.net/home/images/dicpp.gif" width="141" height="32"></a>
 
<!-- google_ad_section_end -->
</div>
</div>
<div style="padding-left: 50px; position: relative; clear: both;">
<iframe src="http://www.facebook.com/plugins/likebox.php?id=62219401412&amp;width=300&amp;connections=10&amp;stream=false&amp;header=true&amp;height=287" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:287px;" allowTransparency="true"></iframe>
</div>
</div>  
</div>  
 
</div> 
<div id="footer">
 
<!-- google_ad_section_start(weight=ignore) -->
<br/><br/>
<div align="center">
<strong><a href="/forums/index.php?showannouncement=22">FAQ</a> | <a href="/forums/blog/1081-dreamincode-team-blog/">Team Blog</a> | <a href="/forums/forum/106-site-questions-support/">Feedback/Support</a> | <a href="/downloads/MediaKit.pdf" rel="nofollow">Advertising</a><img src="http://cdn.dreamincode.net/home/images/pdf.gif" border="0" valign="middle"> | <a href="/?p=tos" rel="nofollow">Terms of Use</a> | <a href="/?p=privacy" rel="nofollow">Privacy Policy</a> | <a href="/?p=about" rel="nofollow">About Us</a>
</div>
<br/>
<br/>
<div align="center">Copyright 2001-2017 <a href="http://www.mediagroup1.com" rel="nofollow"><B>MediaGroup1 LLC</B></a>, All Rights Reserved<br>A <a href="http://www.mediagroup1.com" rel="nofollow"><B>MediaGroup1 LLC</B></a> Production - Version 6.0.2.1.36<br/>Server: secure3</div>
</div>
<script type="text/javascript" src="http://cdn.dreamincode.net/search/thickbox.js?v=2"></script>
<script type="text/javascript" src="http://www.google.com/jsapi?key=ABQIAAAAxBW3LKw8ZyeZtMN03GUE6xRxk_aegb5QRd7zBwjGSOCnKEUL-hQ7Ddp4qsRLgRs05uD5XPbK_J-x1w"></script>
<script type="text/javascript">
google.load('search', '1',{nocss: true});
jQuery(document).ready(function() {
	jQuery("#cse-search-box").submit(function () {
	var customSearchControl = new google.search.CustomSearchControl('000872085005376217422:zamd_7elal4');
	customSearchControl.setLinkTarget(google.search.Search.LINK_TARGET_SELF);
	tb_show("Dream.In.Code Search Results - Powered By <img src='http://www.google.com/cse/images/google_custom_search_smwide.gif'>", "#TB_inline?height=480&width=800");
	var drawOptions = new google.search.DrawOptions();
	customSearchControl.draw(document.getElementById("TB_ajaxContent"), drawOptions);
	customSearchControl.execute(document.getElementById("query").value);
	return false;
	});
});
</script>
 
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-69851-1', 'auto');
  ga('send', 'pageview');

</script>
 
<script type="text/javascript">
_qoptions={
qacct:"p-d4Szpdj6xMw-o"
};
</script>
<script type="text/javascript" src="http://edge.quantserve.com/quant.js"></script>
<noscript>
<img src="http://pixel.quantserve.com/pixel/p-d4Szpdj6xMw-o.gif" style="display: none;" border="0" height="1" width="1" alt="Quantcast"/>
</noscript>
 
<script src="http://www.dreamincode.net/mint/?js" type="text/javascript"></script>
 
<script type='text/javascript'>
    function _dmBootstrap(file) {
        var _dma = document.createElement('script'); 
        _dma.type = 'text/javascript';
        _dma.async = true; 
        _dma.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + file;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(_dma);
    }
    function _dmFollowup(file) { if (typeof DMAds === 'undefined')  _dmBootstrap('cdn2.DeveloperMedia.com/a.min.js');}
    (function () { _dmBootstrap('cdn1.DeveloperMedia.com/a.min.js'); setTimeout(_dmFollowup, 2000);})();
</script>
<script type="text/javascript" src="http://track.netshelter.net/js/sites/dreamincode.net.js"></script>
<!-- google_ad_section_end -->
<div align=center>
</div>
 
</div>
<script type="text/javascript" src="http://cdn.dreamincode.net/syntax/scripts/shCore.js?10"></script>
<script type="text/javascript" src="http://cdn.dreamincode.net/syntax/scripts/shBrushBash.js?10"></script>
<script type="text/javascript">
jQuery(function(){
  jQuery('pre').removeClass('brush: bash').addClass('brush: python');
});
</script>
<script type="text/javascript" src="http://cdn.dreamincode.net/syntax/scripts/shBrushPython.js?10"></script>
<link type="text/css" rel="stylesheet" href="http://cdn.dreamincode.net/syntax/styles/shCore.css?15"/>
<link type="text/css" rel="stylesheet" href="http://cdn.dreamincode.net/syntax/styles/shThemeDefault.css?15"/>
<script type="text/javascript">
                SyntaxHighlighter.config.clipboardSwf = 'http://cdn.dreamincode.net/syntax/scripts/clipboard.swf';
		SyntaxHighlighter.all();
	</script>
</body>
</html>