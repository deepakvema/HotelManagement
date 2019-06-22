<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Hotel</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
    <script type="text/javascript">

function validate()
{
	var name=document.deletehotel.user.value;  
	if (name=="")
		{
		alert("please enter hotel id");
		document.deletehotel.user.focus();
		return false;
		}
	if (name.length!=4)
	{
	alert("hotel id should be 4 characters");
	document.deletehotel.user.focus();
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
                <form method="post" action="deleteHotel" name="deletehotel" onsubmit="return validate()">
                    <h4>
                        <h3>Delete Hotel</h3>
                        <table>
                        <h3>${identifier }</h3>
                            <tr>
                                <td>Enter Your Hotel Id</td>
                                <td>:</td>
                                <td><input type="number" placeholder="Enter Your Hotel Id" name="user"> </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><button onclick="return validate()">Delete Hotel</button></td>
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
            </div>
          </div>
          <div style="background-color:AliceBlue;text-align:center;padding:10px;margin-top:7px;">© copyright GoHotels.com</div>
    </body>
</div>
</html>