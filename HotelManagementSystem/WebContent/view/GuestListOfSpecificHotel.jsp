<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Hotels</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
</head>
<div align="center">
    <style>
     table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            color: white;
            background-color: #4CAF50;
        }
        * {
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        * {
            box-sizing: border-box;
        }

        .menu {
            float: left;
            width: 20%;
            text-align: center;
        }

        .menu a {
            background-color: AliceBlue;
            padding: 8px;
            margin-top: 7px;
            display: block;
            width: 100%;
            color: black;
        }

        .main {
            float: left;
            width: 60%;
            padding: 0 20px;
        }

        .right {
            background-color: AliceBlue;
            float: left;
            width: 20%;
            padding: 15px;
            margin-top: 7px;
            text-align: center;
        }
    </style>
    <body style="font-family:Verdana;color:#aaaaaa;">
        <div style="background-color:#FFFFFF; padding:15px;text-align:center;">
            <a href="AfterAdminLogin.jsp"><img alt="img is not loaded" src="apple-icon-144x144.png" style="float: left;"></a>
            <h1>GoHotels</h1>
            <h5>Turning moments into memories for our guests</h5>
        </div>
        <div style="overflow:auto">
            <div class="menu">
            <a href="AfterAdminLogin.jsp"><button style="float:left; width:100px;">&larr;</button></a>
                <p>
                    <pre>




	Ads
	
	
	
	</pre>
                </p>
            </div>
            <div class="main">
			<form class="modal-content animate" method="post" action="guestListOfHotel" style="border: none;">
						Enter Hotel Id<input type ="number" required name="user">
                   		 <button>Search Booking</button>
            </form>
                            <h1>guest's Information</h1>
                                <table>
                                    <tr>
                                        <th><b>User Id</b></th>
                                        <th><b>User name</b></th>
                                        <th><b>Address</b></th>
                                        <th><b>EMail</b></th>
                                        <th><b>Phone number</b></th>
                                        <th><b>Role</b></th>
                                    </tr>
                                    <c:forEach items="${GuestList }" var="Guest">
                                        <tr>
                                            <td>${Guest.userId}</td>
											<td>${Guest.userName}</td>
											<td>${Guest.address}</td>
											<td>${Guest.email}</td>
											<td>${Guest.mobileNumber}</td>
											<td>${Guest.role}</td>
                                        </tr>
                                    </c:forEach>
                                </table>   
                 </div> <br />
            <div class="right">
                <h2>Best Offers </h2>
                <h4>Special offers on Paytm, PhonePe, Google pay
                </h4>
                <h3>Upto 40% Off</h3>

                <h2>Special Offers in Summer</h2>
                <h3>upto 50% Off </h3>
            </div>
            </div>
            <div style="background-color:AliceBlue;text-align:center;padding:10px;margin-top:7px;">© copyright GoHotels.com</div>
    </body>
</div>
</html>