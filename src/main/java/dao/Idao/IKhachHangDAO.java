package dao.Idao;

import model.KhachHang;

public interface IKhachHangDAO {
    String save(KhachHang khachHang);
    String getID();
}
