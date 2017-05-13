   �         dhttp://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python�       ���� �       ����          
     O K           �      Content-Type   text/html; charset=utf-8   Content-Encoding   gzip   X-Frame-Options   
SAMEORIGIN   X-Request-Guid   $f4fc4ddf-52eb-4492-b863-31c0d8dc28ec   Accept-Ranges   bytes   Date   Sat, 29 Apr 2017 06:23:55 GMT   Via   1.1 varnish   X-Served-By   cache-atl6239-ATL   X-Cache   MISS   X-Cache-Hits   0   X-Timer   S1493447035.065270,VS0,VE40   Vary   Accept-Encoding,Fastly-SSL   X-DNS-Prefetch-Control   off   Cache-Control   private <!DOCTYPE html>
<html itemscope itemtype="http://schema.org/QAPage">

<head>

<title>How to send an email with Gmail as provider using Python? - Stack Overflow</title>
    <link rel="shortcut icon" href="https://cdn.sstatic.net/Sites/stackoverflow/img/favicon.ico?v=4f32ecc8f43d">
    <link rel="apple-touch-icon image_src" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">
    <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="/opensearch.xml">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:domain" content="stackoverflow.com"/>
    <meta property="og:type" content="website" />

    <meta property="og:image" itemprop="image primaryImageOfPage" content="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded" />
    <meta name="twitter:title" property="og:title" itemprop="title name" content="How to send an email with Gmail as provider using Python?" />
    <meta name="twitter:description" property="og:description" itemprop="description" content="I am trying to send email (Gmail) using python, but I am getting following error.

Traceback (most recent call last):  
File &quot;emailSend.py&quot;, line 14, in &amp;lt;module&amp;gt;  
server.login(username,passw..." />
    <meta property="og:url" content="http://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python"/>
    <link rel="canonical" href="http://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python" />

    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.sstatic.net/Js/stub.en.js?v=6739a504b710"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/all.css?v=f4d760dc7b76">

            <link rel="alternate" type="application/atom+xml" title="Feed for question &#39;How to send an email with Gmail as provider using Python?&#39;" href="/feeds/question/10147455">
            <meta name="twitter:app:country" content="US" />
            <meta name="twitter:app:name:iphone" content="Stack Exchange iOS" />
            <meta name="twitter:app:id:iphone" content="871299723" />
            <meta name="twitter:app:url:iphone" content="se-zaphod://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python" />
            <meta name="twitter:app:name:ipad" content="Stack Exchange iOS" />
            <meta name="twitter:app:id:ipad" content="871299723" />
            <meta name="twitter:app:url:ipad" content="se-zaphod://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python" />
            <meta name="twitter:app:name:googleplay" content="Stack Exchange Android">
            <meta name="twitter:app:url:googleplay" content="http://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python">
            <meta name="twitter:app:id:googleplay" content="com.stackexchange.marvin">
        <script>
        
            StackExchange.ready(function () {
                                    
                    StackExchange.using("snippets", function () {
                        StackExchange.snippets.initSnippetRenderer();
                    });
                    

                StackExchange.using("postValidation", function () {
                    StackExchange.postValidation.initOnBlurAndSubmit($('#post-form'), 2, 'answer');
                });

                
                StackExchange.question.init({showAnswerHelp:true,totalCommentCount:1,shownCommentCount:1,highlightColor:'#F4A83D',backgroundColor:'#FFF',questionId:10147455});

                styleCode();

                    StackExchange.realtime.subscribeToQuestion('1', '10147455');
                                                                    StackExchange.using("gps", function () { StackExchange.gps.trackOutboundClicks('#content', '.post-text', true); });

            });
        </script>


    <script>
        StackExchange.init({"locale":"en","stackAuthUrl":"https://stackauth.com","networkMetaHostname":"meta.stackexchange.com","serverTime":1493447035,"routeName":"Questions/Show","site":{"name":"Stack Overflow","description":"Q&A for professional and enthusiast programmers","isNoticesTabEnabled":true,"recaptchaPublicKey":"6LdchgIAAAAAAJwGpIzRQSOFaO0pU6s44Xt8aTwc","recaptchaAudioLang":"en","enableNewTagCreationWarning":true,"insertSpaceAfterNameTabCompletion":false,"id":1,"enableInsertDocLinkDialog":true,"childUrl":"https://meta.stackoverflow.com","enableSocialMediaInSharePopup":true,"protocol":"http"},"user":{"fkey":"dab4eff1e964628341bef8bfac35f775","rep":0,"isAnonymous":true,"isAnonymousNetworkWide":true,"canSeeNewHeaderDesign":true,"ab":{"devstory_timeline_exp":{"v":"c","g":1}}},"events":{"postType":{"question":1},"postEditionSection":{"title":1,"body":2,"tags":3}},"story":{"minCompleteBodyLength":75,"likedTagsMaxLength":300,"dislikedTagsMaxLength":300}}, {"site":{"allowImageUploads":true,"enableUserHovercards":true,"styleCode":true,"enableNewLinkInsertDialog":true,"enableImgurHttps":true,"forceHttpsImages":true},"comments":{},"userProfile":{"openGraphAPIKey":"58740831ad23540e00c58987"},"tags":{},"accounts":{"currentPasswordRequiredForChangingStackIdPassword":true},"flags":{"allowRetractingFlags":true},"snippets":{"snippetsEnabled":true,"renderDomain":"stacksnippets.net"},"markdown":{"asteriskIntraWordEmphasis":true},"monitoring":{"clientTimingsAbsoluteTimeout":30000,"clientTimingsDebounceTimeout":1000}});
        StackExchange.using.setCacheBreakers({"js/prettify-full.en.js":"c8194c882e97","js/moderator.en.js":"1680bc66c75f","js/full-anon.en.js":"491174f5762e","js/full.en.js":"c64361a801b6","js/wmd.en.js":"237cdc972847","js/third-party/jquery.autocomplete.min.js":"d3b8fa7fdf74","js/third-party/jquery.autocomplete.min.en.js":"","js/mobile.en.js":"978c4e09340e","js/help.en.js":"a2f92aacc060","js/tageditor.en.js":"09862381cd28","js/tageditornew.en.js":"50156590bdfb","js/inline-tag-editing.en.js":"2ddfa79492e7","js/revisions.en.js":"cf90cfea0ccf","js/review.en.js":"12e34edc6b2a","js/tagsuggestions.en.js":"b278f9a0b23b","js/post-validation.en.js":"bcd9b4d1fb81","js/explore-qlist.en.js":"e71f14781288","js/events.en.js":"3290bc2c45a8","js/keyboard-shortcuts.en.js":"782ae2fb044e","js/external-editor.en.js":"e574ed908cf3","js/adops.en.js":"9a6a7812a212","js/external-editor.en.js":"e574ed908cf3","js/snippet-javascript.en.js":"8949a8564319","js/snippet-javascript-codemirror.en.js":"c094075b2957"});
        StackExchange.using("gps", function() {
             StackExchange.gps.init(true);
        });
    </script>
    
        <script>
            StackExchange.ready(function () {
                $('#nav-tour').click(function () {
                    StackExchange.using("gps", function() {
                        StackExchange.gps.track("aboutpage.click", { aboutclick_location: "headermain" }, true);
                    });
                });
            });
        </script>
    <noscript id="noscript-css"><style type="text/css">body,.so-header{margin-top:1.9em}</style></noscript>
</head>
<body class="question-page new-topbar">
            <script>(function () { var old = $.fn.contents; $.fn.contents = function () { try { return old.apply(this, arguments); } catch (e) { return $([]); } } })()</script>
        <iframe id="adzerk-user-match" width="0" height="0" frameborder="0" scrolling="no" onload="window.AUMIframeDone=true"
                src="https://ssum-sec.casalemedia.com/usermatch?s=183712&amp;cb=https%3A%2F%2Fengine.adzerk.net%2Fudb%2F22%2Fsync%2Fi.gif%3FpartnerId%3D1%26userId%3D"
                style="display: none;" marginheight="0" marginwidth="0"></iframe>

    <div id="notify-container"></div>
    <div id="custom-header"></div>


<header class="so-header js-so-header _fixed">
    <div class="-container">
        <div class="-main">            
            <a href="http://stackoverflow.com" class="-logo js-gps-track "
               data-gps-track="top_nav.click({is_current:false, location:2, destination:8})">

                <span class="-img">Stack Overflow</span>
            </a>

            <nav class="navigation" role="navigation" aria-label="site navigation">
                <ol class="-list">
                        <li class="-item _current">
        <a id="nav-questions" href="/questions" class="-link js-gps-track" 
            data-gps-track="top_nav.click({is_current:true, location:2, destination:1})">Questions</a>
    </li>

    <li class="-item">
        <a id="nav-jobs" href="/jobs?med=site-ui&amp;ref=jobs-tab" class="-link js-gps-track" 
            data-gps-track="top_nav.click({is_current:false, location:2, destination:6})">Jobs</a>
    </li>
                        <li class="-item">
        <a id="nav-docs" href="/documentation" class="-link js-gps-track" 
            data-gps-track="top_nav.click({is_current:false, location:2, destination:7})">Documentation <small class='beta-badge'>beta</small></a>
    </li>
                        <li class="-item">
        <a id="nav-tags" href="/tags" class="-link js-gps-track" 
            data-gps-track="top_nav.click({is_current:false, location:2, destination:2})">Tags</a>
    </li>

                        <li class="-item">
        <a id="nav-users" href="/users" class="-link js-gps-track" 
            data-gps-track="top_nav.click({is_current:false, location:2, destination:3})">Users</a>
    </li>

                </ol>
            </nav>

            <form id="search" action="/search" method="get" class="searchbar" autocomplete="off" role="search">
                <svg viewBox="0 0 18 18" width="18" height="18" role="icon"><path fill-rule="evenodd" d="M12.864 11.32h-.813l-.288-.277A6.66 6.66 0 0 0 13.38 6.69a6.69 6.69 0 1 0-6.69 6.69 6.66 6.66 0 0 0 4.354-1.617l.278.288v.813L16.467 18 18 16.467l-5.136-5.146zm-6.174 0a4.625 4.625 0 0 1-4.632-4.63A4.625 4.625 0 0 1 6.69 2.058a4.625 4.625 0 0 1 4.63 4.632 4.625 4.625 0 0 1-4.63 4.63z"/></svg>
                <input name="q" type="text" placeholder="Search..." value="" tabindex="1" autocomplete="off" maxlength="240" class="f-input js-search-field" />
                <button type="submit" class="btn js-search-submit">
                    <svg viewBox="0 0 18 18" width="18" height="18" role="icon"><path fill-rule="evenodd" d="M12.864 11.32h-.813l-.288-.277A6.66 6.66 0 0 0 13.38 6.69a6.69 6.69 0 1 0-6.69 6.69 6.66 6.66 0 0 0 4.354-1.617l.278.288v.813L16.467 18 18 16.467l-5.136-5.146zm-6.174 0a4.625 4.625 0 0 1-4.632-4.63A4.625 4.625 0 0 1 6.69 2.058a4.625 4.625 0 0 1 4.63 4.632 4.625 4.625 0 0 1-4.63 4.63z"/></svg>
                </button>
            </form>

        </div>
        


<div class="-actions">
    <nav class="secondary-nav">
        <div class="-dialog-container js-topbar-dialog-corral">


    <div class="topbar-dialog siteSwitcher-dialog dno">
        <div class="header">
            <h3><a href="http://stackoverflow.com">current community</a>
            </h3>
        </div>
        <div class="modal-content current-site-container">
            <ul class="current-site">
                    <li>
                            <div class="related-links">
            <a href="http://stackoverflow.com/help" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:14 })"
>help</a>
                    <a href="http://chat.stackoverflow.com" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:6 })"
>chat</a>
            </div>

    <a href="http://stackoverflow.com"
       class="current-site-link site-link js-gps-track"
       data-id="1"
       data-gps-track="site_switcher.click({ item_type:3 })">
        <div class="site-icon favicon favicon-stackoverflow" title="Stack Overflow"></div>
        Stack Overflow
    </a>

                    </li>
                    <li class="related-site">
                            <div class="L-shaped-icon-container">
        <span class="L-shaped-icon"></span>
    </div>

                        
    <a href="https://meta.stackoverflow.com"
       class="site-link js-gps-track"
       data-id="552"
       data-gps-track="site.switch({ target_site:552, item_type:3 }),site_switcher.click({ item_type:4 })">
        <div class="site-icon favicon favicon-stackoverflowmeta" title="Meta Stack Overflow"></div>
        Meta Stack Overflow
    </a>

                    </li>
            </ul>
        </div>

        <div class="header" id="your-communities-header">
            <h3>
your communities            </h3>

        </div>
        <div class="modal-content" id="your-communities-section">

                <div class="call-to-login">
<a href="https://stackoverflow.com/users/signup?ssrc=site_switcher&amp;returnurl=%2fusers%2fstory%2fcurrent&amp;amp;utm_source=stackoverflow.com&amp;amp;utm_medium=dev-story&amp;amp;utm_campaign=signup-redirect" class="login-link js-gps-track"     data-gps-track="site_switcher.click({ item_type:10 })"
>Sign up</a> or <a href="https://stackoverflow.com/users/login?ssrc=site_switcher&amp;returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f10147455%2fhow-to-send-an-email-with-gmail-as-provider-using-python" class="login-link js-gps-track"     data-gps-track="site_switcher.click({ item_type:11 })"
>log in</a> to customize your list.
                </div>
        </div>

        <div class="header">
            <h3><a href="https://stackexchange.com/sites">more stack exchange communities</a>
            </h3>
            <a href="https://stackoverflow.blog" class="fr">company blog</a>
        </div>
        <div class="modal-content">
                <div class="child-content"></div>
        </div>        
    </div>
                <div class="topbar-dialog help-dialog js-help-dialog dno">
        <div class="modal-content">
            <ul>
                                    <li>
                        <a href="/tour" class="js-gps-track" data-gps-track="help_popup.click({ item_type:1 })">
                            Tour
                            <span class="item-summary">
                                Start here for a quick overview of the site
                            </span>
                        </a>
                    </li>
                <li>
                    <a href="/help" class="js-gps-track" data-gps-track="help_popup.click({ item_type:4 })">
                        Help Center
                        <span class="item-summary">
                            Detailed answers to any questions you might have
                        </span>
                    </a>
                </li>
                        <li>
                            <a href="https://meta.stackoverflow.com" class="js-gps-track" data-gps-track="help_popup.click({ item_type:2 })">
                                Meta
                                <span class="item-summary">
                                    Discuss the workings and policies of this site
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="http://stackoverflow.com/company/about" class="js-gps-track" data-gps-track="help_popup.click({ item_type:6 })">
                                About Us
                                <span class="item-summary">
                                    Learn more about Stack Overflow the company
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.stackoverflowbusiness.com/?ref=topbar_help" class="js-gps-track" data-gps-track="help_popup.click({ item_type:7 })">
                                Business
                                <span class="item-summary">
                                    Learn more about hiring developers or posting ads with us
                                </span>
                            </a>
                        </li>
            </ul>
        </div>
    </div>

        </div>
        <ol class="-list">
            
    <li class="-item"><a href="#" class="-link js-help-button" title="Help Center and other resources">
        <svg viewBox="0 0 18 18" width="18" height="18" role="icon"><path fill-rule="evenodd" d="M9 0a9 9 0 1 0 .001 18.001A9 9 0 0 0 9 0zm.812 13.126c-.02.716-.55 1.157-1.238 1.137-.659-.02-1.177-.49-1.157-1.209.02-.715.566-1.17 1.225-1.15.691.021 1.194.507 1.17 1.222zm1.956-5.114c-.168.237-.546.542-1.02.912l-.527.361c-.257.197-.417.43-.502.695-.044.141-.076.507-.084.752-.004.048-.032.156-.181.156H7.883c-.165 0-.185-.096-.18-.144.023-.667.12-1.218.397-1.66.374-.594 1.426-1.221 1.426-1.221.161-.12.286-.25.382-.39.177-.24.321-.51.321-.8 0-.333-.08-.65-.293-.915-.249-.31-.518-.458-1.036-.458-.51 0-.808.257-1.021.594-.213.338-.177.735-.177 1.097H5.746c0-1.366.357-2.238 1.112-2.752.51-.35 1.162-.502 1.921-.502.996 0 1.788.184 2.487.715.647.49.988 1.181.988 2.113 0 .575-.2 1.057-.486 1.447z" /></svg>
    </a></li>
                <li class="-item">
        <a href="https://stackexchange.com" class="-link js-site-switcher-button js-gps-track" data-gps-track="site_switcher.show" title="A list of all 167 Stack Exchange sites">
            <svg viewBox="0 0 18 19" width="18" height="19" role="icon"><path fill-rule="evenodd" d="M0 14a2 2 0 0 0 2 2h10v3l3-3h1a2 2 0 0 0 2-2v-2H0v2zM16 0H2a2 2 0 0 0-2 2v2h18V2a2 2 0 0 0-2-2zM0 6h18v4H0V6z" /></svg>
        </a>
    </li>


        </ol>
    </nav>
        <div class="-ctas">
                    <a href="https://stackoverflow.com/users/login?ssrc=head&returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f10147455%2fhow-to-send-an-email-with-gmail-as-provider-using-python" class="login-link btn-clear" rel="nofollow">Log In</a>
                        <a href="https://stackoverflow.com/users/signup?ssrc=head&returnurl=%2fusers%2fstory%2fcurrent&amp;utm_source=stackoverflow.com&amp;utm_medium=dev-story&amp;utm_campaign=signup-redirect" class="login-link btn" rel="nofollow">Sign Up</a>

        </div>
</div>
    </div>
</header>

    <script>
        StackExchange.ready(function () { StackExchange.topbar.init(); });
            StackExchange.scrollPadding.setPaddingTop(60, 10);     </script>

    <div class="container">
        


        <div id="content" class="snippet-hidden">



            

<div itemscope itemtype="http://schema.org/Question">
    <link itemprop="image" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">


<div id="herobox" class="alternate">
    <div class="test"></div>
        <div id="close">
            <a title="click to minimize"><span>x</span> Dismiss</a>
        </div>
    <div class="content">
        <b>Join the Stack Overflow Community</b>
        <div class="separator"></div>
        <div class="blurb">
            Stack Overflow is a community of 7.1 million programmers, just like you, helping each other.
                <br/>
Join them; it only takes a minute:                <br/>
        </div>
        <a href="/users/signup?ssrc=hero&amp;returnurl=%2fusers%2fstory%2fcurrent&amp;amp;utm_source=stackoverflow.com&amp;amp;utm_medium=dev-story&amp;amp;utm_campaign=signup-redirect" id="tell-me-more" class="button">Sign up</a>
    </div>
</div>
<script>
    StackExchange.ready(function () {

        var location = 0;
        if ($("body").hasClass("questions-page")) {
            location = 1;;
        } else if ($("body").hasClass("question-page")) {
            location = 1;;
        } else if ($("body").hasClass("faq-page")) {
            location = 5;;
        } else if ($("body").hasClass("home-page")) {
            location = 3;;
        }
        
        $('#tell-me-more').click(function () {
            StackExchange.using("gps", function () {
                StackExchange.gps.track("hero.action", { hero_action_type: 'cta', location: location }, true);
            });
        });
        
        $('#herobox #close').click(function () {
            StackExchange.using("gps", function () {
                StackExchange.gps.track("hero.action", { hero_action_type: "minimize", location: location }, true);
            });
            
            $.cookie("hero", "mini", { path: "/", expires: 365 });
            $.ajax({
                url: "/hero-mini",
                success: function (data) {
                    $("#herobox").fadeOut("fast", function () {
                        $("#herobox").replaceWith(data);
                        $("#herobox-mini").fadeIn("fast");
                    });
                }
            });
            return false;
        });
    });

</script>			<div id="question-header">
                <h1 itemprop="name"><a href="/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python" class="question-hyperlink">How to send an email with Gmail as provider using Python?</a></h1>

            
<div class="aside-cta" role="navigation" aria-label="ask new question">
    <a href="/questions/ask" class="btn-outlined">Ask Question</a>
</div>
		</div>
			<div id="mainbar" role="main" aria-label="question and answers">

			

<div class="question" data-questionid="10147455"  id="question">

    <script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk1948317684",4).setZone(43); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk1948317684"></div>    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="10147455">
        <a class="vote-up-off" title="This question shows research effort; it is useful and clear">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">164</span>
        <a class="vote-down-off" title="This question does not show any research effort; it is unclear or not useful">down vote</a>

        <a class="star-off" href="#">favorite</a>
        <div class="favoritecount"><b>88</b></div>


</div>

            </td>
            
<td class="postcell">
<div>
    <div class="post-text" itemprop="text">

<p>I am trying to send email (Gmail) using python, but I am getting following error.</p>

<pre><code>Traceback (most recent call last):  
File "emailSend.py", line 14, in &lt;module&gt;  
server.login(username,password)  
File "/usr/lib/python2.5/smtplib.py", line 554, in login  
raise SMTPException("SMTP AUTH extension not supported by server.")  
smtplib.SMTPException: SMTP AUTH extension not supported by server.
</code></pre>

<p>The Python script is the following.</p>

<pre><code>import smtplib
fromaddr = 'user_me@gmail.com'
toaddrs  = 'user_you@gmail.com'
msg = 'Why,Oh why!'
username = 'user_me@gmail.com'
password = 'pwd'
server = smtplib.SMTP('smtp.gmail.com:587')
server.starttls()
server.login(username,password)
server.sendmail(fromaddr, toaddrs, msg)
server.quit()
</code></pre>
    </div>
    <div class="post-taglist">
        <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/email" class="post-tag" title="show questions tagged &#39;email&#39;" rel="tag">email</a> <a href="/questions/tagged/smtp" class="post-tag" title="show questions tagged &#39;smtp&#39;" rel="tag">smtp</a> <a href="/questions/tagged/gmail" class="post-tag" title="show questions tagged &#39;gmail&#39;" rel="tag">gmail</a> 
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/q/10147455" title="short permalink to this question" class="short-link" id="link-post-10147455">share</a><span class="lsep">|</span><a href="/posts/10147455/edit" class="suggest-edit-post" title="">improve this question</a></div>        
    </td>
    <td align="right" class="post-signature">
<div class="user-info user-hover">
    <div class="user-action-time">
        <a href="/posts/10147455/revisions" title="show all edits to this post">edited <span title="2015-12-21 14:07:54Z" class="relativetime">Dec 21 '15 at 14:07</span></a>
    </div>
    <div class="user-gravatar32">
        <a href="/users/895245/ciro-santilli-709%e5%a4%a7%e6%8a%93%e6%8d%95-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/UAqTj.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/895245/ciro-santilli-709%e5%a4%a7%e6%8a%93%e6%8d%95-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f">Ciro Santilli 709大抓捕 六四事件 法轮功</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score 72,484" dir="ltr">72.5k</span><span title="13 gold badges"><span class="badge1"></span><span class="badgecount">13</span></span><span title="293 silver badges"><span class="badge2"></span><span class="badgecount">293</span></span><span title="217 bronze badges"><span class="badge3"></span><span class="badgecount">217</span></span>
        </div>
    </div>
</div>    </td>
    <td class="post-signature owner">
        <div class="user-info ">
    <div class="user-action-time">
        asked <span title="2012-04-13 19:54:18Z" class="relativetime">Apr 13 '12 at 19:54</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/869240/ravi"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/fb68d12aaa638883a6bed2158e75c5f0?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/869240/ravi">Ravi</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">995</span><span title="2 gold badges"><span class="badge1"></span><span class="badgecount">2</span></span><span title="8 silver badges"><span class="badge2"></span><span class="badgecount">8</span></span><span title="17 bronze badges"><span class="badge3"></span><span class="badgecount">17</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</div>
</td>
        </tr>
                    
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-10147455" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-70008434" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">1</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">This question should be unlocked now that google is moving toward an internal API for sending messages via gmail. This move makes all but one of these answers outdated, and the one relevant answer is very light on actually solving the problem.</span>
                    &ndash;&nbsp;<a href="/users/4901647/andrew"
                       title="205 reputation"
                       class="comment-user">Andrew</a>
                <span class="comment-date" dir="ltr"><span title="2016-12-30 21:34:48Z" class="relativetime-clean">Dec 30 '16 at 21:34</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-10147455" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>        </table>
</div>

			<div id="answers">

				<a name="tab-top"></a>
				<div id="answers-header">
					<div class="subheader answers-subheader">
						<h2>
								10 Answers
                                <span style="display:none;" itemprop="answerCount">10</span>
						</h2>
						<div>
							<div id="tabs">
        <a href="/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python?answertab=active#tab-top" data-nav-xhref="" title="Answers with the latest activity first" data-value="active" data-shortcut="A">
            active</a>
        <a href="/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python?answertab=oldest#tab-top" data-nav-xhref="" title="Answers in the order they were provided" data-value="oldest" data-shortcut="O">
            oldest</a>
        <a class="youarehere" href="/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python?answertab=votes#tab-top" data-nav-xhref="" title="Answers with the highest score first" data-value="votes" data-shortcut="V">
            votes</a>
</div>
						</div>
					</div>    
				</div>    




  
<a name="10147497"></a>
<div id="answer-10147497" class="answer accepted-answer" data-answerid="10147497"  itemscope itemtype="http://schema.org/Answer" itemprop="acceptedAnswer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="10147497">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">137</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>



        <span class="vote-accepted-on load-accepted-answer-date" title="loading when this answer was accepted...">accepted</span>

</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>You need to say <code>EHLO</code> before just running straight into <code>STARTTLS</code>:</p>

<pre><code>server = smtplib.SMTP('smtp.gmail.com:587')
server.ehlo()
server.starttls()
</code></pre>

<hr>

<p>Also you should really create <code>From:</code>, <code>To:</code> and <code>Subject:</code> message headers, separated from the message body by a blank line and use <code>CRLF</code> as EOL markers.</p>

<p>E.g.</p>

<pre><code>msg = "\r\n".join([
  "From: user_me@gmail.com",
  "To: user_you@gmail.com",
  "Subject: Just a message",
  "",
  "Why, oh why"
  ])
</code></pre>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/10147497" title="short permalink to this answer" class="short-link" id="link-post-10147497">share</a><span class="lsep">|</span><a href="/posts/10147497/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info ">
    <div class="user-action-time">
        <a href="/posts/10147497/revisions" title="show all edits to this post">edited <span title="2012-04-13 20:05:35Z" class="relativetime">Apr 13 '12 at 20:05</span></a>
    </div>
    <div class="user-gravatar32">
        
    </div>
    <div class="user-details">
        
        <div class="-flair">
            
        </div>
    </div>
</div>    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2012-04-13 19:57:54Z" class="relativetime">Apr 13 '12 at 19:57</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/267781/matth"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/68a8fe57dcd1a8717c20703c7f1bf91d?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/267781/matth">MattH</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score 22,247" dir="ltr">22.2k</span><span title="5 gold badges"><span class="badge1"></span><span class="badgecount">5</span></span><span title="58 silver badges"><span class="badge2"></span><span class="badgecount">58</span></span><span title="65 bronze badges"><span class="badge3"></span><span class="badgecount">65</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-10147497" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="9"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-26901097" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">1</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">invoking server.sendmail(fromaddr, toaddrs, msg) the second parameter, toaddrs must be a list,  toaddrs = [&#39;user_me@gmail.com&#39;]</span>
                    &ndash;&nbsp;<a href="/users/216685/massimo-fazzolari"
                       title="4,566 reputation"
                       class="comment-user">Massimo Fazzolari</a>
                <span class="comment-date" dir="ltr"><span title="2013-08-20 06:59:38Z" class="relativetime-clean">Aug 20 '13 at 6:59</span></span>
                        <span class="edited-yes" title="this comment was edited 2 times"></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-39865851" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="warm">7</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">As of August 2014 this now raises smtplib.SMTPAuthenticationError: (534, &#39;5.7.9 Application-specific password required.</span>
                    &ndash;&nbsp;<a href="/users/584947/anon58192932"
                       title="1,322 reputation"
                       class="comment-user">anon58192932</a>
                <span class="comment-date" dir="ltr"><span title="2014-08-27 18:06:39Z" class="relativetime-clean">Aug 27 '14 at 18:06</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-39866028" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">3</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">For me though, I had to enable an &#39;app&#39; password to log in using an @google account to send emails via python: <a href="https://support.google.com/accounts/answer/185833?hl=en&amp;ctx=ch_DisplayUnlockCaptcha" rel="nofollow noreferrer">support.google.com/accounts/answer/&hellip;</a></span>
                    &ndash;&nbsp;<a href="/users/584947/anon58192932"
                       title="1,322 reputation"
                       class="comment-user">anon58192932</a>
                <span class="comment-date" dir="ltr"><span title="2014-08-27 18:13:00Z" class="relativetime-clean">Aug 27 '14 at 18:13</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-39866086" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Finally, what&#39;s the best way to use this syntax to send to multiple addresses at once?</span>
                    &ndash;&nbsp;<a href="/users/584947/anon58192932"
                       title="1,322 reputation"
                       class="comment-user">anon58192932</a>
                <span class="comment-date" dir="ltr"><span title="2014-08-27 18:15:16Z" class="relativetime-clean">Aug 27 '14 at 18:15</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-39867040" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">1</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Here&#39;s a link on how to mail multiple people: <a href="http://stackoverflow.com/questions/8856117/how-to-send-email-to-multiple-recipints-using-python-smtplib" title="how to send email to multiple recipints using python smtplib">stackoverflow.com/questions/8856117/&hellip;</a></span>
                    &ndash;&nbsp;<a href="/users/584947/anon58192932"
                       title="1,322 reputation"
                       class="comment-user">anon58192932</a>
                <span class="comment-date" dir="ltr"><span title="2014-08-27 18:43:17Z" class="relativetime-clean">Aug 27 '14 at 18:43</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-10147497" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link  dno"
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   ></a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link " title="expand to show all comments on this post" href=# onclick="">show <b>9</b> more comments</a>
        </div>         
    </td>
</tr>    </table>
</div>
<script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk1641654227",4).setZone(44); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk1641654227"></div>
  
<a name="12424439"></a>
<div id="answer-12424439" class="answer" data-answerid="12424439"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="12424439">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">196</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<pre><code>def send_email(user, pwd, recipient, subject, body):
    import smtplib

    gmail_user = user
    gmail_pwd = pwd
    FROM = user
    TO = recipient if type(recipient) is list else [recipient]
    SUBJECT = subject
    TEXT = body

    # Prepare actual message
    message = """From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
    try:
        server = smtplib.SMTP("smtp.gmail.com", 587)
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        server.sendmail(FROM, TO, message)
        server.close()
        print 'successfully sent the mail'
    except:
        print "failed to send mail"
</code></pre>

<p>if you want to use Port 465 you have to create an <code>SMTP_SSL</code> object:</p>

<pre><code># SMTP_SSL Example
server_ssl = smtplib.SMTP_SSL("smtp.gmail.com", 465)
server_ssl.ehlo() # optional, called by login()
server_ssl.login(gmail_user, gmail_pwd)  
# ssl server doesn't support or need tls, so don't call server_ssl.starttls() 
server_ssl.sendmail(FROM, TO, message)
#server_ssl.quit()
server_ssl.close()
print 'successfully sent the mail'
</code></pre>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/12424439" title="short permalink to this answer" class="short-link" id="link-post-12424439">share</a><span class="lsep">|</span><a href="/posts/12424439/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info user-hover">
    <div class="user-action-time">
        <a href="/posts/12424439/revisions" title="show all edits to this post">edited <span title="2016-07-03 08:06:46Z" class="relativetime">Jul 3 '16 at 8:06</span></a>
    </div>
    <div class="user-gravatar32">
        <a href="/users/196688/omiod"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/orHU0.png?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/196688/omiod">Omiod</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">5,189</span><span title="6 gold badges"><span class="badge1"></span><span class="badgecount">6</span></span><span title="36 silver badges"><span class="badge2"></span><span class="badgecount">36</span></span><span title="52 bronze badges"><span class="badge3"></span><span class="badgecount">52</span></span>
        </div>
    </div>
</div>    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info user-hover">
    <div class="user-action-time">
        answered <span title="2012-09-14 12:19:26Z" class="relativetime">Sep 14 '12 at 12:19</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/547050/david-okwii"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/2507aab6e1f2d957645051d515f2b9e3?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/547050/david-okwii">David Okwii</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">2,736</span><span title="1 gold badge"><span class="badge1"></span><span class="badgecount">1</span></span><span title="14 silver badges"><span class="badge2"></span><span class="badgecount">14</span></span><span title="19 bronze badges"><span class="badge3"></span><span class="badgecount">19</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-12424439" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="6"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-18959206" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="hot">15</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">+1 thank you for a full working code!</span>
                    &ndash;&nbsp;<a href="/users/15485/alessandro-jacopson"
                       title="8,378 reputation"
                       class="comment-user">Alessandro Jacopson</a>
                <span class="comment-date" dir="ltr"><span title="2012-12-09 11:01:42Z" class="relativetime-clean">Dec 9 '12 at 11:01</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-35254686" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">2</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Very nice sample thanks. One think I noticed is if I want to use an SSL connection I had to remove server.starttls()</span>
                    &ndash;&nbsp;<a href="/users/223139/dowlers"
                       title="635 reputation"
                       class="comment-user">Dowlers</a>
                <span class="comment-date" dir="ltr"><span title="2014-04-14 20:13:01Z" class="relativetime-clean">Apr 14 '14 at 20:13</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-45328634" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="warm">9</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Doesn&#39;t work anymore unfortunately: smtplib.SMTPAuthenticationError: (534, &#39;5.7.14 &lt;<a href="https://accounts.google.com/ContinueSignIn?sarp=1&amp;scc=1&amp;plt=AKgnsbuRb" rel="nofollow noreferrer">accounts.google.com/&hellip;</a> ... Please log in via your web browser and\n5.7.14 then try again.\n5.7.14 Learn more at\n5.7.14 <a href="https://support.google.com/mail/bin/answer.py?answer=78754" rel="nofollow noreferrer">support.google.com/mail/bin/answer.py?answer=78754</a> ... Then i got a mail from google, that there has been a suspicious connection attempt.</span>
                    &ndash;&nbsp;<a href="/users/2557981/royskatt"
                       title="474 reputation"
                       class="comment-user">royskatt</a>
                <span class="comment-date" dir="ltr"><span title="2015-02-13 17:00:39Z" class="relativetime-clean">Feb 13 '15 at 17:00</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-47421825" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="warm">7</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">@royskatt - all you need to do is create an app password and use it in lieu of your account password. Create an app password here: <a href="https://security.google.com/settings/security/apppasswords" rel="nofollow noreferrer">security.google.com/settings/security/apppasswords</a></span>
                    &ndash;&nbsp;<a href="/users/556344/jared"
                       title="426 reputation"
                       class="comment-user">Jared</a>
                <span class="comment-date" dir="ltr"><span title="2015-04-15 01:14:53Z" class="relativetime-clean">Apr 15 '15 at 1:14</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-51691133" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="warm">12</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">@royskatt : I just got a fix for the issue you where facing. Google has a setting to allow access for less secure apps you just have to turn it &#39;On&#39;. you can get there from : Google--&gt;my account --&gt;Sign-in &amp; security--&gt; Connected apps &amp; sites--&gt; scroll down and you will find &#39;Allow less secure apps &#39;</span>
                    &ndash;&nbsp;<a href="/users/15460/shaleen-mohan"
                       title="51 reputation"
                       class="comment-user">shaleen mohan</a>
                <span class="comment-date" dir="ltr"><span title="2015-08-07 21:16:04Z" class="relativetime-clean">Aug 7 '15 at 21:16</span></span>
                        <span class="edited-yes" title="this comment was edited 1 time"></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-12424439" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link  dno"
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   ></a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link " title="expand to show all comments on this post" href=# onclick="">show <b>6</b> more comments</a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="27515833"></a>
<div id="answer-27515833" class="answer" data-answerid="27515833"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="27515833">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">74</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>I ran into a similar problem and stumbled on this question. I got an SMTP Authentication Error but my user name / pass was correct. Here is what fixed it. I read this: </p>

<p><a href="https://support.google.com/accounts/answer/6010255" rel="noreferrer">https://support.google.com/accounts/answer/6010255</a></p>

<p>In a nutshell, google is not allowing you to log in via smtplib because it has flagged this sort of login as "less secure", so what you have to do is go to this link while you're logged in to your google account, and allow the access:</p>

<p><a href="https://www.google.com/settings/security/lesssecureapps" rel="noreferrer">https://www.google.com/settings/security/lesssecureapps</a></p>

<p>Once that is set (see my screenshot below), it should work.</p>

<p><img src="https://i.stack.imgur.com/NwOeS.png" alt="enter image description here"></p>

<p>Login now works:</p>

<pre><code>smtpserver = smtplib.SMTP("smtp.gmail.com", 587)
smtpserver.ehlo()
smtpserver.starttls()
smtpserver.ehlo()
smtpserver.login('me@gmail.com', 'me_pass')
</code></pre>

<p>Response after change:</p>

<pre><code>(235, '2.7.0 Accepted')
</code></pre>

<p>Response prior:</p>

<pre><code>smtplib.SMTPAuthenticationError: (535, '5.7.8 Username and Password not accepted. Learn more at\n5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 g66sm2224117qgf.37 - gsmtp')
</code></pre>

<p><strong>Still not working?</strong> If you still get the SMTPAuthenticationError but now the code is 534, its because the location is unknown. Follow this link:</p>

<p><a href="https://accounts.google.com/DisplayUnlockCaptcha" rel="noreferrer">https://accounts.google.com/DisplayUnlockCaptcha</a></p>

<p>Click continue and this should give you 10 minutes for registering your new app. So proceed to doing another login attempt now and it should work.</p>

<p><strong>UPDATE</strong>: This doesn't seem to work right away you may be stuck for a while getting this error in smptlib:</p>

<pre><code>235 == 'Authentication successful'
503 == 'Error: already authenticated'
</code></pre>

<p>The message says to use the browser to sign in:</p>

<pre><code>SMTPAuthenticationError: (534, '5.7.9 Please log in with your web browser and then try again. Learn more at\n5.7.9 https://support.google.com/mail/bin/answer.py?answer=78754 qo11sm4014232igb.17 - gsmtp')
</code></pre>

<p>After enabling 'lesssecureapps', go for a coffee, come back, and try the 'DisplayUnlockCaptcha' link again. From user experience, it may take up to an hour for the change to kick in. Then try the sign-in process again. </p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/27515833" title="short permalink to this answer" class="short-link" id="link-post-27515833">share</a><span class="lsep">|</span><a href="/posts/27515833/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info ">
    <div class="user-action-time">
        <a href="/posts/27515833/revisions" title="show all edits to this post">edited <span title="2016-03-29 17:49:04Z" class="relativetime">Mar 29 '16 at 17:49</span></a>
    </div>
    <div class="user-gravatar32">
        
    </div>
    <div class="user-details">
        
        <div class="-flair">
            
        </div>
    </div>
</div>    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info user-hover">
    <div class="user-action-time">
        answered <span title="2014-12-16 23:27:25Z" class="relativetime">Dec 16 '14 at 23:27</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/2023392/radtek"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/65e1ee6b43149bbfb6d80ce8edb6e425?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/2023392/radtek">radtek</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">8,340</span><span title="1 gold badge"><span class="badge1"></span><span class="badgecount">1</span></span><span title="47 silver badges"><span class="badge2"></span><span class="badgecount">47</span></span><span title="62 bronze badges"><span class="badge3"></span><span class="badgecount">62</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-27515833" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="1"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-43714958" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">1</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">YES THANK YOU ! Happened while using flask-mail</span>
                    &ndash;&nbsp;<a href="/users/605328/giannis"
                       title="1,847 reputation"
                       class="comment-user">Giannis</a>
                <span class="comment-date" dir="ltr"><span title="2014-12-25 16:12:35Z" class="relativetime-clean">Dec 25 '14 at 16:12</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-50192845" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">thanks man only problem for me : <a href="https://accounts.google.com/DisplayUnlockCaptcha" rel="nofollow noreferrer">accounts.google.com/DisplayUnlockCaptcha</a></span>
                    &ndash;&nbsp;<a href="/users/1256632/limitless-isa"
                       title="1,668 reputation"
                       class="comment-user">Limitless isa</a>
                <span class="comment-date" dir="ltr"><span title="2015-06-27 10:56:26Z" class="relativetime-clean">Jun 27 '15 at 10:56</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-56679238" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Thanks @radtek. It saved me.</span>
                    &ndash;&nbsp;<a href="/users/2223390/mani"
                       title="12,306 reputation"
                       class="comment-user">Mani</a>
                <span class="comment-date" dir="ltr"><span title="2015-12-26 05:05:01Z" class="relativetime-clean">Dec 26 '15 at 5:05</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-60199042" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">1</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">In addition, please leave half an hour to an hour for settings to change. I created a new account, disabled all the added security, and still got the same error. About an hour later, it all worked.</span>
                    &ndash;&nbsp;<a href="/users/664196/jkgeyti"
                       title="1,480 reputation"
                       class="comment-user">jkgeyti</a>
                <span class="comment-date" dir="ltr"><span title="2016-03-29 14:05:04Z" class="relativetime-clean">Mar 29 '16 at 14:05</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-60208300" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Updated, thanks. I knew it could take some time so I wrote &quot;grab a coffee&quot; but thanks for the ball park figure. Added :)</span>
                    &ndash;&nbsp;<a href="/users/2023392/radtek"
                       title="8,340 reputation"
                       class="comment-user">radtek</a>
                <span class="comment-date" dir="ltr"><span title="2016-03-29 17:51:29Z" class="relativetime-clean">Mar 29 '16 at 17:51</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-27515833" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link  dno"
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   ></a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link " title="expand to show all comments on this post" href=# onclick="">show <b>1</b> more comment</a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="10147883"></a>
<div id="answer-10147883" class="answer" data-answerid="10147883"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="10147883">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">10</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>You can find it here: <a href="http://jayrambhia.com/blog/send-emails-using-python" rel="noreferrer">http://jayrambhia.com/blog/send-emails-using-python</a></p>

<pre><code> smtp_host = 'smtp.gmail.com'
 smtp_port = 587
 server = smtplib.SMTP()
 server.connect(smtp_host,smtp_port)
 server.ehlo()
 server.starttls()
 server.login(user,passw)
 fromaddr = raw_input('Send mail by the name of: ')
 tolist = raw_input('To: ').split()
 sub = raw_input('Subject: ')

 msg = email.MIMEMultipart.MIMEMultipart()
 msg['From'] = fromaddr
 msg['To'] = email.Utils.COMMASPACE.join(tolist)
 msg['Subject'] = sub  
 msg.attach(MIMEText(raw_input('Body: ')))
 msg.attach(MIMEText('\nsent via python', 'plain'))
 server.sendmail(user,tolist,msg.as_string())
</code></pre>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/10147883" title="short permalink to this answer" class="short-link" id="link-post-10147883">share</a><span class="lsep">|</span><a href="/posts/10147883/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info ">
    <div class="user-action-time">
        <a href="/posts/10147883/revisions" title="show all edits to this post">edited <span title="2013-06-15 20:48:18Z" class="relativetime">Jun 15 '13 at 20:48</span></a>
    </div>
    <div class="user-gravatar32">
        
    </div>
    <div class="user-details">
        
        <div class="-flair">
            
        </div>
    </div>
</div>    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info user-hover">
    <div class="user-action-time">
        answered <span title="2012-04-13 20:28:42Z" class="relativetime">Apr 13 '12 at 20:28</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/891373/froyo"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/e49081f9c8f64cd6617efda90398a2a1?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/891373/froyo">Froyo</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">5,920</span><span title="5 gold badges"><span class="badge1"></span><span class="badgecount">5</span></span><span title="23 silver badges"><span class="badge2"></span><span class="badgecount">23</span></span><span title="51 bronze badges"><span class="badge3"></span><span class="badgecount">51</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-10147883" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-56572632" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">plus 1 because it is better to build a MIME than to hardcode your own format string. Is MIMEMultipart required for a simple text message? Or is the following also correct: <a href="http://stackoverflow.com/a/6270987/895245">stackoverflow.com/a/6270987/895245</a></span>
                    &ndash;&nbsp;<a href="/users/895245/ciro-santilli-709%e5%a4%a7%e6%8a%93%e6%8d%95-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f"
                       title="72,484 reputation"
                       class="comment-user">Ciro Santilli 709大抓捕 六四事件 法轮功</a>
                <span class="comment-date" dir="ltr"><span title="2015-12-22 12:25:43Z" class="relativetime-clean">Dec 22 '15 at 12:25</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-10147883" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="29720215"></a>
<div id="answer-29720215" class="answer" data-answerid="29720215"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="29720215">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">8</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>Not directly related but still worth pointing out is that my package tries to make sending gmail messages really quick and painless. It also tries to maintain a list of errors and tries to point to the solution immediately.</p>

<p>It would literally only need this code to do exactly what you wrote:</p>

<pre><code>import yagmail
yag = yagmail.SMTP('user_me@gmail.com')
yag.send('user_you@gmail.com', 'Why,Oh why!')
</code></pre>

<p>Or a one liner:</p>

<pre><code>yagmail.SMTP('user_me@gmail.com').send('user_you@gmail.com', 'Why,Oh why!')
</code></pre>

<p>For the package/installation please look at <a href="https://github.com/kootenpv/yagmail">git</a> or <a href="https://pypi.python.org/pypi/yagmail/">pip</a>, available for both Python 2 and 3.</p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/29720215" title="short permalink to this answer" class="short-link" id="link-post-29720215">share</a><span class="lsep">|</span><a href="/posts/29720215/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info ">
    <div class="user-action-time">
        <a href="/posts/29720215/revisions" title="show all edits to this post">edited <span title="2015-06-19 19:42:47Z" class="relativetime">Jun 19 '15 at 19:42</span></a>
    </div>
    <div class="user-gravatar32">
        
    </div>
    <div class="user-details">
        
        <div class="-flair">
            
        </div>
    </div>
</div>    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info user-hover">
    <div class="user-action-time">
        answered <span title="2015-04-18 16:58:21Z" class="relativetime">Apr 18 '15 at 16:58</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/1575066/pascalvkooten"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/hGOuL.png?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/1575066/pascalvkooten">PascalvKooten</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">7,564</span><span title="5 gold badges"><span class="badge1"></span><span class="badgecount">5</span></span><span title="36 silver badges"><span class="badge2"></span><span class="badgecount">36</span></span><span title="84 bronze badges"><span class="badge3"></span><span class="badgecount">84</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-29720215" class="comments  dno">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">

                        <tr><td></td><td></td></tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-29720215" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="24364538"></a>
<div id="answer-24364538" class="answer" data-answerid="24364538"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="24364538">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">5</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<h2>You down with OOP?</h2>

<pre><code>#!/usr/bin/env python


import smtplib

class Gmail(object):
    def __init__(self, email, password):
        self.email = email
        self.password = password
        self.server = 'smtp.gmail.com'
        self.port = 587
        session = smtplib.SMTP(self.server, self.port)        
        session.ehlo()
        session.starttls()
        session.ehlo
        session.login(self.email, self.password)
        self.session = session

    def send_message(self, subject, body):
        ''' This must be removed '''
        headers = [
            "From: " + self.email,
            "Subject: " + subject,
            "To: " + self.email,
            "MIME-Version: 1.0",
           "Content-Type: text/html"]
        headers = "\r\n".join(headers)
        self.session.sendmail(
            self.email,
            self.email,
            headers + "\r\n\r\n" + body)


gm = Gmail('Your Email', 'Password')

gm.send_message('Subject', 'Message')
</code></pre>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/24364538" title="short permalink to this answer" class="short-link" id="link-post-24364538">share</a><span class="lsep">|</span><a href="/posts/24364538/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2014-06-23 11:16:51Z" class="relativetime">Jun 23 '14 at 11:16</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/2433063/ricky-wilson"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/uU1mK.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/2433063/ricky-wilson">Ricky Wilson</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">1,099</span><span title="2 gold badges"><span class="badge1"></span><span class="badgecount">2</span></span><span title="9 silver badges"><span class="badge2"></span><span class="badgecount">9</span></span><span title="19 bronze badges"><span class="badge3"></span><span class="badgecount">19</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-24364538" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-40084327" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="hot">16</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">If your class has only two methods, one of which is __init__, just use a function.</span>
                    &ndash;&nbsp;<a href="/users/670823/joequery"
                       title="118 reputation"
                       class="comment-user">JoeQuery</a>
                <span class="comment-date" dir="ltr"><span title="2014-09-03 19:51:50Z" class="relativetime-clean">Sep 3 '14 at 19:51</span></span>
                        <span class="edited-yes" title="this comment was edited 2 times"></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-43451850" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">4</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">yeah you know me</span>
                    &ndash;&nbsp;<a href="/users/1215687/walrus-the-cat"
                       title="627 reputation"
                       class="comment-user">Walrus the Cat</a>
                <span class="comment-date" dir="ltr"><span title="2014-12-16 17:54:40Z" class="relativetime-clean">Dec 16 '14 at 17:54</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-68102663" class="comment ">
        <td class="comment-actions">
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                <span title="number of &#39;useful comment&#39; votes received"
                                      class="cool">1</span>
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">Who&#39;s down with OOP? :-)</span>
                    &ndash;&nbsp;<a href="/users/136731/helen-neely"
                       title="1,478 reputation"
                       class="comment-user">Helen Neely</a>
                <span class="comment-date" dir="ltr"><span title="2016-11-04 16:03:53Z" class="relativetime-clean">Nov 4 '16 at 16:03</span></span>
                        <span class="edited-yes" title="this comment was edited 1 time"></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-24364538" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="10147576"></a>
<div id="answer-10147576" class="answer" data-answerid="10147576"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="10147576">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">1</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>Seems like problem of the old <code>smtplib</code>. In <code>python2.7</code> everything works fine.</p>

<p><strong>Update</strong>: Yep, <code>server.ehlo()</code> also could help.</p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/10147576" title="short permalink to this answer" class="short-link" id="link-post-10147576">share</a><span class="lsep">|</span><a href="/posts/10147576/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info ">
    <div class="user-action-time">
        <a href="/posts/10147576/revisions" title="show all edits to this post">edited <span title="2012-04-13 20:13:52Z" class="relativetime">Apr 13 '12 at 20:13</span></a>
    </div>
    <div class="user-gravatar32">
        
    </div>
    <div class="user-details">
        
        <div class="-flair">
            
        </div>
    </div>
</div>    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2012-04-13 20:04:01Z" class="relativetime">Apr 13 '12 at 20:04</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/1044605/mega-venik"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/a4cd7806e4a28d67199c07f06f6fe6ee?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/1044605/mega-venik">mega.venik</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">286</span><span title="2 silver badges"><span class="badge2"></span><span class="badgecount">2</span></span><span title="11 bronze badges"><span class="badge3"></span><span class="badgecount">11</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-10147576" class="comments  dno">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">

                        <tr><td></td><td></td></tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-10147576" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="26667437"></a>
<div id="answer-26667437" class="answer" data-answerid="26667437"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="26667437">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">1</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>There is a gmail API now, which lets you send email, read email and create drafts via REST.
Unlike the SMTP calls, it is non-blocking which can be a good thing for thread-based webservers sending email in the request thread (like python webservers). The API is also quite powerful. </p>

<ul>
<li>Of course, email should be handed off to a non-webserver queue, but it's nice to have options.</li>
</ul>

<p>It's easiest to setup if you have Google Apps administrator rights on the domain, because then you can give blanket permission to your client. Otherwise you have to fiddle with OAuth authentication and permission.</p>

<p>Here is a gist demonstrating it:</p>

<p><a href="https://gist.github.com/timrichardson/1154e29174926e462b7a" rel="nofollow">https://gist.github.com/timrichardson/1154e29174926e462b7a</a></p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/26667437" title="short permalink to this answer" class="short-link" id="link-post-26667437">share</a><span class="lsep">|</span><a href="/posts/26667437/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2014-10-31 04:12:18Z" class="relativetime">Oct 31 '14 at 4:12</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/401226/tim-richardson"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/c07266a320e66c7c220bd8c01759646d?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/401226/tim-richardson">Tim Richardson</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">713</span><span title="1 gold badge"><span class="badge1"></span><span class="badgecount">1</span></span><span title="9 silver badges"><span class="badge2"></span><span class="badgecount">9</span></span><span title="27 bronze badges"><span class="badge3"></span><span class="badgecount">27</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-26667437" class="comments  dno">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">

                        <tr><td></td><td></td></tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-26667437" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="37819952"></a>
<div id="answer-37819952" class="answer" data-answerid="37819952"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="37819952">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">-1</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<pre><code>    import smtplib

    fromadd='from@gmail.com'
    toadd='send@gmail.com'

    msg='''hi,how r u'''
    username='abc@gmail.com'
    passwd='password'

    try:
        server = smtplib.SMTP('smtp.gmail.com:587')
        server.ehlo()
        server.starttls()
        server.login(username,passwd)

        server.sendmail(fromadd,toadd,msg)
        print("Mail Send Successfully")
        server.quit()

   except:
        print("Error:unable to send mail")

   NOTE:https://www.google.com/settings/security/lesssecureapps that                                                         should be enabled
</code></pre>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/37819952" title="short permalink to this answer" class="short-link" id="link-post-37819952">share</a><span class="lsep">|</span><a href="/posts/37819952/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2016-06-14 18:52:39Z" class="relativetime">Jun 14 '16 at 18:52</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/1543648/shyam-gupta"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/qpsKp.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/1543648/shyam-gupta">Shyam Gupta</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">63</span><span title="5 bronze badges"><span class="badge3"></span><span class="badgecount">5</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-37819952" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-63192603" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">I am posting the simple code that will do how to send mail from Gmail account. If you need any information then let me know. I hope that code will help to all the users.</span>
                    &ndash;&nbsp;<a href="/users/1543648/shyam-gupta"
                       title="63 reputation"
                       class="comment-user">Shyam Gupta</a>
                <span class="comment-date" dir="ltr"><span title="2016-06-16 19:34:25Z" class="relativetime-clean">Jun 16 '16 at 19:34</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-37819952" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="34090077"></a>
<div id="answer-34090077" class="answer" data-answerid="34090077"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="34090077">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">-2</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<pre><code>import smtplib
server = smtplib.SMTP('smtp.gmail.com', 587)
server.ehlo()
server.starttls()
server.login("fromaddress", "password")
msg = "HI!"
server.sendmail("fromaddress", "receiveraddress", msg)
server.quit()
</code></pre>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/34090077" title="short permalink to this answer" class="short-link" id="link-post-34090077">share</a><span class="lsep">|</span><a href="/posts/34090077/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2015-12-04 14:01:16Z" class="relativetime">Dec 4 '15 at 14:01</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/5635710/sam-divya-kumar"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/vMWTe.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/5635710/sam-divya-kumar">Sam Divya Kumar</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">7</span><span title="2 bronze badges"><span class="badge3"></span><span class="badgecount">2</span></span>
        </div>
    </div>
</div>
    </td>
    </tr>
    </table>
</td>
        </tr>
        
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-34090077" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-55932725" class="comment ">
        <td>
            <table>
                <tbody>
                    <tr>
                        <td class=" comment-score">
                                &nbsp;&nbsp;
                        </td>
                        <td>
                                &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
        <td class="comment-text">
            <div style="display: block;" class="comment-body">
                <span class="comment-copy">simple code to send a mail through gmail using python code. from address is your gmailID and receiveraddress is mail id which u send mail.</span>
                    &ndash;&nbsp;<a href="/users/5635710/sam-divya-kumar"
                       title="7 reputation"
                       class="comment-user">Sam Divya Kumar</a>
                <span class="comment-date" dir="ltr"><span title="2015-12-04 14:16:41Z" class="relativetime-clean">Dec 4 '15 at 14:16</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-34090077" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>
				    <div class="question-status">
        <h2>                    <b>protected</b> by <a href="/users/-1/community">Community</a><span class="mod-flair" title="moderator">&#9830;</span> <span dir="ltr"><span title="2016-03-04 03:12:32Z" class="relativetime">Mar 4 '16 at 3:12</span></span>
</h2>
        <p>
Thank you for your interest in this question. 
Because it has attracted low-quality or spam answers that had to be removed, posting an answer now requires 10 <a href="/help/whats-reputation">reputation</a> on this site (the <a href="/help/privileges/new-user">association bonus does not count</a>).
<br /><br />
Would you like to answer one of these <a href="/unanswered?fromProtectedNotice=true">unanswered questions</a> instead?
</p>
    </div>





						<h2 class="bottom-notice" data-loc="1">
Not the answer you&#39;re looking for?							Browse other questions tagged <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/email" class="post-tag" title="show questions tagged &#39;email&#39;" rel="tag">email</a> <a href="/questions/tagged/smtp" class="post-tag" title="show questions tagged &#39;smtp&#39;" rel="tag">smtp</a> <a href="/questions/tagged/gmail" class="post-tag" title="show questions tagged &#39;gmail&#39;" rel="tag">gmail</a>  or <a href="/questions/ask">ask your own question</a>.						</h2>
			</div>
		</div>
				<div id="sidebar" class="show-votes" role="complementary" aria-label="sidebar">
						    <div class="module question-stats">
			        <table id="qinfo">
			            <tr>
			                <td>
			                    <p class="label-key">asked</p>
			                </td>
			                <td style="padding-left: 10px">
			                    <p class="label-key" title="2012-04-13 19:54:18Z"><b>5 years ago</b></p>
			                </td>
			            </tr>
			            <tr>
			                <td>
			                    <p class="label-key">viewed</p>
			                </td>

			                <td style="padding-left: 10px">
			                    <p class="label-key">
			                        <b>178606 times</b>
			                    </p>
			                </td>
			            </tr>
			                <tr>
			                    <td>
			                        <p class="label-key">active</p>
			                    </td>
			                    <td style="padding-left: 10px">
			                        <p class="label-key"><b><a href="?lastactivity" class="lastactivity-link" title="2016-07-03 08:06:46Z">9 months ago</a></b></p>
			                    </td>
			                </tr>
			        </table>
			    </div>
						
			<script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk795535169",[5,17,2221,1129,43]).setZone(45); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk795535169"></div>
            <div id="hireme"></div>
        <script>
window.clc_request = 'AhZn2k_IjtQIAAAAAH_WmgACAAAAAgAAAAAZAAAAfHB5dGhvbnxlbWFpbHxzbXRwfGdtYWlsfAA-RDFop3jgyXi4';;(function(n){var u={log:window.console.log.bind(window.console,"[clc]"),error:window.console.error.bind(window.console,"[clc]")},f,e,t,r,i;try{if(typeof[].indexOf!="function")return;if(window.attachEvent&&!window.addEventListener)return;if(f=n.allowed,!f)return;if(e=new RegExp(n.allowed),!e.test(location.hostname)){u.error("Invalid host: "+location.hostname);return}if(t=window,t.clc=t.clc||{},t.clc.init=t.clc.init||[],t.clc.init.push(function(n){return n.load()}),t.clc.options){for(r in t.clc.options)n[r]=t.clc.options[r];t.clc.options=n}else t.clc.options=n;i=document.createElement("script");i.async=!0;i.src=n.lib;document.body.appendChild(i)}catch(o){u.error("[clc] Error in loader:",o)}}).call(null, {"lib":"https://cdn.sstatic.net/clc/clc.min.js?v=87491aaa842e","u":"https://clc.stackoverflow.com/markup.js","azw":true,"kt":2000,"tto":true,"d":{"sb":["hireme","clc-sb"],"tlb":["careers1","clc-tlb"],"mlb":["careers3","clc-mlb"]},"h":"clc.stackoverflow.com","autoload":true,"allowed":"^(((talent\\.)?stackoverflow)|(blog\\.codinghorror)|(serverfault|askubuntu)|([^\\.]+\\.stackexchange))\\.com$"});        </script>
			

            <div class="module sidebar-linked">
	<h4 id="h-linked">Linked</h4>
	<div class="linked" data-tracker="lq=1">

<div class="spacer">
	<a href="/q/26852128" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes answered-accepted default">27</div>
	</a>
	<a href="/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python?noredirect=1" class="question-hyperlink">SMTPAuthenticationError when sending mail using gmail and python</a>
</div>
<div class="spacer">
	<a href="/q/38867398" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes  default">1</div>
	</a>
	<a href="/questions/38867398/getting-error-to-email-through-python-script?noredirect=1" class="question-hyperlink">Getting error to email through python script</a>
</div>
<div class="spacer">
	<a href="/q/8856117" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes  default">88</div>
	</a>
	<a href="/questions/8856117/how-to-send-email-to-multiple-recipients-using-python-smtplib?noredirect=1" class="question-hyperlink">How to send email to multiple recipients using python smtplib?</a>
</div>
<div class="spacer">
	<a href="/q/6270782" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes answered-accepted default">89</div>
	</a>
	<a href="/questions/6270782/how-to-send-an-email-with-python?noredirect=1" class="question-hyperlink">How to send an email with Python?</a>
</div>
<div class="spacer">
	<a href="/q/19765073" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes  default">2</div>
	</a>
	<a href="/questions/19765073/cant-send-email-via-python-using-gmail-smtplib-smtpexception-smtp-auth-extens?noredirect=1" class="question-hyperlink">Cant send email via python using gmail - smtplib.SMTPException: SMTP AUTH extension not supported by server</a>
</div>
<div class="spacer">
	<a href="/q/19746783" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes  default">4</div>
	</a>
	<a href="/questions/19746783/trouble-with-django-sending-email-though-smtp-gmail-com?noredirect=1" class="question-hyperlink">Trouble with Django sending email though smtp.gmail.com</a>
</div>
<div class="spacer">
	<a href="/q/16512592" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes  default">4</div>
	</a>
	<a href="/questions/16512592/login-credentials-not-working-with-gmail-smtp?noredirect=1" class="question-hyperlink">Login credentials not working with Gmail SMTP</a>
</div>
<div class="spacer">
	<a href="/q/25084907" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes answered-accepted default">8</div>
	</a>
	<a href="/questions/25084907/what-is-a-secure-way-to-send-an-email-using-python-and-gmail-as-the-provider?noredirect=1" class="question-hyperlink">What is a secure way to send an email using Python and Gmail as the provider?</a>
</div>
<div class="spacer">
	<a href="/q/12593654" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes answered-accepted default">1</div>
	</a>
	<a href="/questions/12593654/how-to-connect-to-gmail-with-sockets-over-ssl-in-python?noredirect=1" class="question-hyperlink">How to connect to gmail with sockets over ssl in Python</a>
</div>
<div class="spacer">
	<a href="/q/27272367" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes answered-accepted default">0</div>
	</a>
	<a href="/questions/27272367/trying-to-send-email-from-python?noredirect=1" class="question-hyperlink">Trying to send email from python</a>
</div>					<div class="spacer more">
				<a href="/questions/linked/10147455">see more linked questions…</a>
			</div>
	</div>
</div>

				<div class="module sidebar-related">
					<h4 id="h-related">Related</h4>
                    <div class="related js-gps-related-questions" data-tracker="rq=1">
                        <div class="spacer"><a href="/q/32260" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted large">653</div></a><a href="/questions/32260/sending-email-in-net-through-gmail" class="question-hyperlink">Sending email in .NET through Gmail</a></div><div class="spacer"><a href="/q/704636" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted large">191</div></a><a href="/questions/704636/sending-email-through-gmail-smtp-server-with-c-sharp" class="question-hyperlink">Sending email through Gmail SMTP server with C#</a></div><div class="spacer"><a href="/q/712392" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted large">319</div></a><a href="/questions/712392/send-email-using-the-gmail-smtp-server-from-a-php-page" class="question-hyperlink">Send email using the GMail SMTP server from a PHP page</a></div><div class="spacer"><a href="/q/13537778" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">1</div></a><a href="/questions/13537778/sending-email-through-gmail-with-asp-net-4-0-the-operation-has-timed-out" class="question-hyperlink">Sending email through gmail with asp.net 4.0 &#39;The operation has timed out&#39;</a></div><div class="spacer"><a href="/q/20294897" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">2</div></a><a href="/questions/20294897/error-sending-email-gmail-via-python-2-6" class="question-hyperlink">Error Sending Email (Gmail) Via Python 2.6</a></div><div class="spacer"><a href="/q/33236267" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">2</div></a><a href="/questions/33236267/sending-email-with-python-and-gmail-smtp-server-doesnt-work-with-attachment" class="question-hyperlink">Sending email with Python and Gmail SMTP server doesn&#39;t work with attachment</a></div><div class="spacer"><a href="/q/39706158" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">0</div></a><a href="/questions/39706158/i-can-send-emails-but-not-replies-with-smtplib-and-gmail" class="question-hyperlink">I can send emails, but not replies with smtplib and GMail</a></div><div class="spacer"><a href="/q/40493192" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/40493192/python-send-email-through-gmail-and-not-citing-the-messages-body" class="question-hyperlink">Python: send email through Gmail and not citing the message&#39;s &ldquo;Body&rdquo;</a></div><div class="spacer"><a href="/q/40661103" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">-1</div></a><a href="/questions/40661103/send-email-from-gmail-with-django-and-python" class="question-hyperlink">Send email from gmail with Django and Python</a></div><div class="spacer"><a href="/q/43142137" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">1</div></a><a href="/questions/43142137/sending-email-from-spring-boot-application-using-gmail" class="question-hyperlink">Sending email from Spring Boot application using Gmail</a></div>
                    </div>
				</div>
            

<div id="hot-network-questions" class="module tex2jax_ignore">
    <h4>
        <a href="https://stackexchange.com/questions?tab=hot"
           class="js-gps-track" 
           data-gps-track="posts_hot_network.click({ item_type:1, location:11 })">
            Hot Network Questions
        </a>
    </h4>
    <ul>
            <li >
                <div class="favicon favicon-aviation" title="Aviation Stack Exchange"></div><a href="https://aviation.stackexchange.com/questions/37521/how-is-a-glider-recovered-and-returned-to-an-airport-after-landing-in-a-field" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:528 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How is a glider recovered and returned to an airport after landing in a field?
                </a>

            </li>
            <li >
                <div class="favicon favicon-scifi" title="Science Fiction &amp; Fantasy Stack Exchange"></div><a href="https://scifi.stackexchange.com/questions/158289/how-did-no-other-engineer-see-the-design-flaw-of-the-death-star" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:186 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How did no other engineer see the design flaw of the Death Star?
                </a>

            </li>
            <li >
                <div class="favicon favicon-ux" title="User Experience Stack Exchange"></div><a href="https://ux.stackexchange.com/questions/107257/should-a-dropdown-list-be-closed-when-mouse-leaves" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:102 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Should a dropdown list be closed when mouse leaves?
                </a>

            </li>
            <li >
                <div class="favicon favicon-english" title="English Language &amp; Usage Stack Exchange"></div><a href="https://english.stackexchange.com/questions/386596/help-the-onus-is-on-me-what-do-you-call-whatever-it-is-im-supposed-to-do-wi" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:97 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Help, the &quot;onus&quot; is on me! What do you call whatever it is I&#39;m supposed to do with it?
                </a>

            </li>
            <li >
                <div class="favicon favicon-workplace" title="The Workplace Stack Exchange"></div><a href="https://workplace.stackexchange.com/questions/89841/did-i-overreact-to-my-boss-literally-asking-me-to-get-him-coffee" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:423 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Did I overreact to my boss literally asking me to get him coffee?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/98973/how-much-can-i-customize-enemies-in-a-dd-game" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How much can I customize enemies in a D&amp;D game?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-english" title="English Language &amp; Usage Stack Exchange"></div><a href="https://english.stackexchange.com/questions/386814/royal-we-agreement" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:97 }); posts_hot_network.click({ item_type:2, location:11 })">
                    &quot;Royal we&quot; agreement
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79439/creating-a-uncopyable-physical-key" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Creating a uncopyable physical key
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-scifi" title="Science Fiction &amp; Fantasy Stack Exchange"></div><a href="https://scifi.stackexchange.com/questions/158131/what-languages-were-yodas-speech-patterns-based-on" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:186 }); posts_hot_network.click({ item_type:2, location:11 })">
                    What language(s) were Yoda&#39;s speech patterns based on?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-superuser" title="Super User"></div><a href="https://superuser.com/questions/1203127/how-can-i-press-insert-on-a-keyboard-without-that-key" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:3 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How can I press &quot;Insert&quot; on a keyboard without that key?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/99034/can-you-make-intelligent-items" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Can you make intelligent items?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-physics" title="Physics Stack Exchange"></div><a href="https://physics.stackexchange.com/questions/329604/why-is-d-t-fusion-easier-than-t-t" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:151 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why is D-T fusion easier than T-T?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-salesforce" title="Salesforce Stack Exchange"></div><a href="https://salesforce.stackexchange.com/questions/172171/how-to-combine-for-view-and-for-reference" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:459 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How to combine FOR VIEW and FOR REFERENCE?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-skeptics" title="Skeptics Stack Exchange"></div><a href="https://skeptics.stackexchange.com/questions/38088/do-wind-turbines-consume-more-energy-than-they-produce-in-a-lifetime" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:212 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Do wind turbines consume more energy than they produce in a lifetime?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-scifi" title="Science Fiction &amp; Fantasy Stack Exchange"></div><a href="https://scifi.stackexchange.com/questions/158268/is-the-ministry-of-magic-responsible-for-this-characters-death" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:186 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Is the Ministry of Magic responsible for this character&#39;s death?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/99025/when-a-cleric-not-devoted-to-a-deity-picks-the-domain-war-can-he-pick-any-weapo" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                    When a cleric not devoted to a deity picks the domain War, can he pick any weapon?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79410/how-do-i-justify-viral-zombies-not-dying-out" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How do I justify viral zombies not dying out?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-mathoverflow" title="MathOverflow"></div><a href="https://mathoverflow.net/questions/268540/why-is-quantum-field-theory-so-topological" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:504 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why is Quantum Field Theory so topological?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-mathoverflow" title="MathOverflow"></div><a href="https://mathoverflow.net/questions/268482/publishing-conjectures" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:504 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Publishing conjectures
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117879/number-triangle-flip" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Number triangle flip
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117996/find-the-first-bracket-match" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Find the First Bracket Match
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-money" title="Personal Finance &amp; Money Stack Exchange"></div><a href="https://money.stackexchange.com/questions/79164/is-it-common-in-the-us-not-to-pay-medical-bills" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:93 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Is it common in the US not to pay medical bills?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-space" title="Space Exploration Stack Exchange"></div><a href="https://space.stackexchange.com/questions/21285/why-do-we-worry-about-contaminating-some-solar-bodies-but-not-others" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:508 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why do we worry about contaminating some solar bodies but not others?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-stats" title="Cross Validated"></div><a href="https://stats.stackexchange.com/questions/275677/if-we-fail-to-reject-the-null-hypothesis-in-a-large-study-isnt-it-evidence-for" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:65 }); posts_hot_network.click({ item_type:2, location:11 })">
                    If we fail to reject the null hypothesis in a large study, isn&#39;t it evidence for the null?
                </a>

            </li>
    </ul>

        <a href="#" 
           class="show-more js-show-more js-gps-track" 
           data-gps-track="posts_hot_network.click({ item_type:3, location:11 })">
            more hot questions
        </a>
</div>
		</div>
	
<div id="feed-link">
    <div id="feed-link-text">
        <a href="/feeds/question/10147455" title="feed of this question and its answers">
            <span class="feed-icon"></span>question feed
        </a>
    </div>
</div>	<script>
StackExchange.ready(function(){$.get('/posts/10147455/ivc/20af');});
</script>
<noscript>
    <div><img src="/posts/10147455/ivc/20af" class="dno" alt="" width="0" height="0"></div>
</noscript><div style="display:none" id="prettify-lang">lang-py</div></div>


        </div>
    </div>
    <div id="footer" class="categories" role="contentinfo">
        <div class="footerwrap">            
            <div id="footer-menu">
                <div class="top-footer-links">
                    <a href="http://stackoverflow.com/company/about">about us</a>
                        <a href="/tour">tour</a>
                    <a href="/help">help</a>
                    <a href="https://stackoverflow.blog?blb=1">blog</a>
                        <a href="http://chat.stackoverflow.com">chat</a>
                    <a href="https://data.stackexchange.com">data</a>
                    <a href="https://stackexchange.com/legal">legal</a>
                    <a href="https://stackexchange.com/legal/privacy-policy">privacy policy</a>
                    <a href="http://stackoverflow.com/company/work-here">work here</a>
                    <a href="https://www.stackoverflowbusiness.com/advertise">advertising info</a>
                        <a href="http://stackoverflow.com/jobs/directory/developer-jobs">developer jobs directory</a>

                    <a onclick='StackExchange.switchMobile("on")'>mobile</a>
                    <b><a href="/contact">contact us</a></b>
                        <b><a href="https://meta.stackoverflow.com">feedback</a></b>
                    
                </div>
                <div id="footer-sites">
                    <table>
    <tr>
            <th colspan=3>
                Technology
            </th>
            <th >
                Life / Arts
            </th>
            <th >
                Culture / Recreation
            </th>
            <th >
                Science
            </th>
            <th >
                Other
            </th>
    </tr>
    <tr>
            <td>
                <ol>
                        <li><a href="//stackoverflow.com" title="professional and enthusiast programmers">Stack Overflow</a></li>
                        <li><a href="//serverfault.com" title="system and network administrators">Server Fault</a></li>
                        <li><a href="//superuser.com" title="computer enthusiasts and power users">Super User</a></li>
                        <li><a href="//webapps.stackexchange.com" title="power users of web applications">Web Applications</a></li>
                        <li><a href="//askubuntu.com" title="Ubuntu users and developers">Ask Ubuntu</a></li>
                        <li><a href="//webmasters.stackexchange.com" title="pro webmasters">Webmasters</a></li>
                        <li><a href="//gamedev.stackexchange.com" title="professional and independent game developers">Game Development</a></li>
                        <li><a href="//tex.stackexchange.com" title="users of TeX, LaTeX, ConTeXt, and related typesetting systems">TeX - LaTeX</a></li>
                        <li><a href="//softwareengineering.stackexchange.com" title="professionals, academics, and students working within the systems development life cycle who care about creating, delivering, and maintaining software responsibly">Software Engineering</a></li>
                        <li><a href="//unix.stackexchange.com" title="users of Linux, FreeBSD and other Un*x-like operating systems">Unix &amp; Linux</a></li>
                        <li><a href="//apple.stackexchange.com" title="power users of Apple hardware and software">Ask Different (Apple)</a></li>
                        <li><a href="//wordpress.stackexchange.com" title="WordPress developers and administrators">WordPress Development</a></li>
                            </ol></td><td><ol>
                        <li><a href="//gis.stackexchange.com" title="cartographers, geographers and GIS professionals">Geographic Information Systems</a></li>
                        <li><a href="//electronics.stackexchange.com" title="electronics and electrical engineering professionals, students, and enthusiasts">Electrical Engineering</a></li>
                        <li><a href="//android.stackexchange.com" title="enthusiasts and power users of the Android operating system">Android Enthusiasts</a></li>
                        <li><a href="//security.stackexchange.com" title="information security professionals">Information Security</a></li>
                        <li><a href="//dba.stackexchange.com" title="database professionals who wish to improve their database skills and learn from others in the community">Database Administrators</a></li>
                        <li><a href="//drupal.stackexchange.com" title="Drupal developers and administrators">Drupal Answers</a></li>
                        <li><a href="//sharepoint.stackexchange.com" title="SharePoint enthusiasts">SharePoint</a></li>
                        <li><a href="//ux.stackexchange.com" title="user experience researchers and experts">User Experience</a></li>
                        <li><a href="//mathematica.stackexchange.com" title="users of Wolfram Mathematica">Mathematica</a></li>
                        <li><a href="//salesforce.stackexchange.com" title="Salesforce administrators, implementation experts, developers and anybody in-between">Salesforce</a></li>
                        <li><a href="//expressionengine.stackexchange.com" title="administrators, end users, developers and designers for ExpressionEngine&#174; CMS">ExpressionEngine&#174; Answers</a></li>
                        <li><a href="//crypto.stackexchange.com" title="software developers, mathematicians and others interested in cryptography">Cryptography</a></li>
                            </ol></td><td><ol>
                        <li><a href="//codereview.stackexchange.com" title="peer programmer code reviews">Code Review</a></li>
                        <li><a href="//magento.stackexchange.com" title="users of the Magento e-Commerce platform">Magento</a></li>
                        <li><a href="//dsp.stackexchange.com" title="practitioners of the art and science of signal, image and video processing">Signal Processing</a></li>
                        <li><a href="//raspberrypi.stackexchange.com" title="users and developers of hardware and software for Raspberry Pi">Raspberry Pi</a></li>
                        <li><a href="//codegolf.stackexchange.com" title="programming puzzle enthusiasts and code golfers">Programming Puzzles &amp; Code Golf</a></li>
                    
                        <li>
                            <a href="http://stackexchange.com/sites#technology" class="more">
                                more (7)
                            </a>
                        </li>
                </ol>
            </td>
            <td>
                <ol>
                        <li><a href="//photo.stackexchange.com" title="professional, enthusiast and amateur photographers">Photography</a></li>
                        <li><a href="//scifi.stackexchange.com" title="science fiction and fantasy enthusiasts">Science Fiction &amp; Fantasy</a></li>
                        <li><a href="//graphicdesign.stackexchange.com" title="Graphic Design professionals, students, and enthusiasts">Graphic Design</a></li>
                        <li><a href="//movies.stackexchange.com" title="movie and tv enthusiasts">Movies &amp; TV</a></li>
                        <li><a href="//music.stackexchange.com" title="musicians, students, and enthusiasts">Music: Practice &amp; Theory</a></li>
                        <li><a href="//cooking.stackexchange.com" title="professional and amateur chefs">Seasoned Advice (cooking)</a></li>
                        <li><a href="//diy.stackexchange.com" title="contractors and serious DIYers">Home Improvement</a></li>
                        <li><a href="//money.stackexchange.com" title="people who want to be financially literate">Personal Finance &amp; Money</a></li>
                        <li><a href="//academia.stackexchange.com" title="academics and those enrolled in higher education">Academia</a></li>
                    
                        <li>
                            <a href="http://stackexchange.com/sites#lifearts" class="more">
                                more (8)
                            </a>
                        </li>
                </ol>
            </td>
            <td>
                <ol>
                        <li><a href="//english.stackexchange.com" title="linguists, etymologists, and serious English language enthusiasts">English Language &amp; Usage</a></li>
                        <li><a href="//skeptics.stackexchange.com" title="scientific skepticism">Skeptics</a></li>
                        <li><a href="//judaism.stackexchange.com" title="those who base their lives on Jewish law and tradition and anyone interested in learning more">Mi Yodeya (Judaism)</a></li>
                        <li><a href="//travel.stackexchange.com" title="road warriors and seasoned travelers">Travel</a></li>
                        <li><a href="//christianity.stackexchange.com" title="committed Christians, experts in Christianity and those interested in learning more">Christianity</a></li>
                        <li><a href="//ell.stackexchange.com" title="speakers of other languages learning English">English Language Learners</a></li>
                        <li><a href="//japanese.stackexchange.com" title="students, teachers, and linguists wanting to discuss the finer points of the Japanese language">Japanese Language</a></li>
                        <li><a href="//gaming.stackexchange.com" title="passionate videogamers on all platforms">Arqade (gaming)</a></li>
                        <li><a href="//bicycles.stackexchange.com" title="people who build and repair bicycles, people who train cycling, or commute on bicycles">Bicycles</a></li>
                        <li><a href="//rpg.stackexchange.com" title="gamemasters and players of tabletop, paper-and-pencil role-playing games">Role-playing Games</a></li>
                        <li><a href="//anime.stackexchange.com" title="anime and manga fans">Anime &amp; Manga</a></li>
                        <li><a href="//mechanics.stackexchange.com" title="mechanics and DIY enthusiast owners of cars, trucks, and motorcycles">Motor Vehicle Maintenance &amp; Repair</a></li>
                    
                        <li>
                            <a href="http://stackexchange.com/sites#culturerecreation" class="more">
                                more (17)
                            </a>
                        </li>
                </ol>
            </td>
            <td>
                <ol>
                        <li><a href="//mathoverflow.net" title="professional mathematicians">MathOverflow</a></li>
                        <li><a href="//math.stackexchange.com" title="people studying math at any level and professionals in related fields">Mathematics</a></li>
                        <li><a href="//stats.stackexchange.com" title="people interested in statistics, machine learning, data analysis, data mining, and data visualization">Cross Validated (stats)</a></li>
                        <li><a href="//cstheory.stackexchange.com" title="theoretical computer scientists and researchers in related fields">Theoretical Computer Science</a></li>
                        <li><a href="//physics.stackexchange.com" title="active researchers, academics and students of physics">Physics</a></li>
                        <li><a href="//chemistry.stackexchange.com" title="scientists, academics, teachers and students">Chemistry</a></li>
                        <li><a href="//biology.stackexchange.com" title="biology researchers, academics, and students">Biology</a></li>
                        <li><a href="//cs.stackexchange.com" title="students, researchers and practitioners of computer science">Computer Science</a></li>
                        <li><a href="//philosophy.stackexchange.com" title="those interested in the study of the fundamental nature of knowledge, reality, and existence">Philosophy</a></li>
                    
                        <li>
                            <a href="http://stackexchange.com/sites#science" class="more">
                                more (3)
                            </a>
                        </li>
                </ol>
            </td>
            <td>
                <ol>
                        <li><a href="//meta.stackexchange.com" title="meta-discussion of the Stack Exchange family of Q&amp;A websites">Meta Stack Exchange</a></li>
                        <li><a href="//stackapps.com" title="apps, scripts, and development with the Stack Exchange API">Stack Apps</a></li>
                        <li><a href="//area51.stackexchange.com" title="proposing new sites in the Stack Exchange network">Area 51</a></li>
                        <li><a href="https://www.stackoverflowbusiness.com/talent">Stack Overflow Talent</a></li>
                    
                </ol>
            </td>
    </tr>
</table>
                </div>
            </div>
            <div id="copyright">
                site design / logo &#169; 2017 Stack Exchange Inc; user contributions licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/" rel="license">cc by-sa 3.0</a> 
                with <a href="http://blog.stackoverflow.com/2009/06/attribution-required/" rel="license">attribution required</a>
            </div>
            <div id="svnrev">
                rev 2017.4.28.25783
            </div>
                </div>
    </div>
    <noscript>
        <div id="noscript-warning">Stack Overflow works best with JavaScript enabled<img src="https://pixel.quantserve.com/pixel/p-c1rF4kxgLUzNc.gif" alt="" class="dno"></div>
    </noscript>

<script>var p = "http", d = "static"; if (document.location.protocol == "https:") { p += "s"; d = "engine"; } var z = document.createElement("script"); z.type = "text/javascript"; z.async = true; z.src = p + "://" + d + ".adzerk.net/ados.js"; var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(z, s);</script>
<script>
    var ados = ados || {};
    ados.run = ados.run || [];
    
    
        
        ados.run.push(function () {
                setTimeout(function () { $("#adzerk-user-match").remove(); }, window.AUMIframeDone ? 0 : 2000);
                ados_setKeywords('python,email,smtp,gmail');; ados_load();
        });   
        
</script>

    <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m);
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
                ga('create', 'UA-5620270-1');
                ga('create', 'UA-5620270-59', {name: 'pageData', sampleRate: 5 });
                ga('set', 'dimension2', '|python|email|smtp|gmail|');
                ga('pageData.set', 'dimension2', '|python|email|smtp|gmail|');
                ga('send', 'pageview');
                ga('pageData.send', 'pageview');
        var _qevents = _qevents || [],
            _comscore = _comscore || [];
        (function () {
            var ssl='https:'==document.location.protocol,
                s=document.getElementsByTagName('script')[0],
                qc=document.createElement('script');
                qc.async = true;
                qc.src = (ssl ? 'https://secure' : 'http://edge') + '.quantserve.com/quant.js';
                s.parentNode.insertBefore(qc, s);
                _qevents.push({ qacct: "p-c1rF4kxgLUzNc" });
                            var sc=document.createElement('script');
                sc.async=true;
                sc.src=(ssl?'https://sb':'http://b') + '.scorecardresearch.com/beacon.js';
                s.parentNode.insertBefore(sc, s);
                _comscore.push({ c1: "2", c2: "17440561" });
        })();

    </script>
        
    
            <script type="text/javascript">
                
                (function(appendChild) {
                    Node.prototype.appendChild = function() {
                        var parent = this;
                        var newNode = arguments[0];
                        if (parent.nodeName === 'HEAD'
                            && newNode
                            && newNode.nodeName === 'SCRIPT'
                            && newNode.src) {
                            
                            window.setTimeout(function() {
                                var result = newNode.src.match(/^https:\/\/maps\.googleapis\.com\/maps\/api\/place\/js\/(\w+)Service\./i) || [];
                                var service = result[1];
                                if (service) {
                                    if (service === 'Autocompletion') service =  2;
                                    else if (service === 'Place') service = 1;
                                    else service = 0;
                                    StackExchange.using('gps', function() {
                                        StackExchange.gps.track('google_maps_places_api.call', { service: service });
                                    });
                                }
                            }, 0);
                        }
                        return appendChild.apply(this, arguments);
                    };
                })(Node.prototype.appendChild);
            </script>
    </body>
</html>