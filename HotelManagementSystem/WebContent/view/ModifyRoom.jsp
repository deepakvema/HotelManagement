<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify Rooms</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
<script>
	function validate() {
		var name = document.modifyroom.user.value;
		if (name == "") {
			alert("please enter booking id");
			document.modifyroom.user.focus();
			return false;
		}
		if (name.length != 4) {
			alert("Booking id should be 4 characters");
			document.modifyroom.user.focus();
			return false;
		}
		var availability = document.modifyroom.yes.value;
		if (availability == "") {
			alert("please enter yes/no");
			document.modifyroom.yes.focus();
			return false;
		}

	}
</script>
</head>
<div align="center">
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

            }
        </style>
        <body style="font-family:Verdana;color:#aaaaaa;">
            <a href="AfterAdminLogin.jsp"><img alt="img is not loaded" src="apple-icon-144x144.png" style="float: left;"></a> 
            <div style="background-color:#FFFFFF; padding:15px;text-align:center;">
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
                    <form method="post" action="modifyRoom" name="modifyroom" onsubmit="return validate()">
                        <h4>
                            <table>
                                <tr>
                                    <td>Enter Your Room Id</td>
                                    <td>:</td>
                                    <td><input type="text" placeholder="Enter Your Hotel Id" name="user"> </td>
                                </tr>
                                <tr>
                                    <td>Availability</td>
                                    <td>:</td>
                                    <td><select name="yes">
	                                    <option value="" selected>
                                    	<option value="Yes" selected>Yes
                                    	<option value="No">No
                                    	</option>
	                                </select></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><button onclick="return validate()">Modify Rooms</button></td>
                                </tr>
                                <p>${identifier}</p>
                            </table>
                        </h4>
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
 
 
