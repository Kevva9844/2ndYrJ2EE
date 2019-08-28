

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Portal</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        <%
            String susername=request.getParameter("susername");
            String semail=request.getParameter("semail");
            String spass=request.getParameter("spassword");
            String sfirstname=request.getParameter("sfirstname");
            String slastname=request.getParameter("slastname");
            String suniversity=request.getParameter("suniversityname");
            String sdegree=request.getParameter("sdegree");
            String sbatch=request.getParameter("sbatch");
            try
            {
                
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
            Statement st=con.createStatement();
            
            String query="insert into student(username,email,password,firstname,lastname,university,degree,batch) values ('"+susername+"','"+semail+"','"+spass+"','"+sfirstname+"','"+slastname+"','"+suniversity+"','"+sdegree+"','"+sbatch+"')";
            st.executeUpdate(query);
              response.sendRedirect("studentlogin.jsp");
            

            }
            catch(Exception x)
            {
                out.println(x);
            }
            
            
            
            
            %>
    </body>
</html>
