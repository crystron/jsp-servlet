package dao;

import dao.Idao.IPhieuNhapDAO;
import model.PhieuNhap;

import java.sql.*;

public class PhieuNhapDAO extends GenericsDAO<PhieuNhap> implements IPhieuNhapDAO {
    @Override
    public int save(PhieuNhap phieuNhap) {
        String sql = "INSERT INTO PhieuNhap(MaNCC) VALUES(?)";
        int id = 0;
        PreparedStatement statement = null;
        ResultSet rs;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1,phieuNhap.getMaNCC());
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
}
