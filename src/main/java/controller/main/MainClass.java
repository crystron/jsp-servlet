package controller.main;

import dao.TaiKhoanDAO;
import model.TaiKhoan;

public class MainClass{
    public static void main(String[] agrs) {
        TaiKhoanDAO taiKhoanDAO = new TaiKhoanDAO();
        TaiKhoan taiKhoan;
        taiKhoan = taiKhoanDAO.Login("tsukasa1407","123");
        System.out.println(taiKhoan.getMaTK());
    }
}
