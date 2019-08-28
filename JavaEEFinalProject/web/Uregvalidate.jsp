
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
            String uusername=request.getParameter("uusername");
            String uemail=request.getParameter("uemail");
            String upassword=request.getParameter("upassword");
            String uuniversityname=request.getParameter("uuniversityname");
            try
            {
                
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
            Statement st=con.createStatement();
            
            String query="insert into university values('"+uusername+"','"+uemail+"','"+upassword+"','"+uuniversityname+"')";
            st.executeUpdate(query);
              response.sendRedirect("universitylogin.jsp");
            

            }
            catch(Exception x)
            {
                out.println(x);
            }
            
            
            
            
            %>
    </body>
</html>
