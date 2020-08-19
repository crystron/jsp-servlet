package dao.Idao;

import model.CTHD;

import java.util.List;

public interface ICTHDDAO {
    void save(CTHD cthd);
    List<CTHD> findByID(int id);
}
