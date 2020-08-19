package service;

import dao.Idao.ISachDAO;
import model.Sach;
import service.iser.ISachSv;

import javax.inject.Inject;
import java.util.List;

public class SachSv implements ISachSv {
    @Inject
    private ISachDAO sachDAO;
    
    @Override
    public List<Sach> findByMaDM(int maDM) {
        return sachDAO.findByMaDM(maDM);
    }

    @Override
    public List<Sach> findAll() {
        return sachDAO.findAll();
    }
}
