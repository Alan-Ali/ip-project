package com.mvcspring.DAO;

import com.mvcspring.interfaces.CRUDDao;
import com.mvcspring.models.User;
import com.mvcspring.models.UserImage;
import com.mvcspring.utils.DatabaseConnection;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserImageDAO implements CRUDDao<UserImage> {

    private final JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());

    @Override
    public List<UserImage> getAll() {
        String sql = "SELECT * FROM userimage";
        List<UserImage> userImages = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(UserImage.class));
        return userImages.isEmpty() ? null : userImages;
    }

    @Override
    public UserImage getById(int id) {
        String sql = "SELECT * FROM userimage WHERE user_id = ?";
        Object[] params = {id};
        List<UserImage> userImage = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(UserImage.class), params);
        return userImage.isEmpty() ? null : userImage.get(0);
    }

    @Override
    public int add(UserImage userimage) {
        String query = "INSERT INTO userimage (image_id, user_id, image_ext, image_name) VALUES (?, ?, ?, ?);";
        int affectedRows = jdbcTemplate.update(query, userimage.getImage_id(), userimage.getUser_id(),
                userimage.getImage_ext(), userimage.getImage_name());

        if (affectedRows > 0) {
            return userimage.getImage_id();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int update(UserImage userImage) {
        String query = "UPDATE userimage SET image_id = ?, user_id = ?, image_ext = ?, image_name = ? WHERE user_id = ?";
        int affectedRows = jdbcTemplate.update(query, userImage.getImage_id(), userImage.getUser_id(), userImage.getImage_ext(), userImage.getImage_name());
        if (affectedRows > 0) {
            return userImage.getImage_id();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int delete(int id) {
        String query = "DELETE FROM userimage WHERE user_id = ?";
        int affectedRows = jdbcTemplate.update(query, id);

        if (affectedRows > 0) {
            return 1;
        } else {
            // Handle update failure
            return -1;
        }
    }
}
