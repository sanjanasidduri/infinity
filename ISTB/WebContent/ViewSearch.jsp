<%@ page import="java.util.*" %> 
<html>
<head>
</head>
<body>

<br><br><br><br><br><br>
<table width="700px" align="center"
style="border:1px solid #000000;">
<tr>
<td colspan=8 align="center"
style="background-color:ffeeff">
<b>Set of box Record</b></td>
</tr>
<tr style="background-color:efefef;">
<td><b>STB type</b></td>
<td><b>STB features</b></td>
<td><b>STB length</b></td>
<td><b>STB breadth</b></td>
<td><b>STB width</b></td>
<td><b>Price</b></td>
<td><b>Installation Charges</b></td>
<td><b>Discount</b></td>
<td><b>Billing type</b></td>
<td><b>Refundable Deposit amount</b></td>
</tr>
<%
int count=0;
String color = "#F9EBB3";


if(request.getAttribute("empList")!=null)
{
ArrayList<ArrayList<String>> al = (ArrayList<ArrayList<String>>)request.getAttribute("empList");
Iterator<ArrayList<String>> itr = al.iterator();


while(itr.hasNext()){

if((count%2)==0){
color = "#eeffee";
}
else{
color = "#F9EBB3";
}
count++;
ArrayList<String> empList = (ArrayList<String>)itr.next();
%>
<tr style="background-color:<%=color%>;">
<td><%=empList.get(0)%></td>
<td><%=empList.get(1)%></td>
<td><%=empList.get(3)%></td>
<td><%=empList.get(4)%></td>
<td><%=empList.get(5)%></td>
<td><%=empList.get(6)%></td>
<td><%=empList.get(7)%></td>
<td><%=empList.get(8)%></td>
<td><%=empList.get(9)%></td>
<td><%=empList.get(10)%></td>

</tr>
<%
}
}
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
<FORM NAME="form1" action="Controller" METHOD="GET">
        <INPUT TYPE="hidden" NAME="buttonName" value="button2">
        <INPUT TYPE="submit" VALUE="button2" >
    </FORM>


</body>
</html>