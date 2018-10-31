package DAO;

import ConnectDB.ConnectDB;
import Model.San;
import Model.SuatDat;
import java.sql.Connection;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoSan {

    public ArrayList<San> getSan() {            //static
        ArrayList<San> list = new ArrayList<>();
        try {

            Connection connection = ConnectDB.getConnection(); // mở kết nối cơ sở dữ liệu
            Statement statement = connection.createStatement();// cho phép thực hiện truy vấn sql trên java
            String sql = "select distinct LoaiSan from San";
            ResultSet rs = statement.executeQuery(sql);        // thực hiện truy vấn theo câu truy vấn truyền vào bằng hàm executeQuery của class statement

            San b;
            while (rs.next()) {
                b = new San("Null", "Null", rs.getString("LoaiSan"), "Null");
                list.add(b);
            }

        } catch (SQLException ex) {
            Logger.getLogger(DaoSan.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void getTimSan(String loaisan,String date,String suat) {            //static
        //ArrayList<SuatDat> list = new ArrayList<>();
        try {

            Connection connection = ConnectDB.getConnection(); // mở kết nối cơ sở dữ liệu
            Statement statement = connection.createStatement();// cho phép thực hiện truy vấn sql trên java
            String sql = "sp_TimSanTrong '"+loaisan+"','"+date+"','"+suat+"'";//"sp_TimSanTrong '"+loaisan+"','"+ngay+"','"+giodat+"'";
            int rs = statement.executeUpdate(sql);        // thực hiện truy vấn theo câu truy vấn truyền vào bằng hàm executeQuery của class statement

        } catch (SQLException ex) {
            Logger.getLogger(DaoSan.class.getName()).log(Level.SEVERE, null, ex);
        }
        //return list;
    }

    public ArrayList<SuatDat> getShowSanTim() {            //static
        ArrayList<SuatDat> list = new ArrayList<>();
        try {

            Connection connection = ConnectDB.getConnection(); // mở kết nối cơ sở dữ liệu
            Statement statement = connection.createStatement();// cho phép thực hiện truy vấn sql trên java
            String sql = "select Top 1 * from TimSan1";
            ResultSet rs = statement.executeQuery(sql);        // thực hiện truy vấn theo câu truy vấn truyền vào bằng hàm executeQuery của class statement

            SuatDat b;
            while (rs.next()) {
                b = new SuatDat(rs.getString("MaSan"), rs.getString("MaSuat"), rs.getDate("Ngay"));
                list.add(b);
            }

        } catch (SQLException ex) {
            Logger.getLogger(DaoSan.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        
        DaoSan d = new DaoSan();
        for (San s : d.getSan()) {
            System.out.println(s.getLoaiSan());
        }
        d.getTimSan("San 5","2018-09-14","2");
        for (SuatDat ds : d.getShowSanTim()) {
            System.out.println(ds.getMaSan() + "   " + ds.getMaSuat()+ ds.getNgay());
        }

    }
}
