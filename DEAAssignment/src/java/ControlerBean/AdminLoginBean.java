
package ControlerBean;

import Conn.ConnectDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Supun Randunu
 */
public class AdminLoginBean {


    private Connection conn = null;
    private ResultSet rs = null;
    private Statement stmt=null;
    public boolean adminLogin(String name,String pass){
        conn=ConnectDb.getConnection();
        try {
            PreparedStatement ps =conn.prepareStatement("select * from register where email=? ");
            ps.setString(1, name);
            rs =ps.executeQuery();
         if (rs.next()) {
                String psw = rs.getString("pass");
                String admin=rs.getString("admin");
                        if(admin.equals("yes")){
                            if (pass.equals(psw)) {                   
                                return true;     
                            } else {
                                return false; 
                            }
                        }
        } else {
            return false;
        }        
        } 
        catch (SQLException e) {
        }
         return false;      
    }
}
