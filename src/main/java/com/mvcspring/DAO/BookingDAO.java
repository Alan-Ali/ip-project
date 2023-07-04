package com.mvcspring.DAO;

import com.mvcspring.interfaces.CRUDDao;
import com.mvcspring.models.Booking;
import com.mvcspring.models.Hotels;
import com.mvcspring.utils.DatabaseConnection;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class BookingDAO implements CRUDDao<Booking> {

    private final JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());

    @Override
    public List<Booking> getAll() {
        String sql = "SELECT * FROM booking";
        List<Booking> bookings = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Booking.class));
        return bookings.isEmpty() ? null : bookings;
    }

    @Override
    public Booking getById(int id) {
        String sql = "SELECT * FROM booking WHERE hotel_id = ?";
        Object[] params = {id};
        List<Booking> bookings = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Booking.class), params);
        return bookings.isEmpty() ? null : bookings.get(0);
    }

    @Override
    public int add(Booking object) {
        String sql = "INSERT INTO booking (user_id,hotel_id, fullname, email, address, city, card_type, name_on_card, credit_card_number, expiration_month, expiration_year, state, zip, cvv) " +
                " VALUES (?, ?,?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?);";
        int affectedRows = jdbcTemplate.update(sql, object.getUser_id(), object.getHotel_id(),
                object.getFullname(), object.getEmail(), object.getAddress(), object.getCity(), object.getCard_type(), object.getName_on_card(), object.getCredit_card_number(),
                object.getExpiration_month(), object.getExpiration_year(), object.getState(), object.getZip(), object.getCvv());

        if (affectedRows > 0) {
            return affectedRows;
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int update(Booking object) {
        String sql = "UPDATE booking SET booking_id = ?, user_id = ? ,hotel_id = ? WHERE booking_id = " + object.getBooking_id();
        int affectedRows = jdbcTemplate.update(sql, object.getBooking_id(), object.getUser_id(), object.getHotel_id());
        if (affectedRows > 0) {
            return affectedRows;
        } else {
            // Handle update failure
            return -1;
        }
    }

    @Override
    public int delete(int id) {
        String sql = "DELETE FROM booking WHERE booking_id = ?";
        int affectedRows = jdbcTemplate.update(sql, id);

        if (affectedRows > 0) {
            return affectedRows;
        } else {
            // Handle update failure
            return -1;
        }
    }
}
