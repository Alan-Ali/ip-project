package com.mvcspring.utils;

public class FileUploadPath {

    // COMMENT MY FILE PATH AND ADD YOUR OWN PATH, FOR THE FILE UPLOAD
    // MAKE SURE THE FILE PATH IS IN INSIDE WEBAPPS FOLDER IN TOMCAT.
    public static String path() {
        // ALAN'S FILE UPLOAD DIRECTORY
        return "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\ip_project";
        // KARO'S FILE UPLOAD DIRECTORY
//        return ;
        // HALA'S FILE UPLOAD DIRECTORY
//        return ;
    }

    public static String directoryName() {
        // ALAN'S FILE UPLOAD DIRECTORY
        return "/ip_project";
        // KARO'S FILE UPLOAD DIRECTORY
//        return ;
        // HALA'S FILE UPLOAD DIRECTORY
//        return ;
    }


}
