<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{font-family:"courier";}
table,td{border:1px solid black;
		border-collapse:collapse;
		padding:15px;}
		b{color:#000066;}
		#change{background-color:#000066; color:#ffffff}
		h1{background-color:#000066;
   color:#ffffff;}
		
</style>
</head>
<body>
<div align = "center">
<h1>List Of Available Rooms</h1>
<table>
<c:forEach items="${Rooms}" var="Room" >
<tr>
<td><b>RoomNumber:</b>${Room.roomNumber}</td>
<td><b>HotelID:</b>${Room.hotelId}</td>
<td><b>RoomId:</b>${Room.roomId}</td>
<td><a href="ConfirmBooking.jsp">Confirm</a><br>
	
</tr>

</c:forEach>
</table>

</div>
</body>
</html>