/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/addflight"})
public class addflight extends HttpServlet {
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
        String comment1=request.getParameter("comment");
        try {
            DBConnection dbcon=new DBConnection();
            Connection con=dbcon.Connection();
            
            String sql1="select * from flight_information where Flight_no='"+fligthno1+"'";
            PreparedStatement ps=con.prepareStatement(sql1);
           
            java.sql.ResultSet rs= ps.executeQuery();
            
            if(rs.next())
            {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registeruser</title>");    
            out.println("<link rel=\"stylesheet\" href=\"css/navbar.css\"/>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("/admin_home_page.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>this person is already registerd</h1>");
             
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
            }
            //(FirstName,LastName, Email,Passport,Password	)
            else{
                Statement state=con.createStatement();
             String sql = "INSERT INTO flight_information VALUES ('"+fligthno1+"','"+flightname1+"','"+source1+"','"+destination1+"','"+airportname1+"','"+date1+"','"+time1+"','"+ticketprice1+"','"+comment1+"')";
             state.executeUpdate(sql);
             out.println("Succefully registered");
             String proximaPage="/admin_add_flight.jsp";
             RequestDispatcher rd=request.getRequestDispatcher(proximaPage);
             rd.forward(request, response);
            }
            
            
            
            
            
            
            
            /* TODO output your page here. You may use following sample code. */

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registeruser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registeruser.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
