package dao;

import dao.Idao.ITacGiaDAO;
import model.TacGia;
import model.TheLoai;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TacGiaDAO implements ITacGiaDAO {
    public Connection getConnection(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=BookManagement";
            String acc = "sa";
            String psw = "0120";
            return DriverManager.getConnection(url,acc,psw);
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        }
    }

    @Override
    public List<TacGia> findAll() {
        List<TacGia> tacGias = new ArrayList<>();
        String sql = "SELECT * FROM TacGia";
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        try{
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()){
                TacGia tacGia = new TacGia();
                tacGia.setMaTG(rs.getString("maTG"));
                tacGia.setTenTG(rs.getNString("tenTG"));
                tacGias.add(tacGia);
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

        return tacGias;
    }

    @Override
    public TheLoai findByID(String id) {

        return null;
    }
}
