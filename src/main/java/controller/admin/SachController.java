package controller.admin;

import dao.SachDAO;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/Sach"})
public class SachController extends HttpServlet {
    @Inject
    private SachDAO sachDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String str = request.getParameter("search");
        if ( str == null){
            request.setAttribute("Sach",sachDAO.findAll());
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/sach/index.jsp");
            rd.forward(request,response);
        } else {
            request.setAttribute("Sach",sachDAO.findByName(str));
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/sach/index.jsp");
            rd.forward(request,response);
        }

    }
}
