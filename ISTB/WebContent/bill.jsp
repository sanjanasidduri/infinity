<%@ page import="java.util.*" %> 
<html>
<head>
</head>
<body>

<br><br><br><br><br><br>
<table width="700px" align="center"
style="border:1px solid #000000;">
<tr>
<td colspan=7 align="center"
style="background-color:ffeeff">
<b>BILL</b></td>
</tr>
<tr style="background-color:efefef;">
<td><b>Name</b></td>
<td><b>STB type</b></td>
<td><b>STB mac id</b></td>
<td><b>STB serial number</b></td>
<td><b>STB price</b></td>
<td><b>STB installation</b></td>
<td><b>deposit</b></td>
<td><b>Discount</b></td>
<td><b>Tax</b></td>
<td><b>Amount</b></td>


</tr>
<%
int count=0;
String color = "#F9EBB3";


//if(request.getAttribute("empList")!=null)
//{
ArrayList<String> al1 = (ArrayList<String>)request.getAttribute("al1");
if((count%2)==0){
color = "#eeffee";
}
else{
color = "#F9EBB3";
}
count++;

%>
<tr style="background-color:<%=color%>;">
<td><%=al1.get(0)%></td>
<td><%=al1.get(1)%></td>
<td><%=al1.get(2)%></td>
<td><%=al1.get(3)%></td>
<td><%=al1.get(4)%></td>
<td><%=al1.get(5)%></td>
<td><%=al1.get(6)%></td>
<td><%=al1.get(7)%></td>
<td><%=al1.get(8)%></td>
<td><%=al1.get(9)%></td>


</tr>
<%
//}

%>
<%
if(count==0){
%>
<tr>
<td colspan=8 align="center"
style="background-color:eeffee"><b>No STB available with this retailer</b></td>
</tr>
<%
}
%>
</table>
</body>
</html>