package dao;

import dao.Idao.IHoaDonDAO;
import mapper.HoaDonMapper;
import model.HoaDon;

import java.sql.*;
import java.util.List;

public class HoaDonDAO extends GenericsDAO<HoaDon> implements IHoaDonDAO {
    @Override
    public int save(HoaDon hoaDon){
        String sql = "INSERT INTO HoaDon(MaKH, TongTien) VALUES(?,?)";
        int id = 0;
        PreparedStatement statement = null;
        ResultSet rs;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, hoaDon.getMaKH());
            statement.setFloat(2,hoaDon.getTongTien());
            statement.executeUpdate();
            rs = statement.getGeneratedKeys();
            if (rs.next()){
                id = rs.getInt(1);
            }
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
        return id;
    }

    @Override
    public List<HoaDon> findAll() {
        String sql = "SELECT * FROM HoaDon";
        return query(sql, new HoaDonMapper());
    }

    @Override
    public HoaDon findByID(int id) {
        String sql = "SELECT * FROM HoaDOn Where MaHD = ?";
        List<HoaDon> hoaDons = query(sql, new HoaDonMapper(), id);
        return hoaDons.get(0);
    }
}
