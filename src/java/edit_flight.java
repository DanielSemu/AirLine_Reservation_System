/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/edit_flight"})
public class edit_flight extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fligthno1=request.getParameter("flightno");
        String flightname1=request.getParameter("flightname");
        String source1=request.getParameter("source");
        String destination1=request.getParameter("destination");
        String airportname1=request.getParameter("airportname");
        String date1=request.getParameter("date");
        String time1=request.getParameter("time");
        String ticketprice1=request.getParameter("ticketprice");
        String seats=request.getParameter("seat");
        String comment1=request.getParameter("comment");
        try{
            DBConnection dbcon=new DBConnection();
            Connection con=dbcon.Connection();
            Statement state=con.createStatement();
       
             String sql = "UPDATE flight_information set Flight_no='"+fligthno1+"',Flight_name='"+flightname1+"',Source_city='"+source1+"',Destination_city='"+destination1+"',Airport_Name='"+airportname1+"',Date='"+date1+"',Time='"+time1+"',Ticket_Price='"+ticketprice1+"',Seat='"+seats+"',Description='"+comment1+"'where Flight_no='"+fligthno1+"' ";
             state.executeUpdate(sql);
              out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registeruser</title>");    
            out.println("<link rel=\"stylesheet\" href=\"css/navbar.css\"/>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("/Adminflight_view.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>Fligth Succesfully Updated</h1>");
             
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(edit_flight.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(edit_flight.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   

}
