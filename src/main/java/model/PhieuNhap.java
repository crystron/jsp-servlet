package model;

import java.sql.Timestamp;

public class PhieuNhap {
    private int maPN;
    private String maNCC;
    private Timestamp ngayNhap;
    private String maNV;
    private float tongTien;

    public int getMaPN() {
        return maPN;
    }
    public void setMaPN(int maPN) {
        this.maPN = maPN;
    }

    public String getMaNCC() {
        return maNCC;
    }
    public void setMaNCC(String maNCC) {
        this.maNCC = maNCC;
    }


    public Timestamp getNgayNhap() {
        return ngayNhap;
    }
    public void setNgayNhap(Timestamp ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public String getMaNV() {
        return maNV;
    }
    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }


    public float getTongTien() {
        return tongTien;
    }
    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }
}
