package Model;

public class San {

    private String MaSan;
    private String TenSan;
    private String LoaiSan;
    private String MoTa;

    public San(String MaSan, String TenSan, String LoaiSan, String MoTa) {
        this.MaSan = MaSan;
        this.TenSan = TenSan;
        this.LoaiSan = LoaiSan;
        this.MoTa = MoTa;
    }

    public String getMaSan() {
        return MaSan;
    }

    public void setMaSan(String MaSan) {
        this.MaSan = MaSan;
    }

    public String getTenSan() {
        return TenSan;
    }

    public void setTenSan(String TenSan) {
        this.TenSan = TenSan;
    }

    public String getLoaiSan() {
        return LoaiSan;
    }

    public void setLoaiSan(String LoaiSan) {
        this.LoaiSan = LoaiSan;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String MoTa) {
        this.MoTa = MoTa;
    }

}
