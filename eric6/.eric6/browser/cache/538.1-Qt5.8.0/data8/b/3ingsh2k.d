   �         lhttp://stackoverflow.com/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python�       ���� �       ����          
     O K           �      Content-Type   text/html; charset=utf-8   Content-Encoding   gzip   X-Frame-Options   
SAMEORIGIN   X-Request-Guid   $aa033ead-9007-4415-ac59-547047581449   Accept-Ranges   bytes   Date   Sat, 29 Apr 2017 05:35:41 GMT   Via   1.1 varnish   Age   0   X-Served-By   cache-atl6220-ATL   X-Cache   MISS   X-Cache-Hits   0   X-Timer   S1493444142.769641,VS0,VE38   Vary   Accept-Encoding,Fastly-SSL   X-DNS-Prefetch-Control   off   Cache-Control   private <!DOCTYPE html>
<html itemscope itemtype="http://schema.org/QAPage">

<head>

<title>smtplib - SMTPAuthenticationError when sending mail using gmail and python - Stack Overflow</title>
    <link rel="shortcut icon" href="https://cdn.sstatic.net/Sites/stackoverflow/img/favicon.ico?v=4f32ecc8f43d">
    <link rel="apple-touch-icon image_src" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">
    <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="/opensearch.xml">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:domain" content="stackoverflow.com"/>
    <meta property="og:type" content="website" />

    <meta property="og:image" itemprop="image primaryImageOfPage" content="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded" />
    <meta name="twitter:title" property="og:title" itemprop="title name" content="SMTPAuthenticationError when sending mail using gmail and python" />
    <meta name="twitter:description" property="og:description" itemprop="description" content="when i try to send mail using gmail and python error occurred this type of question are already in this site but doesn&#39;t help to me 

gmail_user = &quot;me@gmail.com&quot;
gmail_pwd = &quot;password&quot;
TO = &#39;friend..." />
    <meta property="og:url" content="http://stackoverflow.com/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python"/>
    <link rel="canonical" href="http://stackoverflow.com/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python" />

    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.sstatic.net/Js/stub.en.js?v=6739a504b710"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/all.css?v=f4d760dc7b76">

            <meta name="twitter:app:country" content="US" />
            <meta name="twitter:app:name:iphone" content="Stack Exchange iOS" />
            <meta name="twitter:app:id:iphone" content="871299723" />
            <meta name="twitter:app:url:iphone" content="se-zaphod://stackoverflow.com/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python" />
            <meta name="twitter:app:name:ipad" content="Stack Exchange iOS" />
            <meta name="twitter:app:id:ipad" content="871299723" />
            <meta name="twitter:app:url:ipad" content="se-zaphod://stackoverflow.com/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python" />
            <meta name="twitter:app:name:googleplay" content="Stack Exchange Android">
            <meta name="twitter:app:url:googleplay" content="http://stackoverflow.com/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python">
            <meta name="twitter:app:id:googleplay" content="com.stackexchange.marvin">
        <script>
        
            StackExchange.ready(function () {
                                    
                    StackExchange.using("snippets", function () {
                        StackExchange.snippets.initSnippetRenderer();
                    });
                    

                StackExchange.using("postValidation", function () {
                    StackExchange.postValidation.initOnBlurAndSubmit($('#post-form'), 2, 'answer');
                });

                
                StackExchange.question.init({showAnswerHelp:true,totalCommentCount:0,shownCommentCount:0,highlightColor:'#F4A83D',backgroundColor:'#FFF',questionId:26852128});

                styleCode();

                    StackExchange.realtime.subscribeToQuestion('1', '26852128');
                                                                    StackExchange.using("gps", function () { StackExchange.gps.trackOutboundClicks('#content', '.post-text', true); });

            });
        </script>


    <script>
        StackExchange.init({"locale":"en","stackAuthUrl":"https://stackauth.com","networkMetaHostname":"meta.stackexchange.com","serverTime":1493444141,"routeName":"Questions/Show","site":{"name":"Stack Overflow","description":"Q&A for professional and enthusiast programmers","isNoticesTabEnabled":true,"recaptchaPublicKey":"6LdchgIAAAAAAJwGpIzRQSOFaO0pU6s44Xt8aTwc","recaptchaAudioLang":"en","enableNewTagCreationWarning":true,"insertSpaceAfterNameTabCompletion":false,"id":1,"enableInsertDocLinkDialog":true,"childUrl":"https://meta.stackoverflow.com","enableSocialMediaInSharePopup":true,"protocol":"http"},"user":{"fkey":"dab4eff1e964628341bef8bfac35f775","rep":0,"isAnonymous":true,"isAnonymousNetworkWide":true,"canSeeNewHeaderDesign":true,"ab":{"devstory_timeline_exp":{"v":"c","g":1}}},"events":{"postType":{"question":1},"postEditionSection":{"title":1,"body":2,"tags":3}},"story":{"minCompleteBodyLength":75,"likedTagsMaxLength":300,"dislikedTagsMaxLength":300}}, {"site":{"allowImageUploads":true,"enableUserHovercards":true,"styleCode":true,"enableNewLinkInsertDialog":true,"enableImgurHttps":true,"forceHttpsImages":true},"comments":{},"userProfile":{"openGraphAPIKey":"58740831ad23540e00c58987"},"tags":{},"accounts":{"currentPasswordRequiredForChangingStackIdPassword":true},"flags":{"allowRetractingFlags":true},"snippets":{"snippetsEnabled":true,"renderDomain":"stacksnippets.net"},"markdown":{"asteriskIntraWordEmphasis":true},"monitoring":{"clientTimingsAbsoluteTimeout":30000,"clientTimingsDebounceTimeout":1000}});
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
>Sign up</a> or <a href="https://stackoverflow.com/users/login?ssrc=site_switcher&amp;returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f26852128%2fsmtpauthenticationerror-when-sending-mail-using-gmail-and-python" class="login-link js-gps-track"     data-gps-track="site_switcher.click({ item_type:11 })"
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
                    <a href="https://stackoverflow.com/users/login?ssrc=head&returnurl=http%3a%2f%2fstackoverflow.com%2fquestions%2f26852128%2fsmtpauthenticationerror-when-sending-mail-using-gmail-and-python" class="login-link btn-clear" rel="nofollow">Log In</a>
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
                <h1 itemprop="name"><a href="/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python" class="question-hyperlink">SMTPAuthenticationError when sending mail using gmail and python [duplicate]</a></h1>

            
<div class="aside-cta" role="navigation" aria-label="ask new question">
    <a href="/questions/ask" class="btn-outlined">Ask Question</a>
</div>
		</div>
			<div id="mainbar" role="main" aria-label="question and answers">

			

<div class="question" data-questionid="26852128"  id="question">

    <script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk1522217803",4).setZone(43); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk1522217803"></div>    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="26852128">
        <a class="vote-up-off" title="This question shows research effort; it is useful and clear">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">27</span>
        <a class="vote-down-off" title="This question does not show any research effort; it is unclear or not useful">down vote</a>

        <a class="star-off" href="#">favorite</a>
        <div class="favoritecount"><b>11</b></div>


</div>

            </td>
            
<td class="postcell">
<div>
    <div class="post-text" itemprop="text">

<div class="question-status question-originals-of-duplicate">
    <p>This question already has an answer here:</p>
    <ul>
        <li>
            <a href="/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python" dir="ltr">How to send an email with Gmail as provider using Python?</a>
                <span class="question-originals-answer-count">
                    10 answers
                </span>
        </li>
    </ul>
    </div>
<p>when i try to send mail using gmail and python error occurred this type of question are already in this site but doesn't help to me </p>

<pre><code>gmail_user = "me@gmail.com"
gmail_pwd = "password"
TO = 'friend@gmail.com'
SUBJECT = "Testing sending using gmail"
TEXT = "Testing sending mail using gmail servers"
server = smtplib.SMTP('smtp.gmail.com', 587)
server.ehlo()
server.starttls()
server.login(gmail_user, gmail_pwd)
BODY = '\r\n'.join(['To: %s' % TO,
        'From: %s' % gmail_user,
        'Subject: %s' % SUBJECT,
        '', TEXT])

server.sendmail(gmail_user, [TO], BODY)
print ('email sent')
</code></pre>

<p>error:</p>

<pre><code>    server.login(gmail_user, gmail_pwd)
    File "/usr/lib/python3.4/smtplib.py", line 639, in login
   raise SMTPAuthenticationError(code, resp)
   smtplib.SMTPAuthenticationError: (534, b'5.7.14   
   &lt;https://accounts.google.com/ContinueSignIn?sarp=1&amp;scc=1&amp;plt=AKgnsbtl1\n5.7.14       Li2yir27TqbRfvc02CzPqZoCqope_OQbulDzFqL-msIfsxObCTQ7TpWnbxIoAaQoPuL9ge\n5.7.14 BUgbiOqhTEPqJfb02d_L6rrdduHSxv26s_Ztg_JYYavkrqgs85IT1xZYwtbWIRE8OIvQKf\n5.7.14 xxtT7ENlZTS0Xyqnc1u4_MOrBVW8pgyNyeEgKKnKNyxce76JrsdnE1JgSQzr3pr47bL-kC\n5.7.14 XifnWXg&gt; Please log in via your web browser and then try again.\n5.7.14 Learn more at\n5.7.14 https://support.google.com/mail/bin/answer.py?answer=78754 fl15sm17237099pdb.92 - gsmtp')    
</code></pre>
    </div>
    <div class="post-taglist">
        <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/smtplib" class="post-tag" title="show questions tagged &#39;smtplib&#39;" rel="tag">smtplib</a> 
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/q/26852128" title="short permalink to this question" class="short-link" id="link-post-26852128">share</a><span class="lsep">|</span><a href="/posts/26852128/edit" class="suggest-edit-post" title="">improve this question</a></div>        
    </td>
    <td align="right" class="post-signature">
<div class="user-info user-hover">
    <div class="user-action-time">
        <a href="/posts/26852128/revisions" title="show all edits to this post">edited <span title="2015-12-21 22:24:10Z" class="relativetime">Dec 21 '15 at 22:24</span></a>
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
        asked <span title="2014-11-10 20:08:36Z" class="relativetime">Nov 10 '14 at 20:08</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/3851743/mans"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/d3e9a82726dcf096e46fe13d6a3a54fd?s=32&amp;d=identicon&amp;r=PG&amp;f=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/3851743/mans">mans</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">168</span><span title="1 gold badge"><span class="badge1"></span><span class="badgecount">1</span></span><span title="2 silver badges"><span class="badge2"></span><span class="badgecount">2</span></span><span title="6 bronze badges"><span class="badge3"></span><span class="badgecount">6</span></span>
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
            <td class="special-status" colspan="2">
                <div class="question-status">
        <h2>                    <b>marked</b> as duplicate by <a href="/users/895245/ciro-santilli-709%e5%a4%a7%e6%8a%93%e6%8d%95-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f">Ciro Santilli 709大抓捕 六四事件 法轮功</a>, <a href="/users/2901002/jezrael">jezrael</a>, <span class="nowrap"><a href="/users/4099593/bhargav-rao">Bhargav Rao</a><span class="mod-flair" title="moderator">&#9830;</span><span class="dupe-hammer-message-hover"><a class="badge-tag" href="/badges/tag-badges/python?badgeClass=Gold"><span class="badge1"></span>&nbsp;python</a></span>
<span class="dupe-hammer-message" style="display:none">Users with the <a class="badge-tag" href="/badges/tag-badges/python?badgeClass=Gold"><span class="badge1"></span>&nbsp;python</a> badge can single-handedly close <a href="/questions/tagged/python" class="post-tag no-tag-menu" title="show questions tagged &#39;python&#39;" rel="tag">python</a> questions as duplicates and reopen them as needed.</span>
<script>
    StackExchange.ready(function() {
        if (StackExchange.options.isMobile) return;

        $('.dupe-hammer-message-hover:not(.hover-bound)').each(function() {
            var $hover = $(this).addClass('hover-bound'),
                $msg = $hover.siblings('.dupe-hammer-message');
            
            $hover.hover(
                function() {
                    $hover.showInfoMessage('', {
                        messageElement: $msg.clone().show(),
                        transient: false,
                        position: { my: 'bottom left', at: 'top center', offsetTop: -7 },
                        dismissable: false,
                        relativeToBody: true
                    });
                },
                function() {
                    StackExchange.helpers.removeMessages();
                }
            );
        });
    });
</script></span> <span dir="ltr"><span title="2015-12-24 21:08:42Z" class="relativetime">Dec 24 '15 at 21:08</span></span>
</h2>
        <p>This question has been asked before and already has an answer. If those answers do not fully address your question, please <a href="/questions/ask">ask a new question</a>.</p>
    </div>
            </td>
        </tr>
    
<tr>
    <td class="votecell"></td>
    <td>
	    <div id="comments-26852128" class="comments  dno">
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

        <div id="comments-link-26852128" data-rep=50 data-anon=true>

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
								3 Answers
                                <span style="display:none;" itemprop="answerCount">3</span>
						</h2>
						<div>
							<div id="tabs">
        <a href="/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python?answertab=active#tab-top" data-nav-xhref="" title="Answers with the latest activity first" data-value="active" data-shortcut="A">
            active</a>
        <a href="/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python?answertab=oldest#tab-top" data-nav-xhref="" title="Answers in the order they were provided" data-value="oldest" data-shortcut="O">
            oldest</a>
        <a class="youarehere" href="/questions/26852128/smtpauthenticationerror-when-sending-mail-using-gmail-and-python?answertab=votes#tab-top" data-nav-xhref="" title="Answers with the highest score first" data-value="votes" data-shortcut="V">
            votes</a>
</div>
						</div>
					</div>    
				</div>    




  
<a name="26852782"></a>
<div id="answer-26852782" class="answer accepted-answer" data-answerid="26852782"  itemscope itemtype="http://schema.org/Answer" itemprop="acceptedAnswer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="26852782">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">57</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>



        <span class="vote-accepted-on load-accepted-answer-date" title="loading when this answer was accepted...">accepted</span>

</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>Your code looks correct. Try logging in through your browser and if you are able to access your account come back and try your code again.
Just make sure that you have typed your username and password correct</p>

<p><strong>EDIT</strong>:
Google blocks sign-in attempts from apps which do not use modern security standards (mentioned on their support <a href="https://support.google.com/accounts/answer/6010255?hl=en">page</a>). You can however, turn on/off this safety feature by going to the link below:</p>

<p>Go to this link and select <strong>Turn On</strong><br>
<a href="https://www.google.com/settings/security/lesssecureapps">https://www.google.com/settings/security/lesssecureapps</a></p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/26852782" title="short permalink to this answer" class="short-link" id="link-post-26852782">share</a><span class="lsep">|</span><a href="/posts/26852782/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
    <td align="right" class="post-signature">
<div class="user-info ">
    <div class="user-action-time">
        <a href="/posts/26852782/revisions" title="show all edits to this post">edited <span title="2015-11-04 22:43:11Z" class="relativetime">Nov 4 '15 at 22:43</span></a>
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
        answered <span title="2014-11-10 20:52:21Z" class="relativetime">Nov 10 '14 at 20:52</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/2561618/aaveg"><div class="gravatar-wrapper-32"><img src="https://www.gravatar.com/avatar/e23313aa2cf030b1ec2ed44793178801?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/2561618/aaveg">aaveg</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">867</span><span title="8 silver badges"><span class="badge2"></span><span class="badgecount">8</span></span><span title="15 bronze badges"><span class="badge3"></span><span class="badgecount">15</span></span>
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
	    <div id="comments-26852782" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="4"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-42268187" class="comment ">
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
                <span class="comment-copy">username and password are working fine in my browser</span>
                    &ndash;&nbsp;<a href="/users/3851743/mans"
                       title="168 reputation"
                       class="comment-user owner">mans</a>
                <span class="comment-date" dir="ltr"><span title="2014-11-10 20:57:41Z" class="relativetime-clean">Nov 10 '14 at 20:57</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-42268292" class="comment ">
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
                <span class="comment-copy">Since its an authentication error.  possible reasons could be: 1) Incorrect username password(capital letters should be taken care of) 2)Too many unsuccessful attempts therefore, you need to fill the captcha. That can be done by by the browser 3) Not too sure about this but in some cases, slow internet connection</span>
                    &ndash;&nbsp;<a href="/users/2561618/aaveg"
                       title="867 reputation"
                       class="comment-user">aaveg</a>
                <span class="comment-date" dir="ltr"><span title="2014-11-10 21:01:52Z" class="relativetime-clean">Nov 10 '14 at 21:01</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-50710095" class="comment ">
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
                <span class="comment-copy">Make sure you click turn on, and not turn off! I lost two hours of time because of this simple error :)</span>
                    &ndash;&nbsp;<a href="/users/4123669/kehlin-swain"
                       title="108 reputation"
                       class="comment-user">Kehlin Swain</a>
                <span class="comment-date" dir="ltr"><span title="2015-07-12 06:12:53Z" class="relativetime-clean">Jul 12 '15 at 6:12</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-56856426" class="comment ">
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
                <span class="comment-copy">Hi! I tried going to this setting in my google business account, but it says the permission lies with administrator, even though I&#39;m the administrator!</span>
                    &ndash;&nbsp;<a href="/users/808257/anant-gupta"
                       title="303 reputation"
                       class="comment-user">Anant Gupta</a>
                <span class="comment-date" dir="ltr"><span title="2016-01-01 14:03:12Z" class="relativetime-clean">Jan 1 '16 at 14:03</span></span>
                                                                            </div>
                    </td>
    </tr>
    <tr id="comment-61492688" class="comment ">
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
                <span class="comment-copy">@AnantGupta <code>Note to Google Apps users: This setting is hidden if your administrator has locked less secure app account access.</code> you have to enable this in the admin console first and after a while you will be abler to allow <code>lesssecureapps</code></span>
                    &ndash;&nbsp;<a href="/users/977622/psychok7"
                       title="1,867 reputation"
                       class="comment-user">psychok7</a>
                <span class="comment-date" dir="ltr"><span title="2016-05-01 15:45:39Z" class="relativetime-clean">May 1 '16 at 15:45</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-26852782" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link  dno"
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   ></a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link " title="expand to show all comments on this post" href=# onclick="">show <b>4</b> more comments</a>
        </div>         
    </td>
</tr>    </table>
</div>
<script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk1353792049",4).setZone(44); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk1353792049"></div>
  
<a name="26853573"></a>
<div id="answer-26853573" class="answer" data-answerid="26853573"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="26853573">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">1</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>I have just sent an email with gmail through Python.
Try to use smtplib.SMTP_SSL to make the connection. Also, you may try to change the gmail domain and port.</p>

<p>So, you may get a chance with:</p>

<pre><code>server = smtplib.SMTP_SSL('smtp.googlemail.com', 465)
server.login(gmail_user, password)
server.sendmail(gmail_user, TO, BODY)
</code></pre>

<p>As a plus, you could check the email builtin module. In this way, you can improve the readability of you your code and handle emails headers easily.</p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/26853573" title="short permalink to this answer" class="short-link" id="link-post-26853573">share</a><span class="lsep">|</span><a href="/posts/26853573/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2014-11-10 21:46:31Z" class="relativetime">Nov 10 '14 at 21:46</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/3689669/ppalacios"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/GI8W4.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/3689669/ppalacios">ppalacios</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">799</span><span title="4 silver badges"><span class="badge2"></span><span class="badgecount">4</span></span><span title="18 bronze badges"><span class="badge3"></span><span class="badgecount">18</span></span>
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
	    <div id="comments-26853573" class="comments  dno">
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

        <div id="comments-link-26853573" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>

  
<a name="29125232"></a>
<div id="answer-29125232" class="answer" data-answerid="29125232"  itemscope itemtype="http://schema.org/Answer">
    <table>
        <tr>
            <td class="votecell">
                

<div class="vote">
        <input type="hidden" name="_id_" value="29125232">
        <a class="vote-up-off" title="This answer is useful">up vote</a>
        <span itemprop="upvoteCount" class="vote-count-post ">0</span>
        <a class="vote-down-off" title="This answer is not useful">down vote</a>




</div>

            </td>
            


<td class="answercell">
    <div class="post-text" itemprop="text">
<p>Your code looks correct but sometimes google block an ip when you try to send a email since a unusual  location, so, you can unblock in the next link</p>

<p><a href="https://support.google.com/accounts/answer/6009563" rel="nofollow">https://support.google.com/accounts/answer/6009563</a> and clicked in accounts.google.com/DisplayUnlockCaptcha .</p>
    </div>
    <table class="fw">
    <tr>
    <td class="vt">
<div class="post-menu"><a href="/a/29125232" title="short permalink to this answer" class="short-link" id="link-post-29125232">share</a><span class="lsep">|</span><a href="/posts/29125232/edit" class="suggest-edit-post" title="">improve this answer</a></div>                    </td>
            


    <td align="right" class="post-signature">   
       

    <div class="user-info ">
    <div class="user-action-time">
        answered <span title="2015-03-18 14:51:02Z" class="relativetime">Mar 18 '15 at 14:51</span>
    </div>
    <div class="user-gravatar32">
        <a href="/users/2175928/taz"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/gH4vt.jpg?s=32&amp;g=1" alt="" width="32" height="32"></div></a>
    </div>
    <div class="user-details">
        <a href="/users/2175928/taz">taz</a>
        <div class="-flair">
            <span class="reputation-score" title="reputation score " dir="ltr">1</span>
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
	    <div id="comments-29125232" class="comments ">
		    <table>
                <tbody data-remaining-comments-count="0"
                       data-canpost="false"
                       data-cansee="true"
                       data-comments-unavailable="false"
                       data-addlink-disabled="true">



    <tr id="comment-46477638" class="comment ">
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
                <span class="comment-copy">Please describe some points of the solution, since the link is valid now but could be unreachable later</span>
                    &ndash;&nbsp;<a href="/users/4579155/abarisone"
                       title="2,521 reputation"
                       class="comment-user">abarisone</a>
                <span class="comment-date" dir="ltr"><span title="2015-03-18 15:15:14Z" class="relativetime-clean">Mar 18 '15 at 15:15</span></span>
                                                                            </div>
                    </td>
    </tr>
                </tbody>
		    </table>
	    </div>

        <div id="comments-link-29125232" data-rep=50 data-anon=true>

                <a class="js-add-link comments-link disabled-link "
                   title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”."
                   >add a comment</a><span class="js-link-separator dno">&nbsp;|&nbsp;</span>
            <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
        </div>         
    </td>
</tr>    </table>
</div>
				


						<h2 class="bottom-notice" data-loc="1">
Not the answer you&#39;re looking for?							Browse other questions tagged <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/smtplib" class="post-tag" title="show questions tagged &#39;smtplib&#39;" rel="tag">smtplib</a>  or <a href="/questions/ask">ask your own question</a>.						</h2>
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
			                    <p class="label-key" title="2014-11-10 20:08:36Z"><b>2 years, 5 months ago</b></p>
			                </td>
			            </tr>
			            <tr>
			                <td>
			                    <p class="label-key">viewed</p>
			                </td>

			                <td style="padding-left: 10px">
			                    <p class="label-key">
			                        <b>29566 times</b>
			                    </p>
			                </td>
			            </tr>
			                <tr>
			                    <td>
			                        <p class="label-key">active</p>
			                    </td>
			                    <td style="padding-left: 10px">
			                        <p class="label-key"><b><a href="?lastactivity" class="lastactivity-link" title="2015-12-21 22:24:10Z">1 year, 4 months ago</a></b></p>
			                    </td>
			                </tr>
			        </table>
			    </div>
						
			<script>
                var ados = ados || {}; ados.run = ados.run || [];
                ados.run.push(function () { ados_add_placement(22,8277,"adzerk1069657120",[5,17,2221,1129,43]).setZone(45); });
            </script>
            <div class="everyonelovesstackoverflow" id="adzerk1069657120"></div>
            <div id="hireme"></div>
        <script>
window.clc_request = 'Ag4aUpPBjtQIAAAAACC7mQECAAAAAgAAAAAQAAAAfHB5dGhvbnxzbXRwbGlifACOzEoLiO9XXgnN';;(function(n){var u={log:window.console.log.bind(window.console,"[clc]"),error:window.console.error.bind(window.console,"[clc]")},f,e,t,r,i;try{if(typeof[].indexOf!="function")return;if(window.attachEvent&&!window.addEventListener)return;if(f=n.allowed,!f)return;if(e=new RegExp(n.allowed),!e.test(location.hostname)){u.error("Invalid host: "+location.hostname);return}if(t=window,t.clc=t.clc||{},t.clc.init=t.clc.init||[],t.clc.init.push(function(n){return n.load()}),t.clc.options){for(r in t.clc.options)n[r]=t.clc.options[r];t.clc.options=n}else t.clc.options=n;i=document.createElement("script");i.async=!0;i.src=n.lib;document.body.appendChild(i)}catch(o){u.error("[clc] Error in loader:",o)}}).call(null, {"lib":"https://cdn.sstatic.net/clc/clc.min.js?v=87491aaa842e","u":"https://clc.stackoverflow.com/markup.js","azw":true,"kt":2000,"tto":true,"d":{"sb":["hireme","clc-sb"],"tlb":["careers1","clc-tlb"],"mlb":["careers3","clc-mlb"]},"h":"clc.stackoverflow.com","autoload":true,"allowed":"^(((talent\\.)?stackoverflow)|(blog\\.codinghorror)|(serverfault|askubuntu)|([^\\.]+\\.stackexchange))\\.com$"});        </script>
			<div class="module" id="chat-feature">

    <h4><a href="http://chat.stackoverflow.com" id="h-chat-link">Visit Chat</a></h4>
    <div class="related" id="ad502-rooms"></div>
    <script>
    // <!--
        StackExchange.ready(
        function () {
            var options = {
                chatUrl: 'http://chat.stackoverflow.com',
                reloadUrl: '/api/recent-chat',
                preloadData: {"activeUsers":35,"activeRooms":33,"rooms":[{"name":"JavaScript","id":17,"lastPost":1493421083,"posts":3963670,"users":[{"name":"Caprica Six","id":1839506,"emailhash":"!https://i.stack.imgur.com/Sej2t.jpg?s=128\u0026g=1","lastPost":1493421016},{"name":"le_m","id":1647737,"emailhash":"!https://i.stack.imgur.com/SOXrc.png?s=128\u0026g=1","lastPost":1493420909},{"name":"Anuj Balan","id":818557,"emailhash":"73860ca0be24623a074018de54f6f361","lastPost":1493420461},{"name":"Jenna Sloan","id":7035175,"emailhash":"!https://lh4.googleusercontent.com/-nL0cN4c3sY4/AAAAAAAAAAI/AAAAAAAAACM/zdZW0RFyMFM/photo.jpg?sz=128","lastPost":1493417885},{"name":"Zirak","id":617762,"emailhash":"348d335cd13298e475eeaefa1841dee6","lastPost":1493417231},{"name":"Sterling Archer","id":774078,"emailhash":"!https://i.stack.imgur.com/WvDon.jpg?s=128\u0026g=1","lastPost":1493416987},{"name":"ssube","id":129032,"emailhash":"e8bea8f9e6972dfd3113d67da68e6933","lastPost":1493416198}],"messages":[{"date":1493421083,"user":"GreetingsFriend","userid":7545404}],"singleImage":false,"tags":["ecmascript","ecmascript-6","hypescript","javascript","nodejs"]},{"name":"PHP","id":11,"lastPost":1493420684,"posts":2739460,"users":[{"name":"bwoebi","id":2153758,"emailhash":"!https://i.stack.imgur.com/oEgTs.png?s=128\u0026g=1","lastPost":1493420684},{"name":"Hello","id":5540080,"emailhash":"!https://i.stack.imgur.com/D1WMQ.jpg?s=128\u0026g=1","lastPost":1493419336},{"name":"Jimbo","id":736809,"emailhash":"e189f89d366442f943d49e00566b6d51","lastPost":1493419030},{"name":"Wes","id":4251625,"emailhash":"!https://i.stack.imgur.com/JCjDM.jpg?s=128\u0026g=1","lastPost":1493417832},{"name":"Trowski","id":2439754,"emailhash":"ff52be277448d60987ee029864145638","lastPost":1493415418},{"name":"Jeeves","id":5764893,"emailhash":"!https://i.stack.imgur.com/aMuw2.jpg?s=128\u0026g=1","lastPost":1493411467},{"name":"Ekin","id":2852427,"emailhash":"!https://i.stack.imgur.com/we57C.jpg?s=128\u0026g=1","lastPost":1493410977}],"messages":[{"date":1493420684,"user":"bwoebi","userid":2153758}],"singleImage":false,"tags":["php"]}]} 
            };

            StackExchange.chatAd.init(options);
        });
    // -->
    </script>

</div>

            <div class="module sidebar-linked">
	<h4 id="h-linked">Linked</h4>
	<div class="linked" data-tracker="lq=1">

<div class="spacer">
	<a href="/q/10147455" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes answered-accepted large">164</div>
	</a>
	<a href="/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python?noredirect=1" class="question-hyperlink">How to send an email with Gmail as provider using Python?</a>
</div>
<div class="spacer">
	<a href="/q/37181291" title="Vote score (upvotes - downvotes)">
		<div class="answer-votes  default">0</div>
	</a>
	<a href="/questions/37181291/smtp-sending-e-mail-issue-with-gmail?noredirect=1" class="question-hyperlink">SMTP Sending e-mail issue with Gmail</a>
</div>			</div>
</div>

				<div class="module sidebar-related">
					<h4 id="h-related">Related</h4>
                    <div class="related js-gps-related-questions" data-tracker="rq=1">
                        <div class="spacer"><a href="/q/231767" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted extra-large">6314</div></a><a href="/questions/231767/what-does-the-yield-keyword-do-in-python" class="question-hyperlink">What does the &ldquo;yield&rdquo; keyword do in Python?</a></div><div class="spacer"><a href="/q/5029909" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/5029909/python-how-to-send-mail-under-proxy" class="question-hyperlink">python how to send mail under proxy</a></div><div class="spacer"><a href="/q/6270782" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">89</div></a><a href="/questions/6270782/how-to-send-an-email-with-python" class="question-hyperlink">How to send an email with Python?</a></div><div class="spacer"><a href="/q/7232088" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">25</div></a><a href="/questions/7232088/python-subject-not-shown-when-sending-email-using-smtplib-module" class="question-hyperlink">Python: &ldquo;subject&rdquo; not shown when sending email using smtplib module</a></div><div class="spacer"><a href="/q/9972216" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">2</div></a><a href="/questions/9972216/issue-with-sending-mails-from-a-distribution-mail-id-python" class="question-hyperlink">Issue with sending mails from a distribution mail id [Python]</a></div><div class="spacer"><a href="/q/11445523" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">3</div></a><a href="/questions/11445523/python-smtplib-is-sending-mail-via-gmail-using-oauth2-possible" class="question-hyperlink">python &amp; smtplib: Is sending mail via gmail using oauth2 possible?</a></div><div class="spacer"><a href="/q/20069981" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">0</div></a><a href="/questions/20069981/python-smtplib-send-mails-rapidly-more-efficient" class="question-hyperlink">python smtplib send mails rapidly / more efficient</a></div><div class="spacer"><a href="/q/27192126" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">0</div></a><a href="/questions/27192126/python-smtplib-sending-mail-using-docmd" class="question-hyperlink">Python smtplib sending mail using docmd</a></div><div class="spacer"><a href="/q/35737051" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">1</div></a><a href="/questions/35737051/python-sending-an-email-through-gmail-servers" class="question-hyperlink">Python - sending an email through gmail servers</a></div><div class="spacer"><a href="/q/37396398" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/37396398/smtplib-python-library-not-sending-mail-on-godaddy-server-to-gmail" class="question-hyperlink">smtplib python library not sending mail on godaddy server to gmail</a></div>
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
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117818/579085261-is-crazy-725582-is-golf-10757494-is" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    579085261 is CRAZY, 725582 is GOLF, 10757494 is ...?
                </a>

            </li>
            <li >
                <div class="favicon favicon-workplace" title="The Workplace Stack Exchange"></div><a href="https://workplace.stackexchange.com/questions/89993/how-much-can-i-delay-a-technical-phone-interview-with-a-good-reason" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:423 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How much can I delay a technical phone interview with a good reason?
                </a>

            </li>
            <li >
                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/88595/what-incentive-does-a-professor-have-to-allow-a-student-to-enroll-in-a-course-th" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:415 }); posts_hot_network.click({ item_type:2, location:11 })">
                    What incentive does a professor have to allow a student to enroll in a course that is already full?
                </a>

            </li>
            <li >
                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/88706/is-it-good-syntax-to-thank-the-reviewer-for-every-comment-in-peer-review" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:415 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Is it good syntax to thank the reviewer for every comment in peer review?
                </a>

            </li>
            <li >
                <div class="favicon favicon-mathoverflow" title="MathOverflow"></div><a href="https://mathoverflow.net/questions/268482/publishing-conjectures" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:504 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Publishing conjectures
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-scifi" title="Science Fiction &amp; Fantasy Stack Exchange"></div><a href="https://scifi.stackexchange.com/questions/158131/what-languages-were-yodas-speech-patterns-based-on" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:186 }); posts_hot_network.click({ item_type:2, location:11 })">
                    What language(s) were Yoda&#39;s speech patterns based on?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79402/were-in-the-mountains-where-do-we-hide" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    We&#39;re in the mountains. Where do we hide?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-space" title="Space Exploration Stack Exchange"></div><a href="https://space.stackexchange.com/questions/21285/why-do-we-worry-about-contaminating-some-solar-bodies-but-not-others" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:508 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why do we worry about contaminating some solar bodies but not others?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-ux" title="User Experience Stack Exchange"></div><a href="https://ux.stackexchange.com/questions/107257/should-a-dropdown-list-be-closed-when-mouse-leaves" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:102 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Should a dropdown list be closed when mouse leaves?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-stats" title="Cross Validated"></div><a href="https://stats.stackexchange.com/questions/275677/if-we-fail-to-reject-the-null-hypothesis-in-a-large-study-isnt-it-evidence-for" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:65 }); posts_hot_network.click({ item_type:2, location:11 })">
                    If we fail to reject the null hypothesis in a large study, isn&#39;t it evidence for the null?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79410/how-do-i-justify-viral-zombies-not-dying-out" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How do I justify viral zombies not dying out?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/98875/is-there-any-way-to-stop-a-player-from-charging-into-every-room" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Is there any way to stop a player from charging into every room?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-parenting" title="Parenting Stack Exchange"></div><a href="https://parenting.stackexchange.com/questions/29903/foster-care-for-a-friends-kids" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:228 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Foster care for a friend&#39;s kids
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117842/hare-krishna-hare-krishna-krishna-krishna-hare-hare" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Hare Krishna Hare Krishna Krishna Krishna Hare Hare
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-english" title="English Language &amp; Usage Stack Exchange"></div><a href="https://english.stackexchange.com/questions/386814/royal-we-agreement" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:97 }); posts_hot_network.click({ item_type:2, location:11 })">
                    &quot;Royal we&quot; agreement
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79376/refueling-from-stars" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Refueling from stars
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-unix" title="Unix &amp; Linux Stack Exchange"></div><a href="https://unix.stackexchange.com/questions/361972/why-would-a-directory-have-the-sticky-bit-set-without-the-executable-bit" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:106 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Why would a directory have the sticky bit set without the executable bit?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/79430/can-you-replace-a-sun-with-a-burning-moon" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:579 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Can you replace a sun with a burning moon?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/117996/find-the-first-bracket-match" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Find the First Bracket Match
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-math" title="Mathematics Stack Exchange"></div><a href="https://math.stackexchange.com/questions/2256955/a-generating-function-associated-with-fibonacci-numbers" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:69 }); posts_hot_network.click({ item_type:2, location:11 })">
                    A generating function associated with Fibonacci numbers?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-math" title="Mathematics Stack Exchange"></div><a href="https://math.stackexchange.com/questions/2256772/little-combinatorial-problem" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:69 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Little combinatorial problem
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-superuser" title="Super User"></div><a href="https://superuser.com/questions/1204017/can-be-aliased-to" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:3 }); posts_hot_network.click({ item_type:2, location:11 })">
                    Can &#39;,,&#39; be aliased to &#39;..&#39;?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-superuser" title="Super User"></div><a href="https://superuser.com/questions/1203270/what-is-the-purpose-of-cd" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:3 }); posts_hot_network.click({ item_type:2, location:11 })">
                    What is the purpose of cd `?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-latin" title="Latin Language Stack Exchange"></div><a href="https://latin.stackexchange.com/questions/4228/how-can-i-ask-the-spelling-of-a-word-in-latin" class="js-gps-track" data-gps-track="site.switch({ item_type:11, target_site:644 }); posts_hot_network.click({ item_type:2, location:11 })">
                    How can I ask the spelling of a word in Latin?
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
		<script>
StackExchange.ready(function(){$.get('/posts/26852128/ivc/21ef');});
</script>
<noscript>
    <div><img src="/posts/26852128/ivc/21ef" class="dno" alt="" width="0" height="0"></div>
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
                ados_setKeywords('python,smtplib');; ados_load();
        });   
        
</script>

    <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m);
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
                ga('create', 'UA-5620270-1');
                ga('create', 'UA-5620270-59', {name: 'pageData', sampleRate: 5 });
                ga('set', 'dimension2', '|python|smtplib|');
                ga('pageData.set', 'dimension2', '|python|smtplib|');
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