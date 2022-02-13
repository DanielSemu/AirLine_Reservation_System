<%-- 
    Document   : user_flight_view
    Created on : Feb 6, 2022, 3:47:13 AM
    Author     : hp
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Flight Report </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap-theme.min.css" />
        <link rel="stylesheet" type="text/css" href="./bootstrap/css/meu.css" />
        <link rel="stylesheet" href="css/navbar.css"/>
        <link rel="stylesheet" href="bootstrap/css/style.css">
    </head>
     <style>
        body {
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
/*            background-image: url("images/airline.jpg");*/
        }
        .container{
            padding: 80px;
        }
    </style>

    <body>
        <jsp:include page="admin_home_page.jsp"></jsp:include>
    <center>
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Flight Details</h2>
                </div>
            </div>
        </center>
<!--            <div class="col-sm-2">
                <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
            </div>-->
            <table class="table table-hover">
                <thead>
                    <tr>  
                        <th scope="col">Flight_no</th>
                        <th scope="col">User Passport</th>
                        <th scope="col">Source_city</th>
                        <th scope="col">Destination_city</th>
                        <th scope="col">Date</th>
                        <th scope="col">Time</th><!-- <th scope="col">Date</th> -->
                        <th scope="col">Ticket Price</th>
                        <th scope="col">Total Paid</th>
                        <th scope="col">Change</th>
<!--                        <th scope="col">Password</th> -->

                    </tr>
                </thead>
                <tbody>
                    <!<!-- normal java code -->
                <%
                    Connection con;
                    PreparedStatement pst;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");
                    String query = "SELECT  * FROM  flight_report";
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();
                    while (rs.next()) {
                %>
                <tr>
                    <th scope="row"><%= rs.getString("Flight_no")%></th>
                    <td><%=rs.getString("User_passport")%></td>
                    <td><%=rs.getString("Source_city")%></td>
                    <td><%=rs.getString("Destination_city")%></td>
                    <td><%=rs.getString("Date")%></td>
                    <td><%=rs.getString("Time")%></td>
                     <td> <%=rs.getString("Price")%></td>
                     <td><%=rs.getString("Total_payed")%></td>
                     <td><%=rs.getString("Change_amount")%></td>
<%--                    <td><a class="btn btn-success" href="userlogin.jsp?"id=<%=rs.getString("Flight_no")%>" role="button">Book</a></td>--%>
                </tr>
                <% }%>
            </tbody>
        </table>


    </body>
</html>

