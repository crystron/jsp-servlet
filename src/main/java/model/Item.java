package model;

public class Item {
    private Sach sach;
    private int quantity;
    public Item(){
    }
    public Item(Sach sach, int quantity){
        this.sach = sach;
        this.quantity = quantity;
    }

    public Sach getSach() {
        return sach;
    }
    public void setSach(Sach sach) {
        this.sach = sach;
    }

    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
