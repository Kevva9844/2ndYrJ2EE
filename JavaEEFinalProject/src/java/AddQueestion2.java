import javax.servlet.RequestDispatcher;
import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

 
public class AddQueestion2 extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String n=request.getParameter("title");  
String p=request.getParameter("tags");  
String e=request.getParameter("question");  
String d=request.getParameter("posted_by"); 
          
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/javaeefinalproject","root","");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into question(title,tags,question,posted_by) values(?,?,?,?)");  
  
ps.setString(1,n);  
ps.setString(2,p);  
ps.setString(3,e);  
ps.setString(4,d);  
          
ps.executeUpdate();  

 
RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("/industryquestion.jsp");
          requestDispatcher.forward(request, response); 
           //response.sendRedirect("new.html");
           //return;
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
}  
  
}  