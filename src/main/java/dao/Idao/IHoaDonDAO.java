package dao.Idao;

import model.HoaDon;

import java.util.List;

public interface IHoaDonDAO {
    int save(HoaDon hoaDon);
    List<HoaDon> findAll();
    HoaDon findByID(int id);
}
