package mapper;

import model.NXB;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NXBMapper implements RowMapper<NXB> {

    @Override
    public NXB mappingRow(ResultSet rs) {
        NXB nxb = new NXB();
        try{
            nxb.setMaNXB(rs.getString("MaNXB"));
            nxb.setTenNXB(rs.getNString("TenNXB"));
            nxb.setEmail(rs.getString("Email"));
            return nxb;
        } catch (SQLException e){
            return null;
        }
    }
}
