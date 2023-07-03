package com.mvcspring.DAO;

import com.mvcspring.interfaces.CRUDDao;
import com.mvcspring.models.User;
import com.mvcspring.models.UserImage;
import com.mvcspring.utils.DatabaseConnection;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserImageDAO implements CRUDDao<UserImage> {

    private final JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());

//    public UserImageDAO (){}

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
        String sql = "INSERT INTO userimage (user_id, image_ext, image_name) VALUES (?, ?, ?);";
        int affectedRows = jdbcTemplate.update(sql, userimage.getUser_id(),
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
        String sql = "UPDATE userimage SET user_id = ?, image_ext = ?, image_name = ? WHERE user_id = " + userImage.getUser_id();
        int affectedRows = jdbcTemplate.update(sql, userImage.getUser_id(), userImage.getImage_ext(), userImage.getImage_name());
        if (affectedRows > 0) {
            return userImage.getImage_id();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int delete(int id) {
        String sql = "DELETE FROM userimage WHERE user_id = ?";
        int affectedRows = jdbcTemplate.update(sql, id);

        if (affectedRows > 0) {
            return affectedRows;
        } else {
            // Handle update failure
            return -1;
        }
    }
}
