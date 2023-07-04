package com.mvcspring.controller.root;

import com.mvcspring.DAO.HotelsDAO;
import com.mvcspring.DAO.UserDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.Hotels;
import com.mvcspring.models.User;
import com.mvcspring.models.UserImage;
import com.mvcspring.utils.FileUploadPath;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.UUID;


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
    public void delete(@PathVariable int id) {
        Hotels existingHotel = hotelsDAO.getById(id);
        if (existingHotel != null) {
            hotelsDAO.delete(id);
        }
    }





    @PostMapping("/updateWithImage")
    public ModelAndView update(@ModelAttribute Hotels hotelObject, @RequestParam("file") MultipartFile file) {

        try {


            if(!file.isEmpty()) {

                // split the original name
                String[] split = Objects.requireNonNull(file.getOriginalFilename()).split("\\.");
                System.out.println(Arrays.toString(split));

                // Creating random id
                UUID uuid = UUID.randomUUID();
                String imageName = uuid.toString();

                //
                File newFile = new File(FileUploadPath.path(),imageName+"."+ split[split.length - 1]);
                file.transferTo(newFile);

                hotelObject.setHotel_image_name(imageName);
                hotelObject.setHotel_image_ext(split[split.length - 1]);

                Hotels existingHotel = hotelsDAO.getById(hotelObject.getHotel_id());
                if (existingHotel != null) {
                    hotelsDAO.update(hotelObject);
                }else{
                    hotelsDAO.add(hotelObject);
                }

            }


            System.out.println(" reached user image end");

        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception
        }
        return new ModelAndView("pages/admin/adminAddHotel");
    }






}
