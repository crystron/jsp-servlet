package dao;

import mapper.NXBMapper;
import model.NXB;

import java.util.List;

public class NXBDAO extends GenericsDAO<NXBDAO>{
    public List<NXB> findAll(){
        String sql = "SELECT * FROM NXB";
        return query(sql, new NXBMapper());
    }
}
