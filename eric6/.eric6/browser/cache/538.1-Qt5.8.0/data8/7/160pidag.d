   �         1http://cdn-gl.imrworldwide.com/novms/html/ls.html     %�NRq     %��x         
     O K           �      Content-Type   	text/html   Date   Wed, 26 Apr 2017 21:12:52 GMT   Last-Modified   Wed, 26 Apr 2017 21:07:07 GMT   x-amz-server-side-encryption   AES256   Cache-Control   max-age=86400   x-amz-version-id    o2xcHOFQgx1htonOczNUYfRHGp5xMzEg   Server   AmazonS3   Content-Encoding   gzip   Vary   Accept-Encoding   Age   31939   X-Cache   Hit from cloudfront   Via   @1.1 5a87bdc6ee46b099c44b6807f0565eda.cloudfront.net (CloudFront)   X-Amz-Cf-Id   8uDtP8LC5BgUT9F8BMCOcHwdXRMKTvVAv6Tm7xPRtaI3FXZD1u37d_g== <!DOCTYPE html>
<!-- BuildVersion 5.1.0.7 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <script>
        (function (window) {
            var ss = null, ls = null, key = window.location.search.split("=")[1], 
				postMsgAvail = (typeof(window.postMessage) == 'function'), 
				isValidJson = (window.NOLCMB && window.NOLCMB.GLCFG && window.NOLCMB.GLCFG.isValidJson) ?
								window.NOLCMB.GLCFG.isValidJson :
								(function (val) { try { JSON.parse(val); } catch (e) { return false; } return true; });
            try {
                // try to set sessionStorage
                ss = window.sessionStorage;
            } catch (e) { /* if we get here it means that storage is disabled */ }
            try {
                // try to set localStorage
                ls = window.localStorage;
            } catch (e) { /* if we get here it means that storage is disabled */ }

            var _cookie = {

                get: function (name) {

                    try {
                        // find cookie by name
                        var value = "; " + document.cookie;
                        var parts = value.split("; " + name + "=");
                        if (parts.length == 2) {
                            return parts.pop().split(";").shift(); // magical stuff ;-)
                        }// if

                    } catch (e) { /* cookies might not be enabled */ }

                    return ''; // return empty string if cookie doesn't exist
                }
            };

			if (window.addEventListener) {
                window.addEventListener("message", function (evt) {
                    if (window.document.referrer.indexOf(evt.origin) == 0) {
						var passedData = handleJson({"handler":"parse", "data":evt.data}), l_evtType;
						if(!passedData || !passedData.hasOwnProperty("eventType")) return;
						l_evtType = passedData.eventType.toLowerCase();
						if (passedData.hasOwnProperty("storageType") && passedData.storageType == "local") {
                            
						    switch (l_evtType) {
						        case "get":
						            if (ls) {
						                var retVal = handleJson({ "handler": "parse", "data": ls.getItem(passedData.key) }) || "";
						                if (postMsgAvail)
						                    evt.source.postMessage({ key: passedData.key, type: "lsget", val: retVal }, evt.origin);
						            } else {
						                // send message back to note that 3rd party data is disabled
						                if (postMsgAvail) {
						                    evt.source.postMessage({ key: passedData.key, type: "lsdisabled", val: true }, evt.origin);
						                }// if
						            }// if-else
						            break;
						        case "set":
						            if (passedData.data !== "999" && ls) {
						                ls.setItem(passedData.key, handleJson({ "handler": "stringify", "data": passedData.data }));
						            }
						            break;
						        case "delete":
						            if (ls) {
						                ls.removeItem(passedData.key);
						            }// if
						            break;
						    }
						} else if(passedData.hasOwnProperty("data") && passedData.data.hasOwnProperty("url") && String(passedData.data.url).length > 0) {
						    switch(l_evtType){
						        case "maskref":
						            sendRequest(passedData.data.url);
						            break;
						        case "requsingframe":
						            sendReqUsingFrame(passedData.data.url);
						            break;
						    }
						} else if (passedData.hasOwnProperty("storageType") && passedData.storageType == "cookie") {

						        // get cookie
						        switch (l_evtType) {

						            case 'get':
						                if (navigator.cookieEnabled) {
						                    var cookieVal = _cookie.get(passedData.key);
						                    if (postMsgAvail)
						                        evt.source.postMessage({ key: passedData.key, type: "cookieget", val: cookieVal }, evt.origin);
						                } else {
						                    // cookies disabled for 3rd party sites - send cookie disabled msg
						                    if (postMsgAvail) {
						                        evt.source.postMessage({ key: passedData.key, type: "cookiedisabled", val: true }, evt.origin);
						                    }// if
						                }// if-else
						                break;

						        };// switch
						    

						} else {
						    if (ss) {
						        //Use older session storage imp. May align this with ls logic currently used in future
						        ss[key] = handleJson({ "handler": "stringify", "data": evt.data });
						    }// if
						}
                    }
                }, false);

                window.addEventListener("storage", function (evt) {
                    var data = evt.newValue;
					if(postMsgAvail)
						window.parent.postMessage(handleJson({"handler":"parse", "data":data}), window.document.referrer);
                }, false);
            } else if (window.attachEvent) {
                window.attachEvent("onmessage", function (evt) {
                    if (window.document.referrer.indexOf(evt.origin) == 0 && ss) {
                        ss[key] = handleJson({"handler":"stringify", "data":evt.data});
                    }
                });

                window.attachEvent("onstorage", function (evt) {
                    var data = evt.newValue;
					if(postMsgAvail)
						window.parent.postMessage(handleJson({"handler":"parse", "data":data}), window.document.referrer);
                });
            } 
			function handleJson(args){
				var retVal = undefined;
				if(args && typeof(args) === "object" && args.hasOwnProperty("data") && args.hasOwnProperty("handler")){
					switch(args.handler){
						case "parse":
							retVal = (isValidJson(args.data)) ? JSON.parse(args.data) : {};
						break;
						case "stringify":
							try{ retVal = JSON.stringify(args.data); }catch(e){ retVal = ""; };
						break;
					}
				}
				return retVal;
			}
			
			/*Using the below method to fire to the emmUrl passed since the image tag does not work with the android intent handling*/
			function sendReqUsingFrame(url) {

			    try {
			        if (!url) return;

			        var l_frame = window.document.createElement("iframe");
			        l_frame.src = url;
			        l_frame.height = 0;
			        l_frame.width = 0;
			        l_frame.style.display = "none";
			        l_frame.id = "emmframe_" + Date.now();
			        window.document.body.appendChild(l_frame);

                    // setting function to remove iframe if loading fails
			        var iframeClear = setTimeout(function () {
			            window.document.body.removeChild(l_frame);
			        }, 5000);

			        l_frame.onload = function () {
			            try {
			                //When the iframe is loaded, we know req has ben sent so delete it	
			                this.parentNode.removeChild(this);

                            // if iframe loaded fine, clear timeout 
			                if (iframeClear) {
			                    clearTimeout(iframeClear);
			                }// if
			            } catch (e) {
			            }
			        };
			    } catch (e) {
			    }
			}
			
			/* Using the below call to send the request via a masked url (imrworldwide) */
			function sendRequest(url){
				if(!url)return;
				var img = new Image();
				img.onerror = function(e){/*console.log("Error is: ", e);*/};
				img.onload = function(e){/*console.log("All successful");*/};
				img.src = url;
			}

        }(this))
    </script>
</body>
</html>

