<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align ="center">
<h1>CustomerLoginPage</h1>

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

 <form method="post" action="customerLoginValidation">
 <h4>
	<table>
	<tr>
		<td>Enter Your User_ID</td>
		<td>:</td>
		<td><input type="text" placeholder="Enter Your User_Id" name="user"> </td>
	</tr>
	
	<tr>
		<td>Enter Your Password</td>
		<td>:</td>
		<td><input type="password" placeholder="Enter Your password" name="pwd">
		</td>
	</tr>
	
	<tr>
		<td></td>
		<td></td>
		<td><input type="submit" id="change" value= "Login"></td>
		</tr>

</table></h4></form>
	<a href="CustomerRegistration.jsp">Register</a>	
</body></div>
</html>