package com.mvcspring.controller.root;

import com.mvcspring.DAO.UserDAO;
import com.mvcspring.interfaces.CRUDController;
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
@RequestMapping("/user")
public class UserController implements CRUDController<User> {
//    private final UserDAO userDAO = new UserDAO();


    public UserController (){}
//    @Autowired
    private final UserDAO userDAO = new UserDAO();

    @GetMapping("/get-all")
    @Override
    public List<User> getAll() {
        // IF TRUE WILL RETURN OBJECTS ELSE IT WILL RETURN NULL
        return  userDAO.getAll();
    }

    @GetMapping("/get/{id}")
    @Override
    public User getById(@PathVariable int id) {
        // IF TRUE WILL RETURN OBJECT ELSE IT WILL RETURN NULL
        return userDAO.getById(id);
    }
    @Override
    @PostMapping("/post")
    public int add( @ModelAttribute User object) {
        List<User> users = userDAO.getAll();
        for(User user_ : users){
            if(Objects.equals(user_.getEmail(), object.getEmail())){
                return -1;
            }
        }
        userDAO.add(object);
        return 1;
    }

    @PutMapping("/update")
    @Override
    public int update(@ModelAttribute User object) {
        User existingUser = userDAO.getById(object.getId());
        if (existingUser != null) {
            object.setId(object.getId());
            userDAO.update(object);
            return 1;
        } else {
            return -1;
        }
    }

    @DeleteMapping("/delete/{id}")
    @Override
    public int delete(@PathVariable int id) {
        User existingUser = userDAO.getById(id);
        if (existingUser != null) {
            userDAO.delete(id);
            return 1;
        } else {
            return -1;
        }
    }

    @PostMapping("/updateWithImage")
    public ModelAndView update(@ModelAttribute User userObject,@RequestParam("file") MultipartFile file) {

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
                    UserImage userImage = new UserImage();

                    file.transferTo(newFile);
                    userImage.setUser_id(userObject.getId());
                    userImage.setImage_ext(split[split.length - 1]);
                    userImage.setImage_name(imageName);

                    System.out.println(userImage);
                    UserImageController userImageController = new UserImageController();

                    List<UserImage> userImages = userImageController.getAll();

                    boolean userExists = false;
                    for(UserImage userImage_: userImages){
                        if(userImage_.getUser_id() == userObject.getId()){
                            userImageController.update(userImage);
                            userExists = true;
                            break;
                        }
                    }

                    if(!userExists){
                        userImageController.add(userImage);
                    }


                }

                User existingUser = userDAO.getById(userObject.getId());
                if (existingUser != null) {
                    userDAO.update(userObject);
                }

            } catch (Exception e) {
                e.printStackTrace();
                // Handle the exception
            }
        return new ModelAndView("pages/user/profileEdit");
    }

}



