package com.mvcspring.DAO;

import com.mvcspring.interfaces.CRUDDao;
import com.mvcspring.models.User;
import com.mvcspring.utils.DatabaseConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
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
        String sql = "SELECT * FROM user";
        List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
        return users.isEmpty() ? null : users;
    }

    @Override
    public User getById(int id) {
        String sql = "SELECT * FROM user WHERE id = ?";
        Object[] params = {id};
        List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), params);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public Object add(User user) {
        String query = "INSERT INTO user (username, email, password, isadmin, location) VALUES (?, ?, ?, ?, ?);";
        int affectedRows = jdbcTemplate.update(query, user.getUsername(), user.getEmail(), user.getPassword(), user.getIsadmin(), user.getLocation());

        if (affectedRows > 0) {
            return user.getId();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public Object update(User user) {
        String query = "UPDATE user SET username = ?, email = ?, password = ?, isadmin = ?, location = ? WHERE id = ?";
        int affectedRows = jdbcTemplate.update(query, user.getUsername(), user.getEmail(), user.getPassword(), user.getIsadmin(), user.getLocation());
        if (affectedRows > 0) {
            return user.getId();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public Object delete(int id) {
        String query = "DELETE FROM user WHERE id = ?";
        int affectedRows = jdbcTemplate.update(query, id);

        if (affectedRows > 0) {
            return 1;
        } else {
            // Handle update failure
            return -1;
        }
    }

    // MANUAL ROW MAPPER
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