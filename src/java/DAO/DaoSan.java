package DAO;

import ConnectDB.ConnectDB;
import Model.San;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoSan {

    public ArrayList<San> getSan() {            //static
        ArrayList<San> list = new ArrayList<>();
        try {

            Connection connection = ConnectDB.getConnection(); // mở kết nối cơ sở dữ liệu
            Statement statement = connection.createStatement();// cho phép thực hiện truy vấn sql trên java
            String sql = "Select *from San";
            ResultSet rs = statement.executeQuery(sql);        // thực hiện truy vấn theo câu truy vấn truyền vào bằng hàm executeQuery của class statement

            San b;
            while (rs.next()) {
                b = new San(rs.getString("MaSan"), rs.getString("TenSan"), rs.getString("LoaiSan"), rs.getString("MoTa"));
                list.add(b);
            }

        } catch (SQLException ex) {
            Logger.getLogger(DaoSan.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<San> getTimSan(String x) {            //static
        ArrayList<San> list = new ArrayList<>();
        try {

            Connection connection = ConnectDB.getConnection(); // mở kết nối cơ sở dữ liệu
            Statement statement = connection.createStatement();// cho phép thực hiện truy vấn sql trên java
            String sql = "Select *from San where LoaiSan='"+x+"'";
            ResultSet rs = statement.executeQuery(sql);        // thực hiện truy vấn theo câu truy vấn truyền vào bằng hàm executeQuery của class statement

            San b;
            while (rs.next()) {
                b = new San(rs.getString("MaSan"), rs.getString("TenSan"), rs.getString("LoaiSan"), rs.getString("MoTa"));
                list.add(b);
            }

        } catch (SQLException ex) {
            Logger.getLogger(DaoSan.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    

    public static void main(String[] args) {
        DaoSan d = new DaoSan();
        for (San ds : d.getSan()) {
            System.out.println(ds.getTenSan() + "  " + ds.getMaSan() + "\n");
            System.out.println(ds.getLoaiSan());
        }

    }
}
