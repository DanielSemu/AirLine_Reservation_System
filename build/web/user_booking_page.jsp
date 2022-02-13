
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
        <jsp:include page="user_navigation_bar.jsp"></jsp:include>
        <%

            PreparedStatement pst;
            ResultSet rs;

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");
            String id1 = request.getParameter("id");
            //String id = "ET02";
            // String id = request.getParameter("name");

            pst = con.prepareStatement("select * from flight_information where Flight_no = '" + id1 + "'");
            //pst.setString(1, id);
            rs = pst.executeQuery();

            if (rs.next()) {

        %>  

        <form action="user_pay_money" method="post">
            <center>
                <div>
                    <div class="form-group">
                        <div  class="col-sm-4"></div>
                        <div  class="col-sm-4">
                            <h2 style="text-align: center">Flight Details</h2>
                        </div>
                        <div class="form-group" style=" display: flex;">
                            <label for="source" class="col-sm-3 control-label">Flight_no:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control"  name="flightno" value="<%= rs.getString("Flight_no")%>" readonly>
                            </div>

                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Flight Name:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="flightname" value="<%= rs.getString("Flight_name")%>"readonly>
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Source City:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="source" value="<%= rs.getString("Source_city")%>" readonly>
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Destination_City:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="destination" value="<%= rs.getString("Destination_city")%>"readonly>
                            </div>
                        </div>

                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Airport Name:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="airportname" value="<%= rs.getString("Airport_Name")%>"readonly>
                            </div>
                        </div>

                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Date:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="date" value="<%= rs.getString("Date")%>"readonly>
                            </div>
                        </div>

                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Time:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="time" value="<%= rs.getString("Time")%>"readonly>
                            </div>
                        </div>

                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Ticket Price:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="ticketprice" value="<%= rs.getString("Ticket_Price")%>"readonly>
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Available seats</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="Aseat" value="<%= rs.getString("Seat")%>"readonly>
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Comment:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="comment" value="<%= rs.getString("Description")%>"readonly>
                            </div>
                        </div>

                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Number of Seats:</label>
                            <div class="col-sm-8">

                                <select class="form-control" name="seats">
                                    <!--                    (please select:)-->
                                    <option value="1" selected>1 </option>
                                    <option value="2">2 </option>
                                    <option value="3">3 </option>
                                    <option value="4">4 </option>
                                    <option value="5">5 </option>
                                   
                                </select>
                            </div>
                        </div>

                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Class:</label>
                            <div class="col-sm-8">

                                <select class="form-control" name="classs">
                                    <!--                    (please select:)-->
                                    <option value="Regular" selected>Regular Class</option>
                                    <option value="first">First Class</option>
                                    <option value="second">Second Class</option>
                                    <option value="economic">Economic Class</option>
                                    <option value="bussines">Business Class</option>
                                </select>
                            </div>
                        </div>

                        <% }%>
                    </div>
                    <div class="form-group" >
                        <div class="col-sm-offset-3 col-sm-8">

                            <button class="btn-success" type="submit"  name="book" value="Book">Book Ticket</button>
                        </div>
                    </div>
                    
                </div>
            </center>
        </form>
<!--        <form action="user_pay_money">  
            <div>
                <%

                    String seat1 = request.getParameter("seats");
                    seat1 = "1";
                    String class01 = request.getParameter("classs");

                    String price1 = request.getParameter("ticketprice");
                    price1 = "1";
                    float seat = Float.parseFloat(seat1);
                    float price = Float.parseFloat(price1);
//                             float seat=Float.parseFloat(seat1);
//                             float price2=Float.parseFloat(price1);
//                             float total;
//                            if(class01.equals("Regular Class")){
//                             // total=seat*price2;  
//                            }
//                            else if(class01.equals("First Class")){
//                                
//                            }
//                            else if(class01.equals("Second Class")){
//                                
//                            }
//                            else if(class01.equals("Economic Class")){
//                                
//                            }
//                            else{
//                                
//                            }

                    //String s=Float.toString(total);
                   // out.print(class01);

               // %>  
            </div> 

            <div>
                <ul>
                    <label style="font:bold; color: ghostwhite"> Price :</label>
                    <input type="text" name="comment" value="" placeholder="pay required amount" required="">

                </ul> 
                <ul>
                    <button type="submit" class="btn btn-success"  name="pay" value="pay">Pay</button>
                </ul>
            </div>

        </form>-->


    </body>
</html>
