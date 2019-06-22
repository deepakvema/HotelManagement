<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align ="center">
<h1>HomeScreen</h1>

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

 <form method="post" action="addHotels">
 
 <table>
<tr>
	<td>HotelName</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter HotelName" name="hname"></td>
</tr>
<tr>
	<td>CityName</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter City Name" name="city"></td>
</tr>
<tr>
	<td>Address</td>
	<td>:</td>
	<td><textarea name="add" placeholder = "Enter Your Address" rows="" cols=""></textarea></td>
</tr>
<tr>
	<td>Description</td>
	<td>:</td>
	<td><textarea name="Description" placeholder = "Enter Description" rows="" cols=""></textarea></td>
</tr>
<tr>
	<td>CostPerOneNight</td>
	<td>:</td>
	<td><input type="number"placeholder = "Enter Cost" name="num"></td>
</tr>
<tr>
	<td>PhoneNumber1</td>
	<td>:</td>
	<td><input type="number"placeholder = "Enter PhoneNumber1" name="num1"></td>
</tr>
<tr>
	<td>PhoneNumber2</td>
	<td>:</td>
	<td><input type="number"placeholder = "Enter PhoneNumber2" name="num2"></td>
</tr>
<tr>
	<td>Rating</td>
	<td>:</td>
	<td><input type="number"placeholder = "Enter Rating" name="rate"></td>


</tr>
<tr>
	<td>Email</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter Your MailId"name="mail"></td>
</tr>
<tr>
	<td>Fax</td>
	<td>:</td>
	<td><input type="text"placeholder = "Enter Fax" name="fax"></td>
</tr>

<tr>
	<td></td>
	<td></td>
	<td><input type="Submit" value="login" name=""></td>
</tr>

</table>

 </body></div>
</html>