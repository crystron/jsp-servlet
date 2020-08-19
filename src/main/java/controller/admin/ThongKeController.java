package controller.admin;

import dao.DoanhThuDAO;
import dao.SachDAO;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "inventory", urlPatterns = "/admin/ThongKe")
public class ThongKeController extends HttpServlet {
    @Inject
    private SachDAO sachDAO;
    @Inject
    private DoanhThuDAO doanhThuDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        if ( name == null){
            int thang = Integer.parseInt(request.getParameter("thang"));
            int nam = Integer.parseInt(request.getParameter("nam"));
            request.setAttribute("dt",doanhThuDAO.revenue(thang,nam));
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/thongke/doanh-thu.jsp");
            rd.forward(request,response);
        }
        else  if ( name.contains("tonKho")){
            request.setAttribute("Sach",sachDAO.findInventory());
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/sach/index.jsp");
            rd.forward(request,response);
        } else if ( name.contains("doanhThu")) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/thongke/doanh-thu.jsp");
            rd.forward(request, response);
        } else if (name.contains("top10")){
            request.setAttribute("Sach",sachDAO.topTen());
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/sach/index.jsp");
            rd.forward(request, response);
        }
    }
}
