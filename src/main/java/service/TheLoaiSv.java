package service;

import dao.Idao.ITheLoaiDAO;
import model.TheLoai;
import service.iser.ITheLoaiSv;

import javax.inject.Inject;
import java.util.List;

public class TheLoaiSv implements ITheLoaiSv {
    @Inject
    private ITheLoaiDAO theLoaiDAO;

    @Override
    public List<TheLoai> findAll() {
        return theLoaiDAO.findAll();
    }

    @Override
    public String save(TheLoai theLoai) {
        String maTL = theLoaiDAO.save(theLoai);
        return maTL;
    }

    @Override
    public void edit(TheLoai theLoai) {
        theLoaiDAO.edit(theLoai);
    }

    @Override
    public void delete(String id) {
        theLoaiDAO.delete(id);
    }

    @Override
    public TheLoai findByID(String id) {
        return theLoaiDAO.finyById(id);
    }

    @Override
    public List<TheLoai> findByName(String name) {
        return theLoaiDAO.findByName(name);
    }
}
