   �         dhttp://d33763z96x0wep.cloudfront.net/wp-content/plugins/captcha/css/desktop_style.css.gzip?ver=4.6.1�       ����      %�X�0         
     O K           �      Content-Type   text/css   Date   Sun, 23 Apr 2017 23:32:24 GMT   Last-Modified   Wed, 26 Oct 2016 04:52:14 GMT   ETag   ""113dc8d659af457033dadcbfb57f0db0"   Content-Encoding   gzip   Accept-Ranges   bytes   Server   AmazonS3   Age   33428   X-Cache   Hit from cloudfront   Via   @1.1 70e314cdf468039e9285b629f6216452.cloudfront.net (CloudFront)   X-Amz-Cf-Id   88g8ro9gyOV2PCp4ES4x8KkFXZq-Avuv9B8E3SAncAKlKPcUYreqFkw== .cptch_ajax_wrap {
	color: red;
}
.cptch_img:hover {
	cursor: default;
	position: relative;
	z-index: 10;
	-webkit-transition: 300ms ease-in-out;
	-moz-transition: 300ms ease-in-out;
	-o-transition: 300ms ease-in-out;
	transition: 300ms ease-in-out;
}
.cptch_left:hover {
	/* move to the right and increase the size of image */
	-webkit-transform: translateX(100%) scale(3, 3);
	-moz-transform: translateX(100%) scale(3, 3);
	-o-transform: translateX(100%) scale(3, 3);
	-ms-transform: translateX(100%) scale(3, 3);
	transform: translateX(100%) scale(3, 3);
}
.cptch_right:hover {
	/* move to the left and increase the size of image */
	-webkit-transform: translateX(-100%) scale(3, 3);
	-moz-transform: translateX(-100%) scale(3, 3);
	-ms-transform: translateX(-100%) scale(3, 3);
	-o-transform: translateX(-100%) scale(3, 3);
	transform: translateX(-100%) scale(3, 3);
}
.cptch_center:hover {
	/* increase the size of image */
	-webkit-transform: scale(3, 3);
	-moz-transform: scale(3, 3);
	-o-transform: scale(3, 3);
	-ms-transform: scale(3, 3);
	transform: scale(3, 3);
}
.cptch_reload_button:hover {
	cursor:pointer;
	opacity: 0.7;
}
.cptch_reload_button.cptch_active {
	opacity: 0.7;
	animation: cptch_rotation 800ms infinite linear;
	-webkit-animation: cptch_rotation 800ms infinite linear;
}
@-webkit-keyframes cptch_rotation {
	0% {-webkit-transform: rotate(0deg);}
	100% {-webkit-transform: rotate(359deg);}
}
@-moz-keyframes cptch_rotation {
	0% {-webkit-transform: rotate(0deg);}
	100% {-webkit-transform: rotate(359deg);}
}
@-o-keyframes cptch_rotation {
	0% {-webkit-transform: rotate(0deg);}
	100% {-webkit-transform: rotate(359deg);}
}
@keyframes cptch_rotation {
	0% {transform: rotate(0deg);}
	100% {transform: rotate(359deg);}
}