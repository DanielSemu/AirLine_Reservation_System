<%-- 
    Document   : admin_remove_flight
    Created on : Feb 10, 2022, 9:46:27 PM
    Author     : hp
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Flight</title>
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
        <%

                PreparedStatement pst;
               

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");
                    String id1=request.getParameter("id");
                //String id = "ET02";
               // String id = request.getParameter("name");

                pst = con.prepareStatement("delete  from flight_information where Flight_no = '"+id1+"'");
               //pst.setString(1, id);
                 pst.executeUpdate();
            %>  
            <h1>Removed Successfully</h1>
    </body>
</html>
