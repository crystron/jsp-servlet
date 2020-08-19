package model;

public class KhachHang {
    private String maKH;
    private String tenKH;
    private String soDT;
    private String email;
    private String diaChi;

    public KhachHang(){}
    public KhachHang(String maKH, String tenKH, String soDT, String diaChi){
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.soDT = soDT;
        this.diaChi = diaChi;
    }

    public String getMaKH() {
        return maKH;
    }
    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }
    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getSoDT() {
        return soDT;
    }
    public void setSoDT(String soDT) {
        this.soDT = soDT;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}
