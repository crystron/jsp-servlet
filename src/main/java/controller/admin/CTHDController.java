package controller.admin;

import dao.CTHDDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "billDetails", urlPatterns = "/admin/cthd/*")
public class CTHDController extends HttpServlet {
    private static final CTHDDAO cthdDAO = new CTHDDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        String id = pathInfo.substring(1);
        if ( id != null) {
            request.setAttribute("CTHD", cthdDAO.findByID(Integer.parseInt(id)));
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/hoadon/detail.jsp");
            rd.forward(request, response);
        }
    }
}
