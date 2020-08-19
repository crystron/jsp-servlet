package mapper;

import model.Sach;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SachMapper implements RowMapper<Sach> {
    @Override
    public Sach mappingRow(ResultSet rs) {
        try {
            Sach sach = new model.Sach();
            sach.setMaSach(rs.getString("maSach"));
            sach.setTenSach(rs.getNString("tenSach"));
            sach.setGiaTien(rs.getFloat("giaTien"));
            sach.setsL(rs.getInt("sL"));
            sach.setHinh(rs.getString("hinh"));
            sach.setUuTien(rs.getInt("uuTien"));
            sach.setMaTL(rs.getString("maTL"));
            sach.setMaNXB(rs.getString("maNXB"));
            sach.setMaTG(rs.getString("maTG"));
            sach.setMaDM(rs.getInt("maDM"));
            return sach;
        } catch (SQLException e) {
            return null;
        }
    }
}
