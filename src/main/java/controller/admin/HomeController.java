package controller.admin;

import model.TaiKhoan;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin"})
public class HomeController extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan)session.getAttribute("TK");
        try {
            taiKhoan.getMaTK();
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/home.jsp");
            rd.forward(request, response);
        } catch (NullPointerException e) {
            response.sendRedirect("/dang-nhap");
        }
    }

    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
