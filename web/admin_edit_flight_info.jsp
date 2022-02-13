<%-- 
    Document   : admin_edit_flight_info
    Created on : Feb 8, 2022, 2:38:05 AM
    Author     : hp
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
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
        <jsp:include page="admin_home_page.jsp"></jsp:include>
    
        
        <%

                PreparedStatement pst;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");
                    String id1=request.getParameter("id");
                //String id = "ET02";
               // String id = request.getParameter("name");

                pst = con.prepareStatement("select * from flight_information where Flight_no = '"+id1+"'");
               //pst.setString(1, id);
                rs = pst.executeQuery();

                if (rs.next()) {

            %> 
            <form class="registerclass" onsubmit="return validate();" action="edit_flight" method="post">
            <center>
                        
                <div>
                    <div class="form-group">
                        <div  class="col-sm-4"></div>
                        <div  class="col-sm-4">
                            <h2 style="text-align: center">Edit Flight Info</h2>
                        </div>
                       
                    
                        <div class="form-group" style=" display: flex;">
                            <label for="source" class="col-sm-3 control-label">Flight_no:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control"  name="flightno" required minlength="4" title="Please enter flight no" value="<%= rs.getString("Flight_no")%>">
                            </div>

                        </div>

                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Flight Name:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="flightname" required minlength="4" title="Please enter flight name" value="<%= rs.getString("Flight_name")%>">
                            </div>
                          </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Source City:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="source" required title="Please enter source" value="<%= rs.getString("Source_city")%>" >
                            </div>
                        </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Destination_City:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="destination" required title="Please enter destiny" value="<%= rs.getString("Destination_city")%>">
                            </div>
                        </div>
                           <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Airport Name:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="airportname" required minlength="6" title="Please enter airport name" value="<%= rs.getString("Airport_Name")%>">
                            </div>
                        </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Date:</label>
                            <div class="col-sm-8">

                                <input type="date" class="form-control" name="date" required title="please enter date of flight" value="<%= rs.getString("Date")%>">
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Time:</label>
                            <div class="col-sm-8">

                                <input type="time" class="form-control" name="time" required title="Please enter time of flight"value="<%= rs.getString("Time")%>">
                            </div>
                        </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Ticket Price:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="ticketprice" name="ticketprice" required minlength="3" title="Please enter price of fligth" value="<%= rs.getString("Ticket_Price")%>">
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Available Seat</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="seat" required minlength="1" title="add number of seats"value="<%= rs.getString("Seat")%>">
                            </div>
                        </div>
                            
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Comment:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="comment" required minlength="4" title="add any comment" value="<%= rs.getString("Description")%>">
                            </div>
                        </div>
                            
                        
                    </div>
                     <% }%>
                    <div class="form-group" >
                        <div class="col-sm-offset-3 col-sm-8">
                            <button class="btn-success" type="submit"  name="regbtn" value="update">UPDATE</button>
                        </div>
                    </div>
                    
                </div>
            </center>
        </form>
        
    
    </body>
</html>
