   �         Ohttp://stackoverflow.com/questions/16753219/django-get-id-of-the-object-in-save�       ���� �       ����          
     O K           �      Content-Type   text/html; charset=utf-8   Content-Encoding   gzip   X-Frame-Options   
SAMEORIGIN   X-Request-Guid   $dd055d0c-71f3-435a-8473-273ad5bbf306   Accept-Ranges   bytes   Date   Sat, 29 Apr 2017 06:38:53 GMT   Via   1.1 varnish   Age   0   X-Served-By   cache-atl6225-ATL   X-Cache   MISS   X-Cache-Hits   0   X-Timer   S1493447933.116771,VS0,VE39   Vary   Accept-Encoding,Fastly-SSL   X-DNS-Prefetch-Control   off   Cache-Control   private <!DOCTYPE html>
<html itemscope itemtype="http://schema.org/QAPage">

<head>

<title>Django Get ID of the object in save() - Stack Overflow</title>
    <link rel="shortcut icon" href="https://cdn.sstatic.net/Sites/stackoverflow/img/favicon.ico?v=4f32ecc8f43d">
    <link rel="apple-touch-icon image_src" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">
    <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="/opensearch.xml">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:domain" content="stackoverflow.com"/>
    <meta property="og:type" content="website" />

    <meta property="og:image" itemprop="image primaryImageOfPage" content="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded" />
    <meta name="twitter:title" property="og:title" itemprop="title name" content="Django Get ID of the object in save()" />
    <meta name="twitter:description" property="og:description" itemprop="description" content="I have some fixed number let say it is num = 1000 Now I have field which need to be sum of the object.id and num. I need this in save() something like below.

def save(self, *args, **kwargs):
    n..." />
    <meta property="og:url" content="http://stackoverflow.com/questions/16753219/django-get-id-of-the-object-in-save"/>
    <link rel="canonical" href="http://stackoverflow.com/questions/16753219/django-get-id-of-the-object-in-save" />

    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.sstatic.net/Js/stub.en.js?v=6739a504b710"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/all.css?v=f4d760dc7b76">

            <link rel="alternate" type="application/atom+xml" title="Feed for question &#39;Django Get ID of the object in save()&#39;" href="/feeds/question/16753219">
            <meta name="twitter:app:country" content="US" />
            <meta name="twitter:app:name:iphone" content="Stack Exchange iOS" />
            <meta name="twitter:app:id:iphone" content="871299723" />
            <meta name="twitter:app:url:iphone" content="se-zaphod://stackoverflow.com/questions/16753219/django-get-id-of-the-object-in-save" />
            <meta name="twitter:app:name:ipad" content="Stack Exchange iOS" />
            <meta name="twitter:app:id:ipad" content="871299723" />
            <meta name="twitter:app:url:ipad" content="se-zaphod://stackoverflow.com/questions/16753219/django-get-id-of-the-object-in-save" />
            <meta name="twitter:app:name:googleplay" content="Stack Exchange Android">
            <meta name="twitter:app:url:googleplay" content="http://stackoverflow.com/questions/16753219/django-get-id-of-the-object-in-save">
            <meta name="twitter:app:id:googleplay" content="com.stackexchange.marvin">
        <script>
        
            StackExchange.ready(function () {
                                    
                    StackExchange.using("snippets", function () {
                        StackExchange.snippets.initSnippetRenderer();
                    });
                    

                StackExchange.using("postValidation", function () {
                    StackExchange.postValidation.initOnBlurAndSubmit($('#post-form'), 2, 'answer');
                });

                
                StackExchange.question.init({showAnswerHelp:true,totalCommentCount:0,shownCommentCount:0,highlightColor:'#F4A83D',backgroundColor:'#FFF',questionId:16753219});

                styleCode();

                    StackExchange.realtime.subscribeToQuestion('1', '16753219');
                                                                    StackExchange.using("gps", function () { StackExchange.gps.trackOutboundClicks('#content', '.post-text', true); });

            });
        </script>


    <script>
        StackExchange.init({"locale":"en","stackAuthUrl":"https://stackauth.com","networkMetaHostname":"meta.stackexchange.com","serverTime":1493447933,"routeName":"Questions/Show","site":{"name":"Stack Overflow","description":"Q&A for professional and enthusiast programmers","isNoticesTabEnabled":true,"recaptchaPublicKey":"6LdchgIAAAAAAJwGpIzRQSOFaO0pU6s44Xt8aTwc","recaptchaAudioLang":"en","enableNewTagCreationWarning":true,"insertSpaceAfterNameTabCompletion":false,"id":1,"enableInsertDocLinkDialog":true,"childUrl":"https://meta.stackoverflow.com","enableSocialMediaInSharePopup":true,"protocol":"http"},"user":{"fkey":"dab4eff1e964628341bef8bfac35f775","rep":0,"isAnonymous":true,"isAnonymousNetworkWide":true,"canSeeNewHeaderDesign":true,"ab":{"devstory_timeline_exp":{"v":"c","g":1}}},"events":{"postType":{"question":1},"postEditionSection":{"title":1,"body":2,"tags":3}},"story":{"minCompleteBodyLength":75,"likedTagsMaxLength":300,"dislikedTagsMaxLength":300}}, {"site":{"allowImageUploads":true,"enableUserHovercards":true,"styleCode":true,"enableNewLinkInsertDialog":true,"enableImgurHttps":true,"forceHttpsImages":true},"comments":{},"userProfile":{"openGraphAPIKey":"58740831ad23540e00c58987"},"tags":{},"accounts":{"currentPasswordRequiredForChangingStackIdPassword":true},"flags":{"allowRetractingFlags":true},"snippets":{"snippetsEnabled":true,"renderDomain":"stacksnippets.net"},"markdown":{"asteriskIntraWordEmphasis":true},"monitoring":{"clientTimingsAbsoluteTimeout":30000,"clientTimingsDebounceTimeout":1000}});
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
>Sign up</a> or <a href="https://stackoverflow.com/users/login?ssrc=site_switcher&amp;returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f16753219%2fdjango-get-id-of-the-object-in-save" class="login-link js-gps-track"     data-gps-track="site_switcher.click({ item_type:11 })"
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
                    <a href="https://stackoverflow.com/users/login?ssrc=head&returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f16753219%2fdjango-get-id-of-the-object-in-save" class="login-link btn-clear" rel="nofollow">Log In</a>
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
                <h1 itemprop="name"><a href="/questions/16753219/django-get-id-of-the-object-in-save" class="question-hyperlink">Django Get ID of the object in save()</a></h1>

            
<div class="aside-cta" role="navigation" aria-label="ask new question">
    <a href="/questions/ask" class="btn-outlined">Ask Question</a>
</div>
		</div>
			<div id="mainbar" role="main" aria-label="question and answers">

			

<div class="question" data-questionid="16753219"  id="question">

    <script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk403986035",4).setZone(43); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk403986035"></div>    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="16753219">
        <a class="vote-up-off" title="This question shows research effort; it is useful and clear">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">1</span>
        <a class="vote-down-off" title="This question does not show any research effort; it is unclear or not useful">down vote</a>

        <a class="star-off" href="#">favorite</a>
        <div class="favoritecount"><b></b></div>


</div>

            </td>
            
<td class="postcell">
<div>
    <div class="post-text" itemprop="text">

<p>I have some fixed number let say it is <code>num = 1000</code> Now I have field which need to be sum of the object.id and num. I need this in save() something like below.</p>

<pre><code>def save(self, *args, **kwargs):
    num = 1000
    self.special = self.id + num
    super(MyModel, self).save(*args, **kwargs)
</code></pre>

<p>But self.id is known after save and field named special is required. How to get self.id?</p>
    </div>
    <div class="post-taglist">
        <a href="/questions/tagged/django" class="post-tag" title="show questions tagged &#39;django&#39;" rel="tag">django</a> <a href="/questions/tagged/django-models" class="post-tag" title="show questions tagged &#39;django-models&#39;" rel="tag">django-models</a> <a href="/questions/tagged/django-admin" class="post-tag" title="show questions tagged &#39;django-admin&#39;" rel="tag">django-admin</a> <a href="/questions/tagged/django-views" class="post-tag" title="show questions tagged &#39;django-views&#39;" rel="tag">django-views</a> 
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/q/16753219" title="short permalink to this question" class="short-link" id="link-post-16753219">share</a><span class="lsep">|</span><a href="/posts/16753219/edit" class="suggest-edit-post" title="">improve this question</a></div>        
    </td>
    <td class="post-signature owner">
        <div class="user-info ">
    <div class="user-action-time">
        asked <span title="2013-05-25 19:36:05Z" class="relativetime">May 25 '13 at 19:36</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/928017/goran"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/f4cd38032c44248783f3ae749a65c0f0?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/928017/goran">Goran</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">1,138</span><span title="5 gold badges"><span class="badge1"></span><span class="badgecount">5</span></span><span title="16 silver badges"><span class="badge2"></span><span class="badgecount">16</span></span><span title="34 bronze badges"><span class="badge3"></span><span class="badgecount">34</span></span>
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
	    <div id="comments-16753219" class="comments  dno">
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

        <div id="comments-link-16753219" data-rep=50 data-anon=true>

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
								1 Answer
                                <span style="display:none;" itemprop="answerCount">1</span>
						</h2>
						<div>
							<div id="tabs">
        <a href="/questions/16753219/django-get-id-of-the-object-in-save?answertab=active#tab-top" data-nav-xhref="" title="Answers with the latest activity first" data-value="active" data-shortcut="A">
            active</a>
        <a href="/questions/16753219/django-get-id-of-the-object-in-save?answertab=oldest#tab-top" data-nav-xhref="" title="Answers in the order they were provided" data-value="oldest" data-shortcut="O">
            oldest</a>
        <a class="youarehere" href="/questions/16753219/django-get-id-of-the-object-in-save?answertab=votes#tab-top" data-nav-xhref="" title="Answers with the highest score first" data-value="votes" data-shortcut="V">
            votes</a>
</div>
						</div>
					</div>    
				</div>    




  
<a name="16753988"></a>
<div id="answer-16753988" class="answer accepted-answer" data-answerid="16753988"  itemscope itemtype="http://schema.org/Answer" itemprop="acceptedAnswer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="16753988">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">2</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>



        <span class="vote-accepted-on load-accepted-answer-date" title="loading when this answer was accepted...">accepted</span>

</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>First of all? Is the number you're trying to add a fixed number? If so, why do you have to store it in the db at all? You may create a method to your model that works as a property and adds the number when you need it:</p>

<pre><code>class ModelX(models.Model):
    ...
    def special(self):
        num = 1000
        return self.id + num
</code></pre>

<p>If you really need to store this to the db you maybe need to do two database access because as Daniel said, you get the id after the object is stored in the db.</p>

<p>You may modify your <code>save</code> method to this one:</p>

<pre><code>def save(self, *args, **kwargs):
    num = 1000
    self = super(MyModel, self).save(*args, **kwargs)
    self.special = obj.id + num
    self.save()
</code></pre>

<p>Note that this may be optimized by just doing this the first time an object is created in the db, where <code>self.special</code> is <code>NULL</code> or default value depending on how you declared your model.</p>

<pre><code>def save(self, *args, **kwargs):
    num = 1000
    self = super(MyModel, self).save(*args, **kwargs)
    # self.special is null, (creating the object in the db for the 1st time)
    if not self.special: # or if self.special != defaultvalue (defined in MyModel)
        self.special = obj.id + num
        self.save()
</code></pre>

<p>I hope this helps.</p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/16753988" title="short permalink to this answer" class="short-link" id="link-post-16753988">share</a><span class="lsep">|</span><a href="/posts/16753988/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info user-hover">
    <div class="user-action-time">
        answered <span title="2013-05-25 21:18:14Z" class="relativetime">May 25 '13 at 21:18</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/1401900/paulo-bu"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/fCVY7.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/1401900/paulo-bu">Paulo Bu</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score 19,079" dir="ltr">19.1k</span><span title="4 gold badges"><span class="badge1"></span><span class="badgecount">4</span></span><span title="36 silver badges"><span class="badge2"></span><span class="badgecount">36</span></span><span title="53 bronze badges"><span class="badge3"></span><span class="badgecount">53</span></span>
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
	    <div id="comments-16753988" class="comments  dno">
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

        <div id="comments-link-16753988" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>
									<a name='new-answer'></a>
						<form id="post-form" action="/questions/16753219/answer/submit" method="post"  class="post-form">
						    <input type="hidden" id="post-id" value="16753219" />
                            <input type="hidden" id="qualityBanWarningShown" name="qualityBanWarningShown" value="false" />
                            <input type="hidden" name="referrer" value=""/>
							<h2 class="space">Your Answer</h2>


            <script>
            StackExchange.ifUsing("editor", function () {
                StackExchange.using("externalEditor", function () {
                    StackExchange.using("snippets", function () {
                        StackExchange.snippets.init();
                    });
                });
            }, "code-snippets");
        </script>
    

<script>
    StackExchange.ready(function() {
        initTagRenderer("".split(" "), "".split(" "));
       
        StackExchange.using("externalEditor", function() {
                // Have to fire editor after snippets, if snippets enabled
                if (StackExchange.settings.snippets.snippetsEnabled) {
                    StackExchange.using("snippets", function() {
                        createEditor();
                    });
                }
                else {
                    createEditor();
                }
            });

            function createEditor() {
                StackExchange.prepareEditor({
                    heartbeatType: 'answer',
                convertImagesToLinks: true,
                reputationToPostImages: 10,
                bindNavPrevention: true,
                postfix: "",
                    onDemand: true,
                    discardSelector: ".discard-answer"
                    ,immediatelyShowMarkdownHelp:true
                    });
                

        }
    });  
</script>


<div id="post-editor" class="post-editor js-post-editor">

    <div style="position: relative;">     
        <div class="wmd-container">
            <div id="wmd-button-bar" class="wmd-button-bar"></div>
            <textarea id="wmd-input" class="wmd-input" name="post-text" cols="92" rows="15" tabindex="101" data-min-length=""></textarea>
        </div>
    </div>

    <div class="fl" style="margin-top: 8px; height:24px;">&nbsp;</div>
    <div id="draft-saved" class="draft-saved community-option fl" style="margin-top: 8px; height:24px; display:none;">draft saved</div>

    <div id="draft-discarded" class="draft-discarded community-option fl" style="margin-top: 8px; height:24px; display:none;">draft discarded</div>



    <div id="wmd-preview" class="wmd-preview"></div>
    <div></div>
    <div class="edit-block">
        <input id="fkey" name="fkey" type="hidden" value="dab4eff1e964628341bef8bfac35f775">
        <input id="author" name="author" type="text">
    </div>



</div>
							<div style="position: relative;">
								
								            <div class="form-item dno new-post-login">
        
                <div class="new-login-form">
                    <div class="new-login-left">
                        <h3>Sign up or <a id="login-link" href="/users/login?ssrc=question_page&returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f16753219%2fdjango-get-id-of-the-object-in-save%23new-answer">log in</a></h3>
                        <script>
                            StackExchange.ready(function () {
                                StackExchange.helpers.onClickDraftSave('#login-link');
                            });
                        </script>
                        <div class="preferred-login google-login">
                            <p><span class="icon"></span><span>Sign up using Google</span></p>
                        </div>
                        <div class="preferred-login facebook-login">
                            <p><span class="icon"></span><span>Sign up using Facebook</span></p>
                        </div>
                        <div class="preferred-login stackexchange-login">
                            <p><span class="icon"></span><span>Sign up using Email and Password</span></p>
                        </div>
                    </div>
                    <input type="hidden" name="manual-openid" class="manual-openid" />
                    <input type="hidden" name="use-facebook" class="use-facebook" value="false" />
                    <input type="hidden" name="use-google" class="use-google" value="false" />
                    <input type="button" class="submit-openid" value="Submit" style="display:none" />
                    <div class="new-login-right">
                                <h3>Post as a guest</h3>
    <div class="form-item">
        <table>
        <tr>
                    <td class="vm">
                <div>
                    <label for="display-name">Name</label>
                    <input id="display-name" name="display-name" type="text" size="30" maxlength="30" value="" tabindex="105">
                </div>
                <div>
                    <label for="m-address">Email</label>
                    <input id="m-address" name="m-address" type="email" size="30" maxlength="100" value="" tabindex="106" placeholder="required, but never shown" />
                </div>
            </td>
        </tr>
        </table>
    </div>

                    </div>
                </div>
            </div>
            <script>
                StackExchange.ready(
                    function () {
                        StackExchange.openid.initPostLogin('.new-post-login', 'http%3a%2f%2fstackoverflow.com%2fquestions%2f16753219%2fdjango-get-id-of-the-object-in-save%23new-answer', 'question_page');
                    }
                );
            </script>
            <noscript>
                        <h3>Post as a guest</h3>
    <div class="form-item">
        <table>
        <tr>
                    <td class="vm">
                <div>
                    <label for="display-name">Name</label>
                    <input id="display-name" name="display-name" type="text" size="30" maxlength="30" value="" tabindex="105">
                </div>
                <div>
                    <label for="m-address">Email</label>
                    <input id="m-address" name="m-address" type="email" size="30" maxlength="100" value="" tabindex="106" placeholder="required, but never shown" />
                </div>
            </td>
        </tr>
        </table>
    </div>

            </noscript>

							</div>
           
															<div class="form-submit cbt">
									<input id="submit-button" type="submit" value="Post Your Answer" tabindex="110">
									<a href="#" class="btn-clear discard-answer dno">discard</a>

<p class="privacy-policy-agreement">
By posting your answer, you agree to the <a href='http://stackexchange.com/legal/privacy-policy' name='privacy' target='_blank'>privacy policy</a> and <a href='http://stackexchange.com/legal/terms-of-service' name='tos' target='_blank'>terms of service</a>.</p>
<input type="hidden" name="legalLinksShown" value="1" />								</div>
						</form>



						<h2 class="bottom-notice" data-loc="1">
Not the answer you&#39;re looking for?							Browse other questions tagged <a href="/questions/tagged/django" class="post-tag" title="show questions tagged &#39;django&#39;" rel="tag">django</a> <a href="/questions/tagged/django-models" class="post-tag" title="show questions tagged &#39;django-models&#39;" rel="tag">django-models</a> <a href="/questions/tagged/django-admin" class="post-tag" title="show questions tagged &#39;django-admin&#39;" rel="tag">django-admin</a> <a href="/questions/tagged/django-views" class="post-tag" title="show questions tagged &#39;django-views&#39;" rel="tag">django-views</a>  or <a href="/questions/ask">ask your own question</a>.						</h2>
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
			                    <p class="label-key" title="2013-05-25 19:36:05Z"><b>3 years, 11 months ago</b></p>
			                </td>
			            </tr>
			            <tr>
			                <td>
			                    <p class="label-key">viewed</p>
			                </td>

			                <td style="padding-left: 10px">
			                    <p class="label-key">
			                        <b>1277 times</b>
			                    </p>
			                </td>
			            </tr>
			                <tr>
			                    <td>
			                        <p class="label-key">active</p>
			                    </td>
			                    <td style="padding-left: 10px">
			                        <p class="label-key"><b><a href="?lastactivity" class="lastactivity-link" title="2013-05-25 21:18:14Z">3 years, 11 months ago</a></b></p>
			                    </td>
			                </tr>
			        </table>
			    </div>
						
			<script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk378108348",[5,17,2221,1129,43]).setZone(45); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk378108348"></div>
            <div id="hireme"></div>
        <script>
window.clc_request = 'AsisIWfKjtQIAAAAAEOi_wACAAAAAgAAAAAwAAAAfGRqYW5nb3xkamFuZ28tbW9kZWxzfGRqYW5nby1hZG1pbnxkamFuZ28tdmlld3N8AL1NTeqhhUpqSe0';;(function(n){var u={log:window.console.log.bind(window.console,"[clc]"),error:window.console.error.bind(window.console,"[clc]")},f,e,t,r,i;try{if(typeof[].indexOf!="function")return;if(window.attachEvent&&!window.addEventListener)return;if(f=n.allowed,!f)return;if(e=new RegExp(n.allowed),!e.test(location.hostname)){u.error("Invalid host: "+location.hostname);return}if(t=window,t.clc=t.clc||{},t.clc.init=t.clc.init||[],t.clc.init.push(function(n){return n.load()}),t.clc.options){for(r in t.clc.options)n[r]=t.clc.options[r];t.clc.options=n}else t.clc.options=n;i=document.createElement("script");i.async=!0;i.src=n.lib;document.body.appendChild(i)}catch(o){u.error("[clc] Error in loader:",o)}}).call(null, {"lib":"https://cdn.sstatic.net/clc/clc.min.js?v=87491aaa842e","u":"https://clc.stackoverflow.com/markup.js","azw":true,"kt":2000,"tto":true,"d":{"sb":["hireme","clc-sb"],"tlb":["careers1","clc-tlb"],"mlb":["careers3","clc-mlb"]},"h":"clc.stackoverflow.com","autoload":true,"allowed":"^(((talent\\.)?stackoverflow)|(blog\\.codinghorror)|(serverfault|askubuntu)|([^\\.]+\\.stackexchange))\\.com$"});        </script>
			

            

				<div class="module sidebar-related">
					<h4 id="h-related">Related</h4>
                    <div class="related js-gps-related-questions" data-tracker="rq=1">
                        <div class="spacer"><a href="/q/4929098" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">1</div></a><a href="/questions/4929098/django-error-querydict-object-has-no-attribute-meta" class="question-hyperlink">Django error: &#39;QueryDict&#39; object has no attribute &#39;_meta&#39;</a></div><div class="spacer"><a href="/q/8959628" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">1</div></a><a href="/questions/8959628/django-admin-for-users-objects" class="question-hyperlink">Django admin for User&#39;s objects</a></div><div class="spacer"><a href="/q/10194235" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">2</div></a><a href="/questions/10194235/saving-an-image-as-self-id-jpg-on-django-admin" class="question-hyperlink">saving an image as [self.id].jpg on DJANGO admin</a></div><div class="spacer"><a href="/q/15346993" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">1</div></a><a href="/questions/15346993/add-custom-user-permission-in-django" class="question-hyperlink">add custom user permission in django</a></div><div class="spacer"><a href="/q/19886934" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">1</div></a><a href="/questions/19886934/django-how-to-get-the-current-users-group-id" class="question-hyperlink">Django: how to get the current user&#39;s group id</a></div><div class="spacer"><a href="/q/20752990" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">0</div></a><a href="/questions/20752990/django-admin-editable-field-take-action" class="question-hyperlink">Django admin editable field - take action</a></div><div class="spacer"><a href="/q/25470238" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">1</div></a><a href="/questions/25470238/upload-to-attribute-in-django-with-filefield" class="question-hyperlink">upload to attribute in django with FileField</a></div><div class="spacer"><a href="/q/26505701" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/26505701/display-a-model-objects-as-choices-in-django-poll-app-choices" class="question-hyperlink">Display a model objects as choices in Django Poll app choices</a></div><div class="spacer"><a href="/q/28675733" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">-1</div></a><a href="/questions/28675733/search-django-objects-order-bychild-model-field" class="question-hyperlink">Search Django Objects order_by(child_model_field)</a></div><div class="spacer"><a href="/q/41016160" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/41016160/ensure-saving-of-multiple-objects-in-django-service" class="question-hyperlink">Ensure Saving of multiple Objects in Django service</a></div>
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
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117842/hare-krishna-hare-krishna-krishna-krishna-hare-hare" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Hare Krishna Hare Krishna Krishna Krishna Hare Hare
                </a>

            </li>
            <li >
                <div class="favicon favicon-graphicdesign" title="Graphic Design Stack Exchange"></div><a href="https://graphicdesign.stackexchange.com/questions/90537/how-did-escher-make-his-tesselations" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:174 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How did Escher make his tesselations?
                </a>

            </li>
            <li >
                <div class="favicon favicon-tex" title="TeX - LaTeX Stack Exchange"></div><a href="https://tex.stackexchange.com/questions/367171/why-should-i-be-interested-in-lua" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:85 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why should I be interested in Lua?
                </a>

            </li>
            <li >
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/98973/how-much-can-i-customize-enemies-in-a-dd-game" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How much can I customize enemies in a D&amp;D game?
                </a>

            </li>
            <li >
                <div class="favicon favicon-latin" title="Latin Language Stack Exchange"></div><a href="https://latin.stackexchange.com/questions/4228/how-can-i-ask-the-spelling-of-a-word-in-latin" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:644 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How can I ask the spelling of a word in Latin?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-salesforce" title="Salesforce Stack Exchange"></div><a href="https://salesforce.stackexchange.com/questions/172171/how-to-combine-for-view-and-for-reference" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:459 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How to combine FOR VIEW and FOR REFERENCE?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-workplace" title="The Workplace Stack Exchange"></div><a href="https://workplace.stackexchange.com/questions/90001/do-i-need-to-do-things-the-way-boss-asks" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:423 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Do I need to do things the way boss asks?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codereview" title="Code Review Stack Exchange"></div><a href="https://codereview.stackexchange.com/questions/162078/beginners-linq-exercise-to-print-the-odd-numbers-in-descending-order" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:196 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Beginner&#39;s LINQ exercise to print the odd numbers in descending order
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-tex" title="TeX - LaTeX Stack Exchange"></div><a href="https://tex.stackexchange.com/questions/367278/vertical-alignment-when-using-pictures-in-multirow" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:85 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Vertical alignment when using pictures in multirow
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-space" title="Space Exploration Stack Exchange"></div><a href="https://space.stackexchange.com/questions/21285/why-do-we-worry-about-contaminating-some-solar-bodies-but-not-others" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:508 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why do we worry about contaminating some solar bodies but not others?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117996/find-the-first-bracket-match" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Find the First Bracket Match
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-mathematica" title="Mathematica Stack Exchange"></div><a href="https://mathematica.stackexchange.com/questions/144696/delete-duplicates-from-list-of-lists-as-if-on-a-necklace" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:387 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Delete duplicates from list of lists as if on a necklace
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-math" title="Mathematics Stack Exchange"></div><a href="https://math.stackexchange.com/questions/2256986/which-insights-are-particularly-simple-to-get-through-category-theory" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:69 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Which insights are particularly simple to get through category theory?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79275/what-would-a-giant-s-voice-be-like" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    What would a Giant’s voice be like?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-math" title="Mathematics Stack Exchange"></div><a href="https://math.stackexchange.com/questions/2256914/doubt-over-the-proof-of-cayley-hamilton-heorem" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:69 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Doubt over the proof of Cayley- Hamilton heorem
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/99038/will-changing-the-damage-type-of-some-spells-break-my-game" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Will changing the damage type of some spells break my game?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/88595/what-incentive-does-a-professor-have-to-allow-a-student-to-enroll-in-a-course-th" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:415 }); posts_hot_network.click({ item_type:2, location:11 })">
                    What incentive does a professor have to allow a student to enroll in a course that is already full?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-aviation" title="Aviation Stack Exchange"></div><a href="https://aviation.stackexchange.com/questions/37521/how-is-a-glider-recovered-and-returned-to-an-airport-after-landing-in-a-field" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:528 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How is a glider recovered and returned to an airport after landing in a field?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/88651/is-it-normal-that-a-peer-reviewer-would-ask-for-an-executable-file-in-order-to-c" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:415 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Is it normal that a peer reviewer would ask for an executable file in order to check my results?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-english" title="English Language &amp; Usage Stack Exchange"></div><a href="https://english.stackexchange.com/questions/386099/verb-meaning-to-alter-someones-famous-saying" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:97 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Verb meaning &quot;to alter someone&#39;s famous saying&quot;
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79424/how-to-justify-powerful-magic-items-being-for-sale-in-a-high-magic-world" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How to justify powerful magic items being for sale in a high-magic world?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117928/find-how-many-alphanumeric-characters-can-be-made-up-of-a-single-number" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Find how many alphanumeric characters can be made up of a single number
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-stackoverflow" title="Stack Overflow"></div><a href="http://stackoverflow.com/questions/43618487/why-are-emoji-characters-like-treated-so-strangely-in-swift-strings" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:1 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why are emoji characters like &#128105;‍&#128105;‍&#128103;‍&#128102; treated so strangely in Swift strings?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79376/refueling-from-stars" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Refueling from stars
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
        <a href="/feeds/question/16753219" title="feed of this question and its answers">
            <span class="feed-icon"></span>question feed
        </a>
    </div>
</div>	<script>
StackExchange.ready(function(){$.get('/posts/16753219/ivc/e2ee');});
</script>
<noscript>
    <div><img src="/posts/16753219/ivc/e2ee" class="dno" alt="" width="0" height="0"></div>
</noscript><div style="display:none" id="prettify-lang">default</div></div>


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
                ados_setKeywords('django,django-models,django-admin,django-views');; ados_load();
        });   
        
</script>

    <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m);
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
                ga('create', 'UA-5620270-1');
                ga('create', 'UA-5620270-59', {name: 'pageData', sampleRate: 5 });
                ga('set', 'dimension2', '|django|django-models|django-admin|django-views|');
                ga('pageData.set', 'dimension2', '|django|django-models|django-admin|django-views|');
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