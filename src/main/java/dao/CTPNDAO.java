package dao;

import dao.Idao.ICTPNDAO;
import model.CTPN;

import java.sql.*;

public class CTPNDAO extends GenericsDAO<CTPN> implements ICTPNDAO {
    @Override
    public void save(CTPN ctpn) {
        String sql = "INSERT INTO CTPhieu(MaPN, MaSach, SL, ChietKhau, DonGia) VALUES(?,?,?,?,?)";
        int id = 0;
        PreparedStatement statement = null;
        ResultSet rs;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setInt(1, ctpn.getMaPN());
            statement.setString(2,ctpn.getMaSach());
            statement.setInt(3, ctpn.getSlNhap());
            statement.setFloat(4, ctpn.getChietKhau());
            statement.setFloat(5,ctpn.getDonGia());
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
}
