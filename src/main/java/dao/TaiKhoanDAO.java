package dao;

import mapper.TaiKhoanMapper;
import model.TaiKhoan;

import java.sql.*;
import java.util.List;

public class TaiKhoanDAO extends GenericsDAO<TaiKhoan>{
    public List<TaiKhoan> findAll(){
        String sql = "SELECT * FROM TaiKhoan";
        return query(sql, new TaiKhoanMapper());
    }

    public TaiKhoan findByID(String Id){
        String sql = "SELECT * FROM TaiKhoan WHERE MaTK = ?";
        List<TaiKhoan> tks = query(sql, new TaiKhoanMapper(), Id);
        return tks.get(0);
    }

    public String check(String name){
        String sql = "SELECT * FROM TaiKhoan WHERE TenTK = ?";
        List<TaiKhoan> tks = query(sql, new TaiKhoanMapper(), name);
        return tks.get(0).getTenTK();
    }

    public String save(TaiKhoan taiKhoan){
        String sql = "INSERT INTO TaiKhoan(MaTK, TenTK, TenHienThi, MatKhau) VALUES(?, ?, ?, ?)";
        String id = null;
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setString(1, taiKhoan.getMaTK());
            statement.setString(2, taiKhoan.getTenTK());
            statement.setNString(3, taiKhoan.getTenHienThi());
            statement.setString(4, taiKhoan.getMatKhau());
            statement.executeUpdate();
            id = taiKhoan.getMaTK();
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
        return id;
    }

    public TaiKhoan Login(String name, String pass){
        TaiKhoan taiKhoan = new TaiKhoan();
        Connection connection = null;
        ResultSet rs = null;
        CallableStatement statement = null;
        try{
            connection = getConnection();
            statement = connection.prepareCall("{call Login(?, ?)}");
            statement.setString(1, name);
            statement.setString(2, pass);
            statement.execute();
            rs = statement.getResultSet();
            while (rs.next()) {
               taiKhoan.setMaTK(rs.getString(1));
               taiKhoan.setTenTK(rs.getString(2));
               taiKhoan.setChucVu(rs.getByte(3));
            }
            return taiKhoan;
        }catch (SQLException e){
            return null;
        }
        finally {
            try {
                if (connection != null){
                    connection.close();
                }
                if (statement != null){
                    statement.close();
                }
                if (rs != null){
                    rs.close();
                }
            } catch( SQLException e){
                return null;
            }
        }
    }

    public String getID(){
        String sql = "SELECT TOP(1) MaTK FROM TAIKHOAN ORDER BY MaTK DESC";
        String s1 = "TK";
        return getLastID(sql, "TK");
    }
}
