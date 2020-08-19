package mapper;

import model.Sach;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BookMapper implements RowMapper<Sach> {
    @Override
    public Sach mappingRow(ResultSet rs) {
        try{
            Sach sach = new Sach();
            sach.setMaSach(rs.getString("MaSach"));
            sach.setTenSach(rs.getNString("TenSach"));
            sach.setGiaTien(rs.getFloat("GiaTien"));
            sach.setUuTien(rs.getInt("UuTien"));
            return sach;
        } catch (SQLException e){
            return null;
        }
    }
}
