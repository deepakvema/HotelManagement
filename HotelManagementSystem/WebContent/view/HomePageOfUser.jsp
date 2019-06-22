<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
</head>
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
            <font color="#4CAF50">${status }</font> 
            <div class="dropdown" style="float:right; width:100px;">
                    <button class="dropbtn">Option</button>
                    <div class="dropdown-content">
                        <a href="Home.jsp">Logout</a>
                    </div>
                </div>
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
                <h1>Home Page<h1>
                        <form method="post" action="SearchHotels.jsp" class="modal-content animate" style="border:none;">
                            <button>Search Hotels</button>
                        </form>
                        <form method="post" action="ViewBookingStatus.jsp" class="modal-content animate" style="border:none;">
                            <button>Booking Status</button>
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