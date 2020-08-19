package controller.admin;

import dao.HoaDonDAO;
import model.TheLoai;
import service.iser.ITheLoaiSv;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "edit", urlPatterns = "/admin/edit/*")
public class EditController extends HttpServlet {
    private static final HoaDonDAO hdDAO = new HoaDonDAO();
    @Inject
    ITheLoaiSv theLoaiSv;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        String id = (pathInfo.substring(1));
            request.setAttribute("TheLoai", theLoaiSv.findByID(id));
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/theloai/edit.jsp");
            rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getAttribute("TheLoai");
        request.setCharacterEncoding("UTF-8");
        TheLoai theLoai = new TheLoai();
        theLoai.setMaTL(request.getParameter("maTL"));
        theLoai.setTenTL(request.getParameter("tenTL"));
        theLoai.setMoTa(request.getParameter("moTa"));
        theLoaiSv.edit(theLoai);
        response.sendRedirect("/admin/TheLoai");
    }
}
