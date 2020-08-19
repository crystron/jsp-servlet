package controller.web;

import dao.DanhMucDAO;
import dao.SachDAO;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {
    @Inject
    private SachDAO sachDAO;
    @Inject
    private DanhMucDAO danhMucDAO;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("DanhMuc",danhMucDAO.findAll());
        request.setAttribute("Sach",sachDAO.findAll());
        request.setAttribute("Top",sachDAO.topTen());
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/home.jsp");
        rd.forward(request,response);
    }

    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
