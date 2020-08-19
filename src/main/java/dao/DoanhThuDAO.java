package dao;

import java.sql.*;

public class DoanhThuDAO extends GenericsDAO{
    public Float revenue(int thang, int nam){
        Connection connection = null;
        CallableStatement statement = null;
        Float dt = 0.f;
        ResultSet rs;
        try{
            connection = getConnection();
            statement = connection.prepareCall("{call DoanhThu1(?, ?, ?)}");
            statement.setInt(1, thang);
            statement.setInt(2, nam);
            statement.registerOutParameter(3, Types.FLOAT);
            statement.execute();
            dt = statement.getFloat(3);
            return dt;
        } catch (SQLException e){
            return null;
        }
        finally {
            try {
                if (connection != null) {
                    connection.close();
                    if (statement != null) {
                        statement.close();
                    }
                }
            } catch( SQLException e){
                return null;
            }
        }
    }
}
