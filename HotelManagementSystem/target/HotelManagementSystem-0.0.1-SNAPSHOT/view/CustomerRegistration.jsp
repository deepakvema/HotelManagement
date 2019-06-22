
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>



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
		
textarea{border:solid black 1px;
		border-radius:4px;
		padding: 10px 27px}
				
		select{border:solid black 1px;
		border-radius:4px;
		padding: 10px 20px}
		
</style>
<body>
 <form method="post" action="registration">
 <div align ="center">
<h1>Customer Registration</h1>
 <table>
<tr>
	<td>UserName</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter UserName" required name="user"></td>
</tr>

<tr>
	<td>Address</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter Address" required name="address"></td>
	</tr>

<tr>
	<td>PhoneNumber</td>
	<td>:</td>
	<td><input type="number"placeholder = "Enter PhoneNumber" required  name="num"></td>
</tr>

<tr>
	<td>Email</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter Your MailId" required name="mail"></td>
</tr>
<tr>
	<td>UserId</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter Your UserId" required name="uId"></td>
</tr>
<tr>
	<td>Password</td>
	<td>:</td>
	<td><input type="password" placeholder = "Enter Your password"required name="pwd"></td>
</tr>

<tr>
	<td>Role</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter Your Role" required name="role"></td>
</tr>

<tr>
	<td></td>
	<td></td>
	<td><input type="Submit"  id = "change"value="Submit" name=""></td>
</tr>

</table>
</div>
</form>
 </body>
</html>