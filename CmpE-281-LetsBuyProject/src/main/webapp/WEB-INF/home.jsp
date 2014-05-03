<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page Shopping Center</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Brand Store</title>
<script type="text/javascript">
	function MM_swapImgRestore() { //v3.0
		var i, x, a = document.MM_sr;
		for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++)
			x.src = x.oSrc;
	}
	function MM_preloadImages() { //v3.0
		var d = document;
		if (d.images) {
			if (!d.MM_p)
				d.MM_p = new Array();
			var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
			for (i = 0; i < a.length; i++)
				if (a[i].indexOf("#") != 0) {
					d.MM_p[j] = new Image;
					d.MM_p[j++].src = a[i];
				}
		}
	}

	function MM_findObj(n, d) { //v4.01
		var p, i, x;
		if (!d)
			d = document;
		if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
			d = parent.frames[n.substring(p + 1)].document;
			n = n.substring(0, p);
		}
		if (!(x = d[n]) && d.all)
			x = d.all[n];
		for (i = 0; !x && i < d.forms.length; i++)
			x = d.forms[i][n];
		for (i = 0; !x && d.layers && i < d.layers.length; i++)
			x = MM_findObj(n, d.layers[i].document);
		if (!x && d.getElementById)
			x = d.getElementById(n);
		return x;
	}

	function MM_swapImage() { //v3.0
		var i, j = 0, x, a = MM_swapImage.arguments;
		document.MM_sr = new Array;
		for (i = 0; i < (a.length - 2); i += 3)
			if ((x = MM_findObj(a[i])) != null) {
				document.MM_sr[j++] = x;
				if (!x.oSrc)
					x.oSrc = x.src;
				x.src = a[i + 2];
			}
	}
</script>
<style>
body {
	background-image:
		url('http://www.unsigneddesign.com/Jill_Wellingtons_Bokeh_Textures/bokeh1.jpg');
}

input.button1 {
	background-image:
		url('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQdsDeHVKOC3v7YXnAwphxyN4gaF1exhkKaPLCX8GQ5yshJH-YV');
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: 0px 0px;
	border: none;
	cursor: pointer;
	height: 155px;
	width: 375px;
	padding-left: 16px;
	padding-right: 25px;
	vertical-align: middle;
}

input.button2 {
	background-image:
		url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh13mrJ0bSDjMwaXZkiPwOgv3uWHEWb0Qks0fb0VJkj0qZh_0K');
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: 0px 0px;
	border: none;
	cursor: pointer;
	height: 155px;
	width: 375px;
	padding-left: 16px;
	padding-right: 25px;
	vertical-align: middle;
}

input.button3 {
	background-image:
		url('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT9XnzkHJ-xbFkM_K7m_1GO1m907qc2I3oZ8Lc1TzFXVti38UEg3A');
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: 0px 0px;
	border: none;
	cursor: pointer;
	height: 155px;
	width: 375px;
	padding-left: 16px;
	padding-right: 25px;
	vertical-align: middle;
}

input.button4 {
	background-image:
		url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGMQXx3dQma3ENQfYXFWCVtTYlktT9qQof-emyDne80HSlssNvsQ');
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: 0px 0px;
	border: none;
	cursor: pointer;
	height: 155px;
	width: 375px;
	padding-left: 16px;
	padding-right: 25px;
	vertical-align: middle;
}

input.button5 {
	background-image:
		url('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSEUnZubQW8yXYmK2ciHx6MJt_UuvJ45mjBw6cFteASq5oJq7ThEA');
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: 0px 0px;
	border: none;
	cursor: pointer;
	height: 155px;
	width: 375px;
	padding-left: 16px;
	padding-right: 25px;
	vertical-align: middle;
}
</style>
</head>
<body>
<body>
	<h1 align="center">
		<font color="#141821" face="Comic Sans" size="10"><i>Select
				Your Store:</i></font>
	</h1>
	<div align="center">
		<table>
			<tr>
				<td>
					<form id="form1" name="indianHomeForm" method="get"
						action="/letsbuy/Indianterrain">
						<input class="button1" type="Submit" value="">
					</form>
				</td>
				<td>
					<form id="form2" name="nikeHomeForm" method="get"
						action="/letsbuy/nikeHome">
						<input class="button2" type="Submit" value="">
					</form>
				</td>

			</tr>
			<tr>
				<td>
					<form id="form3" name="pumaHomeForm" method="get"
						action="/letsbuy/pumaHome">
						<input class="button3" type="Submit" value="">
					</form>
				</td>
				<td>

					<form id="form4" name="adidasHomeForm" method="get"
						action="/letsbuy/Adidas">
						<input class="button4" type="Submit" value="">
					</form>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<form id="form5" name="tommyHomeForm" method="get"
						action="/letsbuy/tommyhome">
						<input class="button5" type="Submit" value="">
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>