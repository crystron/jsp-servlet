package service.iser;

import model.TheLoai;

import java.util.List;

public interface ITheLoaiSv {
    List<TheLoai> findAll();
    String save(TheLoai theLoai);
    void edit(TheLoai theLoai);
    void delete(String id);
    TheLoai findByID(String id);
    List<TheLoai> findByName(String name);
}
