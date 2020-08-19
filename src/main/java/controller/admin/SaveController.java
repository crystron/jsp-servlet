package controller.admin;

import dao.SachDAO;
import model.Cart;
import model.Item;
import model.Sach;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "import", urlPatterns = "/admin/save")
public class SaveController extends HttpServlet {
    private final SachDAO sachDAO = new SachDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String productID = request.getParameter("productID");
        String quantity = request.getParameter("quantity");
        Cart cart = (Cart) session.getAttribute("cart");
        try {
            Sach sach = sachDAO.findByID(productID);
            switch (command) {
                case "plus":
                    if (cart.getCartItems().containsKey(productID)){
                        cart.plusToCart(productID,
                                new Item(sach, cart.getCartItems().get(productID).getQuantity()));
                    } else {
                        cart.plusToCart(productID, new Item(sach, 1));
                    }
                    break;
                case "remove":
                    cart.removeToCard(productID);
                    break;
            }
        } catch (Exception e){
            e.printStackTrace();
            response.sendRedirect("/admin");
        }
    }
}
