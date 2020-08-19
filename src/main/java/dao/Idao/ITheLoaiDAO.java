package dao.Idao;

import model.TheLoai;

import java.util.List;

public interface ITheLoaiDAO {
    List<TheLoai> findAll();
    String save(TheLoai theLoai);
    void edit(TheLoai theLoai);
    void delete(String id);
    TheLoai finyById (String id);
    List<TheLoai> findByName(String name);
}
