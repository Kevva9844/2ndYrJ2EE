
package bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class universitycalenderinsertdb implements Serializable {
       
        String url = "jdbc:mysql://localhost:3306/JavaEEFinalProject";
        String username = "root";
        String password = "";
    
        
        
        
    public void input(String Title,String Startdate,String Enddate,String description) throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username, password);
            Statement st = conn.createStatement();
            String quary="INSERT INTO academiccalender(Title,Startdate,Enddate,description) VALUES ('" +Title + "','" +Startdate + "','" +Enddate + "','" +description + "')";
            st.executeUpdate(quary);
    }
    
}
