<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align ="center">
<h1>Search For Hotels</h1>

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

 <form method="post" action="searchForHotels">
 
 <table>

<tr>
	<td>Select City</td>
	<td>:</td>
	<td><select name="city1">
	<option value="" selected>
	<option value="Hyderabad" selected>Hyderabad
	<option value="Vijayawada">Vijayawada
	<option value="Bhimavaram">Bhimavaram
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