package mapper;

import model.TaiKhoan;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TaiKhoanMapper implements RowMapper<TaiKhoan>{
    @Override
    public TaiKhoan mappingRow(ResultSet rs) {
        TaiKhoan taiKhoan = new TaiKhoan();
        try {
            taiKhoan.setMaTK(rs.getString("MaTK"));
            taiKhoan.setTenTK(rs.getString("TenTK"));
            taiKhoan.setTenHienThi(rs.getNString("TenHienThi"));
            taiKhoan.setMatKhau(rs.getString("MatKhau"));
            taiKhoan.setChucVu(rs.getByte("ChucVu"));
            return taiKhoan;
        } catch (SQLException e){
            return null;
        }
    }
}
