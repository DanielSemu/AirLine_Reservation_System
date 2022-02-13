/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */


@WebServlet(urlPatterns = {"/user_pay_money"})
public class user_pay_money extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fligthno1 = request.getParameter("flightno");
        String flightname1 = request.getParameter("flightname");
        String source1 = request.getParameter("source");
        String destination1 = request.getParameter("destination");
        String airportname1 = request.getParameter("airportname");
        String date1 = request.getParameter("date");
        String time1 = request.getParameter("time");
        String ticketprice1 = request.getParameter("ticketprice");
        String comment1 = request.getParameter("comment");
        String seat = request.getParameter("seats");
        String Avaseat=request.getParameter("Aseat");
        String class01 = request.getParameter("classs");
        DBConnection db = new DBConnection();
        try {
            Connection con = db.Connection();
            String sql2=("select * from flight_information where Flight_no = '" + fligthno1 + "'");
            //SELECT `Seat` FROM `flight_information` WHERE `Flight_no`='ET01';
            PreparedStatement pst1=con.prepareStatement(sql2);
            ResultSet rs=pst1.executeQuery();
            float availableseat=1;
           if(rs.next()){
              String seat1=rs.getString("Seat");
           // String seat1="3";
              availableseat=Float.parseFloat(seat1);
                  }
            //
            //float availableseat= checkavilable(fligthno1);
            float price = Float.parseFloat(ticketprice1);
            float requiredseats1 = Float.parseFloat(seat);
           
              
           if(availableseat>=requiredseats1){
                      
        float total = 1;
        if (class01.equals("Regular")) {
            total = requiredseats1 * price;
        } else if (class01.equals("first")) {
            //5% above
            price = price + ((5 * price) / 100);
            total = requiredseats1 * price;

        } else if (class01.equals("second")) {
            //10% above
            price = price + ((10 * price) / 100);
            total = requiredseats1 * price;
        } else if (class01.equals("economic")) {
            //15% above
            price = price + ((15 * price) / 100);
            total = requiredseats1 * price;
        } else {
            //20 above
            price = price + ((20 * price) / 100);
            total = requiredseats1 * price;
        }

        String passportid = JOptionPane.showInputDialog("please insert your passport ID before");
        String password = JOptionPane.showInputDialog("please insert your password ").strip();
        //String password1 =JOptionPane
        
            String sql = "select* from user where Passport=? and Password=?";

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, passportid);
            pst.setString(2, password);
            ResultSet rs1 = pst.executeQuery();
            
            if (rs1.next()) {
                String money = JOptionPane.showInputDialog("please insert  " + total + "  Birr to buy Ticekt");
                float money1 = Float.parseFloat(money);
                if (total <= money1) {
                    float difference;
                    difference = money1 - total;
                    //out.print(flightname1);
                    Statement state = con.createStatement();
                     
                     
                    String sql1 = "INSERT INTO flight_report VALUES ('" + fligthno1 + "','" + passportid + "','" + source1 + "','" + destination1 + "','" + date1 + "','" + time1 + "','" + price + "','" + money1 + "','" + difference + "')";
                    state.executeUpdate(sql1);
                    availableseat=availableseat-requiredseats1;
                    //Statement state = con.createStatement();
                    String newavailable=Float.toString(availableseat);
                    String sql22="update flight_information set Seat='" + newavailable + "'where  Flight_no='" + fligthno1 + "' " ;
                     state.executeUpdate(sql22);
                    //out.print("you succesfully enserted" );
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registeruser</title>");    
            out.println("<link rel=\"stylesheet\" href=\"css/navbar.css\"/>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("/user_to_book_ticket.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>You Booked Succesfully Thank you!!</h1>");
            //out.println(seat1);
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
                } else {
                   
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registeruser</title>");    
            out.println("<link rel=\"stylesheet\" href=\"css/navbar.css\"/>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("/user_to_book_ticket.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>you entered less amount than required please try again!!</h1>");
             
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
                }
                
            }
            else {
               //your passwod or passport id is not correct please try again
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registeruser</title>");    
            out.println("<link rel=\"stylesheet\" href=\"css/navbar.css\"/>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("/user_to_book_ticket.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>your passwod or passport id is not correct please try again!!</h1>");
             
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
            }
        }
           else{
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registeruser</title>");    
            out.println("<link rel=\"stylesheet\" href=\"css/navbar.css\"/>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("/user_to_book_ticket.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>We have no available seat as you required please try less value!!</h1>");
            //out.print(availableseat);
            out.println("</center>");
            out.println("</body>");
            out.println("</html>"); 
           }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(user_pay_money.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(user_pay_money.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
