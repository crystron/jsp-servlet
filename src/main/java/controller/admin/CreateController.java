package controller.admin;

import dao.*;
import model.Sach;
import model.TacGia;
import model.TheLoai;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "create", urlPatterns = "/admin/create/*")
public class CreateController extends HttpServlet {
    @Inject
    private TacGiaDAO tacGiaDAO;
    @Inject
    private TheLoaiDAO theLoaiDAO;
    @Inject
    private DanhMucDAO danhMucDAO;
    @Inject
    private NXBDAO nxbdao;
    @Inject
    private SachDAO sachDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd;
        String pathInfo = request.getPathInfo();
        if (pathInfo == null){
            response.sendRedirect("/admin");
        } else if (pathInfo.equals("/Sach")){
            request.setAttribute("TacGia",tacGiaDAO.findAll());
            request.setAttribute("TheLoai",theLoaiDAO.findAll());
            request.setAttribute("DanhMuc", danhMucDAO.findAll());
            request.setAttribute("NXB", nxbdao.findAll());
            rd = request.getRequestDispatcher("/view/admin/sach/create.jsp");
            rd.forward(request,response);
        }else if (pathInfo.equals("/TL")) {
            rd = request.getRequestDispatcher("/view/admin/theloai/create.jsp");
            rd.forward(request, response);
        }else if (pathInfo.equals("/DM")) {
            rd = request.getRequestDispatcher("/view/admin/danhmuc/create.jsp");
            rd.forward(request, response);
        } else if (pathInfo.equals("/TG")) {
            rd = request.getRequestDispatcher("/view/admin/tacgia/create.jsp");
            rd.forward(request, response);
        }else if (pathInfo.equals("/NXB")) {
            rd = request.getRequestDispatcher("/view/admin/tacgia/create.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if ( action != null && action.equals("TheLoai")){
            TheLoai theLoai = new TheLoai();
            theLoai.setMaTL(request.getParameter("maTL"));
            theLoai.setTenTL(request.getParameter("tenTL"));
            theLoai.setMoTa(request.getParameter("moTa"));
            response.sendRedirect("/admin/edit/"+theLoaiDAO.save(theLoai));
        } else if ( action != null && action.equals("TacGia")){
            TacGia tacGia = new TacGia();
            tacGia.setMaTG(request.getParameter("maTG"));
            tacGia.setTenTG(request.getParameter("tenTG"));
            response.sendRedirect("/admin/edit/"+ tacGia.getMaTG());
        } else if (action != null && action.equals("Sach")){
            Sach sach = new Sach();
            sach.setMaSach(sachDAO.getID());
            sach.setTenSach(request.getParameter("TenSach"));
            sach.setGiaTien(Float.parseFloat(request.getParameter("GiaTien"))) ;
            sach.setHinh(request.getParameter("Hinh"));
            sach.setMaTG(request.getParameter("MaTG"));
            sach.setMaDM(Integer.parseInt(request.getParameter("MaDM")));
            sach.setMaNXB(request.getParameter("MaNXB"));
            sach.setMaTL(request.getParameter("MaTL"));
            sach.setUuTien(Integer.parseInt(request.getParameter("UuTien")));
            sach.setsL(Integer.parseInt(request.getParameter("SoLuong")));
            sachDAO.save(sach);
            response.sendRedirect("/admin/Sach");
        }
    }
}
