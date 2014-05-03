<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Adidas !!!</title>

<style>
html,body {
	height: 100%;
}

body {
	margin: 0px;
	padding: 0px;
	background: #191919;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 12pt;
	font-weight: 400;
	color: #4E4D4D;
}

h1,h2,h3 {
	margin: 0;
	padding: 0;
}

p,ol,ul {
	margin-top: 0;
}

ol,ul {
	padding: 0;
	list-style: none;
}

p {
	line-height: 180%;
}

strong {
	
}

a {
	color: #383838;
}

a:hover {
	text-decoration: none;
}

.container {
	width: 1200px;
	margin: 0px auto;
}

/*********************************************************************************/
/* Image Style                                                                   */
/*********************************************************************************/
.image {
	display: inline-block;
}

.image img {
	display: block;
	width: 100%;
}

.image-full {
	display: block;
	width: 100%;
	margin: 0 0 0 0;
}

.image-left {
	float: left;
	margin: 0 2em 2em 0;
}

.image-centered {
	display: block;
	margin: 0 0 2em 0;
}

.image-centered img {
	margin: 0 auto;
	width: auto;
}

/*********************************************************************************/
/* List Styles                                                                   */
/*********************************************************************************/
ul.style1 {
	
}

/*********************************************************************************/
/* Social Icon Styles                                                            */
/*********************************************************************************/
ul.contact {
	overflow: hidden;
	margin: 0em 0 3em 0;
	padding-top: 1em;
	text-align: center;
}

ul.contact li {
	display: inline-block;
	padding: 0em 0.30em;
	font-size: 1em;
}

ul.contact li span {
	display: none;
	margin: 0;
	padding: 0;
}

ul.contact li a {
	color: #FFF;
}

ul.contact li a:before {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-size: 2em;
	color: rgba(255, 255, 255, .3);
}

/*********************************************************************************/
/* Major Styles                                                                  */
/*********************************************************************************/
.major {
	overflow: hidden;
	margin-bottom: 4em;
	text-align: center;
}

.major h2 {
	letter-spacing: 0.10em;
	text-transform: uppercase;
	font-size: 3em;
	font-weight: 700;
	color: #3f3f3f;
}

.major .byline {
	display: block;
	padding-top: 0.2em;
	font-weight: 300;
	font-size: 2em;
}

/*********************************************************************************/
/* Title Styles                                                                  */
/*********************************************************************************/
.title {
	text-align: center;
}

.title h2 {
	letter-spacing: 0.10em;
	text-transform: uppercase;
	font-weight: 700;
	color: #3f3f3f;
}

.title .byline {
	display: block;
	padding-top: 1em;
	font-weight: 300;
	font-size: 1.1em;
}

/*********************************************************************************/
/* Button Style                                                                  */
/*********************************************************************************/
.button {
	display: inline-block;
	margin: 1em 0em;
	padding: 1em 3em 1em 3em;
	background: #2A70E8;
	border-radius: 8px;
	letter-spacing: 0.20em;
	text-decoration: none;
	text-align: center;
	text-transform: uppercase;
	font-weight: 400;
	font-size: 0.90em;
	color: #FFF;
}

.button:before {
	
}

/*********************************************************************************/
/* Header                                                                        */
/*********************************************************************************/
#header {
	background: #2A70E8;
}

/*********************************************************************************/
/* Logo                                                                          */
/*********************************************************************************/
#logo {
	padding: 4em 0em;
	background: #FFF;
	text-transform: uppercase;
}

#logo h1 {
	text-align: center;
	font-weight: 900;
	font-size: 2.5em;
}

#logo h1 a {
	
}

#logo span {
	padding: 0em 0em 0em 0.5em;
}

#logo h1:before {
	
}

#logo a {
	color: #2A70E8;
}

/*********************************************************************************/
/* Menu                                                                          */
/*********************************************************************************/
#menu ul {
	margin: 0;
	padding: 20px 0px 20px 0px;
	list-style: none;
	line-height: normal;
	text-align: center;
}

#menu li {
	display: inline-block;
}

#menu a {
	display: block;
	padding: 1em 2em;
	letter-spacing: 1px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 1em;
	font-weight: 700;
	color: #FFF;
}

#menu .current_page_item a {
	border-radius: 30px;
	border: 1px solid;
	border-color: rgba(255, 255, 255, .2);
}

#menu a:hover {
	
}

/*********************************************************************************/
/* Banner                                                                        */
/*********************************************************************************/
#banner {
	
}

/*********************************************************************************/
/* Page                                                                          */
/*********************************************************************************/
#page-wrapper {
	background: #EEEEEE;
}

#page {
	overflow: hidden;
	padding: 6em 0em;
}

/*********************************************************************************/
/* Content                                                                       */
/*********************************************************************************/
#content {
	float: left;
	width: 588px;
	text-align: center;
}

#content .title {
	padding: 1em 2em 2em 2em;
	text-align: center;
}

#content h2 {
	font-size: 2em;
}

#content .byline {
	padding-top: 0;
	font-size: 1.5em;
}

/*********************************************************************************/
/* Sidebar                                                                       */
/*********************************************************************************/
#sidebar {
	float: right;
	width: 588px;
}

/*********************************************************************************/
/* Footer                                                                        */
/*********************************************************************************/
#footer {
	
}

/*********************************************************************************/
/* Copyright                                                                     */
/*********************************************************************************/
#copyright {
	overflow: hidden;
	padding: 5em 0em;
}

#copyright p {
	letter-spacing: 0.20em;
	text-align: center;
	text-transform: uppercase;
	font-size: 0.80em;
	color: #6F6F6F;
}

#copyright a {
	text-decoration: none;
	color: #8C8C8C;
}

/*********************************************************************************/
/* Featured                                                                      */
/*********************************************************************************/
#featured-wrapper {
	overflow: hidden;
	padding: 5em 0em;
	background: #FFF;
}

#featured h2 {
	text-align: center;
}

#featured .icon {
	position: relative;
	display: block;
	background: #2A70E8;
	margin: 0px auto 20px auto;
	line-height: 2.5em;
	font-size: 4em;
	text-align: center;
	color: #FFF;
}

.column1,.column2,.column3,.column4 {
	width: 282px;
}

.column1,.column2 {
	float: left;
	margin-right: 24px;
}

.column3 {
	float: left;
}

.column4 {
	float: right;
}

/*********************************************************************************/
/* Portfolio                                                                     */
/*********************************************************************************/
#portfolio-wrapper {
	padding: 8em 0em 6em 0em;
}

#portfolio {
	overflow: hidden;
	text-align: center;
}

#portfolio .major h2,#portfolio .major .byline {
	color: rgba(255, 255, 255, 0.9);
}

#portfolio img {
	margin: 0;
	padding: 0;
}

#portfolio .box {
	padding: 30px;
	background: #FFF;
	border-radius: 0px 0px 8px 8px;
	border-right: 1px solid #DADADA;
	border-left: 1px solid #DADADA;
}

#contact .major h2,#contact .major .byline {
	color: rgba(255, 255, 255, 0.9);
}
</style>



<style>
body {
	background-image:
		url('http://www.unsigneddesign.com/Jill_Wellingtons_Bokeh_Textures/bokeh24.jpg');
}
</style>
</head>
<body>
	<div id="logo">
		<h1>
			<a href="#" class="icon icon-group"><span>Adidas</span></a>
		</h1>
	</div>
	<div id="header">
		<div id="menu" class="container">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1"
					title="">Homepage</a></li>
				<li><a href="/letsbuy/" accesskey="3" title="">Main Site</a></li>
				<li><a href="http://www.adidas-group.com/en/group/profile/" accesskey="3" title="">About Us</a></li>
				<li><a href="http://www.adidas-group.com/en/service/contact/" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>

	<div id="header">
		<div id="menu" class="container">
			<ul>
				<li>
					<form name="men" method="get" action="/letsbuy/AdidasMen">
						<input class="button1" type="Submit" value="Men">
					</form>
				</li>
				<li>
					<form name="men" method="get" action="/letsbuy/AdidasWomen">
						<input class="button2" type="Submit" value="Women">
					</form>
				</li>
				<li>
					<form name="men" method="get" action="/letsbuy/AdidasKids">
						<input class="button3" type="Submit" value="Kids">
					</form>
				</li>
			</ul>
		</div>
	</div>

    <div align="center" >
          <img src="data:image/jpeg;base64,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" alt="One Infinite Loop" style="width:640px;height:480px;" height="100">
        </div>

</body>
</body>
</html>