<%-- 
    Document   : Adminflight_view
    Created on : Feb 3, 2022, 11:39:42 PM
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
                    <h2 style="text-align: center">Users</h2>
                </div>
            </div>
        </center>
        <!--            <div class="col-sm-2">
                        <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
                    </div>-->
        <table class="table table-hover">
            <thead>
                <tr>  
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Email Address</th>
                    <th scope="col">Passport</th>
                    
                    <th scope="col">Remove</th>
                   

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
                //String query = "SELECT  Flight_no, Flight_name, Source_city,Destination_city, Date, Time, Airport_Name, Ticket_Price,Description FROM  flight_information";
                String query = "select * from user";
                pst = con.prepareStatement(query);
                rs = pst.executeQuery();
                while (rs.next()) {
                    // String flight=rs.getString("Flight_no");
%>
            <tr>
                <th scope="row"><%= rs.getString("FirstName")%></th>
                <td><%=rs.getString("LastName")%></td>
                <td><%=rs.getString("Email")%></td>
                <td><%=rs.getString("Passport")%></td>
                
                <td>
                    
                    <a class="btn btn-danger" href="admin_remove_flight.jsp?id=<%=rs.getString("Passport")%>" role="button" onclick="return confirm('Are you sure you want to delete?')">Remove</a>
                </td>               
            </tr>
            <% }%>
        </tbody>
    </table>

</body>
</html>