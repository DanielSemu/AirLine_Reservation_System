<%-- 
    Document   : Registeruser
    Created on : Feb 3, 2022, 3:51:33 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
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
       <jsp:include page="Navigationbar.jsp"></jsp:include>
    <center>
        <form class="registerclass" onsubmit="return validate();" action="registeruser" method="post">
            <h2 style="font-size: 25px">Registration Page</h2>
            <div>
                <ul>
                    <li><label style="font:bold; color: ghostwhite">First Name</label></li>
                    <li><input type="text" name="fname" required minlength="4" title="Please enter your Name"></li>
                    <li><label style="font:bold; color: ghostwhite">Last Name</label></li>
                    <li><input type="text" name="lname" required minlength="4" title="Please enter your Las name"></li>
                    <li><label style="font:bold; color: black">Email Address</label></li>
                    <li><input type="text" name="email" required title="Please enter your email address with correct pattern" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"></li>
                    <li><label style="font:bold; color: ghostwhite">Passport Id</label></li>
                    <li><input type="text" name="passport" required title="Please enter your passport Id"></li>
                    <li><label style="font:bold; color: ghostwhite">Password</label></li>
                    <li><input type="password" name="password" required minlength="6" title="Please enter your Password"></li><!-- comment -->
                    <li><label style="font:bold; color: ghostwhite">Confirm Password</label></li>
                    <li><input type="password" name="cpassword" required title="confirm your Password"></li>
                </ul>
                <u1>
                    <li>
                        <button class="bg-success" type="submit" onClick="return validate()" name="regbtn" value="Register">Register</button>
<!--                    <button type="submit" name="regbtn" value="Cancel"">Cancel</button>-->
                    
                    </li>
                </u1>
            </div>
            
        </form>
        
    </center>
    </body>
</html>
