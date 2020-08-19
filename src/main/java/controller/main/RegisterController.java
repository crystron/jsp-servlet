package controller.main;

import dao.TaiKhoanDAO;
import model.TaiKhoan;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "register", urlPatterns = "/dang-ki")
public class RegisterController extends HttpServlet {
    @Inject
    TaiKhoanDAO taiKhoanDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/view/login/register.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        TaiKhoan taiKhoan = new TaiKhoan();
        taiKhoan.setMaTK(taiKhoanDAO.getID());
        taiKhoan.setTenTK(request.getParameter("name"));
        taiKhoan.setTenHienThi(request.getParameter("display"));
        taiKhoan.setMatKhau(request.getParameter("pass"));
        taiKhoanDAO.save(taiKhoan);
        response.sendRedirect("/dang-nhap");
    }
}
