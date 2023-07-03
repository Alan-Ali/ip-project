package com.mvcspring.controller.root;

import com.mvcspring.DAO.HotelsDAO;
import com.mvcspring.DAO.UserDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.Hotels;
import com.mvcspring.models.UserImage;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;


@Component
@Controller
@RequestMapping("/hotels")
public class HotelController implements CRUDController<Hotels> {


    public HotelController (){}
    //    @Autowired
    private final HotelsDAO hotelsDAO = new HotelsDAO();

    @GetMapping("/get-all")
    @Override
    public List<Hotels> getAll() {
        return  hotelsDAO.getAll();
    }

    @GetMapping("/get/{id}")
    @Override
    public Hotels getById(@PathVariable int id) {
        return hotelsDAO.getById(id);
    }

    @PostMapping("/post")
    @Override
    public int add(@ModelAttribute Hotels object) {
        List<Hotels> hotels = hotelsDAO.getAll();

        for(Hotels hotels_ : hotels){
            if(Objects.equals(hotels_.getHotel_id(), object.getHotel_id())){
                return -1;
            }
        }
        hotelsDAO.add(object);
        return 1;
    }


    @PutMapping("/update")
    @Override
    public int update(@ModelAttribute Hotels object) {
        Hotels existingHotel = hotelsDAO.getById(object.getHotel_id());
        if (existingHotel != null) {
            object.setHotel_id(object.getHotel_id());
            hotelsDAO.update(object);
            return 1;
        } else {
            return -1;
        }
    }

    @DeleteMapping("/delete/{id}")
    @Override
    public int delete(@PathVariable int id) {
        Hotels existingHotel = hotelsDAO.getById(id);
        if (existingHotel != null) {
            hotelsDAO.delete(id);
            return 1;
        } else {
            return -1;
        }
    }
}
