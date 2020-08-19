package dao.Idao;

import model.Sach;

import java.util.List;

public interface ISachDAO {
    List<Sach> findByMaDM(int maDM);
    List<Sach> findAll();
    Sach findByID(String id);
    List<Sach> findInventory();
}
