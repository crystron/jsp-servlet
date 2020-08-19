package dao;

import dao.Idao.IDanhMucDAO;
import mapper.DanhMucMapper;
import model.DanhMuc;

import java.util.List;

public class DanhMucDAO extends GenericsDAO<DanhMuc> implements IDanhMucDAO {
    @Override
    public List<DanhMuc> findAll() {
        String sql = "SELECT * FROM DanhMuc";
        return query(sql, new DanhMucMapper());
    }
}
