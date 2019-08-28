

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
            String uuser=request.getParameter("uusername");
            String upass=request.getParameter("upassword");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from university where username='"+uuser+"'");
            if(rs.next())
            {
                if(rs.getString(3).equals(upass))
                {
                    session.putValue("uusername",uuser);
                    response.sendRedirect("Uuserprofile.jsp");
                }
                else 
                {
                   
                    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                    out.println("<script>");
                    out.println(" $(document).ready(function(){");
                    out.println(" swal ( 'Oops' ,  'Wrong Password!' ,  'error' )    })");
                    out.println("</script>");
                    RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("/universitylogin.jsp");
          requestDispatcher.include(request, response); 
                  ;
                }
            }
            else
            {
               out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                    out.println("<script>");
                    out.println(" $(document).ready(function(){");
                    out.println(" swal ( 'Oops' ,  'Wrong Username!' ,  'error' )    })");
                    out.println("</script>");
                    RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("/universitylogin.jsp");
          requestDispatcher.include(request, response); 
                  ;
            }
            
            %>
    </body>
</html>
