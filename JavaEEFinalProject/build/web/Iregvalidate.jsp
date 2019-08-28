
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
            String iusername=request.getParameter("iusername");
            String iemail=request.getParameter("iemail");
            String ipassword=request.getParameter("ipassword");
            String industryname=request.getParameter("industryname");
            try
            {
                
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
            Statement st=con.createStatement();
            
            String query="insert into industry values('"+iusername+"','"+iemail+"','"+ipassword+"','"+industryname+"')";
            st.executeUpdate(query);
              response.sendRedirect("industrylogin.jsp");
            

            }
            catch(Exception x)
            {
                out.println(x);
            }
            
            
            
            
            %>
    </body>
</html>
