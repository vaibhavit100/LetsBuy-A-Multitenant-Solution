<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to PUMA Shop !!!</title>
<style type="text/css">
body {
	background-color: #000;
}

* {
	margin: 0;
	padding: 0;
}

ul {
	list-style-type: none;
	background-image: url('http://puma.io/images/logos/downloads/standard-logo.png');
	height: 80px;
	width: 850px;
	margin: auto;
}

li {
	float: left;
}

ul a {
	background-image: url('http://puma.io/images/logos/downloads/standard-logo.png');
	background-repeat: no-repeat;
	background-position: right;
	padding-right: 32px;
	padding-left: 32px;
	display: block;
	line-height: 80px;
	text-decoration: none;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 21px;
	color: #371C1C;
}

ul a:hover {
	color: #FFF;
}

* {
	margin: 0;
}

html,body {
	height: 100%;
}

.wrapper {
	min-height: 100%;
	height: auto !important;
	height: 100%;
	margin: 0 auto -4em;
}

.footer,.push {
	height: 4em;
}

.ImageBorder {
	border-width: 1px;
	border-color: White;
}
</style>
</head>

<body>
	<div align="center">
		<p>
			<img alt="" src='http://puma.io/images/logos/downloads/standard-logo.png'
				style="padding: 1px; border: medium none rgb(255, 255, 255); width: 1052px; height: 266px;" />
		</p>
	</div>
	<p>&nbsp;</p>
	<!-- 
  <p style="text-align: center;">
   <img alt="" height="212" src="http://www.trucost.com/_uploads/testimonialLogos/Puma_Logo.gif" width="1260" /></p>
  <p>
   &nbsp;</p>
    -->
	<ul>
		<li><a href="http://localhost:8080/letsbuy/">Home</a></li>
		<li><a href="http://localhost:8080/letsbuy/pumaHome">Puma
				Home</a></li>

		<li><a href="#">T-Shirts</a></li>

		<li><a href="#">Watches</a></li>
		<li><a href="#" style="background-image: none;">Contact</a></li>
	</ul>


	<h1 align="center">
		<font color="white">Watch Details</font>
	</h1>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>




	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p align="left">&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<div align="left">
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td width="50%">
						<table border="0" width="960">
							<tbody>
								<tr>
									<td height="25">
										<table border="0" width="960">
											<tbody>
												<tr>
													<td width="148">
														<table border="0" width="127">
															<tbody>
																<tr>
																	<td width="117">
																		<div align="center">&nbsp;</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h3>
																			<font color="white">Category</font>
																		</h3>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h3>
																			<font color="white"><a
																				href="http://localhost:8080/letsbuy/pumaHome/all">All</a></font>
																		</h3>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h3>
																			<font color="white"><a
																				href="http://localhost:8080/letsbuy/pumaHome/men">Men</a></font>/h3&gt;
																		</h3>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h3>
																			<font color="white"><a
																				href="http://localhost:8080/letsbuy/pumaHome/women">Women</a></font>
																		</h3>
																	</td>
																</tr>
															</tbody>
														</table>



														<form method="GET" action="payment">
													<c:forEach var="p" items="${pumaWatch}">
														

															<table align="right" width="1000" height="315" border="0">

																	<tr>


																		<td width="479"><img height="280"
																			src="${p.image}" width="364" height="309"
																			alt="" /></td>

																				<font color="white">Product
																						code:${p.product_id} </font>
																				</h3></label> <input type="hidden" name="pId"
																			value="${p.product_id}">


																			<p>&nbsp;</p> <label for="textfield"><h3>
																				
																			<p>&nbsp;</p> <label for="textfield">name="pId"
																				<h3>
																					<font color="white">Descripton:
																						${p.product_desc} </font>
																				</h3>
																		</label>
																			<p>&nbsp;</p> <label for="textfield"><h3>
																					<font color="white">Category:${p.category} </font>
																				</h3></label>
																			<p>&nbsp;</p> <label for="textfield"><h3>
																					<font color="white">Price:${p.price}$ </font>
																				</h3></label>
																			<p>&nbsp;</p> <label for="textfield"><h3>
																					<font color="white">Color:${p.color} </font>
																				</h3></label>
																		
																			<p>&nbsp;</p> <label for="textfield"><h3>
																					<font color="white">Available:${p.quantity}
																					</font>
																				</h3></label>

																			<p>&nbsp;</p>
																			<p>
																				<select name="qty" id="quantity">
																					<option>Select Quantity</option>
																					<option>1</option>
																					<option>2</option>
																					<option>3</option>
																					<option>4</option>
																					<option>5</option>
																					<option>6</option>
																				</select>
																			</p>
																			<p>&nbsp;</p>
																			<p>&nbsp;</p>
																			<p>&nbsp;</p>
																			<p>
																				<input type="submit" name="button" id="Submit"
																					value="Payment">
																			</p></td>
																		</p>
																		</td>
																		<td width="211">&nbsp;</td>

																	</tr>


															</table>
													</c:forEach>
															
														</form>
</body>
</html>
