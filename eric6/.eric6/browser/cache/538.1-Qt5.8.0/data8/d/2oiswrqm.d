   �        Rhttp://secure-us.imrworldwide.com/cgi-bin/cfg?pli=14934459085072056&nmspc=NOLCMB&sdkv=bj.5.0.0&fmt=jsonp&apn=v60Bsdk&fbtag=true&cfgv=250&bldv=5.0.5.75-9&prefprotocol=http&apid=ziffdavis&sfcode=us&cdnDomain=cdn-gl&si=http%3A%2F%2Fwww.dreamincode.net%2Fforums%2Ftopic%2F325606-error-using-smtplib%2F&nsdkv=505&sendTime=1493445910&rnd=518187�       ���� �       ����          
     O K           �      Server   nginx   Date   Sat, 29 Apr 2017 06:05:12 GMT   Content-Type   text/javascript   Content-Encoding   gzip 

(function(){
	window.NOLCMB.GLCFG.PLDPR.initFromConfig(
	{
		"nol_GLOBALS":{

			"nol_host":"p070z",
			"nol_dma":"659",
			"nol_countryCode2":"US",
			"nol_countryCode3":"usa",
            "nol_serverTime":"1493445912",
            "nol_devGroup":"DSK",
            "nol_osver":"Linux",
            "nol_clocksrc":"S",
            "nol_osGroup":"NA",
            "nol_platform":"DSK",
			"nol_md5Seed":"N!3ls3nBL",
			"nol_sdkDelimiter":"_",
            "nol_sfcode":"us",
            "nol_channelName":"defaultChannelName",
            "nol_fbver":"1",
			"nol_clientCMSmap":{"1":"nol_aggregate","nol_assetid":"assetid","nol_assetName":"(section)","nol_category":"(program)","nol_channelName":"channelName","nol_clientid":"clientid","nol_dpr":"tv","nol_length":"length","nol_tagSrc":"dataSrc","nol_title":"((<title>))","nol_vidtype":"type"}, 
			"nol_prefProtocol":"http",
			"nol_fbCountryCode":"US",
			"nol_fbDmaDCR":"659",
			"nol_linearAdLoadFlag":"0",
			"nol_tagSrc":"cms",
			"nol_gpsPrecision":"1000",
			"nol_intrvlThrshld":"90",
			"nol_chnlCountThrshld":"10",
			"nol_cacheBusterLmt":"1",
			"nol_id3IntrvlGp":"15",
			"nol_useragent":"NLSDK (|![nol_osver]!|,|![nol_devtypeid]!| BUILD/|![nol_sdkver]!|) |![nol_appid]!|/|![nol_appver]!|",	
			"nol_xorSeed":"cr055pltfrm",
			"nol_unQualSegmentValue":"5",
			"nol_clientid":"au-408075",
			"nol_playerId":"14934459085072056",
			"nol_vcid":"b99",
			"nol_pageURL":"http://www.dreamincode.net/forums/topic/325606-error-using-smtplib/",
			"nol_defReasonCode":"0",
 		    "nol_assetName":"defChnAsset",
			"nol_bgTimeOut":"5",
			"nol_duration":"30",
			"nol_encryptDevId":"true",
			"nol_devTimeZone":"GMT-10:00",
			"nol_SDKEncDevIdFlag":"true",
			"nol_suppress": "1",
			"nol_maxStaticInstances": "5",	
			"nol_pendingPingsLimit" :"8",
			"nol_pendingPingsDelay":"1",
			"nol_reqType":"0",
		
			

			"nol_customExtension":[
				"nol_dcrVideoCustom",			
				"nol_dcrStaticCustom"			
			],
			"nol_eventFilter":{
				"onCmsDetected":[
					{"tagVar":{"name":"nol_product","value":"dcrvideo"}, "cond": ["nol_vidtype"],  "is": {"type":"+","value": "content,preroll,midroll,postroll,ad"},  "then":{"nol_disabled": "false"}, "else": {"nol_disabled": "true"}},
					{"tagVar":{"name":"nol_product","value":"dcrstatic"},"cond":["nol_vidtype"], "is":{"type":"+", "value":"static"}, "then":{"nol_disabled":"false"}, "else":{"nol_disabled":"true"}}
					
				],
				"onDcrCmsDetected":[
				                    {"tagVar":{"name":"nol_product","value":"dcrstatic"}, "cond": ["nol_ac"],  "is": {"type":"+","value": "static"},  "then":{"nol_disabled": "false"}, "else": {"nol_disabled": "true"}}
	            ],
				"onDcrDetected":{
					"dcrStatic":[
						{"tagVar":{"name":"nol_product","value":"dcrstatic"}, "cond": ["nol_vidtype"],  "is": {"type":"+","value": "preroll,midroll,postroll,ad,content"},  "then":{"nol_disabled": "true"}, "else":{"nol_disabled":"false"}}
					],
					"dcrVideo":[
						{"tagVar":{"name":"nol_product","value":"dcrvideo"}, "cond": ["nol_vidtype"],  "is": {"type":"+","value": "preroll,midroll,postroll,ad,content"},  "then":{"nol_disabled": "false"}, "else":{"nol_disabled":"true"}},
						{"tagVar":{"name":"nol_product","value":"dcrvideo"}, "cond": ["nol_vidtype"],  "is": {"type":"+","value": "postroll"},  "then":{"nol_minWonOverride": "1"}}
					]
				},
				"onViewWon":[
					{"tagVar":{"name":"nol_cadence", "value":"interval"}, "cond":["nol_segmentPrefix"], "is":{"type":"+", "value":"S"}, "then":{"nol_segmentPrefix":"D"}},
					{"tagVar":{"name":"nol_cadence", "value":"interval"}, "cond":["nol_segmentPrefix"], "is":{"type":"+", "value":"D"}, "then":{"nol_at":"timer"}}
				],
			  },
			 
			"nol_tagMap":{
				"nol_product":["dcrstatic", "dcrvideo"], 
				"nol_cadence":["interval", "episode", "stream", "impression", "daypart", "appstart"],  
				
				"nol_defaults":{
					"nol_creditFlag":"1",
					"nol_creditValue":"30",
					"nol_segmentLength":"5",
					"nol_segmentValue":"60",
					"nol_maxLength":"1832",
					"nol_forward":"0",
					"nol_aggregate":"1",
					"nol_tsvFlag":"99",
					"nol_rt":"video",
					"nol_accessMethod":"0",
					"nol_breakout":"00",
					"nol_currSeg":"0",
					"nol_minWonOverride":"0",
					"nol_segmentA":"NA",
					"nol_segmentB":"NA",
					"nol_segmentC":"NA",
					"nol_placement":"NA",
					"nol_content":"NA",
					"nol_appid":"NA",
					"nol_adLoadType":"2",
					"nol_isFullEpisode":"yes",
					"nol_sendTime":"0"
				},
				"nol_url":[
				"|!nol_prefProtocol!|://secure-us.imrworldwide.com/cgi-bin/gn?prd=dcr&ci=|!nol_clientid!|&ch=|!nol_clientid+nol_sdkDelimiter+nol_vcid+nol_sdkDelimiter+nol_assetName!|&asn=|!nol_assetName!|&prv=1&c6=vc,|![nol_vcid]!|&ca=|!nol_content!|&c13=asid,|![nol_appid]!|&c32=segA,|![nol_segmentA]!|&c33=segB,|![nol_segmentB]!|&c34=segC,|![nol_segmentC]!|&c15=apn,|![nol_apn]!|&sup=|![nol_suppress]!|&segment2=|!nol_dma!|&segment1=|!(nol_countryCode3)!|&forward=|![nol_forward]!|&ad=|!nol_accessMethod!|&cr=|!nol_segmentPrefix!|&c9=devid,|![nol_deviceId]!|&enc=|!nol_encryptDevId!|&c1=nuid,|![nol_nuid]!|&at=|!nol_at!|&rt=|!nol_rt!|&c16=sdkv,|![nol_sdkv]!|&c27=cln,|![nol_segmentTimeSpent]!|&crs=|![nol_appCrash]!|&lat=|![nol_latitude]!|&lon=|![nol_longitude]!|&c29=plid,|![nol_playerId]!|&c30=bldv,|![nol_bldv]!|&st=dcr&c7=osgrp,|![nol_osGroup]!|&c8=devgrp,|![nol_devGroup]!|&c10=plt,|!([nol_platform])!|&c40=adbid,|![nol_adobeId]!|&c14=osver,|![(nol_osver)]!|&c26=dmap,1&dd=|![nol_dataDate]!|&hrd=|![nol_hourCode]!|&wkd=|![nol_dayId]!|&c35=adrsid,|![nol_reportSuiteID]!|&c36=cref1,|![nol_crossRefID1]!|&c37=cref2,|![nol_crossRefID2]!|&c11=agg,|!nol_aggregate!|&c12=apv,&c51=adl,|![nol_adDuration]!|&c52=noad,|![nol_adCount]!|&devtypid=|![nol_devtypeid]!|&pc=NA|![nol_dcrStaticCustom]!|&si=|![(nol_pageURL)]!|&c62=sendTime,|![nol_sendTime]!|&c73=phtype,Desktop&c74=dvcnm,&df=|![nol_defReasonCode]!|",
				"https://www.facebook.com/brandlift.php?content_id=|!{[nol_content]}!|&segment_code=|!{nol_segmentPrefix}!|&segment1=|!nol_fbCountryCode!|&segment2=|!nol_fbDmaDCR!|&segment3=|![nol_osGroup]!|&osversion=|![(nol_osver)]!|&device_type=|![nol_devGroup]!|&platform=|!([nol_platform])!|&advertiser_id=|![nol_deviceId]!|&media_type=|![nol_mediaType]!|&ver=|!([nol_fbver])!|&appid=|![nol_appid]!|&length=|![nol_segmentTimeSpent]!|&channel_asset=|!{nol_clientid+nol_sdkDelimiter+nol_vcid+nol_sdkDelimiter+nol_assetName}!|&segment_a=|!{[nol_segmentA]}!|&segment_b=|!{[nol_segmentB]}!|&segment_c=|!{[nol_segmentC]}!|&access_method=|!nol_accessMethod!|&impressions=|![nol_impressions]!|&app_launch=|![nol_applaunch]!|&ad_duration=|![nol_adDuration]!|&ad_count=|![nol_adCount]!|&day_id=|![nol_dayId]!|&hour_id=|![nol_hourCode]!|&data_date=|![nol_dataDate]!|&content_type=|![nol_rt]!|&placement_id=|!{[nol_placement]}!|&h=|![<{nol_md5Seed+{[nol_content]}+{nol_segmentPrefix}+(nol_fbCountryCode)+(nol_fbDmaDCR)+([nol_osGroup])+([nol_osver])+([nol_devGroup])+([nol_platform])+([nol_deviceId])+([nol_mediaType])+([nol_fbver])+([nol_appid])+([nol_segmentTimeSpent])+{nol_clientid+nol_sdkDelimiter+nol_vcid+nol_sdkDelimiter+nol_assetName}+{[nol_segmentA]}+{[nol_segmentB]}+{[nol_segmentC]}+(nol_accessMethod)+([nol_impressions])+([nol_applaunch])+([nol_adDuration])+([nol_adCount])+([nol_dayId])+([nol_hourCode])+([nol_dataDate])+([nol_rt])+{[nol_placement]}}.0,10>]!|"

				
				]
			}
		},
		"nol_TAGS":[
		
		
						{
							"nol_comment":"DCR browser static view",
							"nol_product":"0",
							"nol_cadence":"3",
							"nol_defaults":{"nol_maxPingCount":"1", "nol_creditFlag":"0", "nol_segmentPrefix":"V", "nol_timer":"nol_pageoffset","nol_at":"view", "nol_tagPresence":"4","nol_rt": "text","nol_segmentTimeSpent":"0","nol_adDuration":"0","nol_adCount":"0"},
							"nol_url":"0"
						},

						{
							"nol_comment":"DCR browser static duration",
							"nol_product":"0",
							"nol_cadence":"0",
							"nol_defaults":{"nol_minWonOverride":"1","nol_creditFlag":"1","nol_segmentPrefix":"D","nol_timer":"nol_pageoffset","nol_at":"timer","nol_rt": "text", "nol_tagPresence":"4","nol_segmentLength":"30","nol_segmentTimeSpent":"0","nol_adDuration":"0","nol_adCount":"0"},	
							"nol_url":"0"
						},
						
						
						{
							"nol_comment":"FB DCR static view",
							"nol_product":"0",
							"nol_cadence":"3",
							"nol_defaults":{"nol_maxPingCount":"1", "nol_creditFlag":"0", "nol_segmentPrefix":"V", "nol_subProduct":"fb", "nol_timer":"nol_pageoffset", "nol_mediaType":"dcr", "nol_tagPresence":"4", "nol_fbCountryCode":"US","nol_rt": "text","nol_impressions":"1","nol_applaunch":"0","nol_adDuration":"0","nol_adCount":"0","nol_rfrmsk":"true"},
							"nol_url":"1"
						},
						{
							"nol_comment":"FB DCR static duration",
							"nol_product":"0",
							"nol_cadence":"0",
							"nol_defaults":{"nol_segmentLength":"30","nol_minWonOverride":"1","nol_creditFlag":"1", "nol_segmentPrefix":"D", "nol_subProduct":"fb", "nol_timer":"nol_pageoffset","nol_mediaType":"dcr",  "nol_tagPresence":"4", "nol_rt": "text", "nol_fbCountryCode":"US","nol_impressions":"0","nol_applaunch":"0","nol_adDuration":"0","nol_adCount":"0","nol_rfrmsk":"true"},
							"nol_url":"1"
						}
		]
	}
	);
})(this)
