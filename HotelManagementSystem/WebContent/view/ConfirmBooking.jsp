<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Search hotel</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
</head>
<script type="text/javascript">
    function validToDate() {
        var today = new Date().toISOString().split('T')[0];
        var nextWeekDate = new Date(new Date().getTime() + 30 * 24 * 60 * 60 * 1000).toISOString().split('T')[0]
        document.getElementsByName("toDate")[0].setAttribute('min', today);
        document.getElementsByName("toDate")[0].setAttribute('max', nextWeekDate)
    }
    function validFromDate() {
        var today = new Date().toISOString().split('T')[0];
        var nextWeekDate = new Date(new Date().getTime() + 30 * 24 * 60 * 60 * 1000).toISOString().split('T')[0]
        document.getElementsByName("fromDate")[0].setAttribute('min', today);
        document.getElementsByName("fromDate")[0].setAttribute('max', nextWeekDate)
    }
    function validateDate() {
        validToDate();
        validFromDate();
    }
</script>
<div align="center">
    <style>
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
    <body style="font-family:Verdana;color:#aaaaaa;" onload="validateDate()">
        <div style="background-color:#FFFFFF; padding:15px;text-align:center;">
            <a href="HomePageOfUser.jsp"><img alt="img is not loaded" src="apple-icon-144x144.png" style="float: left;"></a>
            <h1>GoHotels</h1>
            <h5>Turning moments into memories for our guests</h5>
        </div>
        <div style="overflow:auto">
            <div class="menu">
            <a href="SearchHotels.jsp"><button style="float:left; width:100px;">&larr;</button></a>
                <p>
                    <pre>




	Ads
	
	
	
	</pre>
                </p>
            </div>
            <div class="main">
                <form method="post" name="book" action="confirmBooking">
                    <div align="center">
                        <h1>Book Your Room</h1>
                        <table>
                            <tr>
                                <td>HotelId</td>
                                <td>:</td>
                                <td><input type="text" placeholder="Enter HotelId" required value=<%=request.getParameter("hotelId") %> readonly="readonly" name="user"></td>
                            </tr>
                            <tr>
                                <td>RoomId</td>
                                <td>:</td>
                                <td><input type="text" placeholder="Enter RoomId" required value=<%=request.getParameter("roomId") %> readonly="readonly" name="user1"></td>
                            </tr>

                            <tr>
                                <td>RoomNumber</td>
                                <td>:</td>
                                <td><input type="number" placeholder="Enter RoomNumber" required value=<%=request.getParameter("roomNumber") %> readonly="readonly" name="address"></td>
                            </tr>

                            <tr>
                                <td>RoomType</td>
                                <td>:</td>
                                <td><input type="text" placeholder="Enter RoomType" required value=<%=request.getParameter("roomType")%> readonly="readonly" name="num"></td>
                            </tr>

                            <tr>
                                <td>FromDate</td>
                                <td>:</td>
                                <td><input type="date" name="fromDate" id="toDate" required /></td>
                            </tr>
                            <tr>
                                <td>ToDate</td>
                                <td>:</td>
                                <td><input type="date" name="toDate" id="fromDate" required /></td>
                            </tr>
                            <tr>
                                <td>Number of Adults</td>
                                <td>:</td>
                                <td><input type="number" placeholder="Enter Count" min=0 max=3 required name="uId"></td>
                            </tr>
                            <tr>
                                <td>Number Of Children</td>
                                <td>:</td>
                                <td><input type="number" placeholder="Enter count" min=0 max=3 required name="pwd"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><button>Book Room</button></td>
                            </tr>
                        </table>
                    </div>
                </form>
                ${Rooms}
            </div>
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