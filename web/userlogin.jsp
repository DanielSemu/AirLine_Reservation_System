<%-- 
    Document   : userlogin
    Created on : Feb 3, 2022, 10:25:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
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
        <form class="user_page_logi" action="user_login_checker" method="post">
        <div><h3>User Login Page</h3></div><br><!-- comment -->
        <div>
            <ul>
                <li>
                    <label>Email Address</label>
                    <input type="text" name="email">
                </li>
            </ul>
            <ul>
                <li>
                    <label>Password</label>
                    <input type="password" name="pass">
                </li>
            </ul>
            <ul>
                <li>
                    <button type="submit" onClick="return validate()" name="regbtn" value="Register">Login</button>
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
