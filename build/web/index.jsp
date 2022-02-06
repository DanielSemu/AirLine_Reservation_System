<%-- 
    Document   : index
    Created on : Jan 23, 2022, 12:45:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Airline Reservation System</title>
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
        <div class="container">
            <h1>WELCOME TO AIRLINE <br>RESERVATION SYSTEM </h1>
        </div>
    </center>
    </body>
</html>
