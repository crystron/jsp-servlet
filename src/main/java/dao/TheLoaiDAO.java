package dao;

import dao.Idao.ITheLoaiDAO;
import mapper.TheLoaiMapper;
import model.TheLoai;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TheLoaiDAO extends GenericsDAO<TheLoai> implements ITheLoaiDAO {
    @Override
    public List<TheLoai> findAll() {
        String sql = "SELECT * FROM TheLoai";
        return query(sql, new TheLoaiMapper());
    }

    @Override
    public String save(TheLoai theLoai){
        String sql = "INSERT INTO TheLoai(MaTL, TenTL, MoTa) VALUES(?, ?, ?)";
        String id = null;
        PreparedStatement statement = null;
        Connection connection = null;
        try {
                connection = getConnection();
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(sql);
                statement.setString(1, theLoai.getMaTL());
                statement.setNString(2, theLoai.getTenTL());
                statement.setNString(3,theLoai.getMoTa());
                statement.executeUpdate();
                id = theLoai.getMaTL();
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

    @Override
    public void edit(TheLoai theLoai) {
        String sql = "UPDATE TheLoai SET TenTL = ?, MoTa = ? WHERE MaTL = ?";
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            statement.setString(1, theLoai.getTenTL());
            statement.setString(2,theLoai.getMoTa());
            statement.setString(3, theLoai.getMaTL());
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
    public void delete(String id) { ;
        String sql = "DELETE TheLoai WHERE MaTL = ?";
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

    @Override
    public TheLoai finyById(String id) {
        TheLoai theLoai = new TheLoai();
        String sql = "SELECT * FROM TheLoai Where MaTL = ?";
        PreparedStatement statement = null;
        Connection connection = null;
        ResultSet rs;
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1,id);
            rs = statement.executeQuery();
            while (rs.next()){
                theLoai.setMaTL(rs.getString("MaTL"));
                theLoai.setTenTL(rs.getNString("TenTL"));
                theLoai.setMoTa(rs.getNString("MoTa"));
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
        return theLoai;
    }

    @Override
    public List<TheLoai> findByName(String name) {
        List<TheLoai> theLoai = new ArrayList<>();
        CallableStatement statement = null;
        Connection connection = null;
        ResultSet rs;
        try {
            connection = getConnection();
            statement = connection.prepareCall("{call searchByName(?)}");
            statement.setNString(1,name);
            rs = statement.executeQuery();
            while (rs.next()){
                TheLoai theLoai1 = new TheLoai();
                theLoai1.setMaTL(rs.getString("MaTL"));
                theLoai1.setTenTL(rs.getNString("TenTL"));
                theLoai1.setMoTa(rs.getNString("MoTa"));
                theLoai.add(theLoai1);
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
        return theLoai;
    }
}
