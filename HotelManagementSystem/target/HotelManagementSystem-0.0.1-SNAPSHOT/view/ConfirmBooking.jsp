
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
 <form method="post" action="confirmBooking">
 <div align ="center">
<h1>Book Your Room</h1>
 <table>
<tr>
	<td>HotelId</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter HotelId" required name="user"></td>
</tr>
<tr>
	<td>RoomId</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter RoomId" required name="user1"></td>
</tr>

<tr>
	<td>RoomNumber</td>
	<td>:</td>
	<td><input type="number" placeholder = "Enter RoomNumber" required name="address"></td>
	</tr>

<tr>
	<td>RoomType</td>
	<td>:</td>
	<td><input type="text"placeholder = "Enter RoomType" required  name="num"></td>
</tr>

<tr>
	<td>FromDate</td>
	<td>:</td>
	<td><input type="date"  required name="mail"></td>
</tr>
<tr>
	<td>ToDate</td>
	<td>:</td>
	<td><input type="date"  required name="mail1"></td>
</tr>

<tr>
	<td>Number of Adults</td>
	<td>:</td>
	<td><input type="number" placeholder = "Enter Count" required name="uId"></td>
</tr>
<tr>
	<td>Number Of Children</td>
	<td>:</td>
	<td><input type="number" placeholder = "Enter count"required name="pwd"></td>
</tr>

<tr>
	<td>Amount</td>
	<td>:</td>
	<td><input type="number" placeholder = "Enter Amount"required name="pwd1"></td>
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