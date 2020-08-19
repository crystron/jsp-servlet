package dao.Idao;

import mapper.RowMapper;

import java.util.List;

public interface IGenericsDAO<T> {
    <T>List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
    String findLastID(String sql);
    String getLastID(String sql, String twoChars);
}
