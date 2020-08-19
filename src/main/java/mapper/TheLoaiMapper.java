package mapper;

import model.TheLoai;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TheLoaiMapper implements RowMapper<TheLoai> {
    @Override
    public TheLoai mappingRow(ResultSet rs) {
        try {
            TheLoai theLoai = new TheLoai();
            theLoai.setMaTL(rs.getString("maTL"));
            theLoai.setTenTL(rs.getNString("tenTL"));
            theLoai.setMoTa(rs.getNString("moTa"));
            return theLoai;
        }
        catch (SQLException e) {
            return null;
        }
    }
}
