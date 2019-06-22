<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Hotels</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
</head>
<style>
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

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            }
        </style>
	<div align="center">
        <body style="font-family:Verdana;color:#aaaaaa;">

            <div style="background-color:#FFFFFF; padding:15px;text-align:center;">
                <a href="HomePageOfUser.jsp"><img alt="img is not loaded" src="apple-icon-144x144.png" style="float: left;"></a>
                <h1>GoHotels</h1>
                <h5>Turning moments into memories for our guests</h5>
            </div>

            <div style="overflow:auto">
                <div class="menu">
                <a href="HomePageOfUser.jsp"><button style="float:left; width:100px;">&larr;</button></a>
                    <p>
                        <pre>




	Ads
	
	
	
	</pre>
                    </p>
                </div>
                <div class="main">

                    <form method="post" action="searchForHotels">

                        <table>

                            <tr>
                                <td>Select City</td>
                                <td>:</td>
                                <td>

                                    <select class="dropdown" name="city1">
                                        <option value="" selected>
                                        <option value="Mumbai" selected>Mumbai
                                        <option value="Delhi">Delhi
                                        <option value="Bengaluru">Bengaluru
                                        </option>

                                    </select></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><button>Search</button></td>
                            </tr>

                        </table>
                    </form>
                </div>
                <div class="right">
                    <h2>Best Offers </h2>
                    <h4>Special offers on Paytm, PhonePe, Google pay
                    </h4>
                    <h3>Upto 40% Off</h3>

                    <h2>Special Offers in Summer</h2>
                    <h3>upto 50% Off </h3>
                    <p></p>
                </div>
            </div>
            <div style="background-color:AliceBlue;text-align:center;padding:10px;margin-top:7px;">© copyright GoHotels.com</div>
        </body>
</div>
</html>