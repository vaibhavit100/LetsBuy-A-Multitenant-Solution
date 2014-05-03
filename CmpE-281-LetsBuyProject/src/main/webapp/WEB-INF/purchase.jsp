<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase details</title>
</head>
<body>

 <form name="payment"  action="/letsbuy/thankYou">
	Purchased Tshirt !!!

	<c:forEach var="p" items="${myTshirt}">

		<table width=1000 border=1>
			<tr>
				<td width="50%"><img src="${p.image}"></td>

                <td>
				Product Description <br> 
				Product id: <input type="text" readonly="readonly" name="product_id" value= "${p.product_id}" /> <br>
			    ProductName: <input type="text" readonly="readonly"   value= "${p.product_name}" /> <br>
				Price: <input type="text" readonly="readonly"   value= "${p.price}" /> <br>
				Size: <input type="text" readonly="readonly"   value= "${p.size}" /> <br>
				Color: <input type="text" readonly="readonly"   value= "${p.color}" /> <br>
				Availble: <input type="text" readonly="readonly"   value= "${p.quantity}" />
				<br>
				<br>
				Purchase unit: <input type="text" name="unit" />	
				</td>
			</tr>

		</table>
		
		</c:forEach>
================================================================================================		
<br>
<br>

<br>		
<b>Payment details:</b>


<br>
<br>


<table border=1>
<tbody>
      <tr>
       <td>
        Customer Name</td>
       <td>
        <input size="30" type="text" /></td>
      </tr>
      
      <tr>
       <td>
        Card type
       </td>
       <td>
        <select><option value="id2">Debit</option><option value="id3">Credit</option></select>
       </td>
      </tr>
      
       <tr>
       <td>
        <font>Card Number</font></td>
       <td>
        <input maxlength="16" size="16" type="text" /></td>
       </tr>
      
       <tr>
       <td>
        <font>Card Expiry</font></td>
       <td>
           Month <select>
                       <option value="Jan">January</option>
                       <option value="Feb">February</option>
                       <option value="Mar">March</option>
                       <option value="Apr">April</option>
                       <option value="May">May</option>
                       <option value="Jun">June</option>
                       <option value="Jul">July</option>
                       <option value="Aug">August</option>
                       <option value="Sep">September</option>
                       <option value="Oct">October</option>
                       <option value="Nov">November</option>
                       <option value="Dec">December</option>
                    </select> Year <select>
                       <option value="2013">2013</option>
                       <option value="2014">2014</option>
                       <option value="2015">2015</option>
                       <option value="2016">2016</option>
                       <option value="2017">2017</option>
                       <option value="2018">2018</option>
                       <option value="2019">2019</option>
                       <option value="2020">2020</option>
                       <option value="2021">2021</option>
                       <option value="2022">2022</option>
                       <option value="2023">2023</option>
                       <option value="2024">2024</option>
                       <option value="2025">2025</option>
                       <option value="2026">2026</option>
                       <option value="2027">2027</option>
                       <option value="2028">2028</option>
                       <option value="2029">2029</option>
                       <option value="2030">2030</option>
                     </select>
              </td>
      </tr>
      
      <tr>
       <td>
        CVV Number</td>
       <td>
        <input maxlength="3" size="3" type="text" /></td>
      </tr>
         
      <tr>
       <td>
        &nbsp;
       </td>
       <td>   
        
               
       </td>        
      </tr>
      
     </tbody>
    </table>
            
                    <input class="submit" type="submit" value="Confirm" />
         </form>  
	
</body>
</html>