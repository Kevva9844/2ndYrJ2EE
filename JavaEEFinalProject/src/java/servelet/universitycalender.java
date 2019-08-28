/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servelet;

import bean.universitycalenderinsertdb;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dinesh
 */
@WebServlet(name = "universitycalender", urlPatterns = {"/universitycalender"})
public class universitycalender extends HttpServlet {



    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet universitycalender</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet universitycalender at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title= request.getParameter("title");
        String Startdate= request.getParameter("Startdate");
        String Enddate= request.getParameter("Enddate");
        String description= request.getParameter("descr");
        
        PrintWriter out=response.getWriter();
        universitycalenderinsertdb rb = new universitycalenderinsertdb();
        
        try {
            System.out.println(title+"   "+Startdate+"   "+Enddate+"   "+description);
            rb.input(title,Startdate,Enddate,description);
           response.sendRedirect("universitycalendar.jsp");
        } 
        catch (Exception e) {
           out.println(e);
        }
         
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
