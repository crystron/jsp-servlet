package mapper;

import model.CTHD;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CTHDMapper implements RowMapper<CTHD> {
    @Override
    public CTHD mappingRow(ResultSet rs) {
        CTHD cthd = new CTHD();
        try{
            cthd.setMaHD(rs.getInt("maHD"));
            cthd.setMaSach(rs.getString("maSach"));
            cthd.setKhuyenMai(rs.getFloat("khuyenMai"));
            cthd.setsL(rs.getInt("sL"));
            cthd.setGiaTien(rs.getFloat("donGia"));
            return cthd;
        } catch (SQLException e){
            return null;
        }
    }
}
