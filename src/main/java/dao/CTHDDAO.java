package dao;

import dao.Idao.ICTHDDAO;
import mapper.CTHDMapper;
import model.CTHD;

import java.sql.*;
import java.util.List;

public class CTHDDAO extends GenericsDAO<CTHD> implements ICTHDDAO {
    @Override
    public void save(CTHD cthd) {
        String sql = "INSERT INTO CTHD(MaHD, MaSach, SL, KhuyenMai, DonGia) VALUES(?,?,?,?,?)";
        int id = 0;
        PreparedStatement statement = null;
        ResultSet rs;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setInt(1, cthd.getMaHD());
            statement.setString(2,cthd.getMaSach());
            statement.setInt(3,cthd.getsL());
            statement.setFloat(4,cthd.getKhuyenMai());
            statement.setFloat(5,cthd.getGiaTien());
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            if (connection != null)
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
        } finally {
            try {
                if (connection != null)
                    connection.close();
                if (statement != null)
                    statement.close();
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

    @Override
    public List<CTHD> findByID(int id) {
        String sql = "SELECT * FROM CTHD WHERE MaHD = ?";
        return query(sql, new CTHDMapper(), id);
    }
}
