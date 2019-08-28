/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBconnection2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASHMINI
 */
class data {
    Statement st;
    private List dlist;
    void addData(String Etitle,String description,String date,String contact,String photo)
    {
        
    
        dbConnection();
        {
            try
            {
                st.executeQuery("select*from event");
            } 
            catch (SQLException ex)
            {
                Logger.getLogger(data.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }
        private void dbConnection()
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject", "root", "");
            }
            catch (ClassNotFoundException | SQLException ex)
              {
            System.out.print(ex);
               }
        }
    
    List showData()
    {
        try
        {
            ResultSet p;
            dbConnection();
            p=st.executeQuery("select*from query");
            dlist=new ArrayList();
            
            while(p.next())
            {
                dlist.add(p.getString("Etitle"));
                dlist.add(p.getString("description"));
                dlist.add(p.getString("date"));
                dlist.add(p.getString("cntact"));
                dlist.add(p.getString("photo"));
            }
        } 
        catch (SQLException ex) 
        {
            Logger.getLogger(data.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return dlist;
    
    }
}
