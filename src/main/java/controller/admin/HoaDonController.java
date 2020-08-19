package controller.admin;

import dao.CTHDDAO;
import dao.HoaDonDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "bill", urlPatterns = {"/admin/DonHang"})
public class HoaDonController extends HttpServlet {
    private static final HoaDonDAO hdDAO = new HoaDonDAO();
    private static final CTHDDAO cthdDAO = new CTHDDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("HoaDon", hdDAO.findAll());
        RequestDispatcher rd = request.getRequestDispatcher("/view/admin/hoadon/index.jsp");
        rd.forward(request, response);
    }
}
