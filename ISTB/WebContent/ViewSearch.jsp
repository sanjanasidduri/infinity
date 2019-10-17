<%@ page import="java.util.*" %> 
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Login Page</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css" />
    <link rel="stylesheet" href="vendor/metisMenu/dist/metisMenu.css" />
    <link rel="stylesheet" href="vendor/animate.css/animate.css" />
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css" />

    <!-- App styles -->
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
   <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css" /> 
    <link rel="stylesheet" href="styles/style.css">
	<h3><marquee><strong>Infinity DTH Services</strong></marquee></h3>
</head>
<body class="blank">
<div class="color-line"></div>
<br><br>
<body class="blank">

<br><br><br><br><br><br>
<table width="700px" align="center"
style="border:1px solid #000000;">
<tr>
<td colspan=11 align="center"
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
<td colspan=10 align="center"
style="background-color:eeffee"><b>No STB available with this retailer</b></td>
</tr>
<%
}
%>
</table>
<FORM NAME="form1" action="Controller" METHOD="GET">
        <INPUT TYPE="hidden" NAME="buttonName" value="Next">
        <INPUT TYPE="submit" VALUE="Next">
        
        <INPUT TYPE="hidden" NAME="buttonName" value="back">
        <INPUT TYPE="submit" VALUE="back">
    </FORM>


</body>
</html>