<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Check For Avalibility</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
</head>
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
    <body style="font-family:Verdana;color:#aaaaaa;" onload="document.book.submit()">

        <div style="background-color:#FFFFFF; padding:15px;text-align:center;">
            <a href="HomePageOfUser.jsp"><img alt="img is not loaded" src="apple-icon-144x144.png" style="float: left;"></a>
            <h1>GoHotels</h1>
            <h5>Turning moments into memories for our guests</h5>
        </div>
        <div style="overflow:auto">
            <div class="menu">
                <p>
                    <pre>




	Ads
	
	
	
	</pre>
                </p>
            </div>
            <div class="main">

                <form method="post" action="bookHotels" name="book">

                    <table>
                        <tr>
                            <td>Hotel Id</td>
                            <td>:</td>
                            <td><input type="text" placeholder="Enter HotelId" name="hotelId" value=<%=request.getParameter("hotelId") %>> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td><button id="hotel">Search Hotel</button></td>
                        </tr>

                    </table>
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