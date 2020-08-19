package controller.admin;

import dao.SachDAO;
import dao.TheLoaiDAO;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "delete", urlPatterns = "/admin/delete/*")
public class DeleteController extends HttpServlet {
    @Inject
    TheLoaiDAO theLoaiDAO;
    @Inject
    SachDAO sachDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        String id = (pathInfo.substring(1));
        if ( id.contains("TL")){
            theLoaiDAO.delete(id);
            response.sendRedirect("/admin/TheLoai");
        } else if ( id.contains("SACH")){
            sachDAO.delete(id);
            response.sendRedirect("/admin/Sach");
        }

    }
}
