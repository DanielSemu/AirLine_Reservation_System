<%-- 
    Document   : admin_login
    Created on : Feb 6, 2022, 3:17:07 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
            background-image: url("images/airline.jpg");
        }
        .container{
            padding: 80px;
        }
    </style>
    <body>
        <jsp:include page="Navigationbar.jsp"></jsp:include>
        
          <form class="admin_page_logi" action="login_checker" method="post">
            <fieldset style="width: 500px; margin:auto; padding: 20px; margin-top: 150px; border-bottom-color:red; ">

            
                <!--<div><h3 style="color: yellow;size: 50px;font: bold">Admin Login Page</h3></div><br> comment -->
                <div class="form-group" style=" display: flex;">
                    <label for="firstName" class="col-sm-3 control-label">User Name:</label>
                    <div class="col-sm-8">

                        <input type="text" class="form-control" id="email" name="email" required title="please enter your email address before!" placeholder="email address...">
                    </div>
                </div>
                <div class="form-group" style="display: flex;">
                    <label for="pass" class="col-sm-3 control-label">Password:</label>
                    <div class="col-sm-8">

                        <input type="password" class="form-control" value="" placeholder="password..." name="pass" required="" title="please enter the password before">
                    </div>
                </div>
                <div class="form-group" >
                    <div class="col-sm-offset-3 col-sm-8">

                        <button type="submit" class="btn btn-default" onClick="return validate()" name="login" value="Login">Login</button>
                   
                    </div>
                </div>
                <!-- <button type="submit" name="regbtn" value="Cancel"">Reset</button>-->
                
                 </fieldset>
            </form>
        

    <%


    %>
</body>
</html>

