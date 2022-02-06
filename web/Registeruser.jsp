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
        <link rel="stylesheet" href="css/navbar.css"/>
       <%--    <script type="text/javascript" src="link">
            function validate(){
                var fname1=document.registeruser.fname.value;
                if(fname1==""){
                    alert("please enter firstname");
                    document.registeruser.fname.focus();
                    return flase;
                }
                var lname1=document.registeruser.lname.value;
                else if(lname1==""){
                    alert("please enter lastname");
                    document.registeruser.lname.focus();
                    return flase;
                }
                var email1=document.registeruser.email.value;
                else if(email1==""){
                    alert("please enter email address");
                    document.registeruser.email.focus();
                    return flase;
                }
                var passport1=document.registeruser.passport.value;
                else if(passport1==""){
                    alert("please enter passport");
                    document.registeruser.passport.focus();
                    return flase;
                }
                var password1=document.registeruser.password.value;
                else if(password1==""){
                    alert("please enter password");
                    document.registeruser.password.focus();
                    return flase;
                }
                var cpassword1=document.registeruser.cpassword.value;
                else if(cpassword1 != password1){
                    alert("The password does not much!");
                    document.registeruser.cpassword.focus();
                    return flase;
                }
                else{
                   return flase; 
                }
                    
            }
            
        </script>--%>
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
                    <button type="submit" onClick="return validate()" name="regbtn" value="Register">Register</button>
<!--                    <button type="submit" name="regbtn" value="Cancel"">Cancel</button>-->
                    
                    </li>
                </u1>
            </div>
            
        </form>
        
    </center>
    </body>
</html>
