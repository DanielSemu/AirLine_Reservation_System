<%-- 
    Document   : admin_add_flight
    Created on : Feb 6, 2022, 3:57:56 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Flight</title>
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

        <form class="registerclass" onsubmit="return validate();" action="addflight" method="post">
            <center>

                <div>
                    <div class="form-group">
                        <div  class="col-sm-4"></div>
                        <div  class="col-sm-4">
                            <h2 style="text-align: center">Add Flight Info</h2>
                        </div>
                        
                        <div class="form-group" style=" display: flex;">
                            <label for="source" class="col-sm-3 control-label">Flight_no:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control"  name="flightno" required minlength="4" title="Please enter flight no" >
                            </div>

                        </div>

                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Flight Name:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="flightname" required minlength="4" title="Please enter flight name">
                            </div>
                          </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Source City:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="source" required title="Please enter source ">
                            </div>
                        </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Destination_City:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="destination" required title="Please enter destiny">
                            </div>
                        </div>
                           <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Airport Name:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="airportname" required minlength="6" title="Please enter airport name">
                            </div>
                        </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Date:</label>
                            <div class="col-sm-8">

                                <input type="date" class="form-control" name="date" required title="please enter date of flight">
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Time:</label>
                            <div class="col-sm-8">

                                <input type="time" class="form-control" name="time" required title="Please enter time of flight">
                            </div>
                        </div>
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Ticket Price:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="ticketprice" name="ticketprice" required minlength="3" title="Please enter price of fligth">
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Available Seat</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="seat" required minlength="1" title="add number of seats">
                            </div>
                        </div>
                            
                            <div class="form-group" style="display: flex;">
                            <label for="destiny" class="col-sm-3 control-label">Comment:</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="comment" required minlength="4" title="add any comment">
                            </div>
                        </div>
                            
                        
                    </div>
                    <div class="form-group" >
                        <div class="col-sm-offset-3 col-sm-8">

                            <button class="btn-success" type="submit"  name="add" value="addflight">ADD FLIGHT</button>
                        </div>
                    </div>
                    
                </div>
            </center>
        </form>


    </body>
</html>
