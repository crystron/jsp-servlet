package dao;

import dao.Idao.INhaCungCapDAO;
import mapper.NhaCungCapMapper;
import model.NhaCungCap;

import java.util.List;

public class NhaCungCapDAO extends GenericsDAO<NhaCungCapDAO> implements INhaCungCapDAO {
    @Override
    public List<NhaCungCap> findAll() {
        String sql = "SELECT * FROM NhaCungCap";
        return query(sql, new NhaCungCapMapper());
    }
}
