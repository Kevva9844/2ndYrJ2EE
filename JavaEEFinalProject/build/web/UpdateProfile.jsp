<%-- 
    Document   : UpdateProfile
    Created on : Jun 3, 2019, 10:17:31 PM
    Author     : Asus
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
               
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Profile Updated');");
                out.println("location='Suserprofile.jsp';");
                out.println("</script>");
           }
        }
        catch(IOException | ClassNotFoundException | SQLException e)
        {
                
                out.println("Error: "+e);
        }
        %>
    </body>
</html>
