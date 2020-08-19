package mapper;

import model.KhachHang;

import java.sql.ResultSet;
import java.sql.SQLException;

public class KhachHangMapper implements RowMapper<KhachHang> {
    @Override
    public KhachHang mappingRow(ResultSet rs) {
        KhachHang khachHang = new KhachHang();
        try {
            khachHang.setMaKH(rs.getString("MaKH"));
            khachHang.setTenKH(rs.getNString("TenKH"));
            khachHang.setEmail(rs.getString("Email"));
            khachHang.setSoDT(rs.getString("SoDT"));
            khachHang.setDiaChi(rs.getNString("DiaChi"));
            return khachHang;
        } catch (SQLException e ){
            return null;
        }
    }
}
