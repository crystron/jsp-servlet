package dao;

import dao.Idao.IGenericsDAO;
import mapper.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GenericsDAO<T> implements IGenericsDAO<T> {
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
    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
        List<T> results = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            rs = statement.executeQuery();
            while (rs.next()){
                results.add(rowMapper.mappingRow(rs));
            }
            return results;
        }catch (SQLException e) {
            return null;
        } finally {
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

    public <T> T newInstance(Class<T> cls) throws IllegalAccessException, InstantiationException {
        T myObject = cls.newInstance();
        return myObject;
    }

    @Override
    public String findLastID(String sql){
        Connection connection = null;
        PreparedStatement statement = null;
        String id = "";
        ResultSet rs = null;
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()){
                id = rs.getString(1);
            }
            return id;
        }catch (SQLException e) {
            return null;
        } finally {
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

    @Override
    public String getLastID(String sql, String twoChars) { ;
        int idInt = 0;
        String idStr = "";
        String[] mText = { "0", "00", "000", "0000", "00000", "000000", "0000000" };
        String idOld = findLastID(sql);
        if ( idOld == null){
            idInt = 1;
        } else{
            idInt = Integer.parseInt(idOld.substring(twoChars.length())) +1;
        }
        if ( idInt < 10){
            idStr = twoChars + mText[6] + idInt;
        } else if ( idInt < 100 ){
            idStr = twoChars + mText[5] + idInt;
        } else if ( idInt < 1000){
            idStr = twoChars + mText[4] + idInt;
        } else if ( idInt < 10000){
            idStr = twoChars + mText[3] + idInt;
        } else if ( idInt < 100000){
            idStr = twoChars + mText[2] + idInt;
        } else if ( idInt < 1000000){
            idStr = twoChars + mText[1] + idInt;
        } else if ( idInt < 10000000){
            idStr = twoChars + mText[0] + idInt;
        }
        return idStr;
    }


    private void setParameters(PreparedStatement statement, Object... parameters){
        try {
            for (int i = 0; i < parameters.length; i++) {
                Object parameter = parameters[i];
                int index = i + 1;
                if (parameter instanceof Integer) {
                    statement.setInt(index, (Integer) parameter);
                } else if (parameter instanceof String) {
                    statement.setString(index, (String)parameter);
                }
            }
        }catch (SQLException e){
                e.printStackTrace();
            }
    }
}
