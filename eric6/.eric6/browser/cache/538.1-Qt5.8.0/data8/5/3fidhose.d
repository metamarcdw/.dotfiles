   �         fhttp://d33763z96x0wep.cloudfront.net/wp-content/plugins/captcha/css/front_end_style.css.gzip?ver=4.6.1�       ����      %�X�0         
     O K           �      Content-Type   text/css   Date   Tue, 14 Mar 2017 23:31:52 GMT   Last-Modified   Wed, 26 Oct 2016 04:52:14 GMT   ETag   ""17cc8aa5d77ffbebdc993ea6761729cc"   Content-Encoding   gzip   Accept-Ranges   bytes   Server   AmazonS3   Age   21100   X-Cache   Hit from cloudfront   Via   @1.1 feba566228fc543efe49c29e2fac9a50.cloudfront.net (CloudFront)   X-Amz-Cf-Id   8A7coDGBBHTKlUw0GT8OBxvUxOdhGBEPDATJ40dDo6QhGMAfqE3Z6fg== /**
 * BWS CAPTCHA general front-end styles
 * @package Captcha Pro by BestWebSoft
 * @since 4.2.3
 */

/*
 * General styles
 */
.cptch_block label {
	word-wrap: break-word;
}
.cptch_label:hover {
	cursor: pointer;
}
form input.cptch_input {
	padding-left: 8px;
	padding-right: 8px;
}
.cptch_whitelist_message {
	font-style: italic;
	color: #008000;
	font-weight: normal !important;
}
.cptch_block {
	display: block !important;
	width: 100%;
	max-width: 100%;
	box-sizing: border-box;
	word-spacing: normal !important;
	text-align: left;
}
.cptch_title {
	display: block;
	word-wrap: break-word;
	padding-bottom: 5px;
	clear: both;
}
.cptch_wrap {
	display: table-row !important;
	position: relative;
	clear: both;
}
.cptch_label,
.cptch_reload_button_wrap {
	display: table-cell;
	margin: 5px 0 !important;
	vertical-align: middle;
	line-height: 1;
}
.cptch_time_limit_notice {
	display: none;
	color: red;
	font-size: 12px;
}
.cptch_span {
	display: inline-block;
	vertical-align: middle;
	line-height: 1;
	position: relative;
}
.cptch_img {
	width: 40px;
	max-width: 40px !important;
	height: 40px;
	top: 0;
	z-index: 1;
}
.cptch_reload_button {
	width: 2rem;
	height: 2rem;
	font-size: 2rem;
	margin: 0 15px;
	vertical-align: text-bottom;
}
.cptch_reload_button:before {
	vertical-align: text-bottom;
}

/**
 * RTL styles
 */
.rtl .cptch_block {
	direction: rtl;
	text-align: right;
}

@media only screen and ( max-width: 782px ) {
	.cptch_reload_button {
		width: 48px;
		height: 48px;
		font-size: 48px;
	}
}