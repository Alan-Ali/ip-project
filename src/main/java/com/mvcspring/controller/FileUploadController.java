package com.mvcspring.controller;

import com.mvcspring.utils.FileUploadPath;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class FileUploadController {

    @PostMapping("/upload")
    public ModelAndView handleFileUpload(@RequestParam("file") MultipartFile file) {
        ModelAndView model = null;
        // Logic to handle the uploaded file
        if (!file.isEmpty()) {
            try {
                // Save the file to a location or process it
                String savePath = FileUploadPath.path()+ "\\" + file.getOriginalFilename();
                file.transferTo(new File(savePath));
                System.out.println(savePath);
                System.out.println(file);
                model = new ModelAndView("pages/tests/uploadSuccess");
                model.addObject("uploadSuccess", "The File Upload was Successful");

                return model; // Return a success view
            } catch (Exception e) {
                e.printStackTrace();
                // Handle the exception
            }
        }
        model = new ModelAndView("pages/tests/uploadFailure");
        model.addObject("uploadFailure", "The File Upload was a Failure");
        return model ; // Return a failure view
    }
}