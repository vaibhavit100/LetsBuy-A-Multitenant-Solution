<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Tommy Hilfiger ${category} Clothing</title>
<style type="text/css">
<!-- 
.first {color: #141821; font-family:comic sans; font-size:25px}
.second {color: white; font-family:comic sans; font-size:25px}
.btn{
border:1px solid #72021c; -webkit-border-radius: 3px; -moz-border-radius: 3px;border-radius: 3px;font-size:12px;font-family:arial, helvetica, sans-serif; padding: 10px 10px 10px 10px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #a90329; background-image: -webkit-gradient(linear, left top, left bottom, from(#a90329), to(#6d0019));
 background-image: -webkit-linear-gradient(top, #a90329, #6d0019);
 background-image: -moz-linear-gradient(top, #a90329, #6d0019);
 background-image: -ms-linear-gradient(top, #a90329, #6d0019);
 background-image: -o-linear-gradient(top, #a90329, #6d0019);
 background-image: linear-gradient(to bottom, #a90329, #6d0019);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#a90329, endColorstr=#6d0019);
}
-->
</style> 
<script type="text/javascript">
function mOver(obj){
	obj.style.color="maroon";
}
function mOut(obj){
	obj.style.color="#141821"
}
</script>
</head>
<body>
  <table cellpadding="0" cellspacing="0" width="100%">
   <tbody>
    <tr bgcolor="#141821">
     <th align="left" height="40%" valign="middle">
      <a href="http://localhost:8080/letsbuy/tommyhome"><img src="http://usa.tommy.com/wcsstore/THStorefrontAssetStore/assets/img/logo_Tommy.jpg" /></a></th>
     <th align="right">
      </th>
    </tr>
    <tr bgcolor="#141821">
     <td align="center" colspan="2" height="100">
      <font color="white" face="Comic Sans" size="5"><i>&quot;Find your favourite Tommy styles, on sale, all the time&quot;</i></font></td>
    </tr>
   </tbody>
  </table>
  <table align="center" cellpadding="0" cellspacing="0" width="100%">
   <tbody>
    <tr bgcolor="#141821">
     <td width="5%">
      &nbsp;</td>
     <td align="center" width="30%">
      <a href="http://localhost:8080/letsbuy/tommyhome/tommyCategory?category=men"><font color="white" face="Comic Sans"><i>Men</i></font></a></td>
     <td align="center" width="30%">
      <a href="http://localhost:8080/letsbuy/tommyhome/tommyCategory?category=women"><font color="white" face="Comic Sans"><i>Women</i></font></a></td>
     <td align="center" width="30%">
      <a href="http://localhost:8080/letsbuy/tommyhome/tommyCategory?category=kids"><font color="white" face="Comic Sans"><i>Kids</i></font></a></td>
     <td width="5%">
      &nbsp;</td><td></td><td></td>
    </tr>
    <tr><td width="5%" bgcolor="#141821">
      &nbsp;</td>
      <td width="90%" bgcolor="#141821" colspan="3"></td>
      <td width="5%" bgcolor="#141821">
      &nbsp;</td></tr>
    <tr><td width="5%" bgcolor="#141821">
      &nbsp;</td>
      <td width="90%" bgcolor="#141821" align="center" valign="bottom" colspan="3"><i class="second">Tommy - ${category}</i></td>
      <td width="5%" bgcolor="#141821">
      &nbsp;</td></tr>
    <c:forEach var="p" items="${Category}">
    <tr>
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
      
      <td width="30%" align="center"><img src="${p.image}" /></td>
            <td width="30%" align="center"><a href="http://localhost:8080/letsbuy/tommyhome/tommyProduct?product_id=${p.product_id}&product_name=${p.product_name}&product_desc=${p.product_desc}&price=${p.price}&quantity=${p.quantity}&color=${p.color}&size=${p.size}&image=${p.image}"><b class="first" onmouseover="mOver(this)" onmouseout="mOut(this)" id="productname"><i>${p.product_name}</i></b></a></td>
      <td width="30%" align="center"><b class="first"><i>Price: ${p.price} $</i></b><br/><br/>
      <form method="get" action="/letsbuy/tommyhome/tommyProduct">
      	<input type="hidden" name="product_id" value="${p.product_id}"/>
      	<input type="hidden" name="product_name" value="${p.product_name}"/>
      	<input type="hidden" name="product_desc" value="${p.product_desc}"/>
      	<input type="hidden" name="price" value="${p.price}"/>
      	<input type="hidden" name="quantity" value="${p.quantity}"/>
      	<input type="hidden" name="color" value="${p.color}"/>
      	<input type="hidden" name="size" value="${p.size}"/>
      	<input type="hidden" name="image" value="${p.image}"/>
      		<input class="btn" type="submit" value="Select"/>
      </form>
      </td>
   
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
    </tr> 
     </c:forEach> 
    
    <tr bgcolor="#141821">
     <td align="center" colspan="7">
      <font color="white">SIGN UP FOR MAILS </font> <input type="text" /> <a href="SignUp.html"> <font color="white">SUBMIT</font></a></td>
    </tr>
   </tbody>
  </table>
  &nbsp;<br />
 </body>
</html>