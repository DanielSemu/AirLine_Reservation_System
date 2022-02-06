<%-- 
    Document   : admin_login
    Created on : Feb 6, 2022, 3:17:07 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="css/navbar.css"/>
    
        <link rel="stylesheet" href="bootstrap/css/style.css">
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
        <form class="admin_page_logi" action="admin_login_checker" method="post">
        <div><h3>Admin Login Page</h3></div><br><!-- comment -->
        <div class="container2">
            <ul>
                <li>
                    <label>Email Address</label>
                    <input type="text" name="email" required title="please enter your email address before!">
                </li>
            </ul>
            <ul>
                <li>
                    <label>Password</label>
                    <input type="password" name="pass" required="" title="please enter the password before">
                </li>
            </ul>
            <ul>
                <li>
                    <button type="submit" onClick="return validate()" name="lohin" value="Login">Login</button>
                    <button type="submit" name="regbtn" value="Cancel"">Reset</button>
                </li>
            </ul>
        </div>
        </form>
    </center>
    
        <%
        
        
        
        
        %>
    </body>
</html>

