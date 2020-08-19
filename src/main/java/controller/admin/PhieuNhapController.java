package controller.admin;

import dao.CTPNDAO;
import dao.NhaCungCapDAO;
import dao.PhieuNhapDAO;
import dao.SachDAO;
import model.CTPN;
import model.PhieuNhap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "importBook", urlPatterns = "/admin/nhap-sach")
public class PhieuNhapController extends HttpServlet {
    private final PhieuNhapDAO phieuNhapDAO = new PhieuNhapDAO();
    private final CTPNDAO ctpndao = new CTPNDAO();
    private final NhaCungCapDAO nhaCungCapDAO = new NhaCungCapDAO();
    private final SachDAO sachDAO = new SachDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("Sach",sachDAO.findAll());
        request.setAttribute("NCC",nhaCungCapDAO.findAll());
        RequestDispatcher rd = request.getRequestDispatcher("/view/admin/nhap/create.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //define
        PhieuNhap phieuNhap = new PhieuNhap();
        CTPN ctpn = new CTPN();
        //getParameterArray
        String bookID[] = request.getParameterValues("bookID");
        String quantityStr[] = request.getParameterValues("quantity");
        String chietKhauSTr[] = request.getParameterValues("chietKhau");
        //getParameter
        String providerID = request.getParameter("maNCC");

        //Insert PhieuNhap
        phieuNhap.setMaNCC(providerID);
        int maPN = phieuNhapDAO.save(phieuNhap);
        int quantity[] = new int[bookID.length];
        float chietKhau[] = new  float[bookID.length];

        //parse and insert CTPN

        for ( int i = 0; i < bookID.length; i++){
            quantity[i] = Integer.parseInt(quantityStr[i]);
            chietKhau[i] = Float.parseFloat(chietKhauSTr[i]);
            ctpn.setMaPN(maPN);
            ctpn.setSlNhap(quantity[i]);
            ctpn.setChietKhau(chietKhau[i]);
            ctpn.setMaSach(bookID[i]);
            ctpndao.save(ctpn);
        }
        response.sendRedirect("/admin");
    }
}
