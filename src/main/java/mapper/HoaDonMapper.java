package mapper;

import model.HoaDon;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HoaDonMapper implements RowMapper<HoaDon> {
    @Override
    public HoaDon mappingRow(ResultSet rs) {
        HoaDon hoaDon = new HoaDon();
        try{
            hoaDon.setMaHD(rs.getInt("maHD"));
            hoaDon.setNgay(rs.getTimestamp("ngay"));
            hoaDon.setTongTien(rs.getFloat("tongTien"));
            hoaDon.setMaKH(rs.getString("maKH"));
            return hoaDon;
        } catch (SQLException e){
            return null;
        }
    }
}
