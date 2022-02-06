<%-- 
    Document   : admin_editflightinfo
    Created on : Feb 3, 2022, 11:56:10 PM
    Author     : hp
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>


<html>
    <head>    
        <title>Customer Editing form</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>

    <style>
        body {
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            background-image: url("image/airline.jpg");
        }
    </style>

    <body>

        <%

            Connection con;
            String msg = "";
            String color = "";

            if (request.getMethod().compareToIgnoreCase("post") == 0) {
                try {

                    String LastName = request.getParameter("fname");
//                    String uname = request.getParameter("uname");
                    String Email = request.getParameter("email");
                    String Passport = request.getParameter("pnumber");
                    String Password = request.getParameter("address");
                    String FirstName = request.getParameter("password");

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");
                    String query = "update user set LastName = ?, Email= ?,   Passport =? ,Password= ?where FirstName = ?";

                    PreparedStatement pst = con.prepareStatement(query);

                    pst.setString(1, LastName);
                    pst.setString(2, Email);
                    pst.setString(3, Passport);
                    pst.setString(4, Password);
                    pst.setString(5, FirstName);
//                    pst.setString(6, uname);

                    pst.executeUpdate();

                    color = "green";
                    msg = "Customer Updated Succesfully";

                } catch (Exception ex) {
                    ex.printStackTrace();
                    color = "red";
                    msg = "Error Occured";
                }
            }
        %>    



        <div class="form-group col-12 p-0">

            <h4 style="color:<%= color%>"><%= msg%></h4>
        </div>

        <form id="form" method="post" action="admin_editflightinfo.jsp" class="form-horizontal">

            <%

                PreparedStatement pst;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/airline_reservation", "root", "");

                String id = request.getParameter("uname");

                pst = con.prepareStatement("select * from user where FirstName = ?");
                pst.setString(1, id);
                rs = pst.executeQuery();

                while (rs.next()) {
                }

            %>  

            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Customer Details</h2>
                </div>
            </div>
            <hr/>
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4 mx-auto">
                    <label >Full Name</label>
                    <input type="text" name="fname" class="form-control" id="fname" value="<%= rs.getString("FirstName")%>">
                </div>
            </div>

            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4 mx-auto">
                    <label>User Name</label>


                    <input type="text" name="uname" class="form-control" id="uname" value="<%= rs.getString("LastName")%>">
                </div>
            </div>

            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4 mx-auto">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" id="email" value="<%= rs.getString("Email")%>">
                </div>
            </div>
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4 mx-auto">
                    <label>Phone Number</label>
                    <input type="number" name="pnumber" class="form-control" id="pnumber" value="<%= rs.getString("Passport")%>">
                </div>
            </div>     

            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4 mx-auto">
                    <label>Address:</label>
                    <input type="text" name="address" class="form-control" id="address" value="<%= rs.getString("Password")%>">
                </div>
            </div>
<!--
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4 mx-auto">
                    <label>Password</label>
<input type="password" name="password" class="form-control" id="password" value="<%--<%= rs.getString("password")%>">--%>
                </div>
            </div>-->

            <br/>

            <div class="form-group" align="right">

                <div class="col-sm-6">
                    <div class="col-sm-2">
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
                    </div>
                    <div class="col-sm-4">
                    </div>

                </div>
            </div>

            <% }%>
        </form>
        <div class="col-sm-12"  align="right">
            <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
        </div>
    </body>
</html>