/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UPDATE;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class ProfileUpdate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProfileUpdate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileUpdate at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String susername = request.getParameter("susername");
        String spassword = request.getParameter("spassword");
        String semail = request.getParameter("semail");
        String sfname = request.getParameter("sfname");
        String slname = request.getParameter("slname");
        String suniversity = request.getParameter("suniversity");
        String sdegree = request.getParameter("sdegree");
        String sbatch = request.getParameter("sbatch");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
            PreparedStatement pst = con.prepareStatement("UPDATE student SET email =?, password=?, firstname=?, lastname=?, university=?, degree=?,batch =? WHERE username = "+susername+" ");
            pst.setString(1, semail);
            pst.setString(2, spassword);
            pst.setString(3, sfname);
            pst.setString(4, slname);
            pst.setString(5, suniversity);
            pst.setString(6, sdegree);
            pst.setString(7, sbatch);
            
           int r= pst.executeUpdate();
           if(r>0)
           {
               PrintWriter out=response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Profile Updated');");
                out.println("location='Suserprofile.jsp';");
                out.println("</script>");
           }
        }
        catch(IOException | ClassNotFoundException | SQLException e)
        {
                PrintWriter out=response.getWriter();
                out.println("Error: "+e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
