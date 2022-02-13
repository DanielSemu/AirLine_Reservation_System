<%-- 
    Document   : user_flight_view_after_login
    Created on : Feb 11, 2022, 9:58:24 AM
    Author     : hp
--%>

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
        <title>Admin Flight Info</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="css/navbar.css"/>
    </head>
    <style>
        body {
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            /*           background-image: url("images/airline.jpg");*/
        }
        .container{
            padding: 80px;
        }
    </style>

    <body>
        <jsp:include page="user_navigation_bar.jsp"></jsp:include>
            <form action="" method="get">
                <center>
                    <div>
                        <div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4">
                                <h2 style="text-align: center">Flight Details</h2>
                            </div>
                            <div class="form-group" style=" display: flex;">
                                <label for="source" class="col-sm-3 control-label">Source City:</label>
                                <div class="col-sm-8">

                                    <input type="text" class="form-control"  name="soure_c" required title="please enter source city to search" placeholder="source...">
                                </div>

                            </div>
                            <div class="form-group" style="display: flex;">
                                <label for="destiny" class="col-sm-3 control-label">Destination City:</label>
                                <div class="col-sm-8">

                                    <input type="text" class="form-control" name="destnation_c" required title="please enter dstination city to search" placeholder="destination...">
                                </div>
                            </div>
                        </div>
                        <div class="form-group" >
                            <div class="col-sm-offset-3 col-sm-8">

                                <button type="submit" class="btn btn-warning" onclick="assign()" name="search" value="search">Search</button>

                            </div>
                        </div>

                    </div>
                </center>
            </form>

            <table class="table table-hover ">
                <!-- table head is missed here -->
                <tbody>
                    <!-- normal java code -->
                <%

                    String source = request.getParameter("soure_c");
                    String destination = request.getParameter("destnation_c");
                
                    Connection con;
                    PreparedStatement pst;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");

                    String query = "SELECT * FROM flight_information WHERE Source_city='" + source + "' AND Destination_city='" + destination + "'";
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();
               
                    while (rs.next()) {
                        // String flight=rs.getString("Flight_no");
                %>
                <tr>
                    <th scope="row"><%= rs.getString("Flight_no")%></th>
                    <td><%=rs.getString("Flight_name")%></td>
                    <td><%=rs.getString("Source_city")%></td>
                    <td><%=rs.getString("Destination_city")%></td>
                    <td><%=rs.getString("Airport_Name")%></td>
                    <td><%=rs.getString("Date")%></td>
                    <td><%=rs.getString("Time")%></td>

                    <td> <%=rs.getString("Ticket_Price")%></td>
                    <td>
                        <a class="btn btn-success" href="user_booking_page.jsp?id=<%=rs.getString("Flight_no")%>" role="button">Book_Ticket</a> 
                    </td>               
                </tr>
                <% }%>
              


            </tbody>
        </table>
        <table class="table table-hover">
            <thead>
                <tr>  
                    <th scope="col">Flight_no</th>
                    <th scope="col">Flight_name</th>
                    <th scope="col">Source_city</th>
                    <th scope="col">Destination_city</th>
                    <th scope="col">Airport_Name</th>
                    <th scope="col">Date</th>
                    <th scope="col">Time</th><!-- <th scope="col">Date</th> -->

                    <th scope="col">Ticket Price</th>
                    <th scope="col">Available Seats</th>
                    <th scope="col">Book</th>

                </tr>
            </thead>
            <tbody>
                <!<!-- normal java code -->
                <%
                    //                Connection con;
                    //                PreparedStatement pst;
                    //                ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");
                    String query1 = "SELECT  * FROM  flight_information";
                    pst = con.prepareStatement(query1);
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        // String flight=rs.getString("Flight_no");
%>
                <tr>
                    <th scope="row"><%= rs.getString("Flight_no")%></th>
                    <td><%=rs.getString("Flight_name")%></td>
                    <td><%=rs.getString("Source_city")%></td>
                    <td><%=rs.getString("Destination_city")%></td>
                    <td><%=rs.getString("Airport_Name")%></td>
                    <td><%=rs.getString("Time")%></td>
                    
                    <td><%=rs.getString("Date")%></td>
                    

                    <td> <%=rs.getString("Ticket_Price")%></td>
                    <td> <%=rs.getString("Seat")%></td>
                    <td>
                        <a class="btn btn-success" href="user_booking_page.jsp?id=<%=rs.getString("Flight_no")%>" role="button">Book_Ticket</a> 
                    </td>               
                </tr>
                <% }%>
            </tbody>
        </table>

    </body>
</html>
