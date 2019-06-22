<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify Hotels</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
<script type="text/javascript">
	function validate() {
		var name = document.modifyhotel.user.value;
		if (name == "") {
			alert("please enter hotel id");
			document.modifyhotel.user.focus();
			return false;
		}
		var hotelname = document.modifyhotel.hname.value;
		if (hotelname == "") {
			alert("please enter hotel name");
			document.modifyhotel.hname.focus();
			return false;
		}
		if ((hotelname.length <= 5) || (hotelname.length >= 25)) {
			alert("hotel name length min=5,max=25");
			document.modifyhotel.hname.focus();
			return false;
		}
		var address = document.modifyhotel.add.value;
		if (address == "") {
			alert("please enter address");
			document.modifyhotel.add.focus();
			return false;
		}
		if ((address.length<=10)||(address.length>=60)) {
			alert("address maxlength=20");
			document.modifyhotel.add.focus();
			return false;
		}
		var description = document.modifyhotel.Description.value;
		if (description == "") {
			alert("please enter description");
			document.modifyhotel.Description.focus();
			return false;
		}
		if (description.length >= 200) {
			alert("description maxlength=200");
			document.modifyhotel.Description.focus();
			return false;
		}
		var cost = document.modifyhotel.num.value;
		if (cost == "") {
			alert("please enter cost per one night");
			document.modifyhotel.num.focus();
			return false;
		}
		var phone = document.modifyhotel.num1.value;
		if (phone == "") {
			alert("please enter phone number1");
			document.modifyhotel.num1.focus();
			return false;
		}
		if (phone.length != 10) {
			alert("phone number1 length should be 10");
			document.modifyhotel.num1.focus();
			return false;
		}
		var phone1 = document.modifyhotel.num2.value;
		if (phone1 == "") {
			alert("please enter phone number");
			document.modifyhotel.num2.focus();
			return false;
		}
		if (phone1.length != 10) {
			alert("phone number length should be 10");
			document.modifyhotel.num2.focus();
			return false;
		}
		var rating = document.modifyhotel.rate.value;
		if (rating == "") {
			alert("please enter rating");
			document.modifyhotel.rate.focus();
			return false;
		}	
		var email = document.modifyhotel.mail.value;
		if (email == "") {
			alert("please enter mail Id");
			document.modifyhotel.mail.focus();
			return false;
		}

		var fax = document.modifyhotel.fax.value;
		if (fax == "") {
			alert("please enter fax");
			document.modifyhotel.fax.focus();
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
                    <form method="post" action="modifyHotel"  name="modifyhotel" onsubmit="return validate()">
                        <h4>
                            <table>
                                <tr>
                                    <td>Enter Your Hotel Id</td>
                                    <td>:</td>
                                    <td><input type="text" placeholder="Enter Your Hotel Id" name="user"> </td>
                                </tr>
                                <tr>
                                    <td>HotelName</td>
                                    <td>:</td>
                                    <td><input type="text" placeholder="Enter HotelName" name="hname"></td>
                                </tr>
                                <tr>
                           			<td>City Name</td>
                            		<td>:</td>
                            		<td><select name="city">
	                                    <option value="" selected>
                                    	<option value="Mumbai" selected>Mumbai
                                    	<option value="Delhi">Delhi
                                    	<option value="Bengaluru">Bengaluru
                                    	</option>
	                                </select></td>
    		                    </tr>
                                <tr>
									<td>Address</td>
									<td>:</td>
									<td><input type="text" name="add" placeholder = "Enter Your Address"></td>
								</tr>
								<tr>
									<td>Description</td>
									<td>:</td>
									<td><input type="text" name="Description" placeholder = "Enter Description"></td>
								</tr>
                                <tr>
                                    <td>CostPerOneNight</td>
                                    <td>:</td>
                                    <td><input type="number" placeholder="Enter Cost" min=200 max=5000 name="num"></td>
                                </tr>
                                <tr>
                                    <td>PhoneNumber1</td>
                                    <td>:</td>
                                    <td><input type="number" placeholder="Enter PhoneNumber1" name="num1"></td>
                                </tr>
                                <tr>
                                    <td>PhoneNumber2</td>
                                    <td>:</td>
                                    <td><input type="number" placeholder="Enter PhoneNumber2" name="num2"></td>
                                </tr>
                                <tr>
                                    <td>Rating</td>
                                    <td>:</td>
                                    <td><input type="number" placeholder="Enter Rating" min=1 max=5 name="rate"></td>


                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td><input type="text" placeholder="Enter Your MailId" name="mail"></td>
                                </tr>
                                <tr>
                                    <td>Fax</td>
                                    <td>:</td>
                                    <td><input type="text" placeholder="Enter Fax" name="fax"></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><button onclick="return validate()">Modify Hotel</button></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <h3><b>${Identifier}</b></h3>
                                    </td>
                                </tr>
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