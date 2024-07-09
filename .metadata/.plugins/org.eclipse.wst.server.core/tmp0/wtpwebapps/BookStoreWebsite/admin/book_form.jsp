<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New Book</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<link rel="styesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="">

	</script>
<script type="text/javascript" src="">

</script>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<style type="text/css">
.pageheading {
	color: darkblue;
}

th, td {
	padding: 8px;
}

th {
	background: darkblue;
	color: cornsilk;
	font-size: larger;
}

button {
	padding: 6px;
	border-radius: 5px;
}

button[type=submit] {
	font-weight: bold;
}

button:hover {
	background-color: white;
	color: green;
}

input {
	border: 1px solid;
	border-radius: 4px;
	border-color: green;
	height: 20px;
}

textarea {
	border: 1px solid;
	border-radius: 4px;
	border-color: green;
}

.error {
	color: red;
	font-weight: bold;
	margin: 5px;
}

.richText {
	z-index: 1;
	position: relative;
	background-color: #fafafa;
	border: #efefef solid 1px;
	color: #333;
	width: 100%;
}

.richText .richText-form {
	font-family: Calibri, Verdana, Helvetica, sans-serif;
}

.richText .richText-form label {
	display: block;
	padding: 10px 15px;
}

.richText .richText-form input[type="text"], .richText .richText-form input[type="file"],
	.richText .richText-form input[type="number"], .richText .richText-form select
	{
	padding: 10px 15px;
	border: #999 solid 1px;
	min-width: 200px;
	width: 100%;
}

.richText .richText-form select {
	cursor: pointer;
}

.richText .richText-form button {
	margin: 10px 0;
	padding: 10px 15px;
	background-color: #3498db;
	border: none;
	color: #fafafa;
	cursor: pointer;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.richText .richText-toolbar {
	position: sticky;
	top: 0;
	min-height: 20px;
	background-color: inherit;
	border-bottom: #efefef solid 1px;
	z-index: 1;
}

.richText .richText-toolbar .richText-length {
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 13px;
	vertical-align: middle;
	line-height: 34px;
}

.richText .richText-toolbar .richText-length .black {
	color: #000;
}

.richText .richText-toolbar .richText-length .orange {
	color: orange;
}

.richText .richText-toolbar .richText-length .red {
	color: red;
}

.richText .richText-toolbar ul {
	padding-left: 0;
	padding-right: 0;
	margin-top: 0;
	margin-bottom: 0;
}

.richText .richText-toolbar ul li {
	float: left;
	display: block;
	list-style: none;
}

.richText .richText-toolbar ul li a {
	display: block;
	padding: 10px 13px;
	border-right: #efefef solid 1px;
	cursor: pointer;
	-webkit-transition: background-color 0.4s;
	-moz-transition: background-color 0.4s;
	transition: background-color 0.4s;
}

.richText .richText-toolbar ul li a .fa, .richText .richText-toolbar ul li a .fas,
	.richText .richText-toolbar ul li a .far, .richText .richText-toolbar ul li a svg
	{
	pointer-events: none;
}

.richText .richText-toolbar ul li a .richText-dropdown-outer {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.3);
	cursor: default;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer>.richText-dropdown-close {
	position: absolute;
	top: 0;
	right: -23px;
	background: #fff;
	color: #333;
	cursor: pointer;
	font-size: 20px;
	text-align: center;
	width: 20px;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  .richText-dropdown {
	position: relative;
	display: block;
	margin: 3% auto 0 auto;
	background-color: #fafafa;
	border: #efefef solid 1px;
	border-radius: 4px;
	min-width: 100px;
	width: 300px;
	max-width: 90%;
	-webkit-box-shadow: rgba(149, 157, 165, 0.2) 0 8px 24px;
	-moz-box-shadow: rgba(149, 157, 165, 0.2) 0 8px 24px;
	box-shadow: rgba(149, 157, 165, 0.2) 0 8px 24px;
	max-height: 300px;
	overflow-y: auto;
	overflow-x: hidden;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  .richText-dropdown
  .richText-dropdown-close {
	position: absolute;
	top: 0;
	right: -23px;
	background: #fff;
	color: #333;
	cursor: pointer;
	font-size: 20px;
	text-align: center;
	width: 20px;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown {
	list-style: none;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown
  li {
	display: block;
	float: none;
	font-family: Calibri, Verdana, Helvetica, sans-serif;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown
  li
  a {
	display: block;
	padding: 10px 15px;
	border-bottom: #efefef solid 1px;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown
  li
  a:hover {
	background-color: #fff;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown
  li.inline {
	margin: 10px 6px;
	float: left;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown
  li.inline
  a {
	display: block;
	padding: 0;
	margin: 0;
	border: none;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	-webkit-box-shadow: 0 0 10px 0 #999;
	-moz-box-shadow: 0 0 10px 0 #999;
	box-shadow: 0 0 10px 0 #999;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  ul.richText-dropdown
  li.inline
  a
  span {
	display: block;
	height: 30px;
	width: 30px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
}

.richText
  .richText-toolbar
  ul
  li
  a
  .richText-dropdown-outer
  div.richText-dropdown {
	padding: 10px 15px;
}

.richText .richText-toolbar ul li a:hover {
	background-color: #fff;
}

.richText .richText-toolbar ul li[data-disable="true"] {
	opacity: 0.1;
}

.richText .richText-toolbar ul li[data-disable="true"] a {
	cursor: default;
}

.richText
  .richText-toolbar
  ul
  li:not ([data-disable="true"] ).is-selected
  .richText-dropdown-outer {
	display: block;
}

.richText .richText-toolbar ul:after {
	display: block;
	content: "";
	clear: both;
}

.richText .richText-toolbar:last-child {
	font-size: 12px;
	z-index: -1;
}

.richText .richText-toolbar:after {
	display: block;
	clear: both;
	content: "";
}

.richText .richText-editor {
	padding: 20px;
	background-color: #fff;
	border-left: #fff solid 2px;
	font-family: Calibri, Verdana, Helvetica, sans-serif;
	height: 300px;
	outline: none;
	overflow-y: scroll;
	overflow-x: auto;
}

.richText .richText-editor[placeholder]:before {
	content: attr(placeholder);
	color: #555;
}

.richText .richText-editor ul, .richText .richText-editor ol {
	margin: 10px 25px;
}

.richText .richText-editor table {
	margin: 10px 0;
	border-spacing: 0;
	width: 100%;
}

.richText .richText-editor table td, .richText .richText-editor table th
	{
	padding: 10px;
	border: #efefef solid 1px;
}

.richText .richText-editor:focus {
	border-left: #3498db solid 2px;
}

.richText .richText-initial {
	margin-bottom: -4px;
	padding: 10px;
	background-color: #282828;
	border: none;
	color: #3f3;
	font-family: Monospace, Calibri, Verdana, Helvetica, sans-serif;
	max-width: 100%;
	min-width: 100%;
	width: 100%;
	min-height: 400px;
	height: 400px;
}

.richText .richText-help {
	float: right;
	display: block;
	padding: 10px 15px;
	cursor: pointer;
}

.richText .richText-undo, .richText .richText-redo {
	float: left;
	display: block;
	padding: 10px 15px;
	border-right: #efefef solid 1px;
	cursor: pointer;
}

.richText .richText-undo.is-disabled, .richText .richText-redo.is-disabled
	{
	opacity: 0.4;
}

.richText .richText-help-popup a {
	color: #3498db;
	text-decoration: underline;
}

.richText .richText-help-popup hr {
	margin: 10px auto 5px auto;
	border: none;
	border-top: #efefef solid 1px;
}

.richText .richText-list.list-rightclick {
	position: absolute;
	background-color: #fafafa;
	border-right: #efefef solid 1px;
	border-bottom: #efefef solid 1px;
}

.richText .richText-list.list-rightclick li {
	padding: 5px 7px;
	cursor: pointer;
	list-style: none;
}

/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
@font-face {
	font-family: 'FontAwesome';
	src: url('../fonts/fontawesome-webfont.eot?v=4.7.0');
	src: url('../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0')
		format('embedded-opentype'),
		url('../fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'),
		url('../fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'),
		url('../fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'),
		url('../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular')
		format('svg');
	font-weight: normal;
	font-style: normal
}

.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale
}

.fa-lg {
	font-size: 1.33333333em;
	line-height: .75em;
	vertical-align: -15%
}

.fa-2x {
	font-size: 2em
}

.fa-3x {
	font-size: 3em
}

.fa-4x {
	font-size: 4em
}

.fa-5x {
	font-size: 5em
}

.fa-fw {
	width: 1.28571429em;
	text-align: center
}

.fa-ul {
	padding-left: 0;
	margin-left: 2.14285714em;
	list-style-type: none
}

.fa-ul>li {
	position: relative
}

.fa-li {
	position: absolute;
	left: -2.14285714em;
	width: 2.14285714em;
	top: .14285714em;
	text-align: center
}

.fa-li.fa-lg {
	left: -1.85714286em
}

.fa-border {
	padding: .2em .25em .15em;
	border: solid .08em #eee;
	border-radius: .1em
}

.fa-pull-left {
	float: left
}

.fa-pull-right {
	float: right
}

.fa.fa-pull-left {
	margin-right: .3em
}

.fa.fa-pull-right {
	margin-left: .3em
}

.pull-right {
	float: right
}

.pull-left {
	float: left
}

.fa.pull-left {
	margin-right: .3em
}

.fa.pull-right {
	margin-left: .3em
}

.fa-spin {
	-webkit-animation: fa-spin 2s infinite linear;
	animation: fa-spin 2s infinite linear
}

.fa-pulse {
	-webkit-animation: fa-spin 1s infinite steps(8);
	animation: fa-spin 1s infinite steps(8)
}

@
-webkit-keyframes fa-spin { 0%{
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg)
}

100%{
-webkit-transform
:rotate(359deg)
;transform
:rotate(359deg)
}
}
@
keyframes fa-spin { 0%{
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg)
}

100%{
-webkit-transform
:rotate(359deg)
;transform
:rotate(359deg)
}
}
.fa-rotate-90 {
	-ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
	-webkit-transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	transform: rotate(90deg)
}

.fa-rotate-180 {
	-ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
	-webkit-transform: rotate(180deg);
	-ms-transform: rotate(180deg);
	transform: rotate(180deg)
}

.fa-rotate-270 {
	-ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
	-webkit-transform: rotate(270deg);
	-ms-transform: rotate(270deg);
	transform: rotate(270deg)
}

.fa-flip-horizontal {
	-ms-filter:
		"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
	-webkit-transform: scale(-1, 1);
	-ms-transform: scale(-1, 1);
	transform: scale(-1, 1)
}

.fa-flip-vertical {
	-ms-filter:
		"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
	-webkit-transform: scale(1, -1);
	-ms-transform: scale(1, -1);
	transform: scale(1, -1)
}

:root .fa-rotate-90, :root .fa-rotate-180, :root .fa-rotate-270, :root .fa-flip-horizontal,
	:root .fa-flip-vertical {
	filter: none
}

.fa-stack {
	position: relative;
	display: inline-block;
	width: 2em;
	height: 2em;
	line-height: 2em;
	vertical-align: middle
}

.fa-stack-1x, .fa-stack-2x {
	position: absolute;
	left: 0;
	width: 100%;
	text-align: center
}

.fa-stack-1x {
	line-height: inherit
}

.fa-stack-2x {
	font-size: 2em
}

.fa-inverse {
	color: #fff
}

.fa-glass:before {
	content: "\f000"
}

.fa-music:before {
	content: "\f001"
}

.fa-search:before {
	content: "\f002"
}

.fa-envelope-o:before {
	content: "\f003"
}

.fa-heart:before {
	content: "\f004"
}

.fa-star:before {
	content: "\f005"
}

.fa-star-o:before {
	content: "\f006"
}

.fa-user:before {
	content: "\f007"
}

.fa-film:before {
	content: "\f008"
}

.fa-th-large:before {
	content: "\f009"
}

.fa-th:before {
	content: "\f00a"
}

.fa-th-list:before {
	content: "\f00b"
}

.fa-check:before {
	content: "\f00c"
}

.fa-remove:before, .fa-close:before, .fa-times:before {
	content: "\f00d"
}

.fa-search-plus:before {
	content: "\f00e"
}

.fa-search-minus:before {
	content: "\f010"
}

.fa-power-off:before {
	content: "\f011"
}

.fa-signal:before {
	content: "\f012"
}

.fa-gear:before, .fa-cog:before {
	content: "\f013"
}

.fa-trash-o:before {
	content: "\f014"
}

.fa-home:before {
	content: "\f015"
}

.fa-file-o:before {
	content: "\f016"
}

.fa-clock-o:before {
	content: "\f017"
}

.fa-road:before {
	content: "\f018"
}

.fa-download:before {
	content: "\f019"
}

.fa-arrow-circle-o-down:before {
	content: "\f01a"
}

.fa-arrow-circle-o-up:before {
	content: "\f01b"
}

.fa-inbox:before {
	content: "\f01c"
}

.fa-play-circle-o:before {
	content: "\f01d"
}

.fa-rotate-right:before, .fa-repeat:before {
	content: "\f01e"
}

.fa-refresh:before {
	content: "\f021"
}

.fa-list-alt:before {
	content: "\f022"
}

.fa-lock:before {
	content: "\f023"
}

.fa-flag:before {
	content: "\f024"
}

.fa-headphones:before {
	content: "\f025"
}

.fa-volume-off:before {
	content: "\f026"
}

.fa-volume-down:before {
	content: "\f027"
}

.fa-volume-up:before {
	content: "\f028"
}

.fa-qrcode:before {
	content: "\f029"
}

.fa-barcode:before {
	content: "\f02a"
}

.fa-tag:before {
	content: "\f02b"
}

.fa-tags:before {
	content: "\f02c"
}

.fa-book:before {
	content: "\f02d"
}

.fa-bookmark:before {
	content: "\f02e"
}

.fa-print:before {
	content: "\f02f"
}

.fa-camera:before {
	content: "\f030"
}

.fa-font:before {
	content: "\f031"
}

.fa-bold:before {
	content: "\f032"
}

.fa-italic:before {
	content: "\f033"
}

.fa-text-height:before {
	content: "\f034"
}

.fa-text-width:before {
	content: "\f035"
}

.fa-align-left:before {
	content: "\f036"
}

.fa-align-center:before {
	content: "\f037"
}

.fa-align-right:before {
	content: "\f038"
}

.fa-align-justify:before {
	content: "\f039"
}

.fa-list:before {
	content: "\f03a"
}

.fa-dedent:before, .fa-outdent:before {
	content: "\f03b"
}

.fa-indent:before {
	content: "\f03c"
}

.fa-video-camera:before {
	content: "\f03d"
}

.fa-photo:before, .fa-image:before, .fa-picture-o:before {
	content: "\f03e"
}

.fa-pencil:before {
	content: "\f040"
}

.fa-map-marker:before {
	content: "\f041"
}

.fa-adjust:before {
	content: "\f042"
}

.fa-tint:before {
	content: "\f043"
}

.fa-edit:before, .fa-pencil-square-o:before {
	content: "\f044"
}

.fa-share-square-o:before {
	content: "\f045"
}

.fa-check-square-o:before {
	content: "\f046"
}

.fa-arrows:before {
	content: "\f047"
}

.fa-step-backward:before {
	content: "\f048"
}

.fa-fast-backward:before {
	content: "\f049"
}

.fa-backward:before {
	content: "\f04a"
}

.fa-play:before {
	content: "\f04b"
}

.fa-pause:before {
	content: "\f04c"
}

.fa-stop:before {
	content: "\f04d"
}

.fa-forward:before {
	content: "\f04e"
}

.fa-fast-forward:before {
	content: "\f050"
}

.fa-step-forward:before {
	content: "\f051"
}

.fa-eject:before {
	content: "\f052"
}

.fa-chevron-left:before {
	content: "\f053"
}

.fa-chevron-right:before {
	content: "\f054"
}

.fa-plus-circle:before {
	content: "\f055"
}

.fa-minus-circle:before {
	content: "\f056"
}

.fa-times-circle:before {
	content: "\f057"
}

.fa-check-circle:before {
	content: "\f058"
}

.fa-question-circle:before {
	content: "\f059"
}

.fa-info-circle:before {
	content: "\f05a"
}

.fa-crosshairs:before {
	content: "\f05b"
}

.fa-times-circle-o:before {
	content: "\f05c"
}

.fa-check-circle-o:before {
	content: "\f05d"
}

.fa-ban:before {
	content: "\f05e"
}

.fa-arrow-left:before {
	content: "\f060"
}

.fa-arrow-right:before {
	content: "\f061"
}

.fa-arrow-up:before {
	content: "\f062"
}

.fa-arrow-down:before {
	content: "\f063"
}

.fa-mail-forward:before, .fa-share:before {
	content: "\f064"
}

.fa-expand:before {
	content: "\f065"
}

.fa-compress:before {
	content: "\f066"
}

.fa-plus:before {
	content: "\f067"
}

.fa-minus:before {
	content: "\f068"
}

.fa-asterisk:before {
	content: "\f069"
}

.fa-exclamation-circle:before {
	content: "\f06a"
}

.fa-gift:before {
	content: "\f06b"
}

.fa-leaf:before {
	content: "\f06c"
}

.fa-fire:before {
	content: "\f06d"
}

.fa-eye:before {
	content: "\f06e"
}

.fa-eye-slash:before {
	content: "\f070"
}

.fa-warning:before, .fa-exclamation-triangle:before {
	content: "\f071"
}

.fa-plane:before {
	content: "\f072"
}

.fa-calendar:before {
	content: "\f073"
}

.fa-random:before {
	content: "\f074"
}

.fa-comment:before {
	content: "\f075"
}

.fa-magnet:before {
	content: "\f076"
}

.fa-chevron-up:before {
	content: "\f077"
}

.fa-chevron-down:before {
	content: "\f078"
}

.fa-retweet:before {
	content: "\f079"
}

.fa-shopping-cart:before {
	content: "\f07a"
}

.fa-folder:before {
	content: "\f07b"
}

.fa-folder-open:before {
	content: "\f07c"
}

.fa-arrows-v:before {
	content: "\f07d"
}

.fa-arrows-h:before {
	content: "\f07e"
}

.fa-bar-chart-o:before, .fa-bar-chart:before {
	content: "\f080"
}

.fa-twitter-square:before {
	content: "\f081"
}

.fa-facebook-square:before {
	content: "\f082"
}

.fa-camera-retro:before {
	content: "\f083"
}

.fa-key:before {
	content: "\f084"
}

.fa-gears:before, .fa-cogs:before {
	content: "\f085"
}

.fa-comments:before {
	content: "\f086"
}

.fa-thumbs-o-up:before {
	content: "\f087"
}

.fa-thumbs-o-down:before {
	content: "\f088"
}

.fa-star-half:before {
	content: "\f089"
}

.fa-heart-o:before {
	content: "\f08a"
}

.fa-sign-out:before {
	content: "\f08b"
}

.fa-linkedin-square:before {
	content: "\f08c"
}

.fa-thumb-tack:before {
	content: "\f08d"
}

.fa-external-link:before {
	content: "\f08e"
}

.fa-sign-in:before {
	content: "\f090"
}

.fa-trophy:before {
	content: "\f091"
}

.fa-github-square:before {
	content: "\f092"
}

.fa-upload:before {
	content: "\f093"
}

.fa-lemon-o:before {
	content: "\f094"
}

.fa-phone:before {
	content: "\f095"
}

.fa-square-o:before {
	content: "\f096"
}

.fa-bookmark-o:before {
	content: "\f097"
}

.fa-phone-square:before {
	content: "\f098"
}

.fa-twitter:before {
	content: "\f099"
}

.fa-facebook-f:before, .fa-facebook:before {
	content: "\f09a"
}

.fa-github:before {
	content: "\f09b"
}

.fa-unlock:before {
	content: "\f09c"
}

.fa-credit-card:before {
	content: "\f09d"
}

.fa-feed:before, .fa-rss:before {
	content: "\f09e"
}

.fa-hdd-o:before {
	content: "\f0a0"
}

.fa-bullhorn:before {
	content: "\f0a1"
}

.fa-bell:before {
	content: "\f0f3"
}

.fa-certificate:before {
	content: "\f0a3"
}

.fa-hand-o-right:before {
	content: "\f0a4"
}

.fa-hand-o-left:before {
	content: "\f0a5"
}

.fa-hand-o-up:before {
	content: "\f0a6"
}

.fa-hand-o-down:before {
	content: "\f0a7"
}

.fa-arrow-circle-left:before {
	content: "\f0a8"
}

.fa-arrow-circle-right:before {
	content: "\f0a9"
}

.fa-arrow-circle-up:before {
	content: "\f0aa"
}

.fa-arrow-circle-down:before {
	content: "\f0ab"
}

.fa-globe:before {
	content: "\f0ac"
}

.fa-wrench:before {
	content: "\f0ad"
}

.fa-tasks:before {
	content: "\f0ae"
}

.fa-filter:before {
	content: "\f0b0"
}

.fa-briefcase:before {
	content: "\f0b1"
}

.fa-arrows-alt:before {
	content: "\f0b2"
}

.fa-group:before, .fa-users:before {
	content: "\f0c0"
}

.fa-chain:before, .fa-link:before {
	content: "\f0c1"
}

.fa-cloud:before {
	content: "\f0c2"
}

.fa-flask:before {
	content: "\f0c3"
}

.fa-cut:before, .fa-scissors:before {
	content: "\f0c4"
}

.fa-copy:before, .fa-files-o:before {
	content: "\f0c5"
}

.fa-paperclip:before {
	content: "\f0c6"
}

.fa-save:before, .fa-floppy-o:before {
	content: "\f0c7"
}

.fa-square:before {
	content: "\f0c8"
}

.fa-navicon:before, .fa-reorder:before, .fa-bars:before {
	content: "\f0c9"
}

.fa-list-ul:before {
	content: "\f0ca"
}

.fa-list-ol:before {
	content: "\f0cb"
}

.fa-strikethrough:before {
	content: "\f0cc"
}

.fa-underline:before {
	content: "\f0cd"
}

.fa-table:before {
	content: "\f0ce"
}

.fa-magic:before {
	content: "\f0d0"
}

.fa-truck:before {
	content: "\f0d1"
}

.fa-pinterest:before {
	content: "\f0d2"
}

.fa-pinterest-square:before {
	content: "\f0d3"
}

.fa-google-plus-square:before {
	content: "\f0d4"
}

.fa-google-plus:before {
	content: "\f0d5"
}

.fa-money:before {
	content: "\f0d6"
}

.fa-caret-down:before {
	content: "\f0d7"
}

.fa-caret-up:before {
	content: "\f0d8"
}

.fa-caret-left:before {
	content: "\f0d9"
}

.fa-caret-right:before {
	content: "\f0da"
}

.fa-columns:before {
	content: "\f0db"
}

.fa-unsorted:before, .fa-sort:before {
	content: "\f0dc"
}

.fa-sort-down:before, .fa-sort-desc:before {
	content: "\f0dd"
}

.fa-sort-up:before, .fa-sort-asc:before {
	content: "\f0de"
}

.fa-envelope:before {
	content: "\f0e0"
}

.fa-linkedin:before {
	content: "\f0e1"
}

.fa-rotate-left:before, .fa-undo:before {
	content: "\f0e2"
}

.fa-legal:before, .fa-gavel:before {
	content: "\f0e3"
}

.fa-dashboard:before, .fa-tachometer:before {
	content: "\f0e4"
}

.fa-comment-o:before {
	content: "\f0e5"
}

.fa-comments-o:before {
	content: "\f0e6"
}

.fa-flash:before, .fa-bolt:before {
	content: "\f0e7"
}

.fa-sitemap:before {
	content: "\f0e8"
}

.fa-umbrella:before {
	content: "\f0e9"
}

.fa-paste:before, .fa-clipboard:before {
	content: "\f0ea"
}

.fa-lightbulb-o:before {
	content: "\f0eb"
}

.fa-exchange:before {
	content: "\f0ec"
}

.fa-cloud-download:before {
	content: "\f0ed"
}

.fa-cloud-upload:before {
	content: "\f0ee"
}

.fa-user-md:before {
	content: "\f0f0"
}

.fa-stethoscope:before {
	content: "\f0f1"
}

.fa-suitcase:before {
	content: "\f0f2"
}

.fa-bell-o:before {
	content: "\f0a2"
}

.fa-coffee:before {
	content: "\f0f4"
}

.fa-cutlery:before {
	content: "\f0f5"
}

.fa-file-text-o:before {
	content: "\f0f6"
}

.fa-building-o:before {
	content: "\f0f7"
}

.fa-hospital-o:before {
	content: "\f0f8"
}

.fa-ambulance:before {
	content: "\f0f9"
}

.fa-medkit:before {
	content: "\f0fa"
}

.fa-fighter-jet:before {
	content: "\f0fb"
}

.fa-beer:before {
	content: "\f0fc"
}

.fa-h-square:before {
	content: "\f0fd"
}

.fa-plus-square:before {
	content: "\f0fe"
}

.fa-angle-double-left:before {
	content: "\f100"
}

.fa-angle-double-right:before {
	content: "\f101"
}

.fa-angle-double-up:before {
	content: "\f102"
}

.fa-angle-double-down:before {
	content: "\f103"
}

.fa-angle-left:before {
	content: "\f104"
}

.fa-angle-right:before {
	content: "\f105"
}

.fa-angle-up:before {
	content: "\f106"
}

.fa-angle-down:before {
	content: "\f107"
}

.fa-desktop:before {
	content: "\f108"
}

.fa-laptop:before {
	content: "\f109"
}

.fa-tablet:before {
	content: "\f10a"
}

.fa-mobile-phone:before, .fa-mobile:before {
	content: "\f10b"
}

.fa-circle-o:before {
	content: "\f10c"
}

.fa-quote-left:before {
	content: "\f10d"
}

.fa-quote-right:before {
	content: "\f10e"
}

.fa-spinner:before {
	content: "\f110"
}

.fa-circle:before {
	content: "\f111"
}

.fa-mail-reply:before, .fa-reply:before {
	content: "\f112"
}

.fa-github-alt:before {
	content: "\f113"
}

.fa-folder-o:before {
	content: "\f114"
}

.fa-folder-open-o:before {
	content: "\f115"
}

.fa-smile-o:before {
	content: "\f118"
}

.fa-frown-o:before {
	content: "\f119"
}

.fa-meh-o:before {
	content: "\f11a"
}

.fa-gamepad:before {
	content: "\f11b"
}

.fa-keyboard-o:before {
	content: "\f11c"
}

.fa-flag-o:before {
	content: "\f11d"
}

.fa-flag-checkered:before {
	content: "\f11e"
}

.fa-terminal:before {
	content: "\f120"
}

.fa-code:before {
	content: "\f121"
}

.fa-mail-reply-all:before, .fa-reply-all:before {
	content: "\f122"
}

.fa-star-half-empty:before, .fa-star-half-full:before, .fa-star-half-o:before
	{
	content: "\f123"
}

.fa-location-arrow:before {
	content: "\f124"
}

.fa-crop:before {
	content: "\f125"
}

.fa-code-fork:before {
	content: "\f126"
}

.fa-unlink:before, .fa-chain-broken:before {
	content: "\f127"
}

.fa-question:before {
	content: "\f128"
}

.fa-info:before {
	content: "\f129"
}

.fa-exclamation:before {
	content: "\f12a"
}

.fa-superscript:before {
	content: "\f12b"
}

.fa-subscript:before {
	content: "\f12c"
}

.fa-eraser:before {
	content: "\f12d"
}

.fa-puzzle-piece:before {
	content: "\f12e"
}

.fa-microphone:before {
	content: "\f130"
}

.fa-microphone-slash:before {
	content: "\f131"
}

.fa-shield:before {
	content: "\f132"
}

.fa-calendar-o:before {
	content: "\f133"
}

.fa-fire-extinguisher:before {
	content: "\f134"
}

.fa-rocket:before {
	content: "\f135"
}

.fa-maxcdn:before {
	content: "\f136"
}

.fa-chevron-circle-left:before {
	content: "\f137"
}

.fa-chevron-circle-right:before {
	content: "\f138"
}

.fa-chevron-circle-up:before {
	content: "\f139"
}

.fa-chevron-circle-down:before {
	content: "\f13a"
}

.fa-html5:before {
	content: "\f13b"
}

.fa-css3:before {
	content: "\f13c"
}

.fa-anchor:before {
	content: "\f13d"
}

.fa-unlock-alt:before {
	content: "\f13e"
}

.fa-bullseye:before {
	content: "\f140"
}

.fa-ellipsis-h:before {
	content: "\f141"
}

.fa-ellipsis-v:before {
	content: "\f142"
}

.fa-rss-square:before {
	content: "\f143"
}

.fa-play-circle:before {
	content: "\f144"
}

.fa-ticket:before {
	content: "\f145"
}

.fa-minus-square:before {
	content: "\f146"
}

.fa-minus-square-o:before {
	content: "\f147"
}

.fa-level-up:before {
	content: "\f148"
}

.fa-level-down:before {
	content: "\f149"
}

.fa-check-square:before {
	content: "\f14a"
}

.fa-pencil-square:before {
	content: "\f14b"
}

.fa-external-link-square:before {
	content: "\f14c"
}

.fa-share-square:before {
	content: "\f14d"
}

.fa-compass:before {
	content: "\f14e"
}

.fa-toggle-down:before, .fa-caret-square-o-down:before {
	content: "\f150"
}

.fa-toggle-up:before, .fa-caret-square-o-up:before {
	content: "\f151"
}

.fa-toggle-right:before, .fa-caret-square-o-right:before {
	content: "\f152"
}

.fa-euro:before, .fa-eur:before {
	content: "\f153"
}

.fa-gbp:before {
	content: "\f154"
}

.fa-dollar:before, .fa-usd:before {
	content: "\f155"
}

.fa-rupee:before, .fa-inr:before {
	content: "\f156"
}

.fa-cny:before, .fa-rmb:before, .fa-yen:before, .fa-jpy:before {
	content: "\f157"
}

.fa-ruble:before, .fa-rouble:before, .fa-rub:before {
	content: "\f158"
}

.fa-won:before, .fa-krw:before {
	content: "\f159"
}

.fa-bitcoin:before, .fa-btc:before {
	content: "\f15a"
}

.fa-file:before {
	content: "\f15b"
}

.fa-file-text:before {
	content: "\f15c"
}

.fa-sort-alpha-asc:before {
	content: "\f15d"
}

.fa-sort-alpha-desc:before {
	content: "\f15e"
}

.fa-sort-amount-asc:before {
	content: "\f160"
}

.fa-sort-amount-desc:before {
	content: "\f161"
}

.fa-sort-numeric-asc:before {
	content: "\f162"
}

.fa-sort-numeric-desc:before {
	content: "\f163"
}

.fa-thumbs-up:before {
	content: "\f164"
}

.fa-thumbs-down:before {
	content: "\f165"
}

.fa-youtube-square:before {
	content: "\f166"
}

.fa-youtube:before {
	content: "\f167"
}

.fa-xing:before {
	content: "\f168"
}

.fa-xing-square:before {
	content: "\f169"
}

.fa-youtube-play:before {
	content: "\f16a"
}

.fa-dropbox:before {
	content: "\f16b"
}

.fa-stack-overflow:before {
	content: "\f16c"
}

.fa-instagram:before {
	content: "\f16d"
}

.fa-flickr:before {
	content: "\f16e"
}

.fa-adn:before {
	content: "\f170"
}

.fa-bitbucket:before {
	content: "\f171"
}

.fa-bitbucket-square:before {
	content: "\f172"
}

.fa-tumblr:before {
	content: "\f173"
}

.fa-tumblr-square:before {
	content: "\f174"
}

.fa-long-arrow-down:before {
	content: "\f175"
}

.fa-long-arrow-up:before {
	content: "\f176"
}

.fa-long-arrow-left:before {
	content: "\f177"
}

.fa-long-arrow-right:before {
	content: "\f178"
}

.fa-apple:before {
	content: "\f179"
}

.fa-windows:before {
	content: "\f17a"
}

.fa-android:before {
	content: "\f17b"
}

.fa-linux:before {
	content: "\f17c"
}

.fa-dribbble:before {
	content: "\f17d"
}

.fa-skype:before {
	content: "\f17e"
}

.fa-foursquare:before {
	content: "\f180"
}

.fa-trello:before {
	content: "\f181"
}

.fa-female:before {
	content: "\f182"
}

.fa-male:before {
	content: "\f183"
}

.fa-gittip:before, .fa-gratipay:before {
	content: "\f184"
}

.fa-sun-o:before {
	content: "\f185"
}

.fa-moon-o:before {
	content: "\f186"
}

.fa-archive:before {
	content: "\f187"
}

.fa-bug:before {
	content: "\f188"
}

.fa-vk:before {
	content: "\f189"
}

.fa-weibo:before {
	content: "\f18a"
}

.fa-renren:before {
	content: "\f18b"
}

.fa-pagelines:before {
	content: "\f18c"
}

.fa-stack-exchange:before {
	content: "\f18d"
}

.fa-arrow-circle-o-right:before {
	content: "\f18e"
}

.fa-arrow-circle-o-left:before {
	content: "\f190"
}

.fa-toggle-left:before, .fa-caret-square-o-left:before {
	content: "\f191"
}

.fa-dot-circle-o:before {
	content: "\f192"
}

.fa-wheelchair:before {
	content: "\f193"
}

.fa-vimeo-square:before {
	content: "\f194"
}

.fa-turkish-lira:before, .fa-try:before {
	content: "\f195"
}

.fa-plus-square-o:before {
	content: "\f196"
}

.fa-space-shuttle:before {
	content: "\f197"
}

.fa-slack:before {
	content: "\f198"
}

.fa-envelope-square:before {
	content: "\f199"
}

.fa-wordpress:before {
	content: "\f19a"
}

.fa-openid:before {
	content: "\f19b"
}

.fa-institution:before, .fa-bank:before, .fa-university:before {
	content: "\f19c"
}

.fa-mortar-board:before, .fa-graduation-cap:before {
	content: "\f19d"
}

.fa-yahoo:before {
	content: "\f19e"
}

.fa-google:before {
	content: "\f1a0"
}

.fa-reddit:before {
	content: "\f1a1"
}

.fa-reddit-square:before {
	content: "\f1a2"
}

.fa-stumbleupon-circle:before {
	content: "\f1a3"
}

.fa-stumbleupon:before {
	content: "\f1a4"
}

.fa-delicious:before {
	content: "\f1a5"
}

.fa-digg:before {
	content: "\f1a6"
}

.fa-pied-piper-pp:before {
	content: "\f1a7"
}

.fa-pied-piper-alt:before {
	content: "\f1a8"
}

.fa-drupal:before {
	content: "\f1a9"
}

.fa-joomla:before {
	content: "\f1aa"
}

.fa-language:before {
	content: "\f1ab"
}

.fa-fax:before {
	content: "\f1ac"
}

.fa-building:before {
	content: "\f1ad"
}

.fa-child:before {
	content: "\f1ae"
}

.fa-paw:before {
	content: "\f1b0"
}

.fa-spoon:before {
	content: "\f1b1"
}

.fa-cube:before {
	content: "\f1b2"
}

.fa-cubes:before {
	content: "\f1b3"
}

.fa-behance:before {
	content: "\f1b4"
}

.fa-behance-square:before {
	content: "\f1b5"
}

.fa-steam:before {
	content: "\f1b6"
}

.fa-steam-square:before {
	content: "\f1b7"
}

.fa-recycle:before {
	content: "\f1b8"
}

.fa-automobile:before, .fa-car:before {
	content: "\f1b9"
}

.fa-cab:before, .fa-taxi:before {
	content: "\f1ba"
}

.fa-tree:before {
	content: "\f1bb"
}

.fa-spotify:before {
	content: "\f1bc"
}

.fa-deviantart:before {
	content: "\f1bd"
}

.fa-soundcloud:before {
	content: "\f1be"
}

.fa-database:before {
	content: "\f1c0"
}

.fa-file-pdf-o:before {
	content: "\f1c1"
}

.fa-file-word-o:before {
	content: "\f1c2"
}

.fa-file-excel-o:before {
	content: "\f1c3"
}

.fa-file-powerpoint-o:before {
	content: "\f1c4"
}

.fa-file-photo-o:before, .fa-file-picture-o:before, .fa-file-image-o:before
	{
	content: "\f1c5"
}

.fa-file-zip-o:before, .fa-file-archive-o:before {
	content: "\f1c6"
}

.fa-file-sound-o:before, .fa-file-audio-o:before {
	content: "\f1c7"
}

.fa-file-movie-o:before, .fa-file-video-o:before {
	content: "\f1c8"
}

.fa-file-code-o:before {
	content: "\f1c9"
}

.fa-vine:before {
	content: "\f1ca"
}

.fa-codepen:before {
	content: "\f1cb"
}

.fa-jsfiddle:before {
	content: "\f1cc"
}

.fa-life-bouy:before, .fa-life-buoy:before, .fa-life-saver:before,
	.fa-support:before, .fa-life-ring:before {
	content: "\f1cd"
}

.fa-circle-o-notch:before {
	content: "\f1ce"
}

.fa-ra:before, .fa-resistance:before, .fa-rebel:before {
	content: "\f1d0"
}

.fa-ge:before, .fa-empire:before {
	content: "\f1d1"
}

.fa-git-square:before {
	content: "\f1d2"
}

.fa-git:before {
	content: "\f1d3"
}

.fa-y-combinator-square:before, .fa-yc-square:before, .fa-hacker-news:before
	{
	content: "\f1d4"
}

.fa-tencent-weibo:before {
	content: "\f1d5"
}

.fa-qq:before {
	content: "\f1d6"
}

.fa-wechat:before, .fa-weixin:before {
	content: "\f1d7"
}

.fa-send:before, .fa-paper-plane:before {
	content: "\f1d8"
}

.fa-send-o:before, .fa-paper-plane-o:before {
	content: "\f1d9"
}

.fa-history:before {
	content: "\f1da"
}

.fa-circle-thin:before {
	content: "\f1db"
}

.fa-header:before {
	content: "\f1dc"
}

.fa-paragraph:before {
	content: "\f1dd"
}

.fa-sliders:before {
	content: "\f1de"
}

.fa-share-alt:before {
	content: "\f1e0"
}

.fa-share-alt-square:before {
	content: "\f1e1"
}

.fa-bomb:before {
	content: "\f1e2"
}

.fa-soccer-ball-o:before, .fa-futbol-o:before {
	content: "\f1e3"
}

.fa-tty:before {
	content: "\f1e4"
}

.fa-binoculars:before {
	content: "\f1e5"
}

.fa-plug:before {
	content: "\f1e6"
}

.fa-slideshare:before {
	content: "\f1e7"
}

.fa-twitch:before {
	content: "\f1e8"
}

.fa-yelp:before {
	content: "\f1e9"
}

.fa-newspaper-o:before {
	content: "\f1ea"
}

.fa-wifi:before {
	content: "\f1eb"
}

.fa-calculator:before {
	content: "\f1ec"
}

.fa-paypal:before {
	content: "\f1ed"
}

.fa-google-wallet:before {
	content: "\f1ee"
}

.fa-cc-visa:before {
	content: "\f1f0"
}

.fa-cc-mastercard:before {
	content: "\f1f1"
}

.fa-cc-discover:before {
	content: "\f1f2"
}

.fa-cc-amex:before {
	content: "\f1f3"
}

.fa-cc-paypal:before {
	content: "\f1f4"
}

.fa-cc-stripe:before {
	content: "\f1f5"
}

.fa-bell-slash:before {
	content: "\f1f6"
}

.fa-bell-slash-o:before {
	content: "\f1f7"
}

.fa-trash:before {
	content: "\f1f8"
}

.fa-copyright:before {
	content: "\f1f9"
}

.fa-at:before {
	content: "\f1fa"
}

.fa-eyedropper:before {
	content: "\f1fb"
}

.fa-paint-brush:before {
	content: "\f1fc"
}

.fa-birthday-cake:before {
	content: "\f1fd"
}

.fa-area-chart:before {
	content: "\f1fe"
}

.fa-pie-chart:before {
	content: "\f200"
}

.fa-line-chart:before {
	content: "\f201"
}

.fa-lastfm:before {
	content: "\f202"
}

.fa-lastfm-square:before {
	content: "\f203"
}

.fa-toggle-off:before {
	content: "\f204"
}

.fa-toggle-on:before {
	content: "\f205"
}

.fa-bicycle:before {
	content: "\f206"
}

.fa-bus:before {
	content: "\f207"
}

.fa-ioxhost:before {
	content: "\f208"
}

.fa-angellist:before {
	content: "\f209"
}

.fa-cc:before {
	content: "\f20a"
}

.fa-shekel:before, .fa-sheqel:before, .fa-ils:before {
	content: "\f20b"
}

.fa-meanpath:before {
	content: "\f20c"
}

.fa-buysellads:before {
	content: "\f20d"
}

.fa-connectdevelop:before {
	content: "\f20e"
}

.fa-dashcube:before {
	content: "\f210"
}

.fa-forumbee:before {
	content: "\f211"
}

.fa-leanpub:before {
	content: "\f212"
}

.fa-sellsy:before {
	content: "\f213"
}

.fa-shirtsinbulk:before {
	content: "\f214"
}

.fa-simplybuilt:before {
	content: "\f215"
}

.fa-skyatlas:before {
	content: "\f216"
}

.fa-cart-plus:before {
	content: "\f217"
}

.fa-cart-arrow-down:before {
	content: "\f218"
}

.fa-diamond:before {
	content: "\f219"
}

.fa-ship:before {
	content: "\f21a"
}

.fa-user-secret:before {
	content: "\f21b"
}

.fa-motorcycle:before {
	content: "\f21c"
}

.fa-street-view:before {
	content: "\f21d"
}

.fa-heartbeat:before {
	content: "\f21e"
}

.fa-venus:before {
	content: "\f221"
}

.fa-mars:before {
	content: "\f222"
}

.fa-mercury:before {
	content: "\f223"
}

.fa-intersex:before, .fa-transgender:before {
	content: "\f224"
}

.fa-transgender-alt:before {
	content: "\f225"
}

.fa-venus-double:before {
	content: "\f226"
}

.fa-mars-double:before {
	content: "\f227"
}

.fa-venus-mars:before {
	content: "\f228"
}

.fa-mars-stroke:before {
	content: "\f229"
}

.fa-mars-stroke-v:before {
	content: "\f22a"
}

.fa-mars-stroke-h:before {
	content: "\f22b"
}

.fa-neuter:before {
	content: "\f22c"
}

.fa-genderless:before {
	content: "\f22d"
}

.fa-facebook-official:before {
	content: "\f230"
}

.fa-pinterest-p:before {
	content: "\f231"
}

.fa-whatsapp:before {
	content: "\f232"
}

.fa-server:before {
	content: "\f233"
}

.fa-user-plus:before {
	content: "\f234"
}

.fa-user-times:before {
	content: "\f235"
}

.fa-hotel:before, .fa-bed:before {
	content: "\f236"
}

.fa-viacoin:before {
	content: "\f237"
}

.fa-train:before {
	content: "\f238"
}

.fa-subway:before {
	content: "\f239"
}

.fa-medium:before {
	content: "\f23a"
}

.fa-yc:before, .fa-y-combinator:before {
	content: "\f23b"
}

.fa-optin-monster:before {
	content: "\f23c"
}

.fa-opencart:before {
	content: "\f23d"
}

.fa-expeditedssl:before {
	content: "\f23e"
}

.fa-battery-4:before, .fa-battery:before, .fa-battery-full:before {
	content: "\f240"
}

.fa-battery-3:before, .fa-battery-three-quarters:before {
	content: "\f241"
}

.fa-battery-2:before, .fa-battery-half:before {
	content: "\f242"
}

.fa-battery-1:before, .fa-battery-quarter:before {
	content: "\f243"
}

.fa-battery-0:before, .fa-battery-empty:before {
	content: "\f244"
}

.fa-mouse-pointer:before {
	content: "\f245"
}

.fa-i-cursor:before {
	content: "\f246"
}

.fa-object-group:before {
	content: "\f247"
}

.fa-object-ungroup:before {
	content: "\f248"
}

.fa-sticky-note:before {
	content: "\f249"
}

.fa-sticky-note-o:before {
	content: "\f24a"
}

.fa-cc-jcb:before {
	content: "\f24b"
}

.fa-cc-diners-club:before {
	content: "\f24c"
}

.fa-clone:before {
	content: "\f24d"
}

.fa-balance-scale:before {
	content: "\f24e"
}

.fa-hourglass-o:before {
	content: "\f250"
}

.fa-hourglass-1:before, .fa-hourglass-start:before {
	content: "\f251"
}

.fa-hourglass-2:before, .fa-hourglass-half:before {
	content: "\f252"
}

.fa-hourglass-3:before, .fa-hourglass-end:before {
	content: "\f253"
}

.fa-hourglass:before {
	content: "\f254"
}

.fa-hand-grab-o:before, .fa-hand-rock-o:before {
	content: "\f255"
}

.fa-hand-stop-o:before, .fa-hand-paper-o:before {
	content: "\f256"
}

.fa-hand-scissors-o:before {
	content: "\f257"
}

.fa-hand-lizard-o:before {
	content: "\f258"
}

.fa-hand-spock-o:before {
	content: "\f259"
}

.fa-hand-pointer-o:before {
	content: "\f25a"
}

.fa-hand-peace-o:before {
	content: "\f25b"
}

.fa-trademark:before {
	content: "\f25c"
}

.fa-registered:before {
	content: "\f25d"
}

.fa-creative-commons:before {
	content: "\f25e"
}

.fa-gg:before {
	content: "\f260"
}

.fa-gg-circle:before {
	content: "\f261"
}

.fa-tripadvisor:before {
	content: "\f262"
}

.fa-odnoklassniki:before {
	content: "\f263"
}

.fa-odnoklassniki-square:before {
	content: "\f264"
}

.fa-get-pocket:before {
	content: "\f265"
}

.fa-wikipedia-w:before {
	content: "\f266"
}

.fa-safari:before {
	content: "\f267"
}

.fa-chrome:before {
	content: "\f268"
}

.fa-firefox:before {
	content: "\f269"
}

.fa-opera:before {
	content: "\f26a"
}

.fa-internet-explorer:before {
	content: "\f26b"
}

.fa-tv:before, .fa-television:before {
	content: "\f26c"
}

.fa-contao:before {
	content: "\f26d"
}

.fa-500px:before {
	content: "\f26e"
}

.fa-amazon:before {
	content: "\f270"
}

.fa-calendar-plus-o:before {
	content: "\f271"
}

.fa-calendar-minus-o:before {
	content: "\f272"
}

.fa-calendar-times-o:before {
	content: "\f273"
}

.fa-calendar-check-o:before {
	content: "\f274"
}

.fa-industry:before {
	content: "\f275"
}

.fa-map-pin:before {
	content: "\f276"
}

.fa-map-signs:before {
	content: "\f277"
}

.fa-map-o:before {
	content: "\f278"
}

.fa-map:before {
	content: "\f279"
}

.fa-commenting:before {
	content: "\f27a"
}

.fa-commenting-o:before {
	content: "\f27b"
}

.fa-houzz:before {
	content: "\f27c"
}

.fa-vimeo:before {
	content: "\f27d"
}

.fa-black-tie:before {
	content: "\f27e"
}

.fa-fonticons:before {
	content: "\f280"
}

.fa-reddit-alien:before {
	content: "\f281"
}

.fa-edge:before {
	content: "\f282"
}

.fa-credit-card-alt:before {
	content: "\f283"
}

.fa-codiepie:before {
	content: "\f284"
}

.fa-modx:before {
	content: "\f285"
}

.fa-fort-awesome:before {
	content: "\f286"
}

.fa-usb:before {
	content: "\f287"
}

.fa-product-hunt:before {
	content: "\f288"
}

.fa-mixcloud:before {
	content: "\f289"
}

.fa-scribd:before {
	content: "\f28a"
}

.fa-pause-circle:before {
	content: "\f28b"
}

.fa-pause-circle-o:before {
	content: "\f28c"
}

.fa-stop-circle:before {
	content: "\f28d"
}

.fa-stop-circle-o:before {
	content: "\f28e"
}

.fa-shopping-bag:before {
	content: "\f290"
}

.fa-shopping-basket:before {
	content: "\f291"
}

.fa-hashtag:before {
	content: "\f292"
}

.fa-bluetooth:before {
	content: "\f293"
}

.fa-bluetooth-b:before {
	content: "\f294"
}

.fa-percent:before {
	content: "\f295"
}

.fa-gitlab:before {
	content: "\f296"
}

.fa-wpbeginner:before {
	content: "\f297"
}

.fa-wpforms:before {
	content: "\f298"
}

.fa-envira:before {
	content: "\f299"
}

.fa-universal-access:before {
	content: "\f29a"
}

.fa-wheelchair-alt:before {
	content: "\f29b"
}

.fa-question-circle-o:before {
	content: "\f29c"
}

.fa-blind:before {
	content: "\f29d"
}

.fa-audio-description:before {
	content: "\f29e"
}

.fa-volume-control-phone:before {
	content: "\f2a0"
}

.fa-braille:before {
	content: "\f2a1"
}

.fa-assistive-listening-systems:before {
	content: "\f2a2"
}

.fa-asl-interpreting:before, .fa-american-sign-language-interpreting:before
	{
	content: "\f2a3"
}

.fa-deafness:before, .fa-hard-of-hearing:before, .fa-deaf:before {
	content: "\f2a4"
}

.fa-glide:before {
	content: "\f2a5"
}

.fa-glide-g:before {
	content: "\f2a6"
}

.fa-signing:before, .fa-sign-language:before {
	content: "\f2a7"
}

.fa-low-vision:before {
	content: "\f2a8"
}

.fa-viadeo:before {
	content: "\f2a9"
}

.fa-viadeo-square:before {
	content: "\f2aa"
}

.fa-snapchat:before {
	content: "\f2ab"
}

.fa-snapchat-ghost:before {
	content: "\f2ac"
}

.fa-snapchat-square:before {
	content: "\f2ad"
}

.fa-pied-piper:before {
	content: "\f2ae"
}

.fa-first-order:before {
	content: "\f2b0"
}

.fa-yoast:before {
	content: "\f2b1"
}

.fa-themeisle:before {
	content: "\f2b2"
}

.fa-google-plus-circle:before, .fa-google-plus-official:before {
	content: "\f2b3"
}

.fa-fa:before, .fa-font-awesome:before {
	content: "\f2b4"
}

.fa-handshake-o:before {
	content: "\f2b5"
}

.fa-envelope-open:before {
	content: "\f2b6"
}

.fa-envelope-open-o:before {
	content: "\f2b7"
}

.fa-linode:before {
	content: "\f2b8"
}

.fa-address-book:before {
	content: "\f2b9"
}

.fa-address-book-o:before {
	content: "\f2ba"
}

.fa-vcard:before, .fa-address-card:before {
	content: "\f2bb"
}

.fa-vcard-o:before, .fa-address-card-o:before {
	content: "\f2bc"
}

.fa-user-circle:before {
	content: "\f2bd"
}

.fa-user-circle-o:before {
	content: "\f2be"
}

.fa-user-o:before {
	content: "\f2c0"
}

.fa-id-badge:before {
	content: "\f2c1"
}

.fa-drivers-license:before, .fa-id-card:before {
	content: "\f2c2"
}

.fa-drivers-license-o:before, .fa-id-card-o:before {
	content: "\f2c3"
}

.fa-quora:before {
	content: "\f2c4"
}

.fa-free-code-camp:before {
	content: "\f2c5"
}

.fa-telegram:before {
	content: "\f2c6"
}

.fa-thermometer-4:before, .fa-thermometer:before, .fa-thermometer-full:before
	{
	content: "\f2c7"
}

.fa-thermometer-3:before, .fa-thermometer-three-quarters:before {
	content: "\f2c8"
}

.fa-thermometer-2:before, .fa-thermometer-half:before {
	content: "\f2c9"
}

.fa-thermometer-1:before, .fa-thermometer-quarter:before {
	content: "\f2ca"
}

.fa-thermometer-0:before, .fa-thermometer-empty:before {
	content: "\f2cb"
}

.fa-shower:before {
	content: "\f2cc"
}

.fa-bathtub:before, .fa-s15:before, .fa-bath:before {
	content: "\f2cd"
}

.fa-podcast:before {
	content: "\f2ce"
}

.fa-window-maximize:before {
	content: "\f2d0"
}

.fa-window-minimize:before {
	content: "\f2d1"
}

.fa-window-restore:before {
	content: "\f2d2"
}

.fa-times-rectangle:before, .fa-window-close:before {
	content: "\f2d3"
}

.fa-times-rectangle-o:before, .fa-window-close-o:before {
	content: "\f2d4"
}

.fa-bandcamp:before {
	content: "\f2d5"
}

.fa-grav:before {
	content: "\f2d6"
}

.fa-etsy:before {
	content: "\f2d7"
}

.fa-imdb:before {
	content: "\f2d8"
}

.fa-ravelry:before {
	content: "\f2d9"
}

.fa-eercast:before {
	content: "\f2da"
}

.fa-microchip:before {
	content: "\f2db"
}

.fa-snowflake-o:before {
	content: "\f2dc"
}

.fa-superpowers:before {
	content: "\f2dd"
}

.fa-wpexplorer:before {
	content: "\f2de"
}

.fa-meetup:before {
	content: "\f2e0"
}

.sr-only {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

.sr-only-focusable:active, .sr-only-focusable:focus {
	position: static;
	width: auto;
	height: auto;
	margin: 0;
	overflow: visible;
	clip: auto
}
</style>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<h1 class="pageheading">
			<c:if test="${book != null}">
				Edit Book
			</c:if>
			<c:if test="${book ==  null }">		
				Create New Book
			</c:if>
		</h1>
	</div>

	<div align="center">
		<c:if test="${book != null}">
			<form action="update_book" method="post" id="bookForm"
				enctype="multipart/form-data">
				<input type="hidden" name="bookId" value="${book.bookId}">
		</c:if>
		<c:if test="${book ==  null }">
			<form action="create_book" method="post" id="bookForm"
				enctype="multipart/form-data">
		</c:if>
		<table>
			<tr>
				<td>Category:</td>
				<td><select id="category" name="category">
						<c:forEach items="${listCategory}" var="category">
							<c:if test="${category.categoryId eq book.category.categoryId}">
								<option value="${category.categoryId}" selected>
							</c:if>
							<c:if test="${category.categoryId ne book.category.categoryId}">
								<option value="${category.categoryId}">
							</c:if>
									${category.name}
								</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td align="right">Title:</td>
				<td align="left"><input type="text" id="title" name="title"
					size="20" value="${book.title}" /></td>
			</tr>
			<tr>
				<td align="right">Author:</td>
				<td align="left"><input type="text" id="author" name="author"
					size="20" value="${book.author}" /></td>
			</tr>
			<tr>
				<td align="right">ISBN:</td>
				<td align="left"><input type="text" id="isbn" name="isbn"
					size="20" value="${book.isbn}" /></td>
			</tr>
			<tr>
				<td align="right">Publish Date:</td>
				<td align="left"><input type="text" id="publishDate"
					name="publishDate" size="20"
					value="<fmt:formatDate pattern='MM/dd/yyyy' value= '${book.publishDate}'/>" /></td>
			</tr>
			<tr>
				<td align="right">Book Image:</td>
				<td align="left"><input type="file" id="bookImage"
					name="bookImage" size="20" /><br /> <img id="thumbnail"
					alt="Image Preview" style="width: 20%; margin-top: 10px;"
					src="data:image/jpg;base64, ${book.base64Image}" /></td>
			</tr>
			<tr>
				<td align="right">Price:</td>
				<td align="left"><input type="text" id="price" name="price"
					size="20" value="${book.price}" /></td>
			</tr>
			<tr>
				<td align="right">Description:</td>
				<td align="left"><textarea rows="5" cols="50"
						name="description" id="description" class="description">${book.description}</textarea>
				</td>
			</tr>

			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
					<button id="buttonCancel">Cancel</button>
				</td>
			</tr>
		</table>
		</form>
	</div>


	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('#publishDate').datepicker();
		
		$('#description').richText();

		
		$("#bookForm").validate({
			rules:{
				category:"required",
				title : "required",
				author : "required",
				isbn : "required",
				publishDate : "required",
				
				<c:if test="${book == null}">
					bookImage : "required",
				</c:if>
				
				price : "required",
				description : "required",
			},
			messages : {
				category:"please select a category for the book",
				title : "please enter title of the book",
				author: "please enter author of the book",
				isbn: "please enter isbn of the book",
				publishDate: "please enter publish date of the book",
				bookImage: "please choose an image of the book",
				price: "please enter price of the book",
				description: "please enter description of the book",
			}
		});
		
		$('#bookImage').change(function(){
			showImageThumbnail(this);
		});
		
		$("#buttonCancel").click(function(){
			history.go(-1);
		})
	});
	
	function showImageThumbnail(fileInput) {
		var file = fileInput.files[0];
		
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#thumbnail').attr('src', e.target.result);
		}
		
		reader.readAsDataURL(file);
	}
	
	(function($){$.fn.richText=function(options){var settings=$.extend({bold:true,italic:true,underline:true,leftAlign:true,centerAlign:true,rightAlign:true,justify:true,ol:true,ul:true,heading:true,fonts:true,fontList:["Arial","Arial Black","Comic Sans MS","Courier New","Geneva","Georgia","Helvetica","Impact","Lucida Console","Tahoma","Times New Roman","Verdana"],fontColor:true,backgroundColor:true,fontSize:true,imageUpload:true,fileUpload:true,videoEmbed:true,urls:true,table:true,removeStyles:true,code:true,colors:[],fileHTML:"",imageHTML:"",translations:{title:"Title",white:"White",black:"Black",brown:"Brown",beige:"Beige",darkBlue:"Dark Blue",blue:"Blue",lightBlue:"Light Blue",darkRed:"Dark Red",red:"Red",darkGreen:"Dark Green",green:"Green",purple:"Purple",darkTurquois:"Dark Turquois",turquois:"Turquois",darkOrange:"Dark Orange",orange:"Orange",yellow:"Yellow",imageURL:"Image URL",fileURL:"File URL",linkText:"Link text",url:"URL",size:"Size",responsive:"Responsive",text:"Text",openIn:"Open in",sameTab:"Same tab",newTab:"New tab",align:"Align",left:"Left",justify:"Justify",center:"Center",right:"Right",rows:"Rows",columns:"Columns",add:"Add",pleaseEnterURL:"Please enter an URL",videoURLnotSupported:"Video URL not supported",pleaseSelectImage:"Please select an image",pleaseSelectFile:"Please select a file",bold:"Bold",italic:"Italic",underline:"Underline",alignLeft:"Align left",alignCenter:"Align centered",alignRight:"Align right",addOrderedList:"Ordered list",addUnorderedList:"Unordered list",addHeading:"Heading/title",addFont:"Font",addFontColor:"Font color",addBackgroundColor:"Background color",addFontSize:"Font size",addImage:"Add image",addVideo:"Add video",addFile:"Add file",addURL:"Add URL",addTable:"Add table",removeStyles:"Remove styles",code:"Show HTML code",undo:"Undo",redo:"Redo",save:"Save",close:"Close"},youtubeCookies:false,preview:false,placeholder:"",useSingleQuotes:false,height:0,heightPercentage:0,adaptiveHeight:false,id:"",class:"",useParagraph:false,maxlength:0,maxlengthIncludeHTML:false,callback:undefined,useTabForNext:false,save:false,saveCallback:undefined,saveOnBlur:0,undoRedo:true},options);var $inputElement=$(this);$inputElement.addClass("richText-initial");var $editor,$toolbarList=$("<ul />"),$toolbarElement=$("<li />"),$btnBold=$("<a />",{class:"richText-btn","data-command":"bold",title:settings.translations.bold,html:'<span class="fa fa-bold"></span>'}),$btnItalic=$("<a />",{class:"richText-btn","data-command":"italic",title:settings.translations.italic,html:'<span class="fa fa-italic"></span>'}),$btnUnderline=$("<a />",{class:"richText-btn","data-command":"underline",title:settings.translations.underline,html:'<span class="fa fa-underline"></span>'}),$btnJustify=$("<a />",{class:"richText-btn","data-command":"justifyFull",title:settings.translations.justify,html:'<span class="fa fa-align-justify"></span>'}),$btnLeftAlign=$("<a />",{class:"richText-btn","data-command":"justifyLeft",title:settings.translations.alignLeft,html:'<span class="fa fa-align-left"></span>'}),$btnCenterAlign=$("<a />",{class:"richText-btn","data-command":"justifyCenter",title:settings.translations.alignCenter,html:'<span class="fa fa-align-center"></span>'}),$btnRightAlign=$("<a />",{class:"richText-btn","data-command":"justifyRight",title:settings.translations.alignRight,html:'<span class="fa fa-align-right"></span>'}),$btnOL=$("<a />",{class:"richText-btn","data-command":"insertOrderedList",title:settings.translations.addOrderedList,html:'<span class="fa fa-list-ol"></span>'}),$btnUL=$("<a />",{class:"richText-btn","data-command":"insertUnorderedList",title:settings.translations.addUnorderedList,html:'<span class="fa fa-list"></span>'}),$btnHeading=$("<a />",{class:"richText-btn",title:settings.translations.addHeading,html:'<span class="fa fa-header fa-heading"></span>'}),$btnFont=$("<a />",{class:"richText-btn",title:settings.translations.addFont,html:'<span class="fa fa-font"></span>'}),$btnFontColor=$("<a />",{class:"richText-btn",title:settings.translations.addFontColor,html:'<span class="fa fa-pencil fa-pencil-alt"></span>'}),$btnBackgroundColor=$("<a />",{class:"richText-btn",title:settings.translations.addBackgroundColor,html:'<span class="fa fa-paint-brush"></span>'}),$btnFontSize=$("<a />",{class:"richText-btn",title:settings.translations.addFontSize,html:'<span class="fa fa-text-height"></span>'}),$btnImageUpload=$("<a />",{class:"richText-btn",title:settings.translations.addImage,html:'<span class="fa fa-image"></span>'}),$btnVideoEmbed=$("<a />",{class:"richText-btn",title:settings.translations.addVideo,html:'<span class="fa fa-video-camera fa-video"></span>'}),$btnFileUpload=$("<a />",{class:"richText-btn",title:settings.translations.addFile,html:'<span class="fa fa-file-text-o far fa-file-alt"></span>'}),$btnURLs=$("<a />",{class:"richText-btn",title:settings.translations.addURL,html:'<span class="fa fa-link"></span>'}),$btnTable=$("<a />",{class:"richText-btn",title:settings.translations.addTable,html:'<span class="fa fa-table"></span>'}),$btnRemoveStyles=$("<a />",{class:"richText-btn","data-command":"removeFormat",title:settings.translations.removeStyles,html:'<span class="fa fa-recycle"></span>'}),$btnCode=$("<a />",{class:"richText-btn","data-command":"toggleCode",title:settings.translations.code,html:'<span class="fa fa-code"></span>'}),$btnSave=$("<a />",{class:"save-btn","data-command":"toggleSave",title:settings.translations.save,html:'<span class="fa fa-save"></span>'});var $dropdownOuter=$("<div />",{class:"richText-dropdown-outer"});var $dropdownClose=$("<span />",{class:"richText-dropdown-close",html:'<span title="'+settings.translations.close+'"><span class="fa fa-times"></span></span>'});$dropdownOuter.prepend($dropdownClose.clone());var $dropdownList=$("<ul />",{class:"richText-dropdown"}),$dropdownBox=$("<div />",{class:"richText-dropdown"}),$form=$("<div />",{class:"richText-form"}),$formItem=$("<div />",{class:"richText-form-item"}),$formLabel=$("<label />"),$formInput=$("<input />",{type:"text"}),$formInputFile=$("<input />",{type:"file"}),$formInputSelect=$("<select />"),$formButton=$("<button />",{text:settings.translations.add,class:"btn",type:"button"});var savedSelection;var editorID="richText-"+Math.random().toString(36).substring(7);var ignoreSave=false,$resizeImage=null;var history=[];history[editorID]=[];var historyPosition=[];historyPosition[editorID]=0;var $titles=$dropdownList.clone();$titles.append($("<li />",{html:'<a data-command="formatBlock" data-option="h1">'+settings.translations.title+" #1</a>"}));$titles.append($("<li />",{html:'<a data-command="formatBlock" data-option="h2">'+settings.translations.title+" #2</a>"}));$titles.append($("<li />",{html:'<a data-command="formatBlock" data-option="h3">'+settings.translations.title+" #3</a>"}));$titles.append($("<li />",{html:'<a data-command="formatBlock" data-option="h4">'+settings.translations.title+" #4</a>"}));$btnHeading.append($dropdownOuter.clone().append($titles));var fonts=settings.fontList;var $fonts=$dropdownList.clone();for(var i=0;i<fonts.length;i++){$fonts.append($("<li />",{html:'<a style="font-family:'+fonts[i]+';" data-command="fontName" data-option="'+fonts[i]+'">'+fonts[i]+"</a>"}))}$btnFont.append($dropdownOuter.clone().append($fonts));var $fontSizes=$dropdownList.clone();for(let fontSize=24;fontSize>=12;fontSize-=2){$fontSizes.append($("<li />",{html:'<a style="font-size:'+fontSize+'px;" data-command="fontSize" data-option="'+fontSize+'">'+settings.translations.text+" "+fontSize+"px</a>"}))}$btnFontSize.append($dropdownOuter.clone().append($fontSizes));var $fontColors=$dropdownList.clone();$fontColors.html(loadColors("forecolor"));$btnFontColor.append($dropdownOuter.clone().append($fontColors));var $backgroundColors=$dropdownList.clone();$backgroundColors.html(loadColors("hiliteColor"));$btnBackgroundColor.append($dropdownOuter.clone().append($backgroundColors));var $linksDropdown=$dropdownBox.clone();var $linksForm=$form.clone().attr("id","richText-URL").attr("data-editor",editorID);$linksForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.url).attr("for","url")).append($formInput.clone().attr("id","url")));$linksForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.text).attr("for","urlText")).append($formInput.clone().attr("id","urlText")));$linksForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.openIn).attr("for","openIn")).append($formInputSelect.clone().attr("id","openIn").append($("<option />",{value:"_self",text:settings.translations.sameTab})).append($("<option />",{value:"_blank",text:settings.translations.newTab}))));$linksForm.append($formItem.clone().append($formButton.clone()));$linksDropdown.append($linksForm);$btnURLs.append($dropdownOuter.clone().append($linksDropdown));var $videoDropdown=$dropdownBox.clone();var $videoForm=$form.clone().attr("id","richText-Video").attr("data-editor",editorID);$videoForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.url).attr("for","videoURL")).append($formInput.clone().attr("id","videoURL")));$videoForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.size).attr("for","size")).append($formInputSelect.clone().attr("id","size").append($("<option />",{value:"responsive",text:settings.translations.responsive})).append($("<option />",{value:"640x360",text:"640x360"})).append($("<option />",{value:"560x315",text:"560x315"})).append($("<option />",{value:"480x270",text:"480x270"})).append($("<option />",{value:"320x180",text:"320x180"}))));$videoForm.append($formItem.clone().append($formButton.clone()));$videoDropdown.append($videoForm);$btnVideoEmbed.append($dropdownOuter.clone().append($videoDropdown));var $imageDropdown=$dropdownBox.clone();var $imageForm=$form.clone().attr("id","richText-Image").attr("data-editor",editorID);if(settings.imageHTML&&($(settings.imageHTML).find("#imageURL").length>0||$(settings.imageHTML).attr("id")==="imageURL")){$imageForm.html(settings.imageHTML)}else{$imageForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.imageURL).attr("for","imageURL")).append($formInput.clone().attr("id","imageURL")));$imageForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.align).attr("for","align")).append($formInputSelect.clone().attr("id","align").append($("<option />",{value:"left",text:settings.translations.left})).append($("<option />",{value:"center",text:settings.translations.center})).append($("<option />",{value:"right",text:settings.translations.right}))))}$imageForm.append($formItem.clone().append($formButton.clone()));$imageDropdown.append($imageForm);$btnImageUpload.append($dropdownOuter.clone().append($imageDropdown));var $fileDropdown=$dropdownBox.clone();var $fileForm=$form.clone().attr("id","richText-File").attr("data-editor",editorID);if(settings.fileHTML&&($(settings.fileHTML).find("#fileURL").length>0||$(settings.fileHTML).attr("id")==="fileURL")){$fileForm.html(settings.fileHTML)}else{$fileForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.fileURL).attr("for","fileURL")).append($formInput.clone().attr("id","fileURL")));$fileForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.linkText).attr("for","fileText")).append($formInput.clone().attr("id","fileText")))}$fileForm.append($formItem.clone().append($formButton.clone()));$fileDropdown.append($fileForm);$btnFileUpload.append($dropdownOuter.clone().append($fileDropdown));var $tableDropdown=$dropdownBox.clone();var $tableForm=$form.clone().attr("id","richText-Table").attr("data-editor",editorID);$tableForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.rows).attr("for","tableRows")).append($formInput.clone().attr("id","tableRows").attr("type","number")));$tableForm.append($formItem.clone().append($formLabel.clone().text(settings.translations.columns).attr("for","tableColumns")).append($formInput.clone().attr("id","tableColumns").attr("type","number")));$tableForm.append($formItem.clone().append($formButton.clone()));$tableDropdown.append($tableForm);$btnTable.append($dropdownOuter.clone().append($tableDropdown));function init(){var value,attributes,attributes_html="";if(settings.useParagraph!==false){document.execCommand("DefaultParagraphSeparator",false,"p")}if($inputElement.prop("tagName")==="TEXTAREA"){}else if($inputElement.val()){value=$inputElement.val();attributes=$inputElement.prop("attributes");$.each(attributes,function(){if(this.name){attributes_html+=" "+this.name+'="'+this.value+'"'}});$inputElement.replaceWith($("<textarea"+attributes_html+' data-richtext="init">'+value+"</textarea>"));$inputElement=$('[data-richtext="init"]');$inputElement.removeAttr("data-richtext")}else if($inputElement.html()){value=$inputElement.html();attributes=$inputElement.prop("attributes");$.each(attributes,function(){if(this.name){attributes_html+=" "+this.name+'="'+this.value+'"'}});$inputElement.replaceWith($("<textarea"+attributes_html+' data-richtext="init">'+value+"</textarea>"));$inputElement=$('[data-richtext="init"]');$inputElement.removeAttr("data-richtext")}else{attributes=$inputElement.prop("attributes");$.each(attributes,function(){if(this.name){attributes_html+=" "+this.name+'="'+this.value+'"'}});$inputElement.replaceWith($("<textarea"+attributes_html+' data-richtext="init"></textarea>'));$inputElement=$('[data-richtext="init"]');$inputElement.removeAttr("data-richtext")}$editor=$("<div />",{class:"richText"});var $toolbar=$("<div />",{class:"richText-toolbar"});var $editorView=$("<div />",{class:"richText-editor",id:editorID,contenteditable:!settings.preview});$editorView.on("clear",()=>{var $editor=$("#"+editorID);$editor.siblings(".richText-initial").val("<div><br></div>");$editor.html($editor.siblings(".richText-initial").val())});$editorView.on("setContent",(event,content)=>{var $editor=$("#"+editorID);$editor.siblings(".richText-initial").val(content);$editor.html($editor.siblings(".richText-initial").val())});$editorView.on("getContent",(event,callback)=>{if(typeof callback!=="function"){return}callback($editorView.siblings(".richText-initial").val())});$editorView.on("save",(event,callback)=>{$editorView.trigger("change");if(typeof settings.saveCallback==="function"){settings.saveCallback($editor,"save",getEditorContent(editorID))}});$editorView.on("destroy",(event,options)=>{const destroy=()=>{let $main=$editorView.parents(".richText");$main.find(".richText-toolbar").remove();$main.find(".richText-editor").remove();const $textarea=$main.find(".richText-initial");$textarea.unwrap(".richText").data("editor","richText").removeClass("richText-initial").show();if(options&&typeof options.callback==="function"){options.callback($textarea)}};if(options&&options.delay){setTimeout(()=>{destroy()},options.delay);return}destroy()});var tabindex=$inputElement.prop("tabindex");if(tabindex>=0&&settings.useTabForNext===true){$editorView.attr("tabindex",tabindex)}if(!settings.preview){$toolbar.append($toolbarList)}if(settings.placeholder){if(!$editorView.text().length){$editorView.attr("placeholder",settings.placeholder);$editorView.on("focus",function(){$editorView.removeAttr("placeholder")});$editorView.on("focusout blur",function(){if(this.hasAttribute("placeholder")){return}if($(this).text().length){return}$(this).attr("placeholder",settings.placeholder)})}}settings.$editor=$editor;settings.blurTriggered=false;settings.$editor.on("click",()=>{settings.blurTriggered=false});if(settings.bold===true){$toolbarList.append($toolbarElement.clone().append($btnBold))}if(settings.italic===true){$toolbarList.append($toolbarElement.clone().append($btnItalic))}if(settings.underline===true){$toolbarList.append($toolbarElement.clone().append($btnUnderline))}if(settings.leftAlign===true){$toolbarList.append($toolbarElement.clone().append($btnLeftAlign))}if(settings.centerAlign===true){$toolbarList.append($toolbarElement.clone().append($btnCenterAlign))}if(settings.rightAlign===true){$toolbarList.append($toolbarElement.clone().append($btnRightAlign))}if(settings.justify===true){$toolbarList.append($toolbarElement.clone().append($btnJustify))}if(settings.ol===true){$toolbarList.append($toolbarElement.clone().append($btnOL))}if(settings.ul===true){$toolbarList.append($toolbarElement.clone().append($btnUL))}if(settings.fonts===true&&settings.fontList.length>0){$toolbarList.append($toolbarElement.clone().append($btnFont))}if(settings.fontSize===true){$toolbarList.append($toolbarElement.clone().append($btnFontSize))}if(settings.heading===true){$toolbarList.append($toolbarElement.clone().append($btnHeading))}if(settings.fontColor===true){$toolbarList.append($toolbarElement.clone().append($btnFontColor))}if(settings.backgroundColor===true){$toolbarList.append($toolbarElement.clone().append($btnBackgroundColor))}if(settings.imageUpload===true){$toolbarList.append($toolbarElement.clone().append($btnImageUpload))}if(settings.fileUpload===true){$toolbarList.append($toolbarElement.clone().append($btnFileUpload))}if(settings.videoEmbed===true){$toolbarList.append($toolbarElement.clone().append($btnVideoEmbed))}if(settings.urls===true){$toolbarList.append($toolbarElement.clone().append($btnURLs))}if(settings.table===true){$toolbarList.append($toolbarElement.clone().append($btnTable))}if(settings.removeStyles===true){$toolbarList.append($toolbarElement.clone().append($btnRemoveStyles))}if(settings.code===true){$toolbarList.append($toolbarElement.clone().append($btnCode))}if(settings.save===true){$toolbarList.append($toolbarElement.clone().append($btnSave))}$editorView.html($inputElement.val());$editorView.data("content-val",$inputElement.val());$editor.append($toolbar);$editor.append($editorView);$editor.append($inputElement.clone().hide());$inputElement.replaceWith($editor);$bottomToolbar=$("<div />",{class:"richText-toolbar"});if(!settings.preview&&settings.undoRedo){$bottomToolbar.append($("<a />",{class:"richText-undo is-disabled",html:'<span class="fa fa-undo"></span>',title:settings.translations.undo}));$bottomToolbar.append($("<a />",{class:"richText-redo is-disabled",html:'<span class="fa fa-repeat fa-redo"></span>',title:settings.translations.redo}))}$bottomToolbar.append($("<a />",{class:"richText-help",html:'<span class="fa fa-question-circle"></span>'}));$editor.append($bottomToolbar);var maxlength=settings.maxlength;if(!maxlength&&$inputElement.attr("maxlength")){maxlength=$inputElement.attr("maxlength")}if(maxlength>0){$editor.data("maxlength",maxlength);$editor.children(".richText-toolbar").children(".richText-help").before($("<a />",{class:"richText-length",text:"0/"+maxlength}));updateMaxLength($editor.find(".richText-editor").attr("id"))}if(settings.height&&settings.height>0){$editor.children(".richText-editor, .richText-initial").css({"min-height":settings.height+"px",height:settings.adaptiveHeight?"auto":settings.height+"px"})}else if(settings.heightPercentage&&settings.heightPercentage>0){var parentHeight=$editor.parent().innerHeight();var height=settings.heightPercentage/100*parentHeight;height-=$toolbar.outerHeight()*2;height-=parseInt($editor.css("margin-top"));height-=parseInt($editor.css("margin-bottom"));height-=parseInt($editor.find(".richText-editor").css("padding-top"));height-=parseInt($editor.find(".richText-editor").css("padding-bottom"));$editor.children(".richText-editor, .richText-initial").css({"min-height":height+"px",height:settings.adaptiveHeight?"auto":height+"px"})}else if(settings.adaptiveHeight){$editor.children(".richText-editor, .richText-initial").css({height:"auto"})}if(settings.class){$editor.addClass(settings.class)}if(settings.id){$editor.attr("id",settings.id)}fixFirstLine();history[editorID].push($editor.find("textarea").val());if(settings.callback&&typeof settings.callback==="function"){settings.callback($editor)}}init();settings.$editor.find(".richText-help").on("click",function(){var $editor=$(this).parents(".richText");if($editor){var $outer=$("<div />",{class:"richText-help-popup",style:"position:absolute;top:0;right:0;bottom:0;left:0;background-color: rgba(0,0,0,0.3);"});var $inner=$("<div />",{style:"position:relative;margin:60px auto;padding:20px;background-color:#FAFAFA;width:70%;font-family:Calibri,Verdana,Helvetica,sans-serif;font-size:small;"});var $content=$("<div />",{html:'<span id="closeHelp" style="display:block;position:absolute;top:0;right:0;padding:10px;cursor:pointer;" title="'+settings.translations.close+'"><span class="fa fa-times"></span></span>'});$content.append('<h3 style="margin:0;">RichText</h3>');$content.append('<hr><br>Powered by <a href="https://github.com/webfashionist/RichText" target="_blank">webfashionist/RichText</a> (Github) <br>License: <a href="https://github.com/webfashionist/RichText/blob/master/LICENSE" target="_blank">AGPL-3.0</a>');$outer.append($inner.append($content));$editor.append($outer);$outer.on("click","#closeHelp",function(){$(this).parents(".richText-help-popup").remove()})}});settings.$editor.find(".richText-undo, .richText-redo").on("click",function(){var $this=$(this);if($this.hasClass("richText-undo")&&!$this.hasClass("is-disabled")){undo(settings.$editor)}else if($this.hasClass("richText-redo")&&!$this.hasClass("is-disabled")){redo(settings.$editor)}});settings.$editor.find(".richText-editor").on("input change blur keydown keyup",function(e){if((e.keyCode===9||e.keyCode==="9")&&e.type==="keydown"){if(settings.useTabForNext===true){focusNextElement();return false}e.preventDefault();tabifyEditableTable(window,e);return false}fixFirstLine();updateTextarea(e);doSave($(this).attr("id"));updateMaxLength($(this).attr("id"))});settings.$editor.find(".richText-editor").on("contextmenu",".richText-editor",function(e){var $list=$("<ul />",{class:"list-rightclick richText-list"});var $li=$("<li />");$(".richText-editor").find(".richText-editNode").removeClass("richText-editNode");var $target=$(e.target);var $richText=$target.parents(".richText");var $toolbar=$richText.find(".richText-toolbar");var positionX=e.pageX-$richText.offset().left;var positionY=e.pageY-$richText.offset().top;$list.css({top:positionY,left:positionX});if($target.prop("tagName")==="A"){e.preventDefault();$list.append($li.clone().html('<span class="fa fa-link"></span>'));$target.parents(".richText").append($list);$list.find(".fa-link").on("click",function(){$(".list-rightclick.richText-list").remove();$target.addClass("richText-editNode");var $popup=$toolbar.find("#richText-URL");$popup.find("input#url").val($target.attr("href"));$popup.find("input#urlText").val($target.text());$popup.find("select#openIn").val($target.attr("target"));$toolbar.find(".richText-btn").children(".fa-link").parents("li").addClass("is-selected")});return false}else if($target.prop("tagName")==="IMG"){e.preventDefault();$list.append($li.clone().html('<span class="fa fa-image"></span>'));$target.parents(".richText").append($list);$list.find(".fa-image").on("click",function(){var align;if($target.parent("div").length>0&&$target.parent("div").attr("style")==="text-align:center;"){align="center"}else{align=$target.attr("align")}$(".list-rightclick.richText-list").remove();$target.addClass("richText-editNode");var $popup=$toolbar.find("#richText-Image");$popup.find("input#imageURL").val($target.attr("src"));$popup.find("select#align").val(align);$toolbar.find(".richText-btn").children(".fa-image").parents("li").addClass("is-selected")});return false}});settings.$editor.find(".richText-initial").on("input change blur",function(){if(settings.useSingleQuotes===true){$(this).val(changeAttributeQuotes($(this).val()))}var editorID=$(this).siblings(".richText-editor").attr("id");updateEditor(editorID);doSave(editorID);updateMaxLength(editorID)});settings.$editor.find(".richText-editor").on("dblclick mouseup",function(){doSave($(this).attr("id"))});settings.$editor.find("#richText-Video button.btn").on("click",function(event){event.preventDefault();var $button=$(this);var $form=$button.parent(".richText-form-item").parent(".richText-form");if($form.attr("data-editor")===editorID){var url=$form.find("input#videoURL").val();var size=$form.find("select#size").val();if(!url){$form.prepend($("<div />",{style:"color:red;display:none;",class:"form-item is-error",text:settings.translations.pleaseEnterURL}));$form.children(".form-item.is-error").slideDown();setTimeout(function(){$form.children(".form-item.is-error").slideUp(function(){$(this).remove()})},5e3)}else{var html="";html=getVideoCode(url,size);if(!html){$form.prepend($("<div />",{style:"color:red;display:none;",class:"form-item is-error",text:settings.translations.videoURLnotSupported}));$form.children(".form-item.is-error").slideDown();setTimeout(function(){$form.children(".form-item.is-error").slideUp(function(){$(this).remove()})},5e3)}else{if(settings.useSingleQuotes===true){}else{}restoreSelection(editorID,true);pasteHTMLAtCaret(html);updateTextarea();$form.find("input#videoURL").val("");$(".richText-toolbar li.is-selected").removeClass("is-selected")}}}});$(document).on("mousedown",function(e){var $target=$(e.target);if(!$target.hasClass("richText-list")&&$target.parents(".richText-list").length===0){$(".richText-list.list-rightclick").remove();if(!$target.hasClass("richText-form")&&$target.parents(".richText-form").length===0){$(".richText-editNode").each(function(){var $this=$(this);$this.removeClass("richText-editNode");if($this.attr("class")===""){$this.removeAttr("class")}})}}if($target.prop("tagName")==="IMG"&&$target.parents("#"+editorID)){startX=e.pageX;startY=e.pageY;startW=$target.innerWidth();startH=$target.innerHeight();var left=$target.offset().left;var right=$target.offset().left+$target.innerWidth();var bottom=$target.offset().top+$target.innerHeight();var top=$target.offset().top;var resize=false;$target.css({cursor:"default"});if(startY<=bottom&&startY>=bottom-20&&startX>=right-20&&startX<=right){$resizeImage=$target;$resizeImage.css({cursor:"nwse-resize"});resize=true}if((resize===true||$resizeImage)&&!$resizeImage.data("width")){$resizeImage.data("width",$target.parents("#"+editorID).innerWidth());$resizeImage.data("height",$target.parents("#"+editorID).innerHeight()*3);e.preventDefault()}else if(resize===true||$resizeImage){e.preventDefault()}else{$resizeImage=null}}});$(document).mouseup(function(){if($resizeImage){$resizeImage.css({cursor:"default"})}$resizeImage=null}).mousemove(function(e){if($resizeImage!==null){var maxWidth=$resizeImage.data("width");var currentWidth=$resizeImage.width();var maxHeight=$resizeImage.data("height");var currentHeight=$resizeImage.height();if(startW+e.pageX-startX<=maxWidth&&startH+e.pageY-startY<=maxHeight){$resizeImage.innerWidth(startW+e.pageX-startX);updateTextarea()}else if(startW+e.pageX-startX<=currentWidth&&startH+e.pageY-startY<=currentHeight){$resizeImage.innerWidth(startW+e.pageX-startX);updateTextarea()}}});settings.$editor.find("#richText-URL button.btn").on("click",function(event){event.preventDefault();var $button=$(this);var $form=$button.parent(".richText-form-item").parent(".richText-form");if($form.attr("data-editor")===editorID){var url=$form.find("input#url").val();var text=$form.find("input#urlText").val();var target=$form.find("#openIn").val();if(!target){target="_self"}if(!text){text=url}if(!url){$form.prepend($("<div />",{style:"color:red;display:none;",class:"form-item is-error",text:settings.translations.pleaseEnterURL}));$form.children(".form-item.is-error").slideDown();setTimeout(function(){$form.children(".form-item.is-error").slideUp(function(){$(this).remove()})},5e3)}else{var html="";if(settings.useSingleQuotes===true){html="<a href='"+url+"' target='"+target+"'>"+text+"</a>"}else{html='<a href="'+url+'" target="'+target+'">'+text+"</a>"}restoreSelection(editorID,false,true);var $editNode=$(".richText-editNode");if($editNode.length>0&&$editNode.prop("tagName")==="A"){$editNode.attr("href",url);$editNode.attr("target",target);$editNode.text(text);$editNode.removeClass("richText-editNode");if($editNode.attr("class")===""){$editNode.removeAttr("class")}}else{pasteHTMLAtCaret(html)}$form.find("input#url").val("");$form.find("input#urlText").val("");$(".richText-toolbar li.is-selected").removeClass("is-selected")}}});settings.$editor.find("#richText-Image button.btn").on("click",function(event){event.preventDefault();var $button=$(this);var $form=$button.parent(".richText-form-item").parent(".richText-form");if($form.attr("data-editor")===editorID){var url=$form.find("#imageURL").val();var align=$form.find("select#align").val();if(!align){align="center"}if(!url){$form.prepend($("<div />",{style:"color:red;display:none;",class:"form-item is-error",text:settings.translations.pleaseSelectImage}));$form.children(".form-item.is-error").slideDown();setTimeout(function(){$form.children(".form-item.is-error").slideUp(function(){$(this).remove()})},5e3)}else{var html="";if(settings.useSingleQuotes===true){if(align==="center"){html="<div style='text-align:center;'><img src='"+url+"'></div>"}else{html="<img src='"+url+"' align='"+align+"'>"}}else{if(align==="center"){html='<div style="text-align:center;"><img src="'+url+'"></div>'}else{html='<img src="'+url+'" align="'+align+'">'}}restoreSelection(editorID,true);var $editNode=$(".richText-editNode");if($editNode.length>0&&$editNode.prop("tagName")==="IMG"){$editNode.attr("src",url);if($editNode.parent("div").length>0&&$editNode.parent("div").attr("style")==="text-align:center;"&&align!=="center"){$editNode.unwrap("div");$editNode.attr("align",align)}else if(($editNode.parent("div").length===0||$editNode.parent("div").attr("style")!=="text-align:center;")&&align==="center"){$editNode.wrap('<div style="text-align:center;"></div>');$editNode.removeAttr("align")}else{$editNode.attr("align",align)}$editNode.removeClass("richText-editNode");if($editNode.attr("class")===""){$editNode.removeAttr("class")}}else{pasteHTMLAtCaret(html)}$form.find("input#imageURL").val("");$(".richText-toolbar li.is-selected").removeClass("is-selected")}}});settings.$editor.find("#richText-File button.btn").on("click",function(event){event.preventDefault();var $button=$(this);var $form=$button.parent(".richText-form-item").parent(".richText-form");if($form.attr("data-editor")===editorID){var url=$form.find("#fileURL").val();var text=$form.find("#fileText").val();if(!text){text=url}if(!url){$form.prepend($("<div />",{style:"color:red;display:none;",class:"form-item is-error",text:settings.translations.pleaseSelectFile}));$form.children(".form-item.is-error").slideDown();setTimeout(function(){$form.children(".form-item.is-error").slideUp(function(){$(this).remove()})},5e3)}else{var html="";if(settings.useSingleQuotes===true){html="<a href='"+url+"' target='_blank'>"+text+"</a>"}else{html='<a href="'+url+'" target="_blank">'+text+"</a>"}restoreSelection(editorID,true);pasteHTMLAtCaret(html);$form.find("input#fileURL").val("");$form.find("input#fileText").val("");$(".richText-toolbar li.is-selected").removeClass("is-selected")}}});settings.$editor.find("#richText-Table button.btn").on("click",function(event){event.preventDefault();var $button=$(this);var $form=$button.parent(".richText-form-item").parent(".richText-form");if($form.attr("data-editor")===editorID){var rows=$form.find("input#tableRows").val();var columns=$form.find("input#tableColumns").val();if(!rows||rows<=0){rows=2}if(!columns||columns<=0){columns=2}var html="";if(settings.useSingleQuotes===true){html="<table class='table-1'><tbody>"}else{html='<table class="table-1"><tbody>'}for(var i=1;i<=rows;i++){html+="<tr>";for(var n=1;n<=columns;n++){html+="<td> </td>"}html+="</tr>"}html+="</tbody></table>";restoreSelection(editorID,true);pasteHTMLAtCaret(html);$form.find("input#tableColumns").val("");$form.find("input#tableRows").val("");$(".richText-toolbar li.is-selected").removeClass("is-selected")}});$(document).on("click",function(event){var $clickedElement=$(event.target);if($clickedElement.parents(".richText-toolbar").length===0){}else if($clickedElement.hasClass("richText-dropdown-outer")){$clickedElement.parent("a").parent("li").removeClass("is-selected")}else if($clickedElement.find(".richText").length>0){$(".richText-toolbar li").removeClass("is-selected")}else if($clickedElement.parent().hasClass("richText-dropdown-close")){$(".richText-toolbar li").removeClass("is-selected")}else if($clickedElement.hasClass("richText-btn")&&$(event.target).children(".richText-dropdown-outer").length>0){$clickedElement.parent("li").addClass("is-selected");if($clickedElement.children(".fa,svg").hasClass("fa-link")){restoreSelection(editorID,false,true);var selectedText=getSelectedText();$clickedElement.find("input#urlText").val("");$clickedElement.find("input#url").val("");if(selectedText){$clickedElement.find("input#urlText").val(selectedText)}}else if($clickedElement.hasClass("fa-image")){}}});settings.$editor.find(".richText-toolbar a[data-command]").on("click",function(event){var $button=$(this);var $toolbar=$button.closest(".richText-toolbar");var $editor=$toolbar.siblings(".richText-editor");var id=$editor.attr("id");if($editor.length>0&&id===editorID&&(!$button.parent("li").attr("data-disable")||$button.parent("li").attr("data-disable")==="false")){event.preventDefault();var command=$(this).data("command");if(command==="toggleSave"){$editor.trigger("change");if(typeof settings.saveCallback==="function"){settings.saveCallback($editor,"save",getEditorContent(editorID))}}else if(command==="toggleCode"){toggleCode($editor.attr("id"))}else{var option=null;if($(this).data("option")){option=$(this).data("option").toString();if(option.match(/^h[1-6]$/)){command="heading"}}formatText(command,option,id);if(command==="removeFormat"){$editor.find("*").each(function(){var keepAttributes=["id","class","name","action","method","src","align","alt","title","style","webkitallowfullscreen","mozallowfullscreen","allowfullscreen","width","height","frameborder"];var element=$(this);var attributes=$.map(this.attributes,function(item){return item.name});$.each(attributes,function(i,item){if(keepAttributes.indexOf(item)<0&&item.substr(0,5)!=="data-"){element.removeAttr(item)}});if(element.prop("tagName")==="A"){element.replaceWith(function(){return $("<span />",{html:$(this).html()})})}});formatText("formatBlock","div",id)}$editor.find("div:empty,p:empty,li:empty,h1:empty,h2:empty,h3:empty,h4:empty,h5:empty,h6:empty").remove();$editor.find("h1,h2,h3,h4,h5,h6").unwrap("h1,h2,h3,h4,h5,h6")}}$button.parents("li.is-selected").removeClass("is-selected")});function focusNextElement(){var focussableElements='a:not([disabled]):not(.richText-btn,.richText-undo,.richText-redo,.richText-help), button:not([disabled]), input:not([disabled]), select:not([disabled]), textarea:not([disabled]), [tabindex]:not([disabled]):not([tabindex="-1"])';if(document.activeElement){var focussable=Array.prototype.filter.call(document.querySelectorAll(focussableElements),function(element){return element.offsetWidth>0||element.offsetHeight>0||element===document.activeElement});var index=focussable.indexOf(document.activeElement);if(index>-1){var nextElement=focussable[index+1]||focussable[0];nextElement.focus()}}}function formatText(command,option,editorID){if(typeof option==="undefined"){option=null}doRestore(editorID);if(command==="heading"&&getSelectedText()){wrapTextNode(option,"<"+option+">"+getSelectedText()+"</"+option+">")}else if(command==="fontSize"&&parseInt(option)>0){var selection=getSelectedText();selection=(selection+"").replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g,"$1"+"<br>"+"$2");var html=settings.useSingleQuotes?"<span style='font-size:"+option+"px;'>"+selection+"</span>":'<span style="font-size:'+option+'px;">'+selection+"</span>";wrapTextNode('span style="font-size:'+option+'px;"',html)}else{document.execCommand(command,false,option)}}function getEditorContent(editorId){var $editor=$("#"+editorID);var content=$editor.html();if(settings.useSingleQuotes===true){content=changeAttributeQuotes(content)}return content}function updateTextarea(event){var $editor=$("#"+editorID);content=getEditorContent(editorID);if(content!==$editor.siblings(".richText-initial").val()){$editor.siblings(".richText-initial").val(content)}if(settings.saveOnBlur&&event&&event.type==="blur"){settings.blurTriggered=true;setTimeout(()=>{if(!settings.blurTriggered){return}var content=getEditorContent(editorID);if($editor.data("content-val")!==content){$editor.data("content-val",content);$editor.trigger("change");if(typeof settings.saveCallback==="function"){settings.saveCallback($editor,"blur",content)}}},settings.saveOnBlur)}}function updateEditor(editorID){var $editor=$("#"+editorID);var content=$editor.siblings(".richText-initial").val();$editor.html(content)}function saveSelection(editorID){var containerEl=document.getElementById(editorID);var range,start,end,type;if(window.getSelection&&document.createRange){var sel=window.getSelection&&window.getSelection();if(sel&&sel.rangeCount>0&&$(sel.anchorNode).parents("#"+editorID).length>0){range=window.getSelection().getRangeAt(0);var preSelectionRange=range.cloneRange();preSelectionRange.selectNodeContents(containerEl);preSelectionRange.setEnd(range.startContainer,range.startOffset);start=preSelectionRange.toString().length;end=start+range.toString().length;type=start===end?"caret":"selection";anchor=sel.anchorNode;start=type==="caret"&&anchor!==false?start:preSelectionRange.toString().length;end=type==="caret"&&anchor!==false?end:start+range.toString().length;return{start:start,end:end,type:type,anchor:anchor,editorID:editorID}}}return savedSelection?savedSelection:{start:0,end:0}}function restoreSelection(editorID,media,url){var containerEl=document.getElementById(editorID);var savedSel=savedSelection;if(!savedSel){savedSel={start:0,end:0,type:"caret",editorID:editorID,anchor:$("#"+editorID).children("div")[0]}}else if(!savedSel.editorID&&editorID){savedSel.editorID=editorID}if(savedSel.editorID!==editorID){return false}else if(media===true){containerEl=savedSel.anchor?savedSel.anchor:containerEl}else if(url===true){if(savedSel.start===0&&savedSel.end===0){containerEl=savedSel.anchor?savedSel.anchor:containerEl}}if(window.getSelection&&document.createRange){var charIndex=0,range=document.createRange();if(!range||!containerEl){window.getSelection().removeAllRanges();return true}range.setStart(containerEl,0);range.collapse(true);var nodeStack=[containerEl],node,foundStart=false,stop=false;while(!stop&&(node=nodeStack.pop())){if(node.nodeType===3){var nextCharIndex=charIndex+node.length;if(!foundStart&&savedSel.start>=charIndex&&savedSel.start<=nextCharIndex){range.setStart(node,savedSel.start-charIndex);foundStart=true}if(foundStart&&savedSel.end>=charIndex&&savedSel.end<=nextCharIndex){range.setEnd(node,savedSel.end-charIndex);stop=true}charIndex=nextCharIndex}else{var i=node.childNodes.length;while(i--){nodeStack.push(node.childNodes[i])}}}var sel=window.getSelection();sel.removeAllRanges();sel.addRange(range)}}function tabifyEditableTable(win,e){if(e.keyCode!==9){return false}var sel;if(win.getSelection){sel=win.getSelection();if(sel.rangeCount>0){var textNode=null,direction=null;if(!e.shiftKey){direction="next";textNode=sel.focusNode.nodeName==="TD"?sel.focusNode.nextSibling!=null?sel.focusNode.nextSibling:sel.focusNode.parentNode.nextSibling!=null?sel.focusNode.parentNode.nextSibling.childNodes[0]:null:sel.focusNode.parentNode.nextSibling!=null?sel.focusNode.parentNode.nextSibling:sel.focusNode.parentNode.parentNode.nextSibling!=null?sel.focusNode.parentNode.parentNode.nextSibling.childNodes[0]:null}else{direction="previous";textNode=sel.focusNode.nodeName==="TD"?sel.focusNode.previousSibling!=null?sel.focusNode.previousSibling:sel.focusNode.parentNode.previousSibling!=null?sel.focusNode.parentNode.previousSibling.childNodes[sel.focusNode.parentNode.previousSibling.childNodes.length-1]:null:sel.focusNode.parentNode.previousSibling!=null?sel.focusNode.parentNode.previousSibling:sel.focusNode.parentNode.parentNode.previousSibling!=null?sel.focusNode.parentNode.parentNode.previousSibling.childNodes[sel.focusNode.parentNode.parentNode.previousSibling.childNodes.length-1]:null}if(textNode!=null){sel.collapse(textNode,Math.min(textNode.length,sel.focusOffset+1));if(textNode.textContent!=null){sel.selectAllChildren(textNode)}e.preventDefault();return true}else if(textNode===null&&direction==="next"&&sel.focusNode.nodeName==="TD"){var $table=$(sel.focusNode).parents("table");var cellsPerLine=$table.find("tr").first().children("td").length;var $tr=$("<tr />");var $td=$("<td />");for(var i=1;i<=cellsPerLine;i++){$tr.append($td.clone())}$table.append($tr);tabifyEditableTable(window,{keyCode:9,shiftKey:false,preventDefault:function(){}})}}}return false}function getSelectedText(){var range;if(window.getSelection){range=window.getSelection();if(range.isCollapsed){return false}return range.toString()?range.toString():range.focusNode.nodeValue}else if(document.selection.createRange){range=document.selection.createRange();return range.text}return false}function doSave(editorID){var $textarea=$(".richText-editor#"+editorID).siblings(".richText-initial");addHistory($textarea.val(),editorID);savedSelection=saveSelection(editorID)}function updateMaxLength(editorID){var $editorInner=$(".richText-editor#"+editorID);var $editor=$editorInner.parents(".richText");if(!$editor.data("maxlength")){return true}var color;var maxLength=parseInt($editor.data("maxlength"));var content=settings.maxlengthIncludeHTML?$editorInner.html():$editorInner.text();var percentage=content.length/maxLength*100;if(percentage>99){color="red"}else if(percentage>=90){color="orange"}else{color="black"}$editor.find(".richText-length").html('<span class="'+color+'">'+content.length+"</span>/"+maxLength);if(content.length>maxLength){undo($editor);return false}return true}function addHistory(val,id){if(!history[id]){return false}if(history[id].length-1>historyPosition[id]){history[id].length=historyPosition[id]+1}if(history[id][history[id].length-1]!==val){history[id].push(val)}historyPosition[id]=history[id].length-1;setHistoryButtons(id)}function setHistoryButtons(id){if(historyPosition[id]<=0){$editor.find(".richText-undo").addClass("is-disabled")}else{$editor.find(".richText-undo").removeClass("is-disabled")}if(historyPosition[id]>=history[id].length-1||history[id].length===0){$editor.find(".richText-redo").addClass("is-disabled")}else{$editor.find(".richText-redo").removeClass("is-disabled")}}function undo($editor){var id=$editor.children(".richText-editor").attr("id");historyPosition[id]--;if(!historyPosition[id]&&historyPosition[id]!==0){return false}var value=history[id][historyPosition[id]];$editor.find("textarea").val(value);$editor.find(".richText-editor").html(value);setHistoryButtons(id)}function redo($editor){var id=$editor.children(".richText-editor").attr("id");historyPosition[id]++;if(!historyPosition[id]&&historyPosition[id]!==0){return false}var value=history[id][historyPosition[id]];$editor.find("textarea").val(value);$editor.find(".richText-editor").html(value);setHistoryButtons(id)}function doRestore(id){if(savedSelection){restoreSelection(id?id:savedSelection.editorID)}}function wrapTextNode(tag,html){if(window.getSelection){sel=window.getSelection();console.log(sel,1);if(sel.focusNode.nodeType===3){$(sel.focusNode).wrap("<"+tag+" />")}return}pasteHTMLAtCaret(html)}function pasteHTMLAtCaret(html){var sel,range;if(window.getSelection){sel=window.getSelection();if(sel.getRangeAt&&sel.rangeCount){range=sel.getRangeAt(0);range.deleteContents();var el=document.createElement("div");el.innerHTML=html;var frag=document.createDocumentFragment(),node,lastNode;while(node=el.firstChild){lastNode=frag.appendChild(node)}range.insertNode(frag);if(lastNode){range=range.cloneRange();range.setStartAfter(lastNode);range.collapse(true);sel.removeAllRanges();sel.addRange(range)}}}else if(document.selection&&document.selection.type!=="Control"){document.selection.createRange().pasteHTML(html)}}function changeAttributeQuotes(string){if(!string){return""}var regex;var rstring;if(settings.useSingleQuotes===true){regex=/\s+(\w+\s*=\s*(["][^"]*["])|(['][^']*[']))+/g;rstring=string.replace(regex,function($0,$1,$2){if(!$2){return $0}return $0.replace($2,$2.replace(/\"/g,"'"))})}else{regex=/\s+(\w+\s*=\s*(['][^']*['])|(["][^"]*["]))+/g;rstring=string.replace(regex,function($0,$1,$2){if(!$2){return $0}return $0.replace($2,$2.replace(/'/g,'"'))})}return rstring}function loadColors(command){var colors={};var result="";colors["#FFFFFF"]=settings.translations.white;colors["#000000"]=settings.translations.black;colors["#7F6000"]=settings.translations.brown;colors["#938953"]=settings.translations.beige;colors["#1F497D"]=settings.translations.darkBlue;colors["blue"]=settings.translations.blue;colors["#4F81BD"]=settings.translations.lightBlue;colors["#953734"]=settings.translations.darkRed;colors["red"]=settings.translations.red;colors["#4F6128"]=settings.translations.darkGreen;colors["green"]=settings.translations.green;colors["#3F3151"]=settings.translations.purple;colors["#31859B"]=settings.translations.darkTurquois;colors["#4BACC6"]=settings.translations.turquois;colors["#E36C09"]=settings.translations.darkOrange;colors["#F79646"]=settings.translations.orange;colors["#FFFF00"]=settings.translations.yellow;if(settings.colors&&Object.keys(settings.colors).length){colors=settings.colors}for(var i in colors){result+='<li class="inline"><a data-command="'+command+'" data-option="'+i+'" style="text-align:left;" title="'+colors[i]+'"><span class="box-color" style="background-color:'+i+'"></span></a></li>'}return result}function toggleCode(editorID){doRestore(editorID);if($editor.find(".richText-editor").is(":visible")){$editor.find(".richText-initial").show();$editor.find(".richText-editor").hide();$(".richText-toolbar").find(".richText-btn").each(function(){if($(this).children(".fa-code").length===0){$(this).parent("li").attr("data-disable","true")}});convertCaretPosition(editorID,savedSelection)}else{$editor.find(".richText-initial").hide();$editor.find(".richText-editor").show();convertCaretPosition(editorID,savedSelection,true);$(".richText-toolbar").find("li").removeAttr("data-disable")}}function convertCaretPosition(editorID,selection,reverse){var $editor=$("#"+editorID);var $textarea=$editor.siblings(".richText-initial");var code=$textarea.val();if(!selection||!code){return{start:0,end:0}}if(reverse===true){savedSelection={start:$editor.text().length,end:$editor.text().length,editorID:editorID};restoreSelection(editorID);return true}selection.node=$textarea[0];var states={start:false,end:false,tag:false,isTag:false,tagsCount:0,isHighlight:selection.start!==selection.end};for(var i=0;i<code.length;i++){if(code[i]==="<"){states.isTag=true;states.tag=false;states.tagsCount++}else if(states.isTag===true&&code[i]!==">"){states.tagsCount++}else if(states.isTag===true&&code[i]===">"){states.isTag=false;states.tag=true;states.tagsCount++}else if(states.tag===true){states.tag=false}if(!reverse){if(selection.start+states.tagsCount<=i&&states.isHighlight&&!states.isTag&&!states.tag&&!states.start){selection.start=i;states.start=true}else if(selection.start+states.tagsCount<=i+1&&!states.isHighlight&&!states.isTag&&!states.tag&&!states.start){selection.start=i+1;states.start=true}if(selection.end+states.tagsCount<=i+1&&!states.isTag&&!states.tag&&!states.end){selection.end=i+1;states.end=true}}}createSelection(selection.node,selection.start,selection.end);return selection}function createSelection(field,start,end){if(field.createTextRange){var selRange=field.createTextRange();selRange.collapse(true);selRange.moveStart("character",start);selRange.moveEnd("character",end);selRange.select();field.focus()}else if(field.setSelectionRange){field.focus();field.setSelectionRange(start,end)}else if(typeof field.selectionStart!="undefined"){field.selectionStart=start;field.selectionEnd=end;field.focus()}}function getVideoCode(url,size){var video=getVideoID(url);var responsive=false,success=false;if(!video){return false}if(!size){size="640x360";size=size.split("x")}else if(size!=="responsive"){size=size.split("x")}else{responsive=true;size="640x360";size=size.split("x")}var html="<br><br>";if(responsive===true){html+='<div class="videoEmbed" style="position:relative;height:0;padding-bottom:56.25%">'}var allowfullscreen="webkitallowfullscreen mozallowfullscreen allowfullscreen";if(video.platform==="YouTube"){var youtubeDomain=settings.youtubeCookies?"www.youtube.com":"www.youtube-nocookie.com";html+='<iframe src="https://'+youtubeDomain+"/embed/"+video.id+'?ecver=2" width="'+size[0]+'" height="'+size[1]+'" frameborder="0"'+(responsive===true?' style="position:absolute;width:100%;height:100%;left:0"':"")+" "+allowfullscreen+"></iframe>";success=true}else if(video.platform==="Vimeo"){html+='<iframe src="https://player.vimeo.com/video/'+video.id+'" width="'+size[0]+'" height="'+size[1]+'" frameborder="0"'+(responsive===true?' style="position:absolute;width:100%;height:100%;left:0"':"")+" "+allowfullscreen+"></iframe>";success=true}else if(video.platform==="Facebook"){html+='<iframe src="https://www.facebook.com/plugins/video.php?href='+encodeURI(url)+"&show_text=0&width="+size[0]+'" width="'+size[0]+'" height="'+size[1]+'" style="'+(responsive===true?'position:absolute;width:100%;height:100%;left:0;border:none;overflow:hidden"':"border:none;overflow:hidden")+'" scrolling="no" frameborder="0" allowTransparency="true" '+allowfullscreen+"></iframe>";success=true}else if(video.platform==="Dailymotion"){html+='<iframe frameborder="0" width="'+size[0]+'" height="'+size[1]+'" src="//www.dailymotion.com/embed/video/'+video.id+'"'+(responsive===true?' style="position:absolute;width:100%;height:100%;left:0"':"")+" "+allowfullscreen+"></iframe>";success=true}if(responsive===true){html+="</div>"}html+="<br><br>";if(success){return html}return false}function getVideoID(url){var vimeoRegExp=/(?:http?s?:\/\/)?(?:www\.)?(?:vimeo\.com)\/?(.+)/;var youtubeRegExp=/^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;var facebookRegExp=/(?:http?s?:\/\/)?(?:www\.)?(?:facebook\.com)\/.*\/videos\/[0-9]+/;var dailymotionRegExp=/(?:http?s?:\/\/)?(?:www\.)?(?:dailymotion\.com)\/video\/([a-zA-Z0-9]+)/;var youtubeMatch=url.match(youtubeRegExp);var vimeoMatch=url.match(vimeoRegExp);var facebookMatch=url.match(facebookRegExp);var dailymotionMatch=url.match(dailymotionRegExp);if(youtubeMatch&&youtubeMatch[2].length===11){return{platform:"YouTube",id:youtubeMatch[2]}}else if(vimeoMatch&&vimeoMatch[1]){return{platform:"Vimeo",id:vimeoMatch[1]}}else if(facebookMatch&&facebookMatch[0]){return{platform:"Facebook",id:facebookMatch[0]}}else if(dailymotionMatch&&dailymotionMatch[1]){return{platform:"Dailymotion",id:dailymotionMatch[1]}}return false}function fixFirstLine(){if($editor&&!$editor.find(".richText-editor").html()){if(settings.useParagraph!==false){$editor.find(".richText-editor").html("<p><br></p>")}else{$editor.find(".richText-editor").html("<div><br></div>")}}else{if(settings.useParagraph!==false){$editor.find(".richText-editor").find("div:not(.videoEmbed)").replaceWith(function(){return $("<p />",{html:$(this).html()})})}else{$editor.find(".richText-editor").find("p").replaceWith(function(){return $("<div />",{html:$(this).html()})})}}updateTextarea()}return $(this)}})(jQuery);
	!function(e){"use strict";"function"==typeof define&&define.amd?define(["jquery"],e):e(jQuery)}(function(V){"use strict";V.ui=V.ui||{};var n;V.ui.version="1.13.2",V.ui.keyCode={BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38};function e(){this._curInst=null,this._keyEvent=!1,this._disabledInputs=[],this._datepickerShowing=!1,this._inDialog=!1,this._mainDivId="ui-datepicker-div",this._inlineClass="ui-datepicker-inline",this._appendClass="ui-datepicker-append",this._triggerClass="ui-datepicker-trigger",this._dialogClass="ui-datepicker-dialog",this._disableClass="ui-datepicker-disabled",this._unselectableClass="ui-datepicker-unselectable",this._currentClass="ui-datepicker-current-day",this._dayOverClass="ui-datepicker-days-cell-over",this.regional=[],this.regional[""]={closeText:"Done",prevText:"Prev",nextText:"Next",currentText:"Today",monthNames:["January","February","March","April","May","June","July","August","September","October","November","December"],monthNamesShort:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],dayNames:["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],dayNamesShort:["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],dayNamesMin:["Su","Mo","Tu","We","Th","Fr","Sa"],weekHeader:"Wk",dateFormat:"mm/dd/yy",firstDay:0,isRTL:!1,showMonthAfterYear:!1,yearSuffix:"",selectMonthLabel:"Select month",selectYearLabel:"Select year"},this._defaults={showOn:"focus",showAnim:"fadeIn",showOptions:{},defaultDate:null,appendText:"",buttonText:"...",buttonImage:"",buttonImageOnly:!1,hideIfNoPrevNext:!1,navigationAsDateFormat:!1,gotoCurrent:!1,changeMonth:!1,changeYear:!1,yearRange:"c-10:c+10",showOtherMonths:!1,selectOtherMonths:!1,showWeek:!1,calculateWeek:this.iso8601Week,shortYearCutoff:"+10",minDate:null,maxDate:null,duration:"fast",beforeShowDay:null,beforeShow:null,onSelect:null,onChangeMonthYear:null,onClose:null,onUpdateDatepicker:null,numberOfMonths:1,showCurrentAtPos:0,stepMonths:1,stepBigMonths:12,altField:"",altFormat:"",constrainInput:!0,showButtonPanel:!1,autoSize:!1,disabled:!1},V.extend(this._defaults,this.regional[""]),this.regional.en=V.extend(!0,{},this.regional[""]),this.regional["en-US"]=V.extend(!0,{},this.regional.en),this.dpDiv=a(V("<div id='"+this._mainDivId+"' class='ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all'></div>"))}function a(e){var t="button, .ui-datepicker-prev, .ui-datepicker-next, .ui-datepicker-calendar td a";return e.on("mouseout",t,function(){V(this).removeClass("ui-state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&&V(this).removeClass("ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datepicker-next")&&V(this).removeClass("ui-datepicker-next-hover")}).on("mouseover",t,d)}function d(){V.datepicker._isDisabledDatepicker((n.inline?n.dpDiv.parent():n.input)[0])||(V(this).parents(".ui-datepicker-calendar").find("a").removeClass("ui-state-hover"),V(this).addClass("ui-state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&&V(this).addClass("ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datepicker-next")&&V(this).addClass("ui-datepicker-next-hover"))}function o(e,t){for(var a in V.extend(e,t),t)null==t[a]&&(e[a]=t[a]);return e}V.extend(V.ui,{datepicker:{version:"1.13.2"}}),V.extend(e.prototype,{markerClassName:"hasDatepicker",maxRows:4,_widgetDatepicker:function(){return this.dpDiv},setDefaults:function(e){return o(this._defaults,e||{}),this},_attachDatepicker:function(e,t){var a,i=e.nodeName.toLowerCase(),s="div"===i||"span"===i;e.id||(this.uuid+=1,e.id="dp"+this.uuid),(a=this._newInst(V(e),s)).settings=V.extend({},t||{}),"input"===i?this._connectDatepicker(e,a):s&&this._inlineDatepicker(e,a)},_newInst:function(e,t){return{id:e[0].id.replace(/([^A-Za-z0-9_\-])/g,"\\\\$1"),input:e,selectedDay:0,selectedMonth:0,selectedYear:0,drawMonth:0,drawYear:0,inline:t,dpDiv:t?a(V("<div class='"+this._inlineClass+" ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all'></div>")):this.dpDiv}},_connectDatepicker:function(e,t){var a=V(e);t.append=V([]),t.trigger=V([]),a.hasClass(this.markerClassName)||(this._attachments(a,t),a.addClass(this.markerClassName).on("keydown",this._doKeyDown).on("keypress",this._doKeyPress).on("keyup",this._doKeyUp),this._autoSize(t),V.data(e,"datepicker",t),t.settings.disabled&&this._disableDatepicker(e))},_attachments:function(e,t){var a,i=this._get(t,"appendText"),s=this._get(t,"isRTL");t.append&&t.append.remove(),i&&(t.append=V("<span>").addClass(this._appendClass).text(i),e[s?"before":"after"](t.append)),e.off("focus",this._showDatepicker),t.trigger&&t.trigger.remove(),"focus"!==(a=this._get(t,"showOn"))&&"both"!==a||e.on("focus",this._showDatepicker),"button"!==a&&"both"!==a||(i=this._get(t,"buttonText"),a=this._get(t,"buttonImage"),this._get(t,"buttonImageOnly")?t.trigger=V("<img>").addClass(this._triggerClass).attr({src:a,alt:i,title:i}):(t.trigger=V("<button type='button'>").addClass(this._triggerClass),a?t.trigger.html(V("<img>").attr({src:a,alt:i,title:i})):t.trigger.text(i)),e[s?"before":"after"](t.trigger),t.trigger.on("click",function(){return V.datepicker._datepickerShowing&&V.datepicker._lastInput===e[0]?V.datepicker._hideDatepicker():(V.datepicker._datepickerShowing&&V.datepicker._lastInput!==e[0]&&V.datepicker._hideDatepicker(),V.datepicker._showDatepicker(e[0])),!1}))},_autoSize:function(e){var t,a,i,s,r,n;this._get(e,"autoSize")&&!e.inline&&(r=new Date(2009,11,20),(n=this._get(e,"dateFormat")).match(/[DM]/)&&(t=function(e){for(s=i=a=0;s<e.length;s++)e[s].length>a&&(a=e[s].length,i=s);return i},r.setMonth(t(this._get(e,n.match(/MM/)?"monthNames":"monthNamesShort"))),r.setDate(t(this._get(e,n.match(/DD/)?"dayNames":"dayNamesShort"))+20-r.getDay())),e.input.attr("size",this._formatDate(e,r).length))},_inlineDatepicker:function(e,t){var a=V(e);a.hasClass(this.markerClassName)||(a.addClass(this.markerClassName).append(t.dpDiv),V.data(e,"datepicker",t),this._setDate(t,this._getDefaultDate(t),!0),this._updateDatepicker(t),this._updateAlternate(t),t.settings.disabled&&this._disableDatepicker(e),t.dpDiv.css("display","block"))},_dialogDatepicker:function(e,t,a,i,s){var r,n=this._dialogInst;return n||(this.uuid+=1,r="dp"+this.uuid,this._dialogInput=V("<input type='text' id='"+r+"' style='position: absolute; top: -100px; width: 0px;'/>"),this._dialogInput.on("keydown",this._doKeyDown),V("body").append(this._dialogInput),(n=this._dialogInst=this._newInst(this._dialogInput,!1)).settings={},V.data(this._dialogInput[0],"datepicker",n)),o(n.settings,i||{}),t=t&&t.constructor===Date?this._formatDate(n,t):t,this._dialogInput.val(t),this._pos=s?s.length?s:[s.pageX,s.pageY]:null,this._pos||(r=document.documentElement.clientWidth,i=document.documentElement.clientHeight,t=document.documentElement.scrollLeft||document.body.scrollLeft,s=document.documentElement.scrollTop||document.body.scrollTop,this._pos=[r/2-100+t,i/2-150+s]),this._dialogInput.css("left",this._pos[0]+20+"px").css("top",this._pos[1]+"px"),n.settings.onSelect=a,this._inDialog=!0,this.dpDiv.addClass(this._dialogClass),this._showDatepicker(this._dialogInput[0]),V.blockUI&&V.blockUI(this.dpDiv),V.data(this._dialogInput[0],"datepicker",n),this},_destroyDatepicker:function(e){var t,a=V(e),i=V.data(e,"datepicker");a.hasClass(this.markerClassName)&&(t=e.nodeName.toLowerCase(),V.removeData(e,"datepicker"),"input"===t?(i.append.remove(),i.trigger.remove(),a.removeClass(this.markerClassName).off("focus",this._showDatepicker).off("keydown",this._doKeyDown).off("keypress",this._doKeyPress).off("keyup",this._doKeyUp)):"div"!==t&&"span"!==t||a.removeClass(this.markerClassName).empty(),n===i&&(n=null,this._curInst=null))},_enableDatepicker:function(t){var e,a=V(t),i=V.data(t,"datepicker");a.hasClass(this.markerClassName)&&("input"===(e=t.nodeName.toLowerCase())?(t.disabled=!1,i.trigger.filter("button").each(function(){this.disabled=!1}).end().filter("img").css({opacity:"1.0",cursor:""})):"div"!==e&&"span"!==e||((a=a.children("."+this._inlineClass)).children().removeClass("ui-state-disabled"),a.find("select.ui-datepicker-month, select.ui-datepicker-year").prop("disabled",!1)),this._disabledInputs=V.map(this._disabledInputs,function(e){return e===t?null:e}))},_disableDatepicker:function(t){var e,a=V(t),i=V.data(t,"datepicker");a.hasClass(this.markerClassName)&&("input"===(e=t.nodeName.toLowerCase())?(t.disabled=!0,i.trigger.filter("button").each(function(){this.disabled=!0}).end().filter("img").css({opacity:"0.5",cursor:"default"})):"div"!==e&&"span"!==e||((a=a.children("."+this._inlineClass)).children().addClass("ui-state-disabled"),a.find("select.ui-datepicker-month, select.ui-datepicker-year").prop("disabled",!0)),this._disabledInputs=V.map(this._disabledInputs,function(e){return e===t?null:e}),this._disabledInputs[this._disabledInputs.length]=t)},_isDisabledDatepicker:function(e){if(!e)return!1;for(var t=0;t<this._disabledInputs.length;t++)if(this._disabledInputs[t]===e)return!0;return!1},_getInst:function(e){try{return V.data(e,"datepicker")}catch(e){throw"Missing instance data for this datepicker"}},_optionDatepicker:function(e,t,a){var i,s,r=this._getInst(e);if(2===arguments.length&&"string"==typeof t)return"defaults"===t?V.extend({},V.datepicker._defaults):r?"all"===t?V.extend({},r.settings):this._get(r,t):null;i=t||{},"string"==typeof t&&((i={})[t]=a),r&&(this._curInst===r&&this._hideDatepicker(),s=this._getDateDatepicker(e,!0),t=this._getMinMaxDate(r,"min"),a=this._getMinMaxDate(r,"max"),o(r.settings,i),null!==t&&void 0!==i.dateFormat&&void 0===i.minDate&&(r.settings.minDate=this._formatDate(r,t)),null!==a&&void 0!==i.dateFormat&&void 0===i.maxDate&&(r.settings.maxDate=this._formatDate(r,a)),"disabled"in i&&(i.disabled?this._disableDatepicker(e):this._enableDatepicker(e)),this._attachments(V(e),r),this._autoSize(r),this._setDate(r,s),this._updateAlternate(r),this._updateDatepicker(r))},_changeDatepicker:function(e,t,a){this._optionDatepicker(e,t,a)},_refreshDatepicker:function(e){e=this._getInst(e);e&&this._updateDatepicker(e)},_setDateDatepicker:function(e,t){e=this._getInst(e);e&&(this._setDate(e,t),this._updateDatepicker(e),this._updateAlternate(e))},_getDateDatepicker:function(e,t){e=this._getInst(e);return e&&!e.inline&&this._setDateFromField(e,t),e?this._getDate(e):null},_doKeyDown:function(e){var t,a,i=V.datepicker._getInst(e.target),s=!0,r=i.dpDiv.is(".ui-datepicker-rtl");if(i._keyEvent=!0,V.datepicker._datepickerShowing)switch(e.keyCode){case 9:V.datepicker._hideDatepicker(),s=!1;break;case 13:return(a=V("td."+V.datepicker._dayOverClass+":not(."+V.datepicker._currentClass+")",i.dpDiv))[0]&&V.datepicker._selectDay(e.target,i.selectedMonth,i.selectedYear,a[0]),(t=V.datepicker._get(i,"onSelect"))?(a=V.datepicker._formatDate(i),t.apply(i.input?i.input[0]:null,[a,i])):V.datepicker._hideDatepicker(),!1;case 27:V.datepicker._hideDatepicker();break;case 33:V.datepicker._adjustDate(e.target,e.ctrlKey?-V.datepicker._get(i,"stepBigMonths"):-V.datepicker._get(i,"stepMonths"),"M");break;case 34:V.datepicker._adjustDate(e.target,e.ctrlKey?+V.datepicker._get(i,"stepBigMonths"):+V.datepicker._get(i,"stepMonths"),"M");break;case 35:(e.ctrlKey||e.metaKey)&&V.datepicker._clearDate(e.target),s=e.ctrlKey||e.metaKey;break;case 36:(e.ctrlKey||e.metaKey)&&V.datepicker._gotoToday(e.target),s=e.ctrlKey||e.metaKey;break;case 37:(e.ctrlKey||e.metaKey)&&V.datepicker._adjustDate(e.target,r?1:-1,"D"),s=e.ctrlKey||e.metaKey,e.originalEvent.altKey&&V.datepicker._adjustDate(e.target,e.ctrlKey?-V.datepicker._get(i,"stepBigMonths"):-V.datepicker._get(i,"stepMonths"),"M");break;case 38:(e.ctrlKey||e.metaKey)&&V.datepicker._adjustDate(e.target,-7,"D"),s=e.ctrlKey||e.metaKey;break;case 39:(e.ctrlKey||e.metaKey)&&V.datepicker._adjustDate(e.target,r?-1:1,"D"),s=e.ctrlKey||e.metaKey,e.originalEvent.altKey&&V.datepicker._adjustDate(e.target,e.ctrlKey?+V.datepicker._get(i,"stepBigMonths"):+V.datepicker._get(i,"stepMonths"),"M");break;case 40:(e.ctrlKey||e.metaKey)&&V.datepicker._adjustDate(e.target,7,"D"),s=e.ctrlKey||e.metaKey;break;default:s=!1}else 36===e.keyCode&&e.ctrlKey?V.datepicker._showDatepicker(this):s=!1;s&&(e.preventDefault(),e.stopPropagation())},_doKeyPress:function(e){var t,a=V.datepicker._getInst(e.target);if(V.datepicker._get(a,"constrainInput"))return t=V.datepicker._possibleChars(V.datepicker._get(a,"dateFormat")),a=String.fromCharCode(null==e.charCode?e.keyCode:e.charCode),e.ctrlKey||e.metaKey||a<" "||!t||-1<t.indexOf(a)},_doKeyUp:function(e){e=V.datepicker._getInst(e.target);if(e.input.val()!==e.lastVal)try{V.datepicker.parseDate(V.datepicker._get(e,"dateFormat"),e.input?e.input.val():null,V.datepicker._getFormatConfig(e))&&(V.datepicker._setDateFromField(e),V.datepicker._updateAlternate(e),V.datepicker._updateDatepicker(e))}catch(e){}return!0},_showDatepicker:function(e){var t,a,i,s;"input"!==(e=e.target||e).nodeName.toLowerCase()&&(e=V("input",e.parentNode)[0]),V.datepicker._isDisabledDatepicker(e)||V.datepicker._lastInput===e||(s=V.datepicker._getInst(e),V.datepicker._curInst&&V.datepicker._curInst!==s&&(V.datepicker._curInst.dpDiv.stop(!0,!0),s&&V.datepicker._datepickerShowing&&V.datepicker._hideDatepicker(V.datepicker._curInst.input[0])),!1!==(a=(i=V.datepicker._get(s,"beforeShow"))?i.apply(e,[e,s]):{})&&(o(s.settings,a),s.lastVal=null,V.datepicker._lastInput=e,V.datepicker._setDateFromField(s),V.datepicker._inDialog&&(e.value=""),V.datepicker._pos||(V.datepicker._pos=V.datepicker._findPos(e),V.datepicker._pos[1]+=e.offsetHeight),t=!1,V(e).parents().each(function(){return!(t|="fixed"===V(this).css("position"))}),i={left:V.datepicker._pos[0],top:V.datepicker._pos[1]},V.datepicker._pos=null,s.dpDiv.empty(),s.dpDiv.css({position:"absolute",display:"block",top:"-1000px"}),V.datepicker._updateDatepicker(s),i=V.datepicker._checkOffset(s,i,t),s.dpDiv.css({position:V.datepicker._inDialog&&V.blockUI?"static":t?"fixed":"absolute",display:"none",left:i.left+"px",top:i.top+"px"}),s.inline||(a=V.datepicker._get(s,"showAnim"),i=V.datepicker._get(s,"duration"),s.dpDiv.css("z-index",function(e){for(var t,a;e.length&&e[0]!==document;){if(("absolute"===(t=e.css("position"))||"relative"===t||"fixed"===t)&&(a=parseInt(e.css("zIndex"),10),!isNaN(a)&&0!==a))return a;e=e.parent()}return 0}(V(e))+1),V.datepicker._datepickerShowing=!0,V.effects&&V.effects.effect[a]?s.dpDiv.show(a,V.datepicker._get(s,"showOptions"),i):s.dpDiv[a||"show"](a?i:null),V.datepicker._shouldFocusInput(s)&&s.input.trigger("focus"),V.datepicker._curInst=s)))},_updateDatepicker:function(e){this.maxRows=4,(n=e).dpDiv.empty().append(this._generateHTML(e)),this._attachHandlers(e);var t,a=this._getNumberOfMonths(e),i=a[1],s=e.dpDiv.find("."+this._dayOverClass+" a"),r=V.datepicker._get(e,"onUpdateDatepicker");0<s.length&&d.apply(s.get(0)),e.dpDiv.removeClass("ui-datepicker-multi-2 ui-datepicker-multi-3 ui-datepicker-multi-4").width(""),1<i&&e.dpDiv.addClass("ui-datepicker-multi-"+i).css("width",17*i+"em"),e.dpDiv[(1!==a[0]||1!==a[1]?"add":"remove")+"Class"]("ui-datepicker-multi"),e.dpDiv[(this._get(e,"isRTL")?"add":"remove")+"Class"]("ui-datepicker-rtl"),e===V.datepicker._curInst&&V.datepicker._datepickerShowing&&V.datepicker._shouldFocusInput(e)&&e.input.trigger("focus"),e.yearshtml&&(t=e.yearshtml,setTimeout(function(){t===e.yearshtml&&e.yearshtml&&e.dpDiv.find("select.ui-datepicker-year").first().replaceWith(e.yearshtml),t=e.yearshtml=null},0)),r&&r.apply(e.input?e.input[0]:null,[e])},_shouldFocusInput:function(e){return e.input&&e.input.is(":visible")&&!e.input.is(":disabled")&&!e.input.is(":focus")},_checkOffset:function(e,t,a){var i=e.dpDiv.outerWidth(),s=e.dpDiv.outerHeight(),r=e.input?e.input.outerWidth():0,n=e.input?e.input.outerHeight():0,d=document.documentElement.clientWidth+(a?0:V(document).scrollLeft()),o=document.documentElement.clientHeight+(a?0:V(document).scrollTop());return t.left-=this._get(e,"isRTL")?i-r:0,t.left-=a&&t.left===e.input.offset().left?V(document).scrollLeft():0,t.top-=a&&t.top===e.input.offset().top+n?V(document).scrollTop():0,t.left-=Math.min(t.left,t.left+i>d&&i<d?Math.abs(t.left+i-d):0),t.top-=Math.min(t.top,t.top+s>o&&s<o?Math.abs(s+n):0),t},_findPos:function(e){for(var t=this._getInst(e),a=this._get(t,"isRTL");e&&("hidden"===e.type||1!==e.nodeType||V.expr.pseudos.hidden(e));)e=e[a?"previousSibling":"nextSibling"];return[(t=V(e).offset()).left,t.top]},_hideDatepicker:function(e){var t,a,i=this._curInst;!i||e&&i!==V.data(e,"datepicker")||this._datepickerShowing&&(t=this._get(i,"showAnim"),a=this._get(i,"duration"),e=function(){V.datepicker._tidyDialog(i)},V.effects&&(V.effects.effect[t]||V.effects[t])?i.dpDiv.hide(t,V.datepicker._get(i,"showOptions"),a,e):i.dpDiv["slideDown"===t?"slideUp":"fadeIn"===t?"fadeOut":"hide"](t?a:null,e),t||e(),this._datepickerShowing=!1,(e=this._get(i,"onClose"))&&e.apply(i.input?i.input[0]:null,[i.input?i.input.val():"",i]),this._lastInput=null,this._inDialog&&(this._dialogInput.css({position:"absolute",left:"0",top:"-100px"}),V.blockUI&&(V.unblockUI(),V("body").append(this.dpDiv))),this._inDialog=!1)},_tidyDialog:function(e){e.dpDiv.removeClass(this._dialogClass).off(".ui-datepicker-calendar")},_checkExternalClick:function(e){var t;V.datepicker._curInst&&(t=V(e.target),e=V.datepicker._getInst(t[0]),(t[0].id===V.datepicker._mainDivId||0!==t.parents("#"+V.datepicker._mainDivId).length||t.hasClass(V.datepicker.markerClassName)||t.closest("."+V.datepicker._triggerClass).length||!V.datepicker._datepickerShowing||V.datepicker._inDialog&&V.blockUI)&&(!t.hasClass(V.datepicker.markerClassName)||V.datepicker._curInst===e)||V.datepicker._hideDatepicker())},_adjustDate:function(e,t,a){var i=V(e),e=this._getInst(i[0]);this._isDisabledDatepicker(i[0])||(this._adjustInstDate(e,t,a),this._updateDatepicker(e))},_gotoToday:function(e){var t=V(e),a=this._getInst(t[0]);this._get(a,"gotoCurrent")&&a.currentDay?(a.selectedDay=a.currentDay,a.drawMonth=a.selectedMonth=a.currentMonth,a.drawYear=a.selectedYear=a.currentYear):(e=new Date,a.selectedDay=e.getDate(),a.drawMonth=a.selectedMonth=e.getMonth(),a.drawYear=a.selectedYear=e.getFullYear()),this._notifyChange(a),this._adjustDate(t)},_selectMonthYear:function(e,t,a){var i=V(e),e=this._getInst(i[0]);e["selected"+("M"===a?"Month":"Year")]=e["draw"+("M"===a?"Month":"Year")]=parseInt(t.options[t.selectedIndex].value,10),this._notifyChange(e),this._adjustDate(i)},_selectDay:function(e,t,a,i){var s=V(e);V(i).hasClass(this._unselectableClass)||this._isDisabledDatepicker(s[0])||((s=this._getInst(s[0])).selectedDay=s.currentDay=parseInt(V("a",i).attr("data-date")),s.selectedMonth=s.currentMonth=t,s.selectedYear=s.currentYear=a,this._selectDate(e,this._formatDate(s,s.currentDay,s.currentMonth,s.currentYear)))},_clearDate:function(e){e=V(e);this._selectDate(e,"")},_selectDate:function(e,t){var a=V(e),e=this._getInst(a[0]);t=null!=t?t:this._formatDate(e),e.input&&e.input.val(t),this._updateAlternate(e),(a=this._get(e,"onSelect"))?a.apply(e.input?e.input[0]:null,[t,e]):e.input&&e.input.trigger("change"),e.inline?this._updateDatepicker(e):(this._hideDatepicker(),this._lastInput=e.input[0],"object"!=typeof e.input[0]&&e.input.trigger("focus"),this._lastInput=null)},_updateAlternate:function(e){var t,a,i=this._get(e,"altField");i&&(t=this._get(e,"altFormat")||this._get(e,"dateFormat"),a=this._getDate(e),e=this.formatDate(t,a,this._getFormatConfig(e)),V(document).find(i).val(e))},noWeekends:function(e){e=e.getDay();return[0<e&&e<6,""]},iso8601Week:function(e){var t=new Date(e.getTime());return t.setDate(t.getDate()+4-(t.getDay()||7)),e=t.getTime(),t.setMonth(0),t.setDate(1),Math.floor(Math.round((e-t)/864e5)/7)+1},parseDate:function(t,s,e){if(null==t||null==s)throw"Invalid arguments";if(""===(s="object"==typeof s?s.toString():s+""))return null;for(var a,i,r,n=0,d=(e?e.shortYearCutoff:null)||this._defaults.shortYearCutoff,d="string"!=typeof d?d:(new Date).getFullYear()%100+parseInt(d,10),o=(e?e.dayNamesShort:null)||this._defaults.dayNamesShort,c=(e?e.dayNames:null)||this._defaults.dayNames,l=(e?e.monthNamesShort:null)||this._defaults.monthNamesShort,h=(e?e.monthNames:null)||this._defaults.monthNames,u=-1,p=-1,g=-1,_=-1,f=!1,k=function(e){e=v+1<t.length&&t.charAt(v+1)===e;return e&&v++,e},D=function(e){var t=k(e),t="@"===e?14:"!"===e?20:"y"===e&&t?4:"o"===e?3:2,t=new RegExp("^\\d{"+("y"===e?t:1)+","+t+"}"),t=s.substring(n).match(t);if(!t)throw"Missing number at position "+n;return n+=t[0].length,parseInt(t[0],10)},m=function(e,t,a){var i=-1,t=V.map(k(e)?a:t,function(e,t){return[[t,e]]}).sort(function(e,t){return-(e[1].length-t[1].length)});if(V.each(t,function(e,t){var a=t[1];if(s.substr(n,a.length).toLowerCase()===a.toLowerCase())return i=t[0],n+=a.length,!1}),-1!==i)return i+1;throw"Unknown name at position "+n},y=function(){if(s.charAt(n)!==t.charAt(v))throw"Unexpected literal at position "+n;n++},v=0;v<t.length;v++)if(f)"'"!==t.charAt(v)||k("'")?y():f=!1;else switch(t.charAt(v)){case"d":g=D("d");break;case"D":m("D",o,c);break;case"o":_=D("o");break;case"m":p=D("m");break;case"M":p=m("M",l,h);break;case"y":u=D("y");break;case"@":u=(r=new Date(D("@"))).getFullYear(),p=r.getMonth()+1,g=r.getDate();break;case"!":u=(r=new Date((D("!")-this._ticksTo1970)/1e4)).getFullYear(),p=r.getMonth()+1,g=r.getDate();break;case"'":k("'")?y():f=!0;break;default:y()}if(n<s.length&&(i=s.substr(n),!/^\s+/.test(i)))throw"Extra/unparsed characters found in date: "+i;if(-1===u?u=(new Date).getFullYear():u<100&&(u+=(new Date).getFullYear()-(new Date).getFullYear()%100+(u<=d?0:-100)),-1<_)for(p=1,g=_;;){if(g<=(a=this._getDaysInMonth(u,p-1)))break;p++,g-=a}if((r=this._daylightSavingAdjust(new Date(u,p-1,g))).getFullYear()!==u||r.getMonth()+1!==p||r.getDate()!==g)throw"Invalid date";return r},ATOM:"yy-mm-dd",COOKIE:"D, dd M yy",ISO_8601:"yy-mm-dd",RFC_822:"D, d M y",RFC_850:"DD, dd-M-y",RFC_1036:"D, d M y",RFC_1123:"D, d M yy",RFC_2822:"D, d M yy",RSS:"D, d M y",TICKS:"!",TIMESTAMP:"@",W3C:"yy-mm-dd",_ticksTo1970:24*(718685+Math.floor(492.5)-Math.floor(19.7)+Math.floor(4.925))*60*60*1e7,formatDate:function(t,e,a){if(!e)return"";function i(e,t,a){var i=""+t;if(l(e))for(;i.length<a;)i="0"+i;return i}function s(e,t,a,i){return(l(e)?i:a)[t]}var r,n=(a?a.dayNamesShort:null)||this._defaults.dayNamesShort,d=(a?a.dayNames:null)||this._defaults.dayNames,o=(a?a.monthNamesShort:null)||this._defaults.monthNamesShort,c=(a?a.monthNames:null)||this._defaults.monthNames,l=function(e){e=r+1<t.length&&t.charAt(r+1)===e;return e&&r++,e},h="",u=!1;if(e)for(r=0;r<t.length;r++)if(u)"'"!==t.charAt(r)||l("'")?h+=t.charAt(r):u=!1;else switch(t.charAt(r)){case"d":h+=i("d",e.getDate(),2);break;case"D":h+=s("D",e.getDay(),n,d);break;case"o":h+=i("o",Math.round((new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime()-new Date(e.getFullYear(),0,0).getTime())/864e5),3);break;case"m":h+=i("m",e.getMonth()+1,2);break;case"M":h+=s("M",e.getMonth(),o,c);break;case"y":h+=l("y")?e.getFullYear():(e.getFullYear()%100<10?"0":"")+e.getFullYear()%100;break;case"@":h+=e.getTime();break;case"!":h+=1e4*e.getTime()+this._ticksTo1970;break;case"'":l("'")?h+="'":u=!0;break;default:h+=t.charAt(r)}return h},_possibleChars:function(t){for(var e="",a=!1,i=function(e){e=s+1<t.length&&t.charAt(s+1)===e;return e&&s++,e},s=0;s<t.length;s++)if(a)"'"!==t.charAt(s)||i("'")?e+=t.charAt(s):a=!1;else switch(t.charAt(s)){case"d":case"m":case"y":case"@":e+="0123456789";break;case"D":case"M":return null;case"'":i("'")?e+="'":a=!0;break;default:e+=t.charAt(s)}return e},_get:function(e,t){return(void 0!==e.settings[t]?e.settings:this._defaults)[t]},_setDateFromField:function(e,t){if(e.input.val()!==e.lastVal){var a=this._get(e,"dateFormat"),i=e.lastVal=e.input?e.input.val():null,s=this._getDefaultDate(e),r=s,n=this._getFormatConfig(e);try{r=this.parseDate(a,i,n)||s}catch(e){i=t?"":i}e.selectedDay=r.getDate(),e.drawMonth=e.selectedMonth=r.getMonth(),e.drawYear=e.selectedYear=r.getFullYear(),e.currentDay=i?r.getDate():0,e.currentMonth=i?r.getMonth():0,e.currentYear=i?r.getFullYear():0,this._adjustInstDate(e)}},_getDefaultDate:function(e){return this._restrictMinMax(e,this._determineDate(e,this._get(e,"defaultDate"),new Date))},_determineDate:function(d,e,t){var a,i,e=null==e||""===e?t:"string"==typeof e?function(e){try{return V.datepicker.parseDate(V.datepicker._get(d,"dateFormat"),e,V.datepicker._getFormatConfig(d))}catch(e){}for(var t=(e.toLowerCase().match(/^c/)?V.datepicker._getDate(d):null)||new Date,a=t.getFullYear(),i=t.getMonth(),s=t.getDate(),r=/([+\-]?[0-9]+)\s*(d|D|w|W|m|M|y|Y)?/g,n=r.exec(e);n;){switch(n[2]||"d"){case"d":case"D":s+=parseInt(n[1],10);break;case"w":case"W":s+=7*parseInt(n[1],10);break;case"m":case"M":i+=parseInt(n[1],10),s=Math.min(s,V.datepicker._getDaysInMonth(a,i));break;case"y":case"Y":a+=parseInt(n[1],10),s=Math.min(s,V.datepicker._getDaysInMonth(a,i))}n=r.exec(e)}return new Date(a,i,s)}(e):"number"==typeof e?isNaN(e)?t:(a=e,(i=new Date).setDate(i.getDate()+a),i):new Date(e.getTime());return(e=e&&"Invalid Date"===e.toString()?t:e)&&(e.setHours(0),e.setMinutes(0),e.setSeconds(0),e.setMilliseconds(0)),this._daylightSavingAdjust(e)},_daylightSavingAdjust:function(e){return e?(e.setHours(12<e.getHours()?e.getHours()+2:0),e):null},_setDate:function(e,t,a){var i=!t,s=e.selectedMonth,r=e.selectedYear,t=this._restrictMinMax(e,this._determineDate(e,t,new Date));e.selectedDay=e.currentDay=t.getDate(),e.drawMonth=e.selectedMonth=e.currentMonth=t.getMonth(),e.drawYear=e.selectedYear=e.currentYear=t.getFullYear(),s===e.selectedMonth&&r===e.selectedYear||a||this._notifyChange(e),this._adjustInstDate(e),e.input&&e.input.val(i?"":this._formatDate(e))},_getDate:function(e){return!e.currentYear||e.input&&""===e.input.val()?null:this._daylightSavingAdjust(new Date(e.currentYear,e.currentMonth,e.currentDay))},_attachHandlers:function(e){var t=this._get(e,"stepMonths"),a="#"+e.id.replace(/\\\\/g,"\\");e.dpDiv.find("[data-handler]").map(function(){var e={prev:function(){V.datepicker._adjustDate(a,-t,"M")},next:function(){V.datepicker._adjustDate(a,+t,"M")},hide:function(){V.datepicker._hideDatepicker()},today:function(){V.datepicker._gotoToday(a)},selectDay:function(){return V.datepicker._selectDay(a,+this.getAttribute("data-month"),+this.getAttribute("data-year"),this),!1},selectMonth:function(){return V.datepicker._selectMonthYear(a,this,"M"),!1},selectYear:function(){return V.datepicker._selectMonthYear(a,this,"Y"),!1}};V(this).on(this.getAttribute("data-event"),e[this.getAttribute("data-handler")])})},_generateHTML:function(e){var t,a,i,s,r,n,d,o,c,l,h,u,p,g,_,f,k,D,m,y,v,M,b,w,C,I,x,Y,S,N,T,F,A=new Date,K=this._daylightSavingAdjust(new Date(A.getFullYear(),A.getMonth(),A.getDate())),j=this._get(e,"isRTL"),O=this._get(e,"showButtonPanel"),E=this._get(e,"hideIfNoPrevNext"),L=this._get(e,"navigationAsDateFormat"),R=this._getNumberOfMonths(e),H=this._get(e,"showCurrentAtPos"),A=this._get(e,"stepMonths"),P=1!==R[0]||1!==R[1],W=this._daylightSavingAdjust(e.currentDay?new Date(e.currentYear,e.currentMonth,e.currentDay):new Date(9999,9,9)),U=this._getMinMaxDate(e,"min"),z=this._getMinMaxDate(e,"max"),B=e.drawMonth-H,J=e.drawYear;if(B<0&&(B+=12,J--),z)for(t=this._daylightSavingAdjust(new Date(z.getFullYear(),z.getMonth()-R[0]*R[1]+1,z.getDate())),t=U&&t<U?U:t;this._daylightSavingAdjust(new Date(J,B,1))>t;)--B<0&&(B=11,J--);for(e.drawMonth=B,e.drawYear=J,H=this._get(e,"prevText"),H=L?this.formatDate(H,this._daylightSavingAdjust(new Date(J,B-A,1)),this._getFormatConfig(e)):H,a=this._canAdjustMonth(e,-1,J,B)?V("<a>").attr({class:"ui-datepicker-prev ui-corner-all","data-handler":"prev","data-event":"click",title:H}).append(V("<span>").addClass("ui-icon ui-icon-circle-triangle-"+(j?"e":"w")).text(H))[0].outerHTML:E?"":V("<a>").attr({class:"ui-datepicker-prev ui-corner-all ui-state-disabled",title:H}).append(V("<span>").addClass("ui-icon ui-icon-circle-triangle-"+(j?"e":"w")).text(H))[0].outerHTML,H=this._get(e,"nextText"),H=L?this.formatDate(H,this._daylightSavingAdjust(new Date(J,B+A,1)),this._getFormatConfig(e)):H,i=this._canAdjustMonth(e,1,J,B)?V("<a>").attr({class:"ui-datepicker-next ui-corner-all","data-handler":"next","data-event":"click",title:H}).append(V("<span>").addClass("ui-icon ui-icon-circle-triangle-"+(j?"w":"e")).text(H))[0].outerHTML:E?"":V("<a>").attr({class:"ui-datepicker-next ui-corner-all ui-state-disabled",title:H}).append(V("<span>").attr("class","ui-icon ui-icon-circle-triangle-"+(j?"w":"e")).text(H))[0].outerHTML,A=this._get(e,"currentText"),E=this._get(e,"gotoCurrent")&&e.currentDay?W:K,A=L?this.formatDate(A,E,this._getFormatConfig(e)):A,H="",e.inline||(H=V("<button>").attr({type:"button",class:"ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all","data-handler":"hide","data-event":"click"}).text(this._get(e,"closeText"))[0].outerHTML),L="",O&&(L=V("<div class='ui-datepicker-buttonpane ui-widget-content'>").append(j?H:"").append(this._isInRange(e,E)?V("<button>").attr({type:"button",class:"ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all","data-handler":"today","data-event":"click"}).text(A):"").append(j?"":H)[0].outerHTML),s=parseInt(this._get(e,"firstDay"),10),s=isNaN(s)?0:s,r=this._get(e,"showWeek"),n=this._get(e,"dayNames"),d=this._get(e,"dayNamesMin"),o=this._get(e,"monthNames"),c=this._get(e,"monthNamesShort"),l=this._get(e,"beforeShowDay"),h=this._get(e,"showOtherMonths"),u=this._get(e,"selectOtherMonths"),p=this._getDefaultDate(e),g="",f=0;f<R[0];f++){for(k="",this.maxRows=4,D=0;D<R[1];D++){if(m=this._daylightSavingAdjust(new Date(J,B,e.selectedDay)),y=" ui-corner-all",v="",P){if(v+="<div class='ui-datepicker-group",1<R[1])switch(D){case 0:v+=" ui-datepicker-group-first",y=" ui-corner-"+(j?"right":"left");break;case R[1]-1:v+=" ui-datepicker-group-last",y=" ui-corner-"+(j?"left":"right");break;default:v+=" ui-datepicker-group-middle",y=""}v+="'>"}for(v+="<div class='ui-datepicker-header ui-widget-header ui-helper-clearfix"+y+"'>"+(/all|left/.test(y)&&0===f?j?i:a:"")+(/all|right/.test(y)&&0===f?j?a:i:"")+this._generateMonthYearHeader(e,B,J,U,z,0<f||0<D,o,c)+"</div><table class='ui-datepicker-calendar'><thead><tr>",M=r?"<th class='ui-datepicker-week-col'>"+this._get(e,"weekHeader")+"</th>":"",_=0;_<7;_++)M+="<th scope='col'"+(5<=(_+s+6)%7?" class='ui-datepicker-week-end'":"")+"><span title='"+n[b=(_+s)%7]+"'>"+d[b]+"</span></th>";for(v+=M+"</tr></thead><tbody>",C=this._getDaysInMonth(J,B),J===e.selectedYear&&B===e.selectedMonth&&(e.selectedDay=Math.min(e.selectedDay,C)),w=(this._getFirstDayOfMonth(J,B)-s+7)%7,C=Math.ceil((w+C)/7),I=P&&this.maxRows>C?this.maxRows:C,this.maxRows=I,x=this._daylightSavingAdjust(new Date(J,B,1-w)),Y=0;Y<I;Y++){for(v+="<tr>",S=r?"<td class='ui-datepicker-week-col'>"+this._get(e,"calculateWeek")(x)+"</td>":"",_=0;_<7;_++)N=l?l.apply(e.input?e.input[0]:null,[x]):[!0,""],F=(T=x.getMonth()!==B)&&!u||!N[0]||U&&x<U||z&&z<x,S+="<td class='"+(5<=(_+s+6)%7?" ui-datepicker-week-end":"")+(T?" ui-datepicker-other-month":"")+(x.getTime()===m.getTime()&&B===e.selectedMonth&&e._keyEvent||p.getTime()===x.getTime()&&p.getTime()===m.getTime()?" "+this._dayOverClass:"")+(F?" "+this._unselectableClass+" ui-state-disabled":"")+(T&&!h?"":" "+N[1]+(x.getTime()===W.getTime()?" "+this._currentClass:"")+(x.getTime()===K.getTime()?" ui-datepicker-today":""))+"'"+(T&&!h||!N[2]?"":" title='"+N[2].replace(/'/g,"&#39;")+"'")+(F?"":" data-handler='selectDay' data-event='click' data-month='"+x.getMonth()+"' data-year='"+x.getFullYear()+"'")+">"+(T&&!h?"&#xa0;":F?"<span class='ui-state-default'>"+x.getDate()+"</span>":"<a class='ui-state-default"+(x.getTime()===K.getTime()?" ui-state-highlight":"")+(x.getTime()===W.getTime()?" ui-state-active":"")+(T?" ui-priority-secondary":"")+"' href='#' aria-current='"+(x.getTime()===W.getTime()?"true":"false")+"' data-date='"+x.getDate()+"'>"+x.getDate()+"</a>")+"</td>",x.setDate(x.getDate()+1),x=this._daylightSavingAdjust(x);v+=S+"</tr>"}11<++B&&(B=0,J++),k+=v+="</tbody></table>"+(P?"</div>"+(0<R[0]&&D===R[1]-1?"<div class='ui-datepicker-row-break'></div>":""):"")}g+=k}return g+=L,e._keyEvent=!1,g},_generateMonthYearHeader:function(e,t,a,i,s,r,n,d){var o,c,l,h,u,p,g=this._get(e,"changeMonth"),_=this._get(e,"changeYear"),f=this._get(e,"showMonthAfterYear"),k=this._get(e,"selectMonthLabel"),D=this._get(e,"selectYearLabel"),m="<div class='ui-datepicker-title'>",y="";if(r||!g)y+="<span class='ui-datepicker-month'>"+n[t]+"</span>";else{for(o=i&&i.getFullYear()===a,c=s&&s.getFullYear()===a,y+="<select class='ui-datepicker-month' aria-label='"+k+"' data-handler='selectMonth' data-event='change'>",l=0;l<12;l++)(!o||l>=i.getMonth())&&(!c||l<=s.getMonth())&&(y+="<option value='"+l+"'"+(l===t?" selected='selected'":"")+">"+d[l]+"</option>");y+="</select>"}if(f||(m+=y+(!r&&g&&_?"":"&#xa0;")),!e.yearshtml)if(e.yearshtml="",r||!_)m+="<span class='ui-datepicker-year'>"+a+"</span>";else{for(n=this._get(e,"yearRange").split(":"),h=(new Date).getFullYear(),u=(k=function(e){e=e.match(/c[+\-].*/)?a+parseInt(e.substring(1),10):e.match(/[+\-].*/)?h+parseInt(e,10):parseInt(e,10);return isNaN(e)?h:e})(n[0]),p=Math.max(u,k(n[1]||"")),u=i?Math.max(u,i.getFullYear()):u,p=s?Math.min(p,s.getFullYear()):p,e.yearshtml+="<select class='ui-datepicker-year' aria-label='"+D+"' data-handler='selectYear' data-event='change'>";u<=p;u++)e.yearshtml+="<option value='"+u+"'"+(u===a?" selected='selected'":"")+">"+u+"</option>";e.yearshtml+="</select>",m+=e.yearshtml,e.yearshtml=null}return m+=this._get(e,"yearSuffix"),f&&(m+=(!r&&g&&_?"":"&#xa0;")+y),m+="</div>"},_adjustInstDate:function(e,t,a){var i=e.selectedYear+("Y"===a?t:0),s=e.selectedMonth+("M"===a?t:0),t=Math.min(e.selectedDay,this._getDaysInMonth(i,s))+("D"===a?t:0),t=this._restrictMinMax(e,this._daylightSavingAdjust(new Date(i,s,t)));e.selectedDay=t.getDate(),e.drawMonth=e.selectedMonth=t.getMonth(),e.drawYear=e.selectedYear=t.getFullYear(),"M"!==a&&"Y"!==a||this._notifyChange(e)},_restrictMinMax:function(e,t){var a=this._getMinMaxDate(e,"min"),e=this._getMinMaxDate(e,"max"),t=a&&t<a?a:t;return e&&e<t?e:t},_notifyChange:function(e){var t=this._get(e,"onChangeMonthYear");t&&t.apply(e.input?e.input[0]:null,[e.selectedYear,e.selectedMonth+1,e])},_getNumberOfMonths:function(e){e=this._get(e,"numberOfMonths");return null==e?[1,1]:"number"==typeof e?[1,e]:e},_getMinMaxDate:function(e,t){return this._determineDate(e,this._get(e,t+"Date"),null)},_getDaysInMonth:function(e,t){return 32-this._daylightSavingAdjust(new Date(e,t,32)).getDate()},_getFirstDayOfMonth:function(e,t){return new Date(e,t,1).getDay()},_canAdjustMonth:function(e,t,a,i){var s=this._getNumberOfMonths(e),s=this._daylightSavingAdjust(new Date(a,i+(t<0?t:s[0]*s[1]),1));return t<0&&s.setDate(this._getDaysInMonth(s.getFullYear(),s.getMonth())),this._isInRange(e,s)},_isInRange:function(e,t){var a=this._getMinMaxDate(e,"min"),i=this._getMinMaxDate(e,"max"),s=null,r=null,n=this._get(e,"yearRange");return n&&(e=n.split(":"),n=(new Date).getFullYear(),s=parseInt(e[0],10),r=parseInt(e[1],10),e[0].match(/[+\-].*/)&&(s+=n),e[1].match(/[+\-].*/)&&(r+=n)),(!a||t.getTime()>=a.getTime())&&(!i||t.getTime()<=i.getTime())&&(!s||t.getFullYear()>=s)&&(!r||t.getFullYear()<=r)},_getFormatConfig:function(e){var t=this._get(e,"shortYearCutoff");return{shortYearCutoff:t="string"!=typeof t?t:(new Date).getFullYear()%100+parseInt(t,10),dayNamesShort:this._get(e,"dayNamesShort"),dayNames:this._get(e,"dayNames"),monthNamesShort:this._get(e,"monthNamesShort"),monthNames:this._get(e,"monthNames")}},_formatDate:function(e,t,a,i){t||(e.currentDay=e.selectedDay,e.currentMonth=e.selectedMonth,e.currentYear=e.selectedYear);t=t?"object"==typeof t?t:this._daylightSavingAdjust(new Date(i,a,t)):this._daylightSavingAdjust(new Date(e.currentYear,e.currentMonth,e.currentDay));return this.formatDate(this._get(e,"dateFormat"),t,this._getFormatConfig(e))}}),V.fn.datepicker=function(e){if(!this.length)return this;V.datepicker.initialized||(V(document).on("mousedown",V.datepicker._checkExternalClick),V.datepicker.initialized=!0),0===V("#"+V.datepicker._mainDivId).length&&V("body").append(V.datepicker.dpDiv);var t=Array.prototype.slice.call(arguments,1);return"string"==typeof e&&("isDisabled"===e||"getDate"===e||"widget"===e)||"option"===e&&2===arguments.length&&"string"==typeof arguments[1]?V.datepicker["_"+e+"Datepicker"].apply(V.datepicker,[this[0]].concat(t)):this.each(function(){"string"==typeof e?V.datepicker["_"+e+"Datepicker"].apply(V.datepicker,[this].concat(t)):V.datepicker._attachDatepicker(this,e)})},V.datepicker=new e,V.datepicker.initialized=!1,V.datepicker.uuid=(new Date).getTime(),V.datepicker.version="1.13.2";V.datepicker});
	</script>
</html>