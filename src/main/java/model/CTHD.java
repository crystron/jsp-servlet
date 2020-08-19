package model;

public class CTHD {
    private int maHD;
    private String maSach;
    private float khuyenMai;
    private float giaTien;
    private int sL;
    public CTHD(){

    }
    public CTHD(int maHD, String maSach, float khuyenMai, float giaTien, int sL){
        this.maHD = maHD;
        this.maSach = maSach;
        this.khuyenMai = khuyenMai;
        this.giaTien = giaTien;
        this.sL = sL;
    }

    public int getMaHD() {
        return maHD;
    }
    public void setMaHD(int maHD) {
        this.maHD = maHD;
    }

    public String getMaSach() {
        return maSach;
    }
    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public float getKhuyenMai() {
        return khuyenMai;
    }
    public void setKhuyenMai(float khuyenMai) {
        this.khuyenMai = khuyenMai;
    }

    public float getGiaTien() {
        return giaTien;
    }
    public void setGiaTien(float giaTien) {
        this.giaTien = giaTien;
    }

    public int getsL() {
        return sL;
    }
    public void setsL(int sL) {
        this.sL = sL;
    }
}
