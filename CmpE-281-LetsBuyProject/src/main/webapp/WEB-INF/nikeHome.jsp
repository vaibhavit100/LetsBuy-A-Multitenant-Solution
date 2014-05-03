<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Nike Shop !!!</title>
</head>
<body>
	<fieldset >

		<h2 align="center">
			<i> Welcome to the Nike Store !!! </i>
		</h2>

	</fieldset>
	<fieldset>
		<br>
		<div align=center>
			<table WIDTH="60%">
				<tr height="25">
					
					<td>
						<div>
							<form method="GET" name="Men" action="/letsbuy/nikeMen">
								<input type="submit" value="Men">
							</form>
						</div>
					</td>

					<td>
						<div>
							<form method="GET" name="Women" action="/letsbuy/nikeWomen">
								<input type="submit" value="Women">
							</form>
						</div>
					</td>

					<td>
						<div>
							<form method="GET" name="Kids" action="/letsbuy/nikeKids">
								<input type="submit" value="Kids">
							</form>
						</div>
					</td>

					<td>
						<div>
							<form method="GET" name="Featured" action="/letsbuy/nikeFeatured">
								<input type="submit" value="Featured">
							</form>
						</div>
					</td>

					<td align="right">
						<div>
							<form name="" action="">
								<input type="text" name="search" value="Search product">
								<input type="submit" value="Go">
							</form>
						</div>
					</td>

				</tr>

			</table>
		</div>
	</fieldset>

	<fieldset>
		<img src="http://images4.alphacoders.com/205/205916.jpg" height="640"
			width="1300">
	</fieldset>



</body>
</body>
</html>