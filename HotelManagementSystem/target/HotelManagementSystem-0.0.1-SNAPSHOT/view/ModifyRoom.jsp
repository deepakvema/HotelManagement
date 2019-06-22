<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align ="center">
<h1>Modify Room</h1>

<body>
<style>
body{font-family:"courier" ;}
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
		padding: 10px 20px}
		
</style>

 <form method="post" action="modifyRoom">
 <h4>
	<table>
	<tr>
		<td>Enter Your Hotel Id</td>
		<td>:</td>
		<td><input type="text" placeholder="Enter Your Hotel Id" name="user"> </td>
	</tr>
	<tr>
	<td>Availability</td>
	<td>:</td>
	<td><input type="text"  placeholder = "Enter yes/no" name="yes"></td>
</tr>
	
	
	<tr>
		<td></td>
		<td></td>
		<td><input type="submit" id="change" value= "Delete"></td>
		</tr>

</table></h4></form>
	
</body></div>
</html>