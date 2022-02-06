<%-- 
    Document   : admin_navigationbar
    Created on : Feb 6, 2022, 3:12:20 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
        <div class="topnav">
            <a class="active" href="admin_home_page.jsp">HomePage</a>
            <a href="Adminflight_view.jsp">Flight_info</a>
            <a href="admin_add_flight.jsp">Add Flight</a>
            <a href="#">Flight Report</a>
            <a href="#">Book Ticket Report</a>
            <a  style="float: right"href="index.jsp">logout</a>

        </div>
    </body>
</html>
