<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indian Terrain Kid's section</title>
<style>
body
{
background-image:url('http://www.unsigneddesign.com/Jill_Wellingtons_Bokeh_Textures/bokeh1.jpg');
}
</style>
</head>
<body>
 <table cellpadding="0" cellspacing="0" width="100%">
   <tbody>
    <tr>
     <th align="left" height="30%" valign="middle">
      <img src="http://t1.gstatic.com/images?q=tbn:ANd9GcTrUA3UYmLkMZ5r10O1xHIeWMSRCFWz8gKkVMh83vFoaa8-2dYjBA" /></th>
     <th align="right">
    </tr>
    
   </tbody>
  </table>
  <table align="center" cellpadding="0" cellspacing="0" width="100%">
   <tbody>
    <tr bgcolor="#141821">
    
     <td align="center" width="15%">
      <form name="men" method="get" action="/letsbuy/Indianterrain" >
      	<input class="button1" type="Submit" value="Home">
      </form>
          <td align="center" width="15%">
      <form name="men" method="get" action="/letsbuy/IndianterrainMen" >
      	<input class="button1" type="Submit" value="Men">
      </form>
     <td align="center" width="15%">
      <form name="men" method="get" action="/letsbuy/IndianterrainWomen" >
      	<input class="button2" type="Submit" value="Women">
      </form>
     <td align="center" width="15%">
      <form name="men" method="get" action="/letsbuy/IndianterrainKids" >
      	<input class="button3" type="Submit" value="Kids">
      </form>
     <td align="center" width="15%">
     <form name="men" method="get" action="/letsbuy/IndianterrainBelt" >
      	<input class="button4" type="Submit" value="Belts">
      </form>
      <td align="center" width="15%">
      <form name="men" method="get" action="http://www.indianterrain.com/about-us.aspx" >
      	<input class="button1" type="Submit" value="About Us">
      </form>
      <td align="center" width="15%">
      <form name="men" method="get" action="http://www.indianterrain.com/contact-us.aspx" >
      	<input class="button1" type="Submit" value="Contact Us">
      </form>
      </td><td></td><td></td>
    </tr>
    </tbody>
    </table>
       <c:forEach var="p" items="${indianTerrainKids}">
 
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
                                         <input type="submit" value="Purchase" />
                                  </form>
                           </td>
                     </tr>
 
              </table>
 
       </c:forEach>
</body>
 
</html>