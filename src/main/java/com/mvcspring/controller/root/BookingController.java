package com.mvcspring.controller.root;

import com.mvcspring.DAO.BookingDAO;
import com.mvcspring.DAO.HotelsDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.Booking;
import com.mvcspring.models.Hotels;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Objects;

@Component
@Controller
@RequestMapping("/booking")
public class BookingController implements CRUDController<Booking> {



    public BookingController (){}
    //    @Autowired
    private final BookingDAO bookingDAO = new BookingDAO();


    @GetMapping("/get-all")
    @Override
    public List<Booking> getAll() {
        return  bookingDAO.getAll();
    }

    @GetMapping("/get/{id}")
    @Override
    public Booking getById(@PathVariable int id) {
        return bookingDAO.getById(id);
    }

    @PostMapping("/post")
    @Override
    public int add(@ModelAttribute Booking object) {
        List<Booking> bookings = bookingDAO.getAll();

        for(Booking booking : bookings){
            if(Objects.equals(booking.getBooking_id(), object.getBooking_id())){
                return -1;
            }
        }
        bookingDAO.add(object);
        return 1;
    }

    @PutMapping("/update")
    @Override
    public int update(@ModelAttribute Booking object) {
        Booking existingBooking = bookingDAO.getById(object.getBooking_id());
        if (existingBooking != null) {
            object.setBooking_id(object.getBooking_id());
            bookingDAO.update(object);
            return 1;
        } else {
            return -1;
        }
    }

    @DeleteMapping("/delete/{id}")
    @Override
    public void delete(@PathVariable int id) {
        Booking existingBooking = bookingDAO.getById(id);
        if (existingBooking != null) {
            bookingDAO.delete(id);
        }
    }


    @PostMapping("/post-all")
    public ModelAndView addAll(@ModelAttribute Booking object) {
        bookingDAO.add(object);
        return new ModelAndView("pages/user/form");
    }

}
