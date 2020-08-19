package controller.main;

import dao.TaiKhoanDAO;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "check", urlPatterns = "/check")
public class CheckName extends HttpServlet {
    @Inject
    TaiKhoanDAO taiKhoanDAO;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ( taiKhoanDAO.check(request.getParameter("username")) != null) {
            response.getWriter().write(" Tai khoan nay da co nguoi su dung");
        } else {
            response.getWriter().write("Tai khoan hop le");
        }
    }
}
