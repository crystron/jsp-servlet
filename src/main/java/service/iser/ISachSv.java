package service.iser;

import model.Sach;

import java.util.List;

public interface ISachSv {
    List<Sach> findByMaDM(int maDM);
    List<Sach> findAll();
}
