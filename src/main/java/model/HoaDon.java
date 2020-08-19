package model;

import java.sql.Timestamp;

public class HoaDon {
    private int maHD;
    private String maKH;
    private Timestamp ngay;
    private float tongTien;
    public HoaDon(){

    }
    public HoaDon(String maKH, float tongTien){
        this.maKH = maKH;
        this.tongTien = tongTien;
    }

    public int getMaHD() {
        return maHD;
    }
    public void setMaHD(int maHD) {
        this.maHD = maHD;
    }


    public String getMaKH() {
        return maKH;
    }
    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public Timestamp getNgay() {
        return ngay;
    }
    public void setNgay(Timestamp ngay) {
        this.ngay = ngay;
    }

    public float getTongTien() {
        return tongTien;
    }
    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }
}
