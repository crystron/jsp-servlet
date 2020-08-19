package dao.Idao;

import model.TacGia;
import model.TheLoai;

import java.util.List;

public interface ITacGiaDAO {
    List<TacGia> findAll();
    TheLoai findByID(String id);
}
