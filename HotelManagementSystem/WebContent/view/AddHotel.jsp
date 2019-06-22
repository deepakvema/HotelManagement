<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

function validate()
{
	var hotelname=document.addhotel.hname.value;  
	if (hotelname=="")
		{
		alert("please enter hotel name");
		document.addhotel.hname.focus();
		return false;
		}
	if((hotelname.length<=5)||(hotelname.length>=25))
	{
		alert("hotel name length min=5,max=25");
		document.addhotel.hname.focus();
		return false;
	}
	var address=document.addhotel.add.value;  
	if (address=="")
		{
		alert("please enter address");
		document.addhotel.add.focus();
		return false;
		}
	if((address.length<=10)||(address.length>=60))
	{
		alert("address maxlength=10");
		document.addhotel.add.focus();
		return false;
	}
	var description=document.addhotel.Description.value;  
	if (description=="")
		{
		alert("please enter description");
		document.addhotel.Description.focus();
		return false;
		}
	if(description.length>=200)
	{
		alert("description maxlength=200");
		document.addhotel.Description.focus();
		return false;
	}
	var cost=document.addhotel.num.value;  
	if (cost=="")
		{
		alert("please enter cost per one night");
		document.addhotel.num.focus();
		return false;
		}
	var phone=document.addhotel.num1.value;  
	if (phone=="")
		{
		alert("please enter phone number1");
		document.addhotel.num1.focus();
		return false;
		}
	if (phone.length!=10)
	{
	alert("phone number1 length should be 10");
	document.addhotel.num1.focus();
	return false;
	}
	var phone1=document.addhotel.num2.value;  
	if (phone1=="")
		{
		alert("please enter phone number");
		document.addhotel.num2.focus();
		return false;
		}
	if (phone1.length!=10)
	{
	alert("phone number length should be 10");
	document.addhotel.num2.focus();
	return false;
	}
	var rating=document.addhotel.rate.value;  
	if (rating=="")
		{
		alert("please enter rating");
		document.addhotel.rate.focus();
		return false;
		}
	var email=document.addhotel.mail.value;  
	if (email=="")
		{
		alert("please enter mail Id");
		document.addhotel.mail.focus();
		return false;
		}
	
	var fax=document.addhotel.fax.value;  
	if (fax=="")
		{
		alert("please enter fax");
		document.addhotel.fax.focus();
		return false;
		}

}
</script>
    <meta charset="ISO-8859-1">
    <title>Add Hotels</title>
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

                <form method="post" action="addHotels"  name="addhotel" onsubmit="return validate()">
                    <table>
                        <h3>Add Hotels</h3>
                        <tr>
                            <td>Hotel Name</td>
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
                            <td>Cost Per One Night</td>
                            <td>:</td>
                            <td><input type="number" placeholder="Enter Cost" min=200 max=5000 name="num"></td>
                        </tr>
                        <tr>
                            <td>Phone Number1</td>
                            <td>:</td>
                            <td><input type="number" placeholder="Enter PhoneNumber1" name="num1"></td>
                        </tr>
                        <tr>
                            <td>Phone Number2</td>
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
                            <td><button onclick="return validate()">Add Hotel</button></td>
                        </tr>
                    </table>
                    <b>
                        <h3>${identifier }</h3>
                    </b>
                </form>
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