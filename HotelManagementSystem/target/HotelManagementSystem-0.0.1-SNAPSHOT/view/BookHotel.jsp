<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align ="center">
<h1>BookRoom</h1>

<body>
<style>
body{font-family:"courier";}
h1{background-color:#000066;
   color:#ffffff;
   padding: 10px 20px}
   #change{background-color:#000066;
   color:#ffffff }

 input{border:solid black 1px;
		border-radius:4px;
		padding: 10px 20px}
		select{border:solid black 1px;
		border-radius:4px;
		padding: 10px 35px}
		
</style>

 <form method="post" action="bookHotels">
 
 <table>

<tr>
	<td>Check For Availability</td>
	<td>:</td>
	<td><select name="city2">
	<option value="Select" selected>Select
	<option value="Yes">Yes
	<option value="No">No
	
	</option>
	
</select></td>
</tr>



<tr>
	<td></td>
	<td></td>
	<td><input type="Submit" id = "change"value="Check" name=""></td>
</tr>

</table>
</form>
 </body></div>
</html>