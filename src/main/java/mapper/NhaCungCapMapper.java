package mapper;

import model.NhaCungCap;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NhaCungCapMapper implements RowMapper<NhaCungCap> {

    @Override
    public NhaCungCap mappingRow(ResultSet rs) {
        NhaCungCap nhaCungCap = new NhaCungCap();
        try {
            nhaCungCap.setMaNCC(rs.getString("maNCC"));
            nhaCungCap.setTenNCC(rs.getNString("tenNCC"));
            nhaCungCap.setDiaChi(rs.getString("diaChi"));
            nhaCungCap.setSoDT(rs.getString("soDT"));
            return nhaCungCap;
        } catch (SQLException e){
            return null;
        }
    }
}
