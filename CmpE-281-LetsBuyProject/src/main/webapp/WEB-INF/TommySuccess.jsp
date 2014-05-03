<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta content="text/html; charset=UTF-8" http-equiv="content-type" />
  <link href="styles/styles.css" media="screen" rel="stylesheet" type="text/css" />
  <style type="text/css">
<!-- 
.first {color: #141821; font-family:comic sans; font-size:25px}
.second {color: white; font-family:comic sans; font-size:25px}
.para {color: #141821; font-family:comic sans; font-size:15px}
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
<title>Order successful</title>
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
     <td align="center" width="30%" colspan="2">
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
      &nbsp;</td>
      <td width="5%" bgcolor="#141821">
      &nbsp;</td></tr>
    <tr><td width="5%" bgcolor="#141821">
      &nbsp;</td>
      <td width="5%" bgcolor="#141821">
      &nbsp;</td>
      <td width="90%" bgcolor="#141821" align="left" valign="bottom" colspan="3"><i class="second">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order successful</i></td>
      <td width="5%" bgcolor="#141821">
      &nbsp;</td></tr>
      <c:forEach var="prod" items="${tommyProd}">
    <tr>
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
      
      <td width="30%" align="center"><img src="${prod.image}"/></td>
      		<td width="10%"></td>
            <td width="50%" colspan="2"><br/><b class="first" id="productname"><i>${prod.product_name}</i></b>
            <br/><br/><b class="para"><i>Amount paid: ${prod.price} $</i></b>
            <br/><br/><b class="para"><i>Size Ordered: ${prod.size}</i></b>
    		<br/><br/><b class="para"><i>Color Ordered: ${prod.color}</i></b>
    		<br/><br/><b class="para"><i>Quantity Ordered: ${qtyO}</i></b>
    		<br/><br/><b class="para"><i>Thank you for buying from us!</i></b>
    		<br/><br/>
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
  &nbsp;<br/>
 </body>
</html>
    