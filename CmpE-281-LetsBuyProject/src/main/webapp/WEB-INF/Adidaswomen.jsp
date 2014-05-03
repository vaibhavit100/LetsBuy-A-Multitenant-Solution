<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adidas Women's Section</title>
<style>
body
{
background-image:url('http://www.unsigneddesign.com/Jill_Wellingtons_Bokeh_Textures/bokeh24.jpg');
}
</style>
</head>
<body>
 
       <c:forEach var="p" items="${adidasWomen}">
 
              <table width=1000 border=1>
                     <tr>
                           <td width="50%"><img src="${p.image}"></td>
 
                <td>
                           Product Description <br>
                           Product id: ${p.product_id} <br>
                         ProductName: ${p.product_name} <br>
                           Price: ${p.price} <br>
                           Size: ${p.size} <br>
                           Color: ${p.color} <br>
                           Available: ${p.quantity} <br> <br>
                                  <form method="GET" action="/letsbuy/purchaseTshirt">
                                          <input type="hidden" id="product_id" name="product_id" value="${p.product_id}"/>
                                          <input type="submit" value="Purchase" items="${p.product_id}"/>
                                  </form>
                           </td>
                     </tr>
 
              </table>
 
       </c:forEach>
</body>
 
</html>