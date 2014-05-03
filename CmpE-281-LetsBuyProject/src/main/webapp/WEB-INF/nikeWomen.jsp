<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nike Women</title>
</head>
<body>
	<h2 align="center"><center>Welcome to Nike Womens World ...</center></h2>
    <form align= "center" name="men" method="get" action="/letsbuy/nikeHome" >
            	<input class="button1" type="Submit" value="Home">
    </form>
	<c:forEach var="p" items="${nikeWomen}">

		<table width="400" border=2  cellpadding="1" cellspacing="1" align="center">
			<tr>
				<td width="50%"><img src="${p.image}"  height="100" width="100"></td>

                <td>
				Product Description <br> 
				Product id: ${p.product_id} <br>
			    ProductName: ${p.product_name} <br>
				Price: ${p.price} <br>
				Size: ${p.size} <br>
				Color: ${p.color} <br>
				Availble: ${p.quantity} <br> <br>
					<form method="GET" action="/letsbuy/purchaseTshirt">
					    <input type="hidden" id="product_id" name="product_id" value="${p.product_id}"/>
						<input type="submit" value="Purchase" />
					</form>
				</td>
			</tr>

		</table>

	</c:forEach>
</body>

</html>