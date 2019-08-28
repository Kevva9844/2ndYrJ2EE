/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBconnection;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 *
 * @author ASHMINI
 */
@WebServlet(name = "sendData5", urlPatterns = {"/sendData5"})
@MultipartConfig
public class sendData5 extends HttpServlet {
  
 Connection connection = null;
    private static final String SAVE_DIR ="images";
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
            out.println("<title>Servlet sendData</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sendData at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String savePath = "C:\\Users\\Asus\\Documents\\NetBeansProjects\\JavaEEFinalProject\\web\\images" + File.separator +SAVE_DIR;
        String Etitle=request.getParameter("title");
        String description=request.getParameter("description");
        String date=request.getParameter("date");
        String contact=request.getParameter("contactNo");
        String photo=request.getParameter("photo");
        Part part = request.getPart("photo");
        String filename = extractFileName(part);
        String imgPath = "C:\\Users\\Asus\\Documents\\NetBeansProjects\\JavaEEFinalProject\\web\\images"+photo;
        
         try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            //?useSSL=true
                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject", "root", "");
           
                        String filePath = savePath + File.separator+ filename;
                       
                        copyFile(filename,part.getContentType(),part.getInputStream());
                        PreparedStatement pst = connection.prepareStatement(" insert into event (title,description,date,imgName,contact_no,imgPath) values('"+Etitle+"','"+description+"','"+date+"','"+filename+"','"+contact+"','"+filePath+"')");
            
                        
                        int rs=pst.executeUpdate();
            if(rs>0)
        {
            PrintWriter out=response.getWriter();
            response.sendRedirect("Uviewevent.jsp");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Registration Successfull!..');");
            out.println("</script>");
            
        }
        
        else
        {
            PrintWriter out=response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert(Something went wrong');");;
            out.println("</script>");
        }
             
        }
        catch(IOException | SQLException e)
        {
            
        } catch (ClassNotFoundException ex) {
             Logger.getLogger(sendData5.class.getName()).log(Level.SEVERE, null, ex);
         }
    
       
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
     private String extractFileName(Part part) {
         
        String contenDisp = part.getHeader("content-disposition");
        String [] items = contenDisp.split(";");
        for (String s : items)
        {
            if (s.trim().startsWith("filename"))
            {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
        
    }
     public static void copyFile(String fileName,String fileType, InputStream in) 
    {

       try {
       //relativeWebPath is the path to the folder you created in your web directory
            File file = new File("C:\\Users\\Asus\\Documents\\NetBeansProjects\\JavaEEFinalProject\\web\\images"+"\\"+fileName);




          try ( // write the inputStream to a FileOutputStream
                  OutputStream out = new FileOutputStream(new File("C:\\Users\\Asus\\Documents\\NetBeansProjects\\JavaEEFinalProject\\web\\images" + "\\"+file.getName()))) {
              int read = 0;
              byte[] bytes = new byte[1024];

              while ((read = in.read(bytes)) != -1) {
                  out.write(bytes, 0, read);
              }

              in.close();
              out.flush();

          }


        } catch (IOException e) {
            System.out.println(e);
        }

    }
}
