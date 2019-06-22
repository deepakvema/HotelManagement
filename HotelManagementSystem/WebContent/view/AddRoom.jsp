<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Rooms</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
    <script type="text/javascript">

function validate()
{
	var name=document.addroom.hoId.value;  
	if (name=="")
		{
		alert("please enter hotel id");
		document.addroom.hoId.focus();
		return false;
		}
	if (name.length!=4)
	{
	alert("hotel id should be 4 characters");
	document.addroom.hoId.focus();
	return false;
	}
	var roomnum=document.addroom.rnum.value;  
	if (roomnum=="")
		{
		alert("please enter room id");
		document.addroom.rnum.focus();
		return false;
		}
	if (roomnum.length!=4)
	{
	alert("room id should be 4 characters");
	document.addroom.rnum.focus();
	return false;
	}
	var cost=document.addroom.cost.value;  
	if (cost=="")
		{
		alert("please enter cost per one night");
		document.addroom.cost.focus();
		return false;
		}
	var availability=document.addroom.yes.value;  
	if (availability=="")
		{
		alert("please enter yes/no");
		document.addroom.yes.focus();
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
                    <pre>




	Ads
	
	
	
	</pre>
                
            </div>
            <div class="main">

                <form method="post" action="addRoom" name="addroom" onsubmit="return validate()">
                    <table>
                        <h3>Add Rooms</h3>
                        <tr>
                            <td>Hotel Id</td>
                            <td>:</td>
                            <td><input type="text" placeholder="Enter Hotel Id" name="hoId"></td>
                        </tr>
                        <tr>
                            <td>Room Number</td>
                            <td>:</td>
                            <td><input type="text" placeholder="Enter Room Number" name="rnum"></td>
                        </tr>
                        <tr>
                            <td>Room type</td>
                            <td>:</td>
                            <td><select name="rType">
                                    <option value="" selected>
                                    <option value="Ac Room" selected>Ac Room
                                    <option value="Non AC Room">Non AC Room
                                    <option value="Executive AC Room">Executive AC Room
                                    <option value="Deluxe AC Room">Deluxe AC Room

                                </select></td>
                        </tr>
                        <tr>
                            <td>Cost Per One Night</td>
                            <td>:</td>
                            <td><input type="number" placeholder="Enter Cost per night " min=500 max=5000 name="cost"></td>
                        </tr>
                        <tr>
                            <td>Availability</td>
                            <td>:</td>
                            <td><select name="yes">
                                    <option value="" selected>
                                    <option value="Yes" selected>Yes
                                    <option value="No">No
                                </select></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td><button onclick="return validate()">Add Rooms</button></td>
                        </tr>

                    </table>

                </form>
                ${identifier}
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
