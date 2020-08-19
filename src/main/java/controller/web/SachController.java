package controller.web;

import service.iser.ISachSv;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/listSach"})
public class SachController extends HttpServlet {
    @Inject
    private ISachSv sachSv;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("Sach",sachSv.findAll());
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/listSach.jsp");
        rd.forward(request,response);
    }
}
