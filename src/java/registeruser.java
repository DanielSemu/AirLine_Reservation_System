/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.mysql.jdbc.ResultSet;
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
@WebServlet(urlPatterns = {"/registeruser"})
public class registeruser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fname1=request.getParameter("fname");
        String lname1=request.getParameter("lname");
        String email1=request.getParameter("email");
        String passport1=request.getParameter("passport");
        String password1=request.getParameter("password");
        try {
            DBConnection dbcon=new DBConnection();
            Connection con=dbcon.Connection();
            
            String sql1="select * from user where Passport='"+passport1+"'";
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
            request.getRequestDispatcher("/Navigationbar.jsp").include(request, response);
            out.println("<center>");
            out.print("<h1>this person is already registerd</h1>");
             
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
            }
            else{
                Statement state=con.createStatement();
             String sql = "INSERT INTO user(FirstName,LastName, Email,Passport,Password	) VALUES ('"+fname1+"','"+lname1+"','"+email1+"','"+passport1+"','"+password1+"')";
             state.executeUpdate(sql);
             out.println("Succefully registered");
             String proximaPage="/Registeruser.jsp";
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
