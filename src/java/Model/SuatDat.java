package Model;

import java.sql.Date;

public class SuatDat {
    private String MaSan;
    private String MaSuat;
    private Date ngay;

    public String getMaSan() {
        return MaSan;
    }

    public void setMaSan(String MaSan) {
        this.MaSan = MaSan;
    }

    public String getMaSuat() {
        return MaSuat;
    }

    public void setMaSuat(String MaSuat) {
        this.MaSuat = MaSuat;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }

    public SuatDat(String MaSan, String MaSuat, Date ngay) {
        this.MaSan = MaSan;
        this.MaSuat = MaSuat;
        this.ngay = ngay;
    }
}
