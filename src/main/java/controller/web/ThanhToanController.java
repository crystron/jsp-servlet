package controller.web;

import dao.CTHDDAO;
import dao.HoaDonDAO;
import dao.KhachHangDAO;
import model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "payment", urlPatterns = "/thanh-toan")
public class ThanhToanController extends HttpServlet{
    private final HoaDonDAO hoaDonDAO = new HoaDonDAO();
    private final CTHDDAO cthddao = new CTHDDAO();
    private final KhachHangDAO khachHangDAO = new KhachHangDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/payment.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        KhachHang khachHang = new KhachHang();
        HoaDon hoaDon = new HoaDon();
        CTHD cthd = new CTHD();

        khachHang.setMaKH(khachHangDAO.getID());
        khachHang.setTenKH(request.getParameter("tenKH"));
        khachHang.setDiaChi(request.getParameter("diaChi"));
        khachHang.setSoDT(request.getParameter("soDT"));
        khachHang.setEmail(request.getParameter("email"));
        String maKh = khachHangDAO.save(khachHang);

        hoaDon.setMaKH(maKh);
        hoaDon.setTongTien((float)cart.total());
        int maHD = hoaDonDAO.save(hoaDon);
        for (Map.Entry<String, Item> list : cart.getCartItems().entrySet()){
            cthd.setMaHD(maHD);
            cthd.setMaSach(list.getValue().getSach().getMaSach());
            cthd.setsL(list.getValue().getQuantity());
            cthd.setGiaTien(list.getValue().getSach().getGiaTien());
            cthd.setKhuyenMai(0);
            cthddao.save(cthd);
        }
        cart = new Cart();
        session.setAttribute("cart",cart);

        response.sendRedirect("/view/web/success.jsp");
    }
}
