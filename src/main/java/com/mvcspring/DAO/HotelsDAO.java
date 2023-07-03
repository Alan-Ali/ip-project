package com.mvcspring.DAO;

import com.mvcspring.interfaces.CRUDDao;
import com.mvcspring.models.Hotels;
import com.mvcspring.models.User;
import com.mvcspring.utils.DatabaseConnection;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class HotelsDAO implements CRUDDao<Hotels> {

    private final JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());

    @Override
    public List<Hotels> getAll() {
        String sql = "SELECT * FROM hotels";
        List<Hotels> hotels = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Hotels.class));
        return hotels.isEmpty() ? null : hotels;
    }

    @Override
    public Hotels getById(int id) {
        String sql = "SELECT * FROM hotels WHERE hotel_id = ?";
        Object[] params = {id};
        List<Hotels> hotels = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Hotels.class), params);
        return hotels.isEmpty() ? null : hotels.get(0);
    }

    @Override
    public int add(Hotels object) {
        String sql = "INSERT INTO hotels (hotel_id, hotel_name, hotel_description, hotel_room_price, hotel_image_name, hotel_image_ext) VALUES (?, ?, ?,?, ?,?);";
        int affectedRows = jdbcTemplate.update(sql, object.getHotel_id(), object.getHotel_name(), object.getHotel_description(),
                object.getHotel_room_price(), object.getHotel_image_name(), object.getHotel_image_ext());

        if (affectedRows > 0) {
            return object.getHotel_id();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int update(Hotels object) {
        String sql = "UPDATE hotels SET hotel_id = ?, hotel_name = ?, hotel_description = ?, hotel_room_price = ?, hotel_image_name = ?, hotel_image_ext = ? WHERE hotel_id = " + object.getHotel_id();
        int affectedRows = jdbcTemplate.update(sql, object.getHotel_id(), object.getHotel_name(),
                object.getHotel_description(), object.getHotel_room_price(), object.getHotel_image_name(), object.getHotel_image_ext());
        if (affectedRows > 0) {
            return object.getHotel_id();
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int delete(int id) {
        String sql = "DELETE FROM hotels WHERE hotel_id = ?";
        int affectedRows = jdbcTemplate.update(sql, id);

        if (affectedRows > 0) {
            return affectedRows;
        } else {
            // Handle update failure
            return -1;
        }
    }
}
