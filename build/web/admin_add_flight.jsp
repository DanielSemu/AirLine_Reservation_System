<%-- 
    Document   : admin_add_flight
    Created on : Feb 6, 2022, 3:57:56 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
        <link rel="stylesheet" href="css/navbar.css"/>
     
    </head>
    <style>
        body {
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            background-image: url("images/airline.jpg");
        }
        .container{
            padding: 80px;
        }
    </style>
    <body>
       <jsp:include page="admin_home_page.jsp"></jsp:include>
    <center>
        <form class="registerclass" onsubmit="return validate();" action="addflight" method="post">
            <h2 style="font-size: 25px">Add Flight Info</h2>
            <div>
                <ul>
                <%--pattern="(ET+[0-9]--%>
                    <li><label style="font:bold; color: ghostwhite">Flight_no</label></li>
                    <li><input type="text" name="flightno" required minlength="4" title="Please enter your Name" )"></li>
                    <li><label style="font:bold; color: ghostwhite">Flight Name</label></li>
                    <li><input type="text" name="flightname" required minlength="4" title="Please enter your Las name"></li>
                    <li><label style="font:bold; color: black">Source City</label></li>
                    <li><input type="text" name="source" required title="Please enter your email address with correct pattern"></li>
                    <li><label style="font:bold; color: ghostwhite">Destination_City</label></li>
                    <li><input type="text" name="destination" required title="Please enter your passport Id"></li>
                    <li><label style="font:bold; color: ghostwhite">Airport Name</label></li>
                    <li><input type="text" name="airportname" required minlength="6" title="Please enter your Password"></li><!-- comment -->
                    <li><label style="font:bold; color: ghostwhite">Date</label></li>
                    <li><input type="text" name="date" required title="confirm your Password"></li>
                    <li><label style="font:bold; color: ghostwhite">Time</label></li>
                    <li><input type="text" name="time" required minlength="4" title="Please enter your Name"></li>
                    <li><label style="font:bold; color: ghostwhite">Ticket Price</label></li>
                    <li><input type="text" name="ticketprice" required minlength="4" title="Please enter your Name"></li>
                    <li><label style="font:bold; color: ghostwhite">Comment</label></li>
                    <li><input type="text" name="comment" required minlength="4" title="Please enter your Name"></li>
                </ul>
                <u1>
                    <li>
                    <button type="submit" onClick="return validate()" name="regbtn" value="Register">ADD FLIGHT</button>
<!--                    <button type="submit" name="regbtn" value="Cancel"">Cancel</button>-->
                    
                    </li>
                </u1>
            </div>
            
        </form>
        
    </center>
    </body>
</html>
