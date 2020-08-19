package dao;

import dao.Idao.IKhachHangDAO;
import model.KhachHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class KhachHangDAO extends GenericsDAO<KhachHang> implements IKhachHangDAO{
    @Override
    public String save(KhachHang khachHang) {
        String sql = "INSERT INTO KhachHang(MaKH, TenKH, SoDT, Email, DiaChi) VALUES(?,?,?,?,?)";
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setString(1, khachHang.getMaKH());
            statement.setNString(2, khachHang.getTenKH());
            statement.setString(3,khachHang.getSoDT());
            statement.setString(4, khachHang.getEmail());
            statement.setNString(5,khachHang.getDiaChi());
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            if (connection != null)
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    return null;
                }
        } finally {
            try {
                if (connection != null)
                    connection.close();
                if (statement != null)
                    statement.close();
            } catch (SQLException e){
                return null;
            }
        }
        return khachHang.getMaKH();
    }

    @Override
    public String getID() {
        String sql = "SELECT TOP(1) MaKH FROM KhachHang ORDER BY MaKH DESC";
        String twoChars = "KH";
        return getLastID(sql, twoChars);
    }
}
