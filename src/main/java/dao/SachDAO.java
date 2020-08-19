package dao;

import dao.Idao.ISachDAO;
import mapper.SachMapper;
import model.Sach;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SachDAO extends GenericsDAO<Sach> implements ISachDAO {
    public String getID() {
        String sql = "SELECT TOP(1) MaSach FROM Sach ORDER BY MaSach DESC";
        String twoChars = "SACH";
        return getLastID(sql, twoChars);
    }
    @Override
    public List<Sach> findByMaDM(int maDM) {
        String sql = "SELECT * FROM Sach WHERE maDM = ?";
        return query(sql, new SachMapper(), maDM);
    }

    public List<Sach> topTen(){
        List<Sach> saches = new ArrayList<>();
        Connection connection = null;
        ResultSet rs = null;
        CallableStatement statement = null;
        try{
            connection = getConnection();
            statement = connection.prepareCall("{call PTop10()}");
            statement.execute();
            rs = statement.getResultSet();
            while (rs.next()) {
                Sach sach = new Sach();
                sach.setMaSach(rs.getString("MaSach"));
                sach.setTenSach(rs.getNString("TenSach"));
                sach.setGiaTien(rs.getFloat("GiaTien"));
                sach.setHinh(rs.getString("Hinh"));
                sach.setsL(rs.getInt("SoLuong"));
                saches.add(sach);
            }
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

        return saches;
    }

    @Override
    public List<Sach> findAll() {
        String sql = "SELECT * FROM Sach";
        return query(sql, new SachMapper());
    }

    @Override
    public Sach findByID(String id) {
        Sach sach = new Sach();
        String sql = "SELECT * FROM Sach Where maSach = ?";
        PreparedStatement statement = null;
        Connection connection = null;
        ResultSet rs;
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1,id);
            rs = statement.executeQuery();
            while (rs.next()){
                sach.setMaSach(rs.getString("MaSach"));
                sach.setTenSach(rs.getNString("TenSach"));
                sach.setGiaTien(rs.getFloat("GiaTien"));
                sach.setsL(rs.getInt("SL"));
                sach.setHinh(rs.getString("Hinh"));
            }
        } catch (SQLException e) {
            return null;
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
        return sach;
    }

    @Override
    public List<Sach> findInventory(){
        List<Sach> saches = new ArrayList<>();
        Connection connection = null;
        ResultSet rs = null;
        CallableStatement statement = null;
        try{
            connection = getConnection();
            statement = connection.prepareCall("{call TonKHo()}");
            statement.execute();
            rs = statement.getResultSet();
            while (rs.next()) {
                Sach sach = new Sach();
                sach.setMaSach(rs.getString("MaSach"));
                sach.setTenSach(rs.getNString("TenSach"));
                sach.setGiaTien(rs.getFloat("GiaTien"));
                sach.setsL(rs.getInt("SL"));
                sach.setHinh(rs.getString("Hinh"));
                sach.setUuTien(rs.getInt("UuTien"));
                sach.setMaTL(rs.getString("MaTL"));
                sach.setMaNXB(rs.getString("MaNXB"));
                sach.setMaTG(rs.getString("MaTG"));
                sach.setMaDM(rs.getInt("MaDM"));
                saches.add(sach);
            }
            return saches;
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
    public String save(Sach sach){
        String sql = "INSERT INTO Sach VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        String id = null;
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setString(1, sach.getMaSach());
            statement.setNString(2, sach.getTenSach());
            statement.setString(3, sach.getMaTL());
            statement.setString(4,sach.getMaNXB());
            statement.setString(5,sach.getMaTG());
            statement.setInt(6, sach.getsL());
            statement.setFloat(7, sach.getGiaTien());
            statement.setString(8, sach.getHinh());
            statement.setInt(9, sach.getUuTien());
            statement.setInt(10, sach.getMaDM());
            statement.executeUpdate();
            id = sach.getMaSach();
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

    public void delete(String id) { ;
        String sql = "DELETE Sach WHERE MaSach = ?";
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setString(1, id);
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

    public List<Sach> findByName(String name) {
        List<Sach> saches = new ArrayList<>();
        CallableStatement statement = null;
        Connection connection = null;
        ResultSet rs;
        try {
            connection = getConnection();
            statement = connection.prepareCall("{call searchBookByName(?)}");
            statement.setNString(1,name);
            rs = statement.executeQuery();
            while (rs.next()){
                saches.add(new SachMapper().mappingRow(rs));
            }
        } catch (SQLException e) {
            return null;

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
        return saches;
    }
}
