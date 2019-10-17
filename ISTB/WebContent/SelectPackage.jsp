<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String session_val = session.getAttribute("cust_name").toString(); 
System.out.println("session_val"+session_val);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages</title>
<script type="text/javascript">
var session_obj= '<%=session_val%>';
var package_prices = new Array();
package_prices["package1"]=50;
package_prices["package2"]=75;
package_prices["package3"]=59;

function getTotalPrice()
{
    var TotalPrice=0;
    var theForm = document.forms["packages"];
    var selectedpackages = theForm.elements["package"];
    for(var i = 0; i < selectedpackages.length; i++)
    {
        if(selectedpackages[i].checked)
        {
            TotalPrice= TotalPrice+package_prices[selectedpackages[i].value];
        }
    }
    document.getElementById('totalPrice').innerHTML =TotalPrice;
}

</script>
<style>
#wrap {
    width: 800px;
    margin: 0 auto;
        margin-top: 0px;
    text-align: left;
    margin-top: 8px;
    padding: 5px;
    background: #fff;
    font-family: AvenirLTStd, Arial, Helvetica, sans-serif;
    font-size: 13px;
    line-height: 16px;
}
table { 
		width:600px; 
			} 
th, td { 
				text-align:left; 
				padding: 10px; 
				background-color:none; 
} 

</style>
</head>
<body>
<div id="wrap">
<form action="c2" id="packages" method="get" >

<fieldset >
    <legend>Choose your package!  <b><%=session_val%> </b></legend>
    <table>
    <tr>
    <th>
    <input type="checkbox" name="package" id="package" value="package1"  onclick="getTotalPrice()">   DefaultPackage
    </th>
    <th>50
    </th>
    </tr>
    <tr>
    <td style="text-align:center;">Channel1</td>
    <td>10</td>
    </tr>
    <tr>
    <td style="text-align:center;">Channel2</td>
    <td>25</td>
    </tr>
    <tr>
    <td style="text-align:center;">Channel3</td>
    <td>15</td>
    </tr>
    <tr>
    <th>
    <input type="checkbox" name="package" id="package" value="package2"  onclick="getTotalPrice()">   Package1
    </th>
    <th>75
    </th>
    </tr>
    <tr>
    <td style="text-align:right;">Channel1</td>
    <td>25</td>
    </tr>
    <tr>
    <td style="text-align:right;">Channel2</td>
    <td>25</td>
    </tr>
    <tr>
    <td style="text-align:right;">Channel3</td>
    <td>25</td>
    </tr>
    <tr>
    <th>
    <input type="checkbox" name="package" id="package" value="package3"  onclick="getTotalPrice()">   Package2
    </th>
    <th>59
    </th>
    </tr>
    <tr>
    <td style="text-align:right;">Channel1</td>
    <td>19</td>
    </tr>
    <tr>
    <td style="text-align:right;">Channel2</td>
    <td>25</td>
    </tr>
    <tr>
    <td style="text-align:right;">Channel3</td>
    <td>15</td>
    </tr>
    <tr>
    <th>Purchase date</th>
    <td><p id="date">
<script> document.write(new Date().toLocaleDateString()); </script>
</p></td>
    </tr>
    <tr>
    <th>Total Amount</th>
    <th><div id="totalPrice"></div></th>
    </tr>
    </table>
     <input type="submit" value="Submit">
   	
</fieldset>
</form>
</div>
</body>
</html>