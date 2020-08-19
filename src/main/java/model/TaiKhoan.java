package model;

public class TaiKhoan {
    private String maTK;
    private String tenTK;
    private String tenHienThi;
    private String matKhau;
    private byte chucVu;

    public String getMaTK() {
        return maTK;
    }
    public void setMaTK(String maTK) {
        this.maTK = maTK;
    }

    public String getTenTK() {
        return tenTK;
    }
    public void setTenTK(String tenTK) {
        this.tenTK = tenTK;
    }

    public String getTenHienThi() {
        return tenHienThi;
    }
    public void setTenHienThi(String tenHienThi) {
        this.tenHienThi = tenHienThi;
    }

    public String getMatKhau() {
        return matKhau;
    }
    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public byte getChucVu() {
        return chucVu;
    }
    public void setChucVu(byte chucVu) {
        this.chucVu = chucVu;
    }
}
