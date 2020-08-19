package controller.main;

import dao.TaiKhoanDAO;
import model.TaiKhoan;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/dang-nhap")
public class LoginController extends HttpServlet {
    final static TaiKhoanDAO tkDAO = new TaiKhoanDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/view/login/login.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        TaiKhoan tk;
        String name = request.getParameter("TenTK");
        String pass = request.getParameter("MatKhau");
        tk = tkDAO.Login(name,pass);
        if ( tk.getMaTK() != null ){
            response.sendRedirect("/admin");
            session.setAttribute("TK",tk);
        } else {
            response.sendRedirect("/dang-nhap");
        }
    }
}
