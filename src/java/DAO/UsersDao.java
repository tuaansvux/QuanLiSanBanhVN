/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Model.User;

/**
 *
 * @author TORIKU
 */
public class UsersDao {
public User login(String username, String pass)  {
   
        Connection connection = ConnectDB.getConnection();
        String sql = "select * from KhachHang where Username='" + username + "' and Pass='" + pass + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User u = new User();
               
                u.setId(rs.getString("Username"));
                u.setPassword(rs.getString("Pass"));
                
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
}
//
//public static void main(String[] args) throws SQLException {
//    User s= new User();
//    UsersDao d = new UsersDao();
//
//    s=d.login("khachhang1", "123");
//    System.out.println(s.getId());
//    
//    
//    
//    System.out.println();
//         
//   }
}
 

       
         
  
    
    


   
