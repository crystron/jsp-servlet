package controller.main;

public class PhanSo {
    public int tuSO;
    public int mauSO;
    public PhanSo(){}
    public PhanSo(int tuSO, int mauSO){
        this.tuSO = tuSO;
        this.mauSO = mauSO;
    }
    public PhanSo mutiply(PhanSo p1, PhanSo p2){
        PhanSo phanSo = new PhanSo();
        phanSo.tuSO = p1.tuSO * p2.tuSO;
        phanSo.mauSO = p1.mauSO * p2.mauSO;
        return phanSo;
    }

    public PhanSo plus(PhanSo p1){
        PhanSo phanSo = new PhanSo();
        phanSo.tuSO = this.tuSO*p1.mauSO + (p1.tuSO*this.mauSO);
        phanSo.mauSO = this.mauSO*p1.mauSO;
        return phanSo;
    }
}
