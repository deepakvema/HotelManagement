<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>GoHotels</title>
    <link rel="stylesheet" type="text/css" href="Hotel.css">
    <link rel="icon" type="image/png" href="favicon-16x16.png" id="icon" />
    <script type="text/javascript">
    function validateLogin()
    {
    	var name=document.login.user.value;  
    	if (name=="")
    		{
    		alert("please enter user name");
    		document.login.user.focus();
    		return false;
    		}
    	
    	var password=document.login.pwd.value;
    	if(password=="")
    		{
    		alert("please enter password");
    		document.login.pwd.focus();
    		return false;
    		}
    }
    function validateRegister()
    {
    	var name=document.registration.user.value;  
    	if (name=="")
    		{
    		alert("please enter user name");
    		document.registration.user.focus();
    		return false;
    		}
    	if ((name.length<=5)||(name.length>=12))
    	{
    	alert("Username should be alphabets only,first letter Capital, minlength is 5 and maximumlength 12");
    	document.registration.user.focus();
    	return false;
    	}
    	var add=document.registration.address.value;  
    	if (add=="")
    		{
    		alert("please enter address");
    		document.registration.address.focus();
    		return false;
    		}
    	if ((add.length<=10)||(add.length>=100))
    	{
    	alert("address should be minlength 10 and maximumlength 100");
    	document.registration.address.focus();
    	return false;
    	}
    	var phone=document.registration.num.value;  
    	if (phone=="")
    		{
    		alert("please enter phone number");
    		document.registration.num.focus();
    		return false;
    		}
    	if (phone.length!=10)
    	{
    	alert("phone number length should be 10");
    	document.registration.num.focus();
    	return false;
    	}
    	var email=document.registration.mail.value;  
    	if (email=="")
    		{
    		alert("please enter mail Id");
    		document.registration.mail.focus();
    		return false;
    		}
    	
    	var userId=document.registration.uId.value;  
    	if (userId=="")
    		{
    		alert("please enter userId");
    		document.registration.uId.focus();
    		return false;
    		}
    	var password=document.registration.pwd.value;
    	if(password=="")
    		{
    		alert("please enter password");
    		document.registration.pwd.focus();
    		return false;
    		}
    	/* if ((password.length<=7)||(password.length>=12))
    		{
    		alert("password length should be minimum=7,maximum=12 characters should be atleast one uppercase,one lowercase,one special character,one numeric value");
    		document.registration.pwd.focus();
    		return false;
    		} */
    }
    
    </script>
</head>
<style>
    .mySlides {
        display: none;
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
        background-color: #e5e5e5;
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
<body style="font-family:Verdana;color:#aaaaaa;" >


    <div style="background-color:#FFFFFF; padding:10px;text-align:center; ">
        <a href="Home.jsp"><img alt="img is not loaded" src="apple-icon-144x144.png" style="float: left;"></a>
        <font color="#4CAF50">
            <h1> GoHotels</h1>
            <h5>&nbsp;&nbsp;&nbsp;&nbsp;Turning moments into memories for our guests</h5>
        </font>
    </div>

    <div style="overflow:auto">
        <div class="menu">

            <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
            <div id="id01" class="modal">

                <form class="modal-content animate" method="post" action="loginValidation" name="login" onsubmit="return validateLogin()">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
                        <img src="img_avatar.png" alt="Avatar" class="avatar">
                    </div>

                    <div class="container">
                        <label><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="user" required>

                        <label><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="pwd" required>

                        <button type="submit" onclick="return validateLogin()">Login</button>
                        <input type="checkbox" checked="checked"> Remember me
                    </div>
                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                    </div>
                </form>
            </div> <br />

            <!-- Registration -->
            <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Registration</button>

            <div id="id02" class="modal">

                <form class="modal-content animate" method="post" action="registration" name="registration" onsubmit="validateRegister()">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">×</span>
                        <img src="img_avatar.png" alt="Avatar" class="avatar">
                    </div>

                    <div class="container">
                        <label><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="user" required>

                        <label><b>Address</b></label>
                        <input type="text" placeholder="Enter Address" name="address" required>

                        <label><b>Phone Number</b></label>
                        <input type="number" placeholder="Enter Phone Number" name="num" required>

                        <label><b>Email</b></label>
                        <input type="email" placeholder="Enter Email Id" name="mail" required>

                        <label><b>User Id</b></label>
                        <input type="text" placeholder="Enter User Id" name="uId" required>

                        <label><b>Password</b></label>
                        <input type="password" placeholder="Enter password" name="pwd" pattern="[A-Za-z0-9_*&^%$#@!]*">

                        <label>Role</label>
                        <input type="radio" name="role" value="admin" required>Admin
                        <input type="radio" name="role" value="customer" required>Customer

                        <button type="submit" onclick="validateRegister()">Register</button>
                        <p><b>${success }</b> </p>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
                    </div>
                </form>
            </div>
            <br />
            <!-- contact us -->
            <button onclick="document.getElementById('id03').style.display='block'" style="width:auto;">Contact details</button>
            <div id="id03" class="modal">
                <div class="modal-content animate">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">×</span>
                        <img src="img_avatar.png" alt="Avatar" class="avatar">
                    </div>
                    <p>
                        Address:Marine Drive, Mumbai, India<br />
                        Phone number:+91 (954)(654)(6548) | +91 (954)(654)(6549) <br />
                        Fax Number: +91 954-654-6550 <br />
                        <br />
                        Address: Near,Orien Mall, Bangaluru, India<br />
                        Phone number:+91 (954)(654)(6551) | +91 (954)(654)(6552) <br />
                        Fax Number: +91 954-654-6553 <br />
                        <br />
                        Address:Paschim Vihar, Delhi, India<br />
                        Phone number:+91 (954)(654)(6554) | +91 (954)(654)(6555) <br />
                        Fax Number: +91 954-654-6555 <br />
                    </p>
                </div>
            </div> <br />
            <p>Opening Soon in Hyderabad,Pune,Chennai</p>
        </div>
        <div class="main">
        <h2> ${fail }</h2>
            <div class="w3-content w3-section" style="max-width:700px;">
                <img class="mySlides" src="hotel1.jpeg" style="width:100%">
                <img class="mySlides" src="hotel2.jpeg" style="width:100%">
                <img class="mySlides" src="fairmount.jpg" style="width:100%">
                <img class="mySlides" src="hotel3.jpg" style="width:100%">
                <img class="mySlides" src="hotel4.jpg" style="width:100%">
                <img class="mySlides" src="hotel5.jpg" style="width:100%">
                <img class="mySlides" src="hotel6.jpg" style="width:100%">
            </div>
            <h2>About Us</h2>
            <p style=" text-align: justify; text-indent: 100px; line-height: 1.8;"> At GoHotels, our passion is to connect our guests to the very
                best of our destinations. From the beaches of Goa to the deserts of
                the Rajasthan to the snow covered mountains kashmir, our hotels
                offer guests extraordinary places, created by combining unique
                architecture and structure, expressive decor and artistry, and
                magnificent features. Add great service, and the result is an
                unforgettable guest experience. We're proud to welcome you to our
                collection, which includes some of the most iconic hotels in India,
                including The Taj in Mumbai, The Taj Lake Palace in Udaipur, Umaid
                Bhawan Palace in Jodhpur and Leela Palace in Delhi. We invite you to
                think of these as your home base for all of your adventures. Today,
                we have added many modern city-center properties to our collection,
                with core locations from Gurgaon-Haryana to Bangalore that allow you
                to join the bustle of the city and enjoy the culture, flavors and
                sounds of local life. And, if urban excitement isn't on your
                itinerary, our resorts welcome you to some of the most breathtaking
                and pristine areas in India, where you can bask on an inviting
                beach, challenge yourself on a stunning golf course and feel the
                rush of fresh powder on an exhilarating ski hill. While we aim to
                give you an authentic experience of the locale whenever you stay
                with us, we also guarantee consistent high standards throughout our
                collection of hotels and resorts.Features such as our Le Club
                AccorHotels recognition and preferences program, our GoHotels Gold
                exclusive lifestyle experience and our business centers are all
                ready for your convenience. Make GoHotels your personal gateway to
                exploring India's most extraordinary places and to having your most
                memorable experiences.</p>
        </div>
        <div class="right">
            <h2>Best Offers </h2>
            <h4>Special offers on Paytm, PhonePe, Google pay
            </h4>
            <h3>Upto 40% Off</h3>
            <h2>Special Offers for couples</h2>
            <h3>upto 50% Off </h3>
            <p></p>
        </div>
    </div>
    <div style="background-color:#e5e5e5;text-align:center;padding:10px;margin-top:7px;">© copyright GoHotels.com</div>
    <script>
        var myIndex = 0;
        carousel();
        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) {
                myIndex = 1
            }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 2000); // Change image every 2 seconds
        }
        var modal = document.getElementById('id01');
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
        var modal1 = document.getElementById('id02');
        window.onclick = function(event) {
            if (event.target == modal1) {
                modal1.style.display = "none";
            }
        }
        var modal2 = document.getElementById('id03');
        window.onclick = function(event) {
            if (event.target == modal2) {
                modal2.style.display = "none";
            }
        }

       /*  function noBack() {
            window.history.forward()
        }
        noBack();
        window.onload = noBack;
        window.onpageshow = function(evt) {
            if (evt.persisted) noBack()
        }
        window.onunload = function() {
            void(0)
        }  */
    </script>
</body>
</html>
