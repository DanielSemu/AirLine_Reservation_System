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
@WebServlet(urlPatterns = {"/admin_login_checker"})
public class admin_login_checker extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String emaila_ddress=request.getParameter("email");
        String password=request.getParameter("pass");
        try {
            DBConnection db=new DBConnection();
            Connection con=db.Connection();
            String sql="select* from admin where Email=? and Password=?";
            
            PreparedStatement pst=con.prepareStatement(sql);
            pst.setString(1, emaila_ddress);
            pst.setString(2, password);
            ResultSet rs=pst.executeQuery();
            if(rs.next()){
                String proximaPage="/admin_home_page.jsp";
             RequestDispatcher rd=request.getRequestDispatcher(proximaPage);
             rd.forward(request, response);
            }
            else{
                out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet user_login_checker</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>login failed</h1>");
            out.println("</body>");
            out.println("</html>");
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(user_login_checker.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(user_login_checker.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
