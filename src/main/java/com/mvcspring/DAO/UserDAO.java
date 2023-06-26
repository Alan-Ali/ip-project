package com.mvcspring.DAO;

import com.mvcspring.interfaces.CRUDDao;
import com.mvcspring.models.User;
import com.mvcspring.utils.DatabaseConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


@Repository
public class UserDAO implements CRUDDao {
    private final JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());

    @Autowired
    public UserDAO() {}

    @Override
    public List<User> getAll() {
        String query = "SELECT * FROM user";
        return jdbcTemplate.query(query, new UserRowMapper());
    }

    @Override
    public User getById(int id) {
        String query = "SELECT * FROM user WHERE id = ?";
        return jdbcTemplate.queryForObject(query, new Object[]{id}, new UserRowMapper());
    }

    @Override
    public void add(User user) {
        String query = "INSERT INTO user (username, email, password, isadmin) VALUES (?, ?, ?, ?);";
        jdbcTemplate.update(query, user.getUsername(), user.getEmail(),user.getPassword(), user.getIsadmin());
    }

    @Override
    public void update(User user) {
        String query = "UPDATE user SET username = ?, email = ?, password = ? WHERE id = ?";
        jdbcTemplate.update(query, user.getUsername(), user.getEmail(), user.getPassword());
    }

    @Override
    public void delete(int id) {
        String query = "DELETE FROM user WHERE id = ?";
        jdbcTemplate.update(query, id);
    }

    private static class UserRowMapper implements RowMapper<User> {
        @Override
        public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("name"));
            // Set other properties as needed
            return user;
        }
    }
}