<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align ="center">
<h1>AddRoom</h1>

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
		padding: 10px 35px}
		
</style>

 <form method="post" action="addRoom">
 
 <table>
<tr>
	<td>HotelId</td>
	<td>:</td>
	<td><input type="text" placeholder = "Enter Hotel Id" name="hoId"></td>
</tr>
<tr>
	<td>RoomNumber</td>
	<td>:</td>
	<td><input type="text"  placeholder = "Enter Room Number" name="rnum"></td>
</tr>
<tr>
	<td>Roomtype</td>
	<td>:</td>
	<td><select name="rType">
	<option value="" selected>
	<option value="Standard A/c" selected>Standard A/c
	<option value="Standard NonA/C">Standard NonA/C
	<option value="Executive A/c Room">Executive A/c Room
	<option value="Deluxe A/C Room">Deluxe A/C Room
	
</select></td>
</tr>

<tr>
	<td>CostPerOneNight</td>
	<td>:</td>
	<td><input type="number"  placeholder = "Enter Cost per night " name="cost"></td>
</tr>
<tr>
	<td>Availability</td>
	<td>:</td>
	<td><input type="text"  placeholder = "Enter yes/no" name="yes"></td>
</tr>

<tr>
	<td></td>
	<td></td>
	<td><input type="Submit" id = "change"value="login" name=""></td>
</tr>

</table>

 </body></div>
</html>