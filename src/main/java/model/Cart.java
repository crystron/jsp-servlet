package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private HashMap<String, Item> cartItems;
    public Cart(){
        cartItems = new HashMap<>();
    }
    public Cart(HashMap<String, Item> cartItems){
        this.cartItems = cartItems;
    }

    public HashMap<String, Item> getCartItems() {
        return cartItems;
    }
    public void setCartItems(HashMap<String, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public void plusToCart(String key, Item item){
        boolean bln = cartItems.containsKey(key);
        if (bln){
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(item.getSach().getMaSach(), item);
        } else {
            cartItems.put(item.getSach().getMaSach(), item);
        }
    }

    public void subToCart(String key, Item item){
        boolean check = cartItems.containsKey(key);
        if (check){
            int quantity_old = item.getQuantity();
            if (quantity_old <= 1){
                cartItems.remove(key);
            } else {
                item.setQuantity(quantity_old - 1);
                cartItems.put(key, item);
            }
        }
    }

    public void removeToCard(String sach){
        boolean bln = cartItems.containsKey(sach);
        if (bln){
            cartItems.remove(sach);
        }
    }

    public double total(){
        int count = 0;
        for (Map.Entry<String, Item> list : cartItems.entrySet()){
            count += list.getValue().getSach().getGiaTien() * list.getValue().getQuantity();
        }
        return count;
    }

    public int countItem() {
        int count = 0;
        count = cartItems.size();
        return count;
    }
}
