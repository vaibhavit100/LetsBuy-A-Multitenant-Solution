<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta content="text/html; charset=UTF-8" http-equiv="content-type" />
  <link href="styles/styles.css" media="screen" rel="stylesheet" type="text/css" />
  <style type="text/css">
<!-- 
.first {color: #141821; font-family:comic sans; font-size:25px}
.para {color: #141821; font-family:comic sans; font-size:15px}
.btn{
 border:1px solid #72021c; -webkit-border-radius: 3px; -moz-border-radius: 3px;border-radius: 3px;font-size:18px;font-family:arial, helvetica, sans-serif; padding: 10px 10px 10px 10px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #a90329; background-image: -webkit-gradient(linear, left top, left bottom, from(#a90329), to(#6d0019));
 background-image: -webkit-linear-gradient(top, #a90329, #6d0019);
 background-image: -moz-linear-gradient(top, #a90329, #6d0019);
 background-image: -ms-linear-gradient(top, #a90329, #6d0019);
 background-image: -o-linear-gradient(top, #a90329, #6d0019);
 background-image: linear-gradient(to bottom, #a90329, #6d0019);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#a90329, endColorstr=#6d0019);
}
-->
</style>

<title>Payment and Shipping Details</title>
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
     <td align="center" width="30%" colspan="2">
      <a href="http://localhost:8080/letsbuy/tommyhome/tommyCategory?category=men"><font color="white" face="Comic Sans"><i>Men</i></font></a></td>
     <td align="center" width="30%" colspan="2">
      <a href="http://localhost:8080/letsbuy/tommyhome/tommyCategory?category=women"><font color="white" face="Comic Sans"><i>Women</i></font></a></td>
     <td align="center" width="30%">
      <a href="http://localhost:8080/letsbuy/tommyhome/tommyCategory?category=kids"><font color="white" face="Comic Sans"><i>Kids</i></font></a></td>
     <td width="5%">
      &nbsp;</td><td></td><td></td>
    </tr>
     <tr>
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
      <td width="10%"></td>
      <td width="45%" colspan="3"><br/><b class="first"><i>Payment Details</i></b>
      <br/><br/><b class="para">First Name: </b><input type="text" name="fname">
      <br/><br/><b class="para">Last Name: </b><input type="text" name="lname">
      <br/><br/><b class="para">Card Type: </b><input type="radio" value="Visa" name="cardtype"/>Visa<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="MasterCard" name="card"/>MasterCard<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="Discover" name="card"/>Discover<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="American Express" name="card"/>American Express<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="Paypal" name="card"/>Paypal
      <br/><br/><b class="para">Card Number: </b><input type="text" name="cardno."/>
      <br/><br/><b class="para">Security Code: </b><input type="text" name="scode"/>
      <br/><br/><b class="para">Expiry Date(mm/yy): </b><input type="text" name="expiry" maxlength="5" size="5"/><br/><br/>
      </td>
      <td width="30%">
      <br/><b class="first"><i>Shipping Address</i></b>
      <br/><br/><br/><b class="para">Street Address: </b><input type="text" name="address"/>
      <br/><br/><b class="para">City: </b><input type="text" name="city"/>
      <br/><br/><b class="para">Country: </b><input type="text" name="country"/>
      <br/><br/><b class="para">Zip/Postal code: </b><input type="text" name="zipcode"/>
      <br/><br/><b class="para">Phone number: </b><input type="text" name="phno."/>
      <form method="get" action="/letsbuy/tommyhome/tommyProduct/finalPurchase">
      <input type="hidden" value="${qtyO}" name="qtyO"/>
      <input type="hidden" value="${product_id}" name="product_id"/>
      <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input class="btn" type="submit" value="Checkout" align="middle"/><br/><br/><br/>
      </form>
      </td> 
     <td width="5%" bgcolor="maroon">
      &nbsp;</td>
    </tr>
     
    <tr bgcolor="#141821">
     <td align="center" colspan="7">
      <font color="white">SIGN UP FOR MAILS </font> <input type="text" /> <a href="SignUp.html"> <font color="white">SUBMIT</font></a></td>
    </tr>
   </tbody>
  </table>
  &nbsp;<br />
</head>
</body>
</html>