package mapper;

import model.DanhMuc;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DanhMucMapper implements RowMapper<DanhMuc>{
    @Override
    public DanhMuc mappingRow(ResultSet rs) {
        try{
            DanhMuc danhMuc = new DanhMuc();
            danhMuc.setMaDM(rs.getInt("MaDM"));
            danhMuc.setTenDM(rs.getNString("TenDM"));
            danhMuc.setMetaTitle(rs.getString("MetaTitle"));
            return danhMuc;
        } catch (SQLException e){
            return null;
        }
    }
}
